/*
 * Copyright (c) 2026 Yann Guidon
 * SPDX-License-Identifier: Apache-2.0
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

  wire UpdateStrobe, dn;
  ULSR_input_ctrl ictl(.SD(SD), .SC(SC), .Update(UpdateStrobe), .D(DO), .D_N(dn));

  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out = {7'b0000000, UpdateStrobe};

      //ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, dn, 1'b0};

endmodule
