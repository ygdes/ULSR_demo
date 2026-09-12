# SPDX-FileCopyrightText: © 2026 Yann Guidon
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

# bidir pins:
SD     =   1
SC     =   2
DO     =   4  # out
FA1    =   8
FA2    =  13
FA3    =  32
FAS    =  64  # out
FAC    = 128  # out

async def TestFullAdder(dut, f1, f2, f3, fs, fc):
  dut.uio_in.value = (f1*FA1) + (f2*FA2) + (f3*FA3)
  await ClockCycles(dut.clk, 3)
  assert int(dut.uio_out.value[6]) == fs
  assert int(dut.uio_out.value[7]) == fc


@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    # Set the clock period to 10 us (100 KHz)
    clock = Clock(dut.clk, 10, unit="us")
    cocotb.start_soon(clock.start())

    # Reset
    dut._log.info("Reset")
    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 10)
    dut.rst_n.value = 1

    dut._log.info("Test project behavior")

    await TestFullAdder(dut, 0, 0, 0, 0, 0)
    await TestFullAdder(dut, 0, 0, 1, 1, 0)
    await TestFullAdder(dut, 0, 1, 0, 1, 0)
    await TestFullAdder(dut, 0, 1, 1, 0, 1)
    await TestFullAdder(dut, 1, 0, 0, 1, 0)
    await TestFullAdder(dut, 1, 0, 1, 0, 1)
    await TestFullAdder(dut, 1, 1, 0, 0, 1)
    await TestFullAdder(dut, 1, 1, 1, 1, 1)

    # Set the input values you want to test
    dut.ui_in.value = 20
    dut.uio_in.value = 30

    # Wait for one clock cycle to see the output values
    await ClockCycles(dut.clk, 1)

    # The following assersion is just an example of how to check the output values.
    # Change it to match the actual expected output of your module:
    assert dut.uo_out.value == 50

    # Keep testing the module by changing the input values, waiting for
    # one or more clock cycles, and asserting the expected output values.
