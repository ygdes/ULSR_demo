// ULSR_modules.v
// created sam. 12 sept. 2026 20:17:55 CEST by whygee@f-cpu.org
// derived from https://github.com/ygdes/TinyScanChain5L/blob/main/src/ScanChain.v
// adapted to technoswapping G2/CMOS5L

// The fundamental module
// area : 2 × 9.072 = 18.144
module ULSR_RSFF(
    input  wire D,
    input  wire D_N,
    input  wire EN,
    output wire Q,
    output wire Q_N);
  sg13_a21oi_1 rs_neg(.Y(Q_N), .A1(EN), .A2(D  ), .B1(Q  ));
  sg13_a21oi_1 rs_pos(.Y(Q  ), .A1(EN), .A2(D_N), .B1(Q_N));
endmodule

// Same with extra input
// area : 9.072 + 14.5152 = 23.5872
module ULSR_RSFF_in(
    input  wire D,
    input  wire D_N,
    input  wire Din,
    input  wire GET,
    input  wire EN,
    output wire Q,
    output wire Q_N);
  sg13_a221oi_1 rs_neg(.Y(Q_N), .A1(EN), .A2(D  ), .B1(Din), .B2(GET), .C1(Q));
  sg13_a21oi_1  rs_pos(.Y(Q  ), .A1(EN), .A2(D_N),                     .B1(Q_N));
endmodule

// One bit to output
// area : 3 × 18.144 = 54.432
module ULSR_out_bit(
    input  wire D,
    input  wire D_N,
    input  wire SD,
    input  wire SC,
    input  wire update,
    output wire Dout,
    output wire Q,
    output wire Q_N);
  wire t, tn, dummy;
  
  ULSR_RSFF u1(.D(D), .D_N(D_N), .EN(SD),      .Q(t),    .Q_N(tn));
  ULSR_RSFF u2(.D(t), .D_N(tn),  .EN(SC),      .Q(Q),    .Q_N(Q_N));
  ULSR_RSFF u3(.D(Q), .D_N(Q_N), .EN(update),  .Q(Dout), .Q_N(dummy));

  wire _unused = &{dummy, 1'b0};
endmodule

// One bit to input :
// area : 18.144 + 23.5872 = 41.7312  
module ULSR_in_bit(
    input  wire D,
    input  wire D_N,
    input  wire SD,
    input  wire SC,
    input  wire capture,
    input  wire Din,
    output wire Q,
    output wire Q_N);
  wire t, tn;
  
  ULSR_RSFF_in u1(.D(D), .D_N(D_N), .Din(Din), .GET(capture), .EN(SD), .Q(t), .Q_N(tn));
  ULSR_RSFF    u2(.D(t), .D_N(tn),                            .EN(SC), .Q(Q), .Q_N(Q_N));
endmodule

// Both input and output
// area : 18.144 +  18.144 + 23.5872 = 59.8752
module ULSR_inout_bit(
    input  wire D,
    input  wire D_N,
    input  wire SD,
    input  wire SC,
    input  wire capture,
    input  wire Din,
    input  wire update,
    output wire Dout,
    output wire Q,
    output wire Q_N);
  wire t, tn, dummy;
  
  ULSR_RSFF_in u1(.D(D), .D_N(D_N), .Din(Din), .GET(capture), .EN(SD), .Q(t), .Q_N(tn));
  ULSR_RSFF    u2(.D(t), .D_N(tn),                            .EN(SC), .Q(Q), .Q_N(Q_N));
  ULSR_RSFF    u3(.D(Q), .D_N(Q_N),                           .EN(update),  .Q(Dout), .Q_N(dummy));

  wire _unused = &{dummy, 1'b0};
endmodule

module ULSR_input_ctrl(
    input wire SD,
    input wire SC,
    output wire Update,
    output wire D,
    output wire D_N);
  wire t1, t2, t3, SCn;
  sg13_inv_2   i1(.A(SC), .Y(SCn)); // RESET is active low !
  sg13_dfrbp_1 DFF1(.Q(D),  .Q_N(D_N), .D(D_N), .RESET_B(SCn), .CLK(SD));  // SD => output 1, SD SD => output 0
  sg13_dfrbp_1 DFF2(.Q(t2), .Q_N(t1),  .D(t1),  .RESET_B(SCn), .CLK(D_N));  // needs 4 pulses on SD to trigger the update

  sg13_a22oi_1 a(.A1(SC), .A2(SD), .B1(t2), .B2(D), .Y(t3));  // update : if reset state (=> clear all outputs) or if 3 pulses on SD
  sg13_inv_2   i2(.A(t3), .Y(Update));
endmodule

-- version 2 : asynchrone / chaînée comme ULSR_input_ctrl
module ULSR_output_ctrl(
    input wire SD,
    input wire SC,
    output wire Capture);
  wire t1, t2, t3, t4, SDn;
  sg13_inv_2   i1(.A(SD), .Y(SDn)); // RESET is active low !
  sg13_dfrbp_1 DFF1(.Q(t2), .Q_N(t3), .D(t3), .RESET_B(SDn), .CLK(SC));
  sg13_dfrbp_1 DFF2(.Q(t4), .Q_N(t1), .D(t1), .RESET_B(SDn), .CLK(t3));  // needs 3 pulses on SC to trigger the capture
  sg13_and2_2 a(.A(t2), .B(t4), .X(Capture));
endmodule
