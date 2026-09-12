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

module ULSR_out_bit(
    input  wire D,
    input  wire D_N,
    input  wire S,
    input  wire SD,
    input  wire SC,
    input  wire capture,
    output wire Dout,
    output wire Q,
    output wire Q_N);
  wire d1, d1n, dummy;
  
  ULSR_RSFF u1(.D(D),  .D_N(D_N), .EN(SD), Q(d1), .Q_N(d1n));
  ULSR_RSFF u2(.D(d1), .D_N(d1n), .EN(SC), Q(Q),  .Q_N(Q_N));
  ULSR_RSFF u3(.D(Q),  .D_N(Q_N), .EN(capture),  Q(Dout), .Q_N(dummy));

  wire _unused = &{dummy, 1'b0};
endmodule


  
