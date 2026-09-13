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
FA2    =  16
FA3    =  32
FAS    =  64  # out
FAC    = 128  # out

async def TestFullAdder(dut, f1, f2, f3, fs, fc):
  dut.uio_in.value = (f1*FA1) + (f2*FA2) + (f3*FA3)
  await ClockCycles(dut.clk, 1)
  dut._log.info(str(f1)+str(f2)+str(f3)+" : "+str(dut.uio_out.value[7])+str(dut.uio_out.value[6]))
  assert int(dut.uio_out.value[6]) == fs
  assert int(dut.uio_out.value[7]) == fc


async def PulseReset(dut):
  dut.uio_in.value = SD
  await ClockCycles(dut.clk, 1)
  dut.uio_in.value = SD+SC
  await ClockCycles(dut.clk, 1)
#  assert dut.uo_out.value == 1 ####### sortie temporaire de "uptdate"
#  assert int(dut.uio_out.value[2]) == 0  ## output DO should be 0
  dut.uio_in.value =    SC
  await ClockCycles(dut.clk, 1)
  dut.uio_in.value = 0
  await ClockCycles(dut.clk, 1)
#  assert int(dut.uio_out.value[2]) == 0  ## output DO should be 0

async def PulseSD(dut):
  dut.uio_in.value = SD
  await ClockCycles(dut.clk, 1)
  dut.uio_in.value = 0
  await ClockCycles(dut.clk, 1)

async def PulseSC(dut):
  dut.uio_in.value = SC
  await ClockCycles(dut.clk, 1)
  dut.uio_in.value = 0
  await ClockCycles(dut.clk, 1)

async def InjectBit(dut, bit):
  await PulseSD(dut)
  if bit==0 :
    await PulseSD(dut)
  await PulseSC(dut)

async def Update(dut):
  await PulseSD(dut)
#  dut._log.info("Update1: " + str(dut.uo_out.value[0]))
#  assert int(dut.uo_out.value[0])==0;
  await PulseSD(dut)
#  dut._log.info("Update2: " + str(dut.uo_out.value[0]))
#  assert int(dut.uo_out.value[0])==0;
  await PulseSD(dut)
#  dut._log.info("Update3: " + str(dut.uo_out.value[0]))  # must be 1 !
#  assert int(dut.uo_out.value[0])==1;
  await PulseSD(dut)
#  dut._log.info("Update4: " + str(dut.uo_out.value[0]))
#  assert int(dut.uo_out.value[0])==0;

async def Capture(dut):
  await PulseSC(dut)
#  dut._log.info("Capture1: " + str(dut.uo_out.value[1]))
#  assert int(dut.uo_out.value[1])==0;
  await PulseSC(dut)
#  dut._log.info("Capture2: " + str(dut.uo_out.value[1]))
#  assert int(dut.uo_out.value[1])==0;
  await PulseSC(dut)
#  dut._log.info("Capture3: " + str(dut.uo_out.value[1]))
#  assert int(dut.uo_out.value[1])==1;
  await PulseSC(dut)
#  dut._log.info("Capture3: " + str(dut.uo_out.value[1]))
#  assert int(dut.uo_out.value[1])==0;


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
  await ClockCycles(dut.clk, 1)
  dut.rst_n.value = 1
  await ClockCycles(dut.clk, 1)

  dut._log.info("Test project behavior")

  await TestFullAdder(dut, 0, 0, 0, 0, 0)
  await TestFullAdder(dut, 0, 0, 1, 1, 0)
  await TestFullAdder(dut, 0, 1, 0, 1, 0)
  await TestFullAdder(dut, 0, 1, 1, 0, 1)
  await TestFullAdder(dut, 1, 0, 0, 1, 0)
  await TestFullAdder(dut, 1, 0, 1, 0, 1)
  await TestFullAdder(dut, 1, 1, 0, 0, 1)
  await TestFullAdder(dut, 1, 1, 1, 1, 1)

  await PulseReset(dut)
  assert dut.uo_out.value == 0

  ## shift a single 1 bit
  await InjectBit(dut, 1)
  for i in range(0, 8):
    await Update(dut)
    dut._log.info("Inject: " + str(dut.uo_out.value))
    assert int(dut.uo_out.value[i])==1;
    await InjectBit(dut, 0)

  await Update(dut)
  dut._log.info("Inject: " + str(dut.uo_out.value))
  assert dut.uo_out.value==0;


  await Capture(dut)

#  # Set the input values you want to test
#  dut.ui_in.value = 20
#  dut.uio_in.value = 30

#  # Wait for one clock cycle to see the output values
#  await ClockCycles(dut.clk, 1)

#  # The following assersion is just an example of how to check the output values.
#  # Change it to match the actual expected output of your module:
#  assert dut.uo_out.value == 50
