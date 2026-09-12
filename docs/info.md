## How it works

As the name "Universal Latch-based Shift Register" implies, it's a shift register based on individual latches. Its first advantage is the need of only two input clock signals.

- Instead of running on a single clock pulse, there are two independent clock signals SD and SC.
- Instead of using one DFF, it is split into its two constituent Master and Slave latches

Shifting one bit requires non-overlapping, alternating pulses on SD and SC.

RESET is performed with pulsing SD and SC in an overlapping sequence.

Capture and Update require slightly more complicated sequences but still usign only SD and SC.

## How fast does it run ?

I have no idea, it's all asynchronous magic. Short chains should reach 10 or 20MHz easily but since it's meant to be driven from some Arduino-style MCU through USB or a serial port, raw speed is not critical.

## How to test

Use some Arduino for example, and play with the clock signals. A sketch will be provided someday.

## External hardware

Usually some Arduino or something. Or clean/debounced buttons for manual operation.
