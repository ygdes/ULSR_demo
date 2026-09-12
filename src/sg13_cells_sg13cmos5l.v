`ifndef __ICARUS__

module sg13_a21o_1 (X, A1, A2, B1);
	output X;
	input A1, A2, B1;
  (* keep *) sg13cmos5l_a21o_1 ihp(.X(X), .A1(A1), .A2(A2), .B1(B1));
endmodule

module sg13_a21o_2 (X, A1, A2, B1);
	output X;
	input A1, A2, B1;
  (* keep *) sg13cmos5l_a21o_2 ihp(.X(X), .A1(A1), .A2(A2), .B1(B1));
endmodule

module sg13_a21oi_1 (Y, A1, A2, B1);
	output Y;
	input A1, A2, B1;
  (* keep *) sg13cmos5l_a21oi_1 ihp(.Y(Y), .A1(A1), .A2(A2), .B1(B1));
endmodule

module sg13_a21oi_2 (Y, A1, A2, B1);
	output Y;
	input A1, A2, B1;
  (* keep *) sg13cmos5l_a21oi_2 ihp(.Y(Y), .A1(A1), .A2(A2), .B1(B1));
endmodule

module sg13_a221oi_1 (Y, A1, A2, B1, B2, C1);
	output Y;
	input A1, A2, B1, B2, C1;
  (* keep *) sg13cmos5l_a221oi_1 ihp(.Y(Y), .A1(A1), .A2(A2), .B1(B1), .B2(B2), .C1(C1));
endmodule

module sg13_a22oi_1 (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;
  (* keep *) sg13cmos5l_a22oi_1 ihp(.Y(Y), .A1(A1), .A2(A2), .B1(B1), .B2(B2));
endmodule

module sg13_and2_1 (X, A, B);
	output X;
	input A, B;
  (* keep *) sg13cmos5l_and2_1 ihp(.X(X), .A(A), .B(B));
endmodule

module sg13_and2_2 (X, A, B);
	output X;
	input A, B;
  (* keep *) sg13cmos5l_and2_2 ihp(.X(X), .A(A), .B(B));
endmodule

module sg13_and3_1 (X, A, B, C);
	output X;
	input A, B, C;
  (* keep *) sg13cmos5l_and3_1 ihp(.X(X), .A(A), .B(B), .C(C));
endmodule

module sg13_and3_2 (X, A, B, C);
	output X;
	input A, B, C;
  (* keep *) sg13cmos5l_and3_2 ihp(.X(X), .A(A), .B(B), .C(C));
endmodule

module sg13_and4_1 (X, A, B, C, D);
	output X;
	input A, B, C, D;
  (* keep *) sg13cmos5l_and4_1 ihp(.X(X), .A(A), .B(B), .C(C), .D(D));
endmodule

module sg13_and4_2 (X, A, B, C, D);
	output X;
	input A, B, C, D;
  (* keep *) sg13cmos5l_and4_2 ihp(.X(X), .A(A), .B(B), .C(C), .D(D));
endmodule

module sg13_buf_16 (X, A);
	output X;
	input A;
  (* keep *) sg13cmos5l_buf_16 ihp(.X(X), .A(A));
endmodule

module sg13_buf_1 (X, A);
	output X;
	input A;
  (* keep *) sg13cmos5l_buf_1 ihp(.X(X), .A(A));
endmodule

module sg13_buf_2 (X, A);
	output X;
	input A;
  (* keep *) sg13cmos5l_buf_2 ihp(.X(X), .A(A));
endmodule

module sg13_buf_4 (X, A);
	output X;
	input A;
  (* keep *) sg13cmos5l_buf_4 ihp(.X(X), .A(A));
endmodule

module sg13_buf_8 (X, A);
	output X;
	input A;
  (* keep *) sg13cmos5l_buf_8 ihp(.X(X), .A(A));
endmodule

module sg13_dfrbp_1 (Q, Q_N, CLK, D, RESET_B);
	output Q, Q_N;
	input D, RESET_B, CLK;
  (* keep *) sg13cmos5l_dfrbp_1 ihp(.Q(Q), .Q_N(Q_N), .CLK(CLK), .D(D), .RESET_B(RESET_B));
endmodule

module sg13_dfrbp_2 (Q, Q_N, CLK, D, RESET_B);
	output Q, Q_N;
	input D, RESET_B, CLK;
  (* keep *) sg13cmos5l_dfrbp_2 ihp(.Q(Q), .Q_N(Q_N), .CLK(CLK), .D(D), .RESET_B(RESET_B));
endmodule

module sg13_dfrbpq_1 (Q, CLK, D, RESET_B);
	output Q;
	input D, RESET_B, CLK;
  (* keep *) sg13cmos5l_dfrbpq_1 ihp(.Q(Q), .CLK(CLK), .D(D), .RESET_B(RESET_B));
endmodule

module sg13_dfrbpq_2 (Q, CLK, D, RESET_B);
	output Q;
	input D, RESET_B, CLK;
  (* keep *) sg13cmos5l_dfrbpq_2 ihp(.Q(Q), .CLK(CLK), .D(D), .RESET_B(RESET_B));
endmodule

module sg13_dlhq_1 (Q, D, GATE);
	output Q;
	input D, GATE;
  (* keep *) sg13cmos5l_dlhq_1 ihp(.Q(Q), .D(D), .GATE(GATE));
endmodule

module sg13_dlhr_1 (Q, Q_N, D, GATE, RESET_B);
	output Q, Q_N;
	input D, RESET_B, GATE;
  (* keep *) sg13cmos5l_dlhr_1 ihp(.Q(Q), .Q_N(Q_N), .D(D), .GATE(GATE), .RESET_B(RESET_B));
endmodule

module sg13_dlhrq_1 (Q, D, GATE, RESET_B);
	output Q;
	input D, RESET_B, GATE;
  (* keep *) sg13cmos5l_dlhrq_1 ihp(.Q(Q), .D(D), .GATE(GATE), .RESET_B(RESET_B));
endmodule

module sg13_dllr_1 (Q, Q_N, D, GATE_N, RESET_B);
	output Q, Q_N;
	input D, RESET_B, GATE_N;
  (* keep *) sg13cmos5l_dllr_1 ihp(.Q(Q), .Q_N(Q_N), .D(D), .GATE_N(GATE_N), .RESET_B(RESET_B));
endmodule

module sg13_dllrq_1 (Q, D, GATE_N, RESET_B);
	output Q;
	input D, RESET_B, GATE_N;
  (* keep *) sg13cmos5l_dllrq_1 ihp(.Q(Q), .D(D), .GATE_N(GATE_N), .RESET_B(RESET_B));
endmodule

module sg13_inv_1 (Y, A);
	output Y;
	input A;
  (* keep *) sg13cmos5l_inv_1 ihp(.Y(Y), .A(A));
endmodule

module sg13_inv_2 (Y, A);
	output Y;
	input A;
  (* keep *) sg13cmos5l_inv_2 ihp(.Y(Y), .A(A));
endmodule

module sg13_inv_4 (Y, A);
	output Y;
	input A;
  (* keep *) sg13cmos5l_inv_4 ihp(.Y(Y), .A(A));
endmodule

module sg13_inv_8 (Y, A);
	output Y;
	input A;
  (* keep *) sg13cmos5l_inv_8 ihp(.Y(Y), .A(A));
endmodule

module sg13_mux2_1 (X, A0, A1, S);
	output X;
	input A0, A1, S;
  (* keep *) sg13cmos5l_mux2_1 ihp(.X(X), .A0(A0), .A1(A1), .S(S));
endmodule

module sg13_mux2_2 (X, A0, A1, S);
	output X;
	input A0, A1, S;
  (* keep *) sg13cmos5l_mux2_2 ihp(.X(X), .A0(A0), .A1(A1), .S(S));
endmodule

module sg13_mux4_1 (X, A0, A1, A2, A3, S0, S1);
	output X;
	input A0, A1, A2, A3, S0, S1;
  (* keep *) sg13cmos5l_mux4_1 ihp(.X(X), .A0(A0), .A1(A1), .A2(A2), .A3(A3), .S0(S0), .S1(S1));
endmodule

module sg13_nand2_1 (Y, A, B);
	output Y;
	input A, B;
  (* keep *) sg13cmos5l_nand2_1 ihp(.Y(Y), .A(A), .B(B));
endmodule

module sg13_nand2_2 (Y, A, B);
	output Y;
	input A, B;
  (* keep *) sg13cmos5l_nand2_2 ihp(.Y(Y), .A(A), .B(B));
endmodule

module sg13_nand2b_1 (Y, A_N, B);
	output Y;
	input A_N, B;
  (* keep *) sg13cmos5l_nand2b_1 ihp(.Y(Y), .A_N(A_N), .B(B));
endmodule

module sg13_nand2b_2 (Y, A_N, B);
	output Y;
	input A_N, B;
  (* keep *) sg13cmos5l_nand2b_2 ihp(.Y(Y), .A_N(A_N), .B(B));
endmodule

module sg13_nand3_1 (Y, A, B, C);
	output Y;
	input A, B, C;
  (* keep *) sg13cmos5l_nand3_1 ihp(.Y(Y), .A(A), .B(B), .C(C));
endmodule

module sg13_nand3b_1 (Y, A_N, B, C);
	output Y;
	input A_N, B, C;
  (* keep *) sg13cmos5l_nand3b_1 ihp(.Y(Y), .A_N(A_N), .B(B), .C(C));
endmodule

module sg13_nand4_1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;
  (* keep *) sg13cmos5l_nand4_1 ihp(.Y(Y), .A(A), .B(B), .C(C), .D(D));
endmodule

module sg13_nor2_1 (Y, A, B);
	output Y;
	input A, B;
  (* keep *) sg13cmos5l_nor2_1 ihp(.Y(Y), .A(A), .B(B));
endmodule

module sg13_nor2_2 (Y, A, B);
	output Y;
	input A, B;
  (* keep *) sg13cmos5l_nor2_2 ihp(.Y(Y), .A(A), .B(B));
endmodule

module sg13_nor2b_1 (Y, A, B_N);
	output Y;
	input A, B_N;
  (* keep *) sg13cmos5l_nor2b_1 ihp(.Y(Y), .A(A), .B_N(B_N));
endmodule

module sg13_nor2b_2 (Y, A, B_N);
	output Y;
	input A, B_N;
  (* keep *) sg13cmos5l_nor2b_2 ihp(.Y(Y), .A(A), .B_N(B_N));
endmodule

module sg13_nor3_1 (Y, A, B, C);
	output Y;
	input A, B, C;
  (* keep *) sg13cmos5l_nor3_1 ihp(.Y(Y), .A(A), .B(B), .C(C));
endmodule

module sg13_nor3_2 (Y, A, B, C);
	output Y;
	input A, B, C;
  (* keep *) sg13cmos5l_nor3_2 ihp(.Y(Y), .A(A), .B(B), .C(C));
endmodule

module sg13_nor4_1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;
  (* keep *) sg13cmos5l_nor4_1 ihp(.Y(Y), .A(A), .B(B), .C(C), .D(D));
endmodule

module sg13_nor4_2 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;
  (* keep *) sg13cmos5l_nor4_2 ihp(.Y(Y), .A(A), .B(B), .C(C), .D(D));
endmodule

module sg13_o21ai_1 (Y, A1, A2, B1);
	output Y;
	input A1, A2, B1;
  (* keep *) sg13cmos5l_o21ai_1 ihp(.Y(Y), .A1(A1), .A2(A2), .B1(B1));
endmodule

module sg13_or2_1 (X, A, B);
	output X;
	input A, B;
  (* keep *) sg13cmos5l_or2_1 ihp(.X(X), .A(A), .B(B));
endmodule

module sg13_or2_2 (X, A, B);
	output X;
	input A, B;
  (* keep *) sg13cmos5l_or2_2 ihp(.X(X), .A(A), .B(B));
endmodule

module sg13_or3_1 (X, A, B, C);
	output X;
	input A, B, C;
  (* keep *) sg13cmos5l_or3_1 ihp(.X(X), .A(A), .B(B), .C(C));
endmodule

module sg13_or3_2 (X, A, B, C);
	output X;
	input A, B, C;
  (* keep *) sg13cmos5l_or3_2 ihp(.X(X), .A(A), .B(B), .C(C));
endmodule

module sg13_or4_1 (X, A, B, C, D);
	output X;
	input A, B, C, D;
  (* keep *) sg13cmos5l_or4_1 ihp(.X(X), .A(A), .B(B), .C(C), .D(D));
endmodule

module sg13_or4_2 (X, A, B, C, D);
	output X;
	input A, B, C, D;
  (* keep *) sg13cmos5l_or4_2 ihp(.X(X), .A(A), .B(B), .C(C), .D(D));
endmodule

module sg13_sdfbbp_1 (Q, Q_N, CLK, D, RESET_B, SCD, SCE, SET_B);
	output Q, Q_N;
	input D, SCD, SCE, RESET_B, SET_B, CLK;
  (* keep *) sg13cmos5l_sdfbbp_1 ihp(.Q(Q), .Q_N(Q_N), .CLK(CLK), .D(D), .RESET_B(RESET_B), .SCD(SCD), .SCE(SCE), .SET_B(SET_B));
endmodule

module sg13_sdfrbp_1 (Q, Q_N, CLK, D, RESET_B, SCD, SCE);
	output Q, Q_N;
	input D, SCD, SCE, RESET_B, CLK;
  (* keep *) sg13cmos5l_sdfrbp_1 ihp(.Q(Q), .Q_N(Q_N), .CLK(CLK), .D(D), .RESET_B(RESET_B), .SCD(SCD), .SCE(SCE));
endmodule

module sg13_sdfrbp_2 (Q, Q_N, CLK, D, RESET_B, SCD, SCE);
	output Q, Q_N;
	input D, SCD, SCE, RESET_B, CLK;
  (* keep *) sg13cmos5l_sdfrbp_2 ihp(.Q(Q), .Q_N(Q_N), .CLK(CLK), .D(D), .RESET_B(RESET_B), .SCD(SCD), .SCE(SCE));
endmodule

module sg13_sdfrbpq_1 (Q, CLK, D, RESET_B, SCD, SCE);
	output Q;
	input D, SCD, SCE, RESET_B, CLK;
  (* keep *) sg13cmos5l_sdfrbpq_1 ihp(.Q(Q), .CLK(CLK), .D(D), .RESET_B(RESET_B), .SCD(SCD), .SCE(SCE));
endmodule

module sg13_sdfrbpq_2 (Q, CLK, D, RESET_B, SCD, SCE);
	output Q;
	input D, SCD, SCE, RESET_B, CLK;
  (* keep *) sg13cmos5l_sdfrbpq_2 ihp(.Q(Q), .CLK(CLK), .D(D), .RESET_B(RESET_B), .SCD(SCD), .SCE(SCE));
endmodule

module sg13_xnor2_1 (Y, A, B);
	output Y;
	input A, B;
  (* keep *) sg13cmos5l_xnor2_1 ihp(.Y(Y), .A(A), .B(B));
endmodule

module sg13_xor2_1 (X, A, B);
	output X;
	input A, B;
  (* keep *) sg13cmos5l_xor2_1 ihp(.X(X), .A(A), .B(B));
endmodule

`endif
