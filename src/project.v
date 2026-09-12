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

  wire SD, SC, DO,
       FA1, FA2, FA3,
       FAS, FAC;

//  # Bidirectional pins
//  uio[0]: "SD"
//  uio[1]: "SC"
//  uio[2]: "DO" => out
//  uio[3]: "FA1"
//  uio[4]: "FA2"
//  uio[5]: "FA3"
//  uio[6]: "FAC" => out
//  uio[7]: "FAS" => out

  assign uio_oe  = 8'b11000100;
  assign uio_out = 0;


  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in


  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule
