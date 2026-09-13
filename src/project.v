/*
 * Copyright (c) 2026 Yann Guidon
 * SPDX-License-Identifier: Apache-2.0
 *
 * this is the top level for a 12-bit deep shift register
 *  with 8 inputs and 8 outpus, minimal control logic and minimal size.
 */

`default_nettype none

module tt_um_ULSR88 (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

//  # Bidirectional pins
//  uio[0]: "SD"
//  uio[1]: "SC"
//  uio[2]: "DO" => out
//  uio[3]: "FA1"
//  uio[4]: "FA2"
//  uio[5]: "FA3"
//  uio[6]: "FAS" => out
//  uio[7]: "FAC" => out
  assign uio_oe  = 8'b11000100;

  wire SD, SC, DO,
       FA1, FA2, FA3,
       FAS, FAC;

  assign SD  = uio_in[0]; // clock inputs
  assign SC  = uio_in[1];

  assign FA1 = uio_in[3]; // Full Adder inputs
  assign FA2 = uio_in[4];
  assign FA3 = uio_in[5];
  FullAdderSG13 FA(.d1(FA1), .d2(FA2), .d3(FA3), .S(FAS), .C(FAC));
  assign uio_out = {FAC, FAS, 3'b000, DO, 2'b00};

  wire UpdateStrobe, CaptureStrobe;
  ULSR_output_ctrl octrl(.SD(SD), .SC(SC), .Capture(CaptureStrobe));

  wire [12:0] dp, dn;
  ULSR_input_ctrl ictl(.SD(SD), .SC(SC), .Update(UpdateStrobe), .D(dp[0]), .D_N(dn[0]));
  // output registers:
  ULSR_out_bit ob0(.D(dp[0]), .D_N(dn[0]), .SD(SD), .SC(SC), .update(UpdateStrobe), .Dout(uo_out[0]), .Q(dp[1]), .Q_N(dn[1]));
  ULSR_out_bit ob1(.D(dp[1]), .D_N(dn[1]), .SD(SD), .SC(SC), .update(UpdateStrobe), .Dout(uo_out[1]), .Q(dp[2]), .Q_N(dn[2]));
  ULSR_out_bit ob2(.D(dp[2]), .D_N(dn[2]), .SD(SD), .SC(SC), .update(UpdateStrobe), .Dout(uo_out[2]), .Q(dp[3]), .Q_N(dn[3]));
  ULSR_out_bit ob3(.D(dp[3]), .D_N(dn[3]), .SD(SD), .SC(SC), .update(UpdateStrobe), .Dout(uo_out[3]), .Q(dp[4]), .Q_N(dn[4]));
  // input/output registers:
  ULSR_inout_bit iob4(.D(dp[4]), .D_N(dn[4]), .SD(SD), .SC(SC),  .capture(CaptureStrobe), .Din(ui_in[0]), .update(UpdateStrobe), .Dout(uo_out[4]), .Q(dp[5]), .Q_N(dn[5]));
  ULSR_inout_bit iob5(.D(dp[5]), .D_N(dn[5]), .SD(SD), .SC(SC),  .capture(CaptureStrobe), .Din(ui_in[1]), .update(UpdateStrobe), .Dout(uo_out[5]), .Q(dp[6]), .Q_N(dn[6]));
  ULSR_inout_bit iob6(.D(dp[6]), .D_N(dn[6]), .SD(SD), .SC(SC),  .capture(CaptureStrobe), .Din(ui_in[2]), .update(UpdateStrobe), .Dout(uo_out[6]), .Q(dp[7]), .Q_N(dn[7]));
  ULSR_inout_bit iob7(.D(dp[7]), .D_N(dn[7]), .SD(SD), .SC(SC),  .capture(CaptureStrobe), .Din(ui_in[3]), .update(UpdateStrobe), .Dout(uo_out[7]), .Q(dp[8]), .Q_N(dn[8]));
  // input registers:
  ULSR_in_bit  ib8 (.D(dp[ 8]), .D_N(dn[ 8]), .SD(SD), .SC(SC),  .capture(CaptureStrobe), .Din(ui_in[4]), .Q(dp[ 9]), .Q_N(dn[ 9]));
  ULSR_in_bit  ib9 (.D(dp[ 9]), .D_N(dn[ 9]), .SD(SD), .SC(SC),  .capture(CaptureStrobe), .Din(ui_in[5]), .Q(dp[10]), .Q_N(dn[10]));
  ULSR_in_bit  ib10(.D(dp[10]), .D_N(dn[10]), .SD(SD), .SC(SC),  .capture(CaptureStrobe), .Din(ui_in[6]), .Q(dp[11]), .Q_N(dn[11]));
  ULSR_in_bit  ib11(.D(dp[11]), .D_N(dn[11]), .SD(SD), .SC(SC),  .capture(CaptureStrobe), .Din(ui_in[7]), .Q(dp[12]), .Q_N(dn[12]));

  assign DO = dp[12];

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, dn[12], 1'b0};

endmodule
