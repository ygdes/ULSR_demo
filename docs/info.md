## How it works

As the name "Universal Latch-based Shift Register" implies, it's a shift register based on individual latches. Its first advantage is the need of only two input clock signals.

- Instead of running on a single clock pulse, there are two independent clock signals SD and SC.
- Instead of using one DFF, it is split into its two constituent Master and Slave latches

Shifting one bit requires non-overlapping, alternating pulses on SD and SC.

RESET is performed with pulsing SD and SC in an overlapping sequence.

Capture and Update require slightly more complicated sequences but still use only SD and SC.

## How fast does it run ?

I have no idea, it's all asynchronous magic. Short chains should reach 10 or 20MHz easily but since it's meant to be driven from some Arduino-style MCU through USB or a serial port, raw speed is not critical.

## Architecture

Below is an abridged diagram with 4 in and 4 out pins (for brevity). Source : [DTAP2-ULSR on Hackaday.io](https://hackaday.io/project/206055-dtap2-ulsr) where transparent latches are replaced by back-fed MUX2 for simulation sake.

There are 3 main stages :

- data input generator (recreates the missing data in pin's value)
- output block (somewhat merged with the previous block)
- input block

The actual implementation has 12 bits of depth, with the 4 middle ones being both inputs and outputs.

![](ULSR-4i-4o.2000.png)

## Cell usage

For 8 inputs and 8 outputs (including 4 combined in and out)
* ``` a22oi a221oi a21oi :	66 ``` one for the full adder, the rest for the bulk of the scan chain.
* ``` buf : 35 ``` I never asked for them
* ``` inv : 4 ``` including one for the full adder
* ``` dfrbp : 4 ``` for the decoders.
* ``` xor2 : 2 ``` Full adder
* ``` and2 : 1 ``` capture decoder.

Result:
![](ULSR_3D_inv.png)

Conclusion :
``` 112 total cells (excluding fill and tap cells)```
And it's still bloated by the toolchain with
* many unwanted buffers (the tool tried to optimise for ultimate speed despite the design speed set to 1Hz),
* some "constant" cells (tiehi) for the io dir port,
* some gates for the extra full adder...

But can you do something this compact with the JTAG standard? And since each bit/stage does not require absolute synchronism or a tight timing, the clock network is relaxed and each register uses less space than a standard DFF.

## Protocol

You can find these operations in the ```test/test.py``` script.
* RESET is : set SD high, set SC high, set SD low, set SC low.
* inject a '0' bit in the chain : pulse SD, pulse SD, pulse SC.
* inject a '0' bit in the chain : pulse SD, pulse SC.
* Capture : pulse SC 4 times
* Update : pulse SD 4 times
A more elaborate protocol can be designed on top of this, for example: addressing specific registers by counting the number of bits injected. Let your imagination go wild!

## How to test

Use some Arduino for example, and play with the SD/SC signals. A sketch will be provided someday, transcribing the code in ```test/test.py```

5 leftover pins are connected to a Full Adder that you can test it with the scan chain through external wires. Have fun injecting errors to see if the scan chain can detect them!
