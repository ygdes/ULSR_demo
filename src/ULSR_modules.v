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
    output wire Din,
    output wire Q,
    output wire Q_N);
  wire t, t;
  
  ULSR_RSFF_in u1(.D(D), .D_N(D_N), .Din(Din), .GET(capture), .EN(SD), .Q(t), .Q_N(tn));
  ULSR_RSFF    u2(.D(t), .D_N(tn),                            .EN(SC), .Q(Q), .Q_N(Q_N));
endmodule

// TODO : inout
