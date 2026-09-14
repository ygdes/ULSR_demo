![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg) ![](../../workflows/fpga/badge.svg)

# ULSR in Verilog on Tiny Tapeout

ULSR means "Universal Latch-based Shift Register", designed for very small digital designs where a standard JTAG TAP takes too much resources and/or impedes on the DUT's performance. It's another high-density scan chain, tuned for extreme compactness and even fewer pins, at the price of some speed.

- 12-deep shift register, 2 pins in, 1 pin out (less than standard JTAG).
- 4 outputs, 4 inputs-outpus and 4 outpus bits.
- Evolution of [TinyScanChain](https://github.com/YannGuidon/TinyScanChain)
- See [Hackaday.io:DTAP2-ULSR](https://hackaday.io/project/206055-dtap2-ulsr) for more detailed info.
- [Read the (terse) documentation for project](docs/info.md)
- Intended for tapeout on [Tiny Tapeout IHP26b on SG13G2](https://app.tinytapeout.com/shuttles/ttihp26b)
- Code somewhat based on [Tiny Tapeout Verilog Project Template](https://github.com/TinyTapeout/ttihp-verilog-template) and [IHP_SG13_cells](https://github.com/YannGuidon/IHP_SG13_cells)
- [FAQ for TinyTapeout](https://tinytapeout.com/faq/)
