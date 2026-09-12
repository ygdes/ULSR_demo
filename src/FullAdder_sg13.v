// Just a dumb Full Adder

module FullAdderSG13 (
  input  wire d1,
  input  wire d2,
  input  wire d3,
  output wire S,
  output wire C
);
  wire t, u;

  -- sum:
  sg13_xor2_1 x1 (.X(t), .A(d1), .B(d2));
  sg13_xor2_1 x2 (.X(S), .A(t ), .B(d3));

  -- carry out:
  sg13_a22oi_1 a(.A1(d1), .A2(d2), .B1(t), .B2(d3), .Y(u));
  sg13_inv_1 i(.A(u), .Y(C));
endmodule
