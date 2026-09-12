`timescale 1ns/10ps
`celldefine
module sg13_a21o_1 (X, A1, A2, B1);
	output X;
	input A1, A2, B1;
	wire int_fwire_0;
	and (int_fwire_0, A1, A2);
	or (X, int_fwire_0, B1);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_a21o_2 (X, A1, A2, B1);
	output X;
	input A1, A2, B1;
	wire int_fwire_0;
	and (int_fwire_0, A1, A2);
	or (X, int_fwire_0, B1);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_a21oi_1 (Y, A1, A2, B1);
	output Y;
	input A1, A2, B1;
	wire int_fwire_0, int_fwire_1;
	and (int_fwire_0, A1, A2);
	or (int_fwire_1, int_fwire_0, B1);
	not (Y, int_fwire_1);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_a21oi_2 (Y, A1, A2, B1);
	output Y;
	input A1, A2, B1;
	wire int_fwire_0, int_fwire_1;
	and (int_fwire_0, A1, A2);
	or (int_fwire_1, int_fwire_0, B1);
	not (Y, int_fwire_1);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_a221oi_1 (Y, A1, A2, B1, B2, C1);
	output Y;
	input A1, A2, B1, B2, C1;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2);
	or (int_fwire_2, int_fwire_1, int_fwire_0, C1);
	not (Y, int_fwire_2);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_a22oi_1 (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2);
	or (int_fwire_2, int_fwire_1, int_fwire_0);
	not (Y, int_fwire_2);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_and2_1 (X, A, B);
	output X;
	input A, B;
	and (X, A, B);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_and2_2 (X, A, B);
	output X;
	input A, B;
	and (X, A, B);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_and3_1 (X, A, B, C);
	output X;
	input A, B, C;
	and (X, A, B, C);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_and3_2 (X, A, B, C);
	output X;
	input A, B, C;
	and (X, A, B, C);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_and4_1 (X, A, B, C, D);
	output X;
	input A, B, C, D;
	and (X, A, B, C, D);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_and4_2 (X, A, B, C, D);
	output X;
	input A, B, C, D;
	and (X, A, B, C, D);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_buf_16 (X, A);
	output X;
	input A;
	buf (X, A);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_buf_1 (X, A);
	output X;
	input A;
	buf (X, A);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_buf_2 (X, A);
	output X;
	input A;
	buf (X, A);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_buf_4 (X, A);
	output X;
	input A;
	buf (X, A);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_buf_8 (X, A);
	output X;
	input A;
	buf (X, A);
endmodule
`endcelldefine

`ifdef _udp_def_ihp_dff_r_err_
`else
`define _udp_def_ihp_dff_r_err_
primitive ihp_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;
	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_
`else
`define _udp_def_ihp_dff_r_
primitive ihp_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;
	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_dfrbp_1 (Q, Q_N, CLK, D, RESET_B);
	output Q, Q_N;
	input D, RESET_B, CLK;
	reg notifier;

	
	wire int_fwire_IQ, int_fwire_IQN, int_fwire_r;
	wire xcr_0;

	not (int_fwire_r, RESET_B);
	ihp_dff_r_err (xcr_0, CLK, D, int_fwire_r);
	ihp_dff_r (int_fwire_IQ, notifier, CLK, D, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (Q_N, int_fwire_IQN);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_dff_r_err_
`else
`define _udp_def_ihp_dff_r_err_
primitive ihp_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;
	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_
`else
`define _udp_def_ihp_dff_r_
primitive ihp_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;
	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_dfrbp_2 (Q, Q_N, CLK, D, RESET_B);
	output Q, Q_N;
	input D, RESET_B, CLK;
	reg notifier;

	
	wire int_fwire_IQ, int_fwire_IQN, int_fwire_r;
	wire xcr_0;

	not (int_fwire_r, RESET_B);
	ihp_dff_r_err (xcr_0, CLK, D, int_fwire_r);
	ihp_dff_r (int_fwire_IQ, notifier, CLK, D, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (Q_N, int_fwire_IQN);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_dff_r_err_
`else
`define _udp_def_ihp_dff_r_err_
primitive ihp_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;
	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_
`else
`define _udp_def_ihp_dff_r_
primitive ihp_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;
	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_dfrbpq_1 (Q, CLK, D, RESET_B);
	output Q;
	input D, RESET_B, CLK;
	reg notifier;

	
	wire int_fwire_IQ, int_fwire_r, xcr_0;

	not (int_fwire_r, RESET_B);
	ihp_dff_r_err (xcr_0, CLK, D, int_fwire_r);
	ihp_dff_r (int_fwire_IQ, notifier, CLK, D, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_dff_r_err_
`else
`define _udp_def_ihp_dff_r_err_
primitive ihp_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_
`else
`define _udp_def_ihp_dff_r_
primitive ihp_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_dfrbpq_2 (Q, CLK, D, RESET_B);
	output Q;
	input D, RESET_B, CLK;
	reg notifier;

	
	wire int_fwire_IQ, int_fwire_r, xcr_0;

	not (int_fwire_r, RESET_B);
	ihp_dff_r_err (xcr_0, CLK, D, int_fwire_r);
	ihp_dff_r (int_fwire_IQ, notifier, CLK, D, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_latch_
`else
`define _udp_def_ihp_latch_
primitive ihp_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;
	table
		* ? ? : ? : x;
		? 1 0 : ? : 0;
		? 1 1 : ? : 1;
		? x 0 : 0 : -;
		? x 1 : 1 : -;
		? 0 ? : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_dlhq_1 (Q, D, GATE);
	output Q;
	input D, GATE;
	reg notifier;

	
	wire int_fwire_IQ;

	ihp_latch (int_fwire_IQ, notifier, GATE, D);
	buf (Q, int_fwire_IQ);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_latch_r_
`else
`define _udp_def_ihp_latch_r_
primitive ihp_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;
	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_dlhr_1 (Q, Q_N, D, GATE, RESET_B);
	output Q, Q_N;
	input D, RESET_B, GATE;
	reg notifier;

	
	wire int_fwire_IQ, int_fwire_IQN, int_fwire_r;

	not (int_fwire_r, RESET_B);
	ihp_latch_r (int_fwire_IQ, notifier, GATE, D, int_fwire_r);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (Q_N, int_fwire_IQN);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_latch_r_
`else
`define _udp_def_ihp_latch_r_
primitive ihp_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;
	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_dlhrq_1 (Q, D, GATE, RESET_B);
	output Q;
	input D, RESET_B, GATE;
	reg notifier;

	
	wire int_fwire_IQ, int_fwire_r;

	not (int_fwire_r, RESET_B);
	ihp_latch_r (int_fwire_IQ, notifier, GATE, D, int_fwire_r);
	buf (Q, int_fwire_IQ);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_latch_r_
`else
`define _udp_def_ihp_latch_r_
primitive ihp_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;
	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_dllr_1 (Q, Q_N, D, GATE_N, RESET_B);
	output Q, Q_N;
	input D, RESET_B, GATE_N;
	reg notifier;

	
	wire int_fwire_clk, int_fwire_IQ, int_fwire_IQN;
	wire int_fwire_r;

	not (int_fwire_clk, GATE_N);
	not (int_fwire_r, RESET_B);
	ihp_latch_r (int_fwire_IQ, notifier, int_fwire_clk, D, int_fwire_r);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (Q_N, int_fwire_IQN);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_latch_r_
`else
`define _udp_def_ihp_latch_r_
primitive ihp_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;
	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_dllrq_1 (Q, D, GATE_N, RESET_B);
	output Q;
	input D, RESET_B, GATE_N;
	reg notifier;

	
	wire int_fwire_clk, int_fwire_IQ, int_fwire_r;

	not (int_fwire_clk, GATE_N);
	not (int_fwire_r, RESET_B);
	ihp_latch_r (int_fwire_IQ, notifier, int_fwire_clk, D, int_fwire_r);
	buf (Q, int_fwire_IQ);

endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_inv_1 (Y, A);
	output Y;
	input A;
	not (Y, A);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_inv_2 (Y, A);
	output Y;
	input A;
	not (Y, A);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_inv_4 (Y, A);
	output Y;
	input A;
	not (Y, A);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_inv_8 (Y, A);
	output Y;
	input A;
	not (Y, A);
endmodule
`endcelldefine

`ifdef _udp_def_ihp_mux2
`else
`define _udp_def_ihp_mux2
primitive ihp_mux2 (z, a, b, s);
	output z;
	input a, b, s;
	table
		1  ?  0 : 1;
		0  ?  0 : 0;
		?  1  1 : 1;
		?  0  1 : 0;
		0  0  x : 0;
		1  1  x : 1;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_mux2_1 (X, A0, A1, S);
	output X;
	input A0, A1, S;

	
	ihp_mux2 (X, A0, A1, S);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_mux2
`else
`define _udp_def_ihp_mux2
primitive ihp_mux2 (z, a, b, s);
	output z;
	input a, b, s;
	table
		1  ?  0 : 1;
		0  ?  0 : 0;
		?  1  1 : 1;
		?  0  1 : 0;
		0  0  x : 0;
		1  1  x : 1;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_mux2_2 (X, A0, A1, S);
	output X;
	input A0, A1, S;

	
	ihp_mux2 (X, A0, A1, S);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_mux4
`else
`define _udp_def_ihp_mux4
primitive ihp_mux4 (z, a, b, c, d, s0, s1);
	output z;
	input d, c, b, a, s1, s0;
	table
		0  ?  ?  ?  0  0 : 0;
		1  ?  ?  ?  0  0 : 1;
		?  0  ?  ?  1  0 : 0;
		?  1  ?  ?  1  0 : 1;
		?  ?  0  ?  0  1 : 0;
		?  ?  1  ?  0  1 : 1;
		?  ?  ?  0  1  1 : 0;
		?  ?  ?  1  1  1 : 1;
		0  0  ?  ?  x  0 : 0;
		1  1  ?  ?  x  0 : 1;
		?  ?  0  0  x  1 : 0;
		?  ?  1  1  x  1 : 1;
		0  ?  0  ?  0  x : 0;
		1  ?  1  ?  0  x : 1;
		?  0  ?  0  1  x : 0;
		?  1  ?  1  1  x : 1;
		1  1  1  1  x  x : 1;
		0  0  0  0  x  x : 0;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_mux4_1 (X, A0, A1, A2, A3, S0, S1);
	output X;
	input A0, A1, A2, A3, S0, S1;

	
	ihp_mux4 (X, A0, A1, A2, A3, S0, S1);

endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nand2_1 (Y, A, B);
	output Y;
	input A, B;
	wire int_fwire_0;
	and (int_fwire_0, A, B);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nand2_2 (Y, A, B);
	output Y;
	input A, B;
	wire int_fwire_0;
	and (int_fwire_0, A, B);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nand2b_1 (Y, A_N, B);
	output Y;
	input A_N, B;
	wire A_N__bar, int_fwire_0;
	not (A_N__bar, A_N);
	and (int_fwire_0, A_N__bar, B);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nand2b_2 (Y, A_N, B);
	output Y;
	input A_N, B;
	wire A_N__bar, int_fwire_0;
	not (A_N__bar, A_N);
	and (int_fwire_0, A_N__bar, B);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nand3_1 (Y, A, B, C);
	output Y;
	input A, B, C;
	wire int_fwire_0;
	and (int_fwire_0, A, B, C);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nand3b_1 (Y, A_N, B, C);
	output Y;
	input A_N, B, C;
	wire A_N__bar, int_fwire_0;
	not (A_N__bar, A_N);
	and (int_fwire_0, A_N__bar, B, C);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nand4_1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;
	wire int_fwire_0;
	and (int_fwire_0, A, B, C, D);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nor2_1 (Y, A, B);
	output Y;
	input A, B;
	wire int_fwire_0;
	or (int_fwire_0, A, B);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nor2_2 (Y, A, B);
	output Y;
	input A, B;
	wire int_fwire_0;
	or (int_fwire_0, A, B);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nor2b_1 (Y, A, B_N);
	output Y;
	input A, B_N;
	wire B_N__bar, int_fwire_0;
	not (B_N__bar, B_N);
	or (int_fwire_0, A, B_N__bar);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nor2b_2 (Y, A, B_N);
	output Y;
	input A, B_N;
	wire B_N__bar, int_fwire_0;
	not (B_N__bar, B_N);
	or (int_fwire_0, A, B_N__bar);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nor3_1 (Y, A, B, C);
	output Y;
	input A, B, C;
	wire int_fwire_0;
	or (int_fwire_0, A, B, C);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nor3_2 (Y, A, B, C);
	output Y;
	input A, B, C;
	wire int_fwire_0;
	or (int_fwire_0, A, B, C);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nor4_1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;
	wire int_fwire_0;
	or (int_fwire_0, A, B, C, D);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_nor4_2 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;
	wire int_fwire_0;
	or (int_fwire_0, A, B, C, D);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_o21ai_1 (Y, A1, A2, B1);
	output Y;
	input A1, A2, B1;
	wire int_fwire_0, int_fwire_1;
	or (int_fwire_0, A1, A2);
	and (int_fwire_1, int_fwire_0, B1);
	not (Y, int_fwire_1);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_or2_1 (X, A, B);
	output X;
	input A, B;
	or (X, A, B);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_or2_2 (X, A, B);
	output X;
	input A, B;
	or (X, A, B);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_or3_1 (X, A, B, C);
	output X;
	input A, B, C;
	or (X, A, B, C);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_or3_2 (X, A, B, C);
	output X;
	input A, B, C;
	or (X, A, B, C);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_or4_1 (X, A, B, C, D);
	output X;
	input A, B, C, D;
	or (X, A, B, C, D);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_or4_2 (X, A, B, C, D);
	output X;
	input A, B, C, D;
	or (X, A, B, C, D);
endmodule
`endcelldefine

`ifdef _udp_def_ihp_mux2
`else
`define _udp_def_ihp_mux2
primitive ihp_mux2 (z, a, b, s);
	output z;
	input a, b, s;
	table
		1  ?  0 : 1;
		0  ?  0 : 0;
		?  1  1 : 1;
		?  0  1 : 0;
		0  0  x : 0;
		1  1  x : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_sr_err_
`else
`define _udp_def_ihp_dff_sr_err_
primitive ihp_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;
	table
		 ?   1 (0x)  ?   : ? : -;
		 ?   0  ?   (0x) : ? : -;
		 ?   0  ?   (x0) : ? : -;
		(0x) ?  0    0   : ? : 0;
		(0x) 1  x    0   : ? : 0;
		(0x) 0  0    x   : ? : 0;
		(1x) ?  0    0   : ? : 1;
		(1x) 1  x    0   : ? : 1;
		(1x) 0  0    x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_sr_1
`else
`define _udp_def_ihp_dff_sr_1
primitive ihp_dff_sr_1 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;
	table
		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   0   1   ? : ? : 0;
		?  ?   ?   1   ?   ? : ? : 1;
		?  b   ? (1?)  0   ? : 1 : -;
		?  x   1 (1?)  0   ? : 1 : -;
		?  ?   ? (10)  0   ? : ? : -;
		?  ?   ? (x0)  0   ? : ? : -;
		?  ?   ? (0x)  0   ? : 1 : -;
		?  b   ?  0   (1?) ? : 0 : -;
		?  x   0  0   (1?) ? : 0 : -;
		?  ?   ?  0   (10) ? : ? : -;
		?  ?   ?  0   (x0) ? : ? : -;
		?  ?   ?  0   (0x) ? : 0 : -;
		? (x1) 0  0    ?   0 : ? : 0;
		? (x1) 1  ?    0   0 : ? : 1;
		? (x1) 0  0    ?   1 : 0 : 0;
		? (x1) 1  ?    0   1 : 1 : 1;
		? (x1) ?  ?    0   x : ? : -;
		? (x1) ?  0    ?   x : ? : -;
		? (1x) 0  0    ?   ? : 0 : -;
		? (1x) 1  ?    0   ? : 1 : -;
		? (x0) 0  0    ?   ? : ? : -;
		? (x0) 1  ?    0   ? : ? : -;
		? (x0) ?  0    0   x : ? : -;
		? (0x) 0  0    ?   ? : 0 : -;
		? (0x) 1  ?    0   ? : 1 : -;
		? (01) 0  0    ?   ? : ? : 0;
		? (01) 1  ?    0   ? : ? : 1;
		? (10) ?  0    ?   ? : ? : -;
		? (10) ?  ?    0   ? : ? : -;
		?  b   *  0    ?   ? : ? : -;
		?  b   *  ?    0   ? : ? : -;
		?  ?   ?  ?    ?   * : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_sdfbbp_1 (Q, Q_N, CLK, D, RESET_B, SCD, SCE, SET_B);
	output Q, Q_N;
	input D, SCD, SCE, RESET_B, SET_B, CLK;
	reg notifier;

	
	wire int_fwire_d, int_fwire_IQ, int_fwire_IQN;
	wire int_fwire_r, int_fwire_s, xcr_0;

	ihp_mux2 (int_fwire_d, D, SCD, SCE);
	not (int_fwire_s, SET_B);
	not (int_fwire_r, RESET_B);
	ihp_dff_sr_err (xcr_0, CLK, int_fwire_d, int_fwire_s, int_fwire_r);
	ihp_dff_sr_1 (int_fwire_IQ, notifier, CLK, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (Q_N, int_fwire_IQN);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_mux2
`else
`define _udp_def_ihp_mux2
primitive ihp_mux2 (z, a, b, s);
	output z;
	input a, b, s;
	table
		1  ?  0 : 1;
		0  ?  0 : 0;
		?  1  1 : 1;
		?  0  1 : 0;
		0  0  x : 0;
		1  1  x : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_err_
`else
`define _udp_def_ihp_dff_r_err_
primitive ihp_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;
	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_
`else
`define _udp_def_ihp_dff_r_
primitive ihp_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;
	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_sdfrbp_1 (Q, Q_N, CLK, D, RESET_B, SCD, SCE);
	output Q, Q_N;
	input D, SCD, SCE, RESET_B, CLK;
	reg notifier;

	
	wire int_fwire_d, int_fwire_IQ, int_fwire_IQN;
	wire int_fwire_r, xcr_0;

	ihp_mux2 (int_fwire_d, D, SCD, SCE);
	not (int_fwire_r, RESET_B);
	ihp_dff_r_err (xcr_0, CLK, int_fwire_d, int_fwire_r);
	ihp_dff_r (int_fwire_IQ, notifier, CLK, int_fwire_d, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (Q_N, int_fwire_IQN);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_mux2
`else
`define _udp_def_ihp_mux2
primitive ihp_mux2 (z, a, b, s);
	output z;
	input a, b, s;
	table
		1  ?  0 : 1;
		0  ?  0 : 0;
		?  1  1 : 1;
		?  0  1 : 0;
		0  0  x : 0;
		1  1  x : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_err_
`else
`define _udp_def_ihp_dff_r_err_
primitive ihp_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;
	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_
`else
`define _udp_def_ihp_dff_r_
primitive ihp_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;
	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_sdfrbp_2 (Q, Q_N, CLK, D, RESET_B, SCD, SCE);
	output Q, Q_N;
	input D, SCD, SCE, RESET_B, CLK;
	reg notifier;

	
	wire int_fwire_d, int_fwire_IQ, int_fwire_IQN;
	wire int_fwire_r, xcr_0;

	ihp_mux2 (int_fwire_d, D, SCD, SCE);
	not (int_fwire_r, RESET_B);
	ihp_dff_r_err (xcr_0, CLK, int_fwire_d, int_fwire_r);
	ihp_dff_r (int_fwire_IQ, notifier, CLK, int_fwire_d, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (Q_N, int_fwire_IQN);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_mux2
`else
`define _udp_def_ihp_mux2
primitive ihp_mux2 (z, a, b, s);
	output z;
	input a, b, s;
	table
		1  ?  0 : 1;
		0  ?  0 : 0;
		?  1  1 : 1;
		?  0  1 : 0;
		0  0  x : 0;
		1  1  x : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_err_
`else
`define _udp_def_ihp_dff_r_err_
primitive ihp_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;
	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_
`else
`define _udp_def_ihp_dff_r_
primitive ihp_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;
	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_sdfrbpq_1 (Q, CLK, D, RESET_B, SCD, SCE);
	output Q;
	input D, SCD, SCE, RESET_B, CLK;
	reg notifier;

	
	wire int_fwire_d, int_fwire_IQ, int_fwire_r;
	wire xcr_0;

	ihp_mux2 (int_fwire_d, D, SCD, SCE);
	not (int_fwire_r, RESET_B);
	ihp_dff_r_err (xcr_0, CLK, int_fwire_d, int_fwire_r);
	ihp_dff_r (int_fwire_IQ, notifier, CLK, int_fwire_d, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);

endmodule
`endcelldefine

`ifdef _udp_def_ihp_mux2
`else
`define _udp_def_ihp_mux2
primitive ihp_mux2 (z, a, b, s);
	output z;
	input a, b, s;
	table
		1  ?  0 : 1;
		0  ?  0 : 0;
		?  1  1 : 1;
		?  0  1 : 0;
		0  0  x : 0;
		1  1  x : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_err_
`else
`define _udp_def_ihp_dff_r_err_
primitive ihp_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;
	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_ihp_dff_r_
`else
`define _udp_def_ihp_dff_r_
primitive ihp_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;
	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif


`timescale 1ns/10ps
`celldefine
module sg13_sdfrbpq_2 (Q, CLK, D, RESET_B, SCD, SCE);
	output Q;
	input D, SCD, SCE, RESET_B, CLK;
	reg notifier;

	
	wire int_fwire_d, int_fwire_IQ, int_fwire_r;
	wire xcr_0;

	ihp_mux2 (int_fwire_d, D, SCD, SCE);
	not (int_fwire_r, RESET_B);
	ihp_dff_r_err (xcr_0, CLK, int_fwire_d, int_fwire_r);
	ihp_dff_r (int_fwire_IQ, notifier, CLK, int_fwire_d, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);

endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_xnor2_1 (Y, A, B);
	output Y;
	input A, B;
	wire int_fwire_0;
	xor (int_fwire_0, A, B);
	not (Y, int_fwire_0);
endmodule
`endcelldefine

`timescale 1ns/10ps
`celldefine
module sg13_xor2_1 (X, A, B);
	output X;
	input A, B;
	xor (X, A, B);
endmodule
`endcelldefine

