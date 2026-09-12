// ULSR_modules.v
// created sam. 12 sept. 2026 20:17:55 CEST by whygee@f-cpu.org
// derived from https://github.com/ygdes/TinyScanChain5L/blob/main/src/ScanChain.v
// adapted to technoswapping G2/CMOS5L

// The fundamental module
module SC_RSFF(
    input  wire D,
    input  wire D_N,
    input  wire EN,
    output wire Q,
    output wire Q_N);
  sg13_a21oi_1 rs_neg(.Y(Q_N), .A1(EN), .A2(D  ), .B1(Q  ));
  sg13_a21oi_1 rs_pos(.Y(Q  ), .A1(EN), .A2(D_N), .B1(Q_N));
endmodule

