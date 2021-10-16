
package vexriscv.demo

import vexriscv.plugin._
import vexriscv._
import vexriscv.ip.{DataCacheConfig, InstructionCacheConfig}
import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba3.apb._
import spinal.lib.bus.amba4.axi._
import spinal.lib.com.jtag.Jtag
import spinal.lib.com.uart.{Apb3UartCtrl, Uart, UartCtrlGenerics, UartCtrlMemoryMappedConfig}
import spinal.lib.com.spi._
import spinal.lib.graphic.RgbConfig
import spinal.lib.io.TriStateArray
import spinal.lib.memory.sdram.SdramGeneration.SDR
import spinal.lib.memory.sdram._
import spinal.lib.memory.sdram.sdr.{Axi4SharedSdramCtrl, W9825G6JH6, SdramInterface, SdramTimings}
import spinal.lib.misc.HexTools
import spinal.lib.soc.pinsec.{PinsecTimerCtrl, PinsecTimerCtrlExternal}
import spinal.lib.system.debugger.{JtagAxi4SharedDebugger, JtagBridge, SystemDebugger, SystemDebuggerConfig}

import scala.collection.mutable.ArrayBuffer

object Apb3GpioSetClear
{
  def getApb3Config() = Apb3Config(addressWidth = 5, dataWidth = 32)
}

case class Apb3GpioSetClear(gpioWidth: Int, withReadSync : Boolean) extends Component
{
  val io = new Bundle
  {
    val apb  = slave(Apb3(Apb3GpioSetClear.getApb3Config()))
    val gpio = master(TriStateArray(gpioWidth bits))
    val value = out Bits(gpioWidth bits)
  }

  io.value := (if(withReadSync) BufferCC(io.gpio.read) else io.gpio.read)

  val ctrl = Apb3SlaveFactory(io.apb)
  ctrl.read(io.value, 0)
  ctrl.driveAndRead(io.gpio.write, 4)
  ctrl.driveAndRead(io.gpio.writeEnable, 8)
  ctrl.setOnSet(io.gpio.write.getDrivingReg, 12)
  ctrl.clearOnSet(io.gpio.write.getDrivingReg, 16)
  ctrl.setOnSet(io.gpio.writeEnable.getDrivingReg, 20)
  ctrl.clearOnSet(io.gpio.writeEnable.getDrivingReg, 24)
  io.gpio.writeEnable.getDrivingReg init(0)
}
