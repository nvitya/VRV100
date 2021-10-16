/************************************
VRV1_443 SoC:
-----------
VexRiscV CPU Core (I32M):
 - I32 with the following extensions: Mul-Div (M)
 - Frequency fixed to 100 MHz
 - MCYCLE CSR
 - Single Cycle Shift
 - 4k Instruction Cache (below 0xF0000000)
 - 4k Data Cache (below 0xF0000000)
 - JTAG Debugging Interface (special openocd required)
Integrater Peripherals:
 0x40000000: SDRAM, 32 MByte
 0x80000000: OC-RAM, 16 kByte, the first 1k reserved for the boot loader
 0xF0000000: GPIOA (32 bit, bidirectional, independent bit control)
 0xF0001000: GPIOB (32 bit, bidirectional, independent bit control)
 0xF0010000: UART1, used as debug console
 0xF0011000: UART2
 0xF0020000: Timer
(no VGA controller)
 0xF0040000: SPI Master 1 (CS0: SPI Flash)
 0xF0041000: SPI Master 2
 0xF1000000: External APB3 Bus (Master) - for user extensions
*/

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
import spinal.lib.io.TriStateArray
import spinal.lib.memory.sdram.SdramGeneration.SDR
import spinal.lib.memory.sdram._
import spinal.lib.memory.sdram.sdr.{Axi4SharedSdramCtrl, W9825G6JH6, SdramInterface, SdramTimings}
import spinal.lib.misc.HexTools
import spinal.lib.soc.pinsec.{PinsecTimerCtrl, PinsecTimerCtrlExternal}
import spinal.lib.system.debugger.{JtagAxi4SharedDebugger, JtagBridge, SystemDebugger, SystemDebuggerConfig}

import scala.collection.mutable.ArrayBuffer


case class VRV1_443Config(
  axiFrequency : HertzNumber,
  onChipRamSize : BigInt,
  sdramLayout: SdramLayout,
  sdramTimings: SdramTimings,
  cpuPlugins : ArrayBuffer[Plugin[VexRiscv]],
  uart1CtrlConfig : UartCtrlMemoryMappedConfig,
  uart2CtrlConfig : UartCtrlMemoryMappedConfig,
  spim1CtrlConfig : SpiMasterCtrlMemoryMappedConfig,
  spim2CtrlConfig : SpiMasterCtrlMemoryMappedConfig
)

object VRV1_443Config
{
  def default =
  {
    val config = VRV1_443Config(
      axiFrequency = 100 MHz,
      onChipRamSize  = 16 kB,
      sdramLayout = W9825G6JH6.layout,
      sdramTimings = W9825G6JH6.timingGrade7,
      uart1CtrlConfig = UartCtrlMemoryMappedConfig(
        uartCtrlConfig = UartCtrlGenerics(
          dataWidthMax      = 8,
          clockDividerWidth = 20,
          preSamplingSize   = 1,
          samplingSize      = 5,
          postSamplingSize  = 2
        ),
        txFifoDepth = 1024,
        rxFifoDepth = 1024
      ),
      uart2CtrlConfig = UartCtrlMemoryMappedConfig(
        uartCtrlConfig = UartCtrlGenerics(
          dataWidthMax      = 8,
          clockDividerWidth = 20,
          preSamplingSize   = 1,
          samplingSize      = 5,
          postSamplingSize  = 2
        ),
        txFifoDepth = 1024,
        rxFifoDepth = 1024
      ),
      spim1CtrlConfig = SpiMasterCtrlMemoryMappedConfig(
        ctrlGenerics = SpiMasterCtrlGenerics(
          ssWidth			    = 4,
          timerWidth        = 16,
          dataWidth         = 8
        ),
        cmdFifoDepth = 512,
        rspFifoDepth = 512
      ),
      spim2CtrlConfig = SpiMasterCtrlMemoryMappedConfig(
        ctrlGenerics = SpiMasterCtrlGenerics(
          ssWidth			    = 4,
          timerWidth        = 16,
          dataWidth         = 8
        ),
        cmdFifoDepth = 512,
        rspFifoDepth = 512
      ),
      cpuPlugins = ArrayBuffer(
        //new PcManagerSimplePlugin(0x80000000l, false),

        new IBusCachedPlugin(
          resetVector = 0x80000000l,
          prediction = STATIC,
			 //compressedGen = true,
          config = InstructionCacheConfig(
            cacheSize = 4096,
            bytePerLine =32,
            wayCount = 1,
            addressWidth = 32,
            cpuDataWidth = 32,
            memDataWidth = 32,
            catchIllegalAccess = true,
            catchAccessFault = true,
            asyncTagMemory = false,
            twoCycleRam = true,    // !!!!!!!
            twoCycleCache = true   // !!!!!!!
          )
        ),
        new DBusCachedPlugin(
          config = new DataCacheConfig(
            cacheSize         = 4096,
            bytePerLine       = 32,
            wayCount          = 1,
            addressWidth      = 32,
            cpuDataWidth      = 32,
            memDataWidth      = 32,
            catchAccessError  = true,
            catchIllegal      = true,
            catchUnaligned    = true
          ),
          memoryTranslatorPortConfig = null
        ),
        new StaticMemoryTranslatorPlugin(
          ioRange      = _(31 downto 28) === 0xF
        ),

        new DecoderSimplePlugin(
          catchIllegalInstruction = true
        ),
        new RegFilePlugin(
          regFileReadyKind = plugin.SYNC,
          zeroBoot = false
        ),
        new IntAluPlugin,
        new SrcPlugin(
          separatedAddSub = false,
          executeInsertion = true
        ),
        new FullBarrelShifterPlugin,
        new MulPlugin,
        new DivPlugin,
        new HazardSimplePlugin(
          bypassExecute           = true,
          bypassMemory            = true,
          bypassWriteBack         = true,
          bypassWriteBackBuffer   = true,
          pessimisticUseSrc       = false,
          pessimisticWriteRegFile = false,
          pessimisticAddressMatch = false
        ),
        new BranchPlugin(
          earlyBranch = false,
          catchAddressMisaligned = true
        ),
        new CsrPlugin(
          config = CsrPluginConfig(
            catchIllegalAccess = false,
            mvendorid      = null,
            marchid        = null,
            mimpid         = null,
            mhartid        = null,
            misaExtensionsInit = 66,
            misaAccess     = CsrAccess.NONE,
            mtvecAccess    = CsrAccess.NONE,
            mtvecInit      = 0x80000020l,
            mepcAccess     = CsrAccess.READ_WRITE,
            mscratchGen    = false,
            mcauseAccess   = CsrAccess.READ_ONLY,
            mbadaddrAccess = CsrAccess.READ_ONLY,
            mcycleAccess   = CsrAccess.READ_ONLY,
            minstretAccess = CsrAccess.NONE,
            ecallGen       = false,
            wfiGenAsWait         = false,
            ucycleAccess   = CsrAccess.NONE,
            uinstretAccess = CsrAccess.NONE
          )
        ),
        new YamlPlugin("cpu0.yaml")
      )
    )
    config
  }
}

class VRV1_443(config: VRV1_443Config) extends Component
{
  //Legacy constructor
  def this(axiFrequency: HertzNumber)
  {
    this(VRV1_443Config.default.copy(axiFrequency = axiFrequency))
  }

  import config._
  val debug = true
  val interruptCount = 4

  val io = new Bundle
  {
    //Clocks / reset
    val asyncReset = in Bool()
    val axiClk     = in Bool()

    //Main components IO
    val jtag       = slave(Jtag())
    val sdram      = master(SdramInterface(sdramLayout))

    //Peripherals IO
    val gpioA         = master(TriStateArray(32 bits))
    val gpioB         = master(TriStateArray(32 bits))
    val uart1         = master(Uart())
    val uart2         = master(Uart())
    val spim1         = master(SpiMaster(spim1CtrlConfig.ctrlGenerics.ssWidth))
    val spim2         = master(SpiMaster(spim2CtrlConfig.ctrlGenerics.ssWidth))

    val timerExternal = in(PinsecTimerCtrlExternal())
    val coreInterrupt = in Bool()

	 val apb2 = master(Apb3(
      addressWidth = 20,
      dataWidth    = 32
	  ))
  }

  val resetCtrlClockDomain = ClockDomain(
    clock = io.axiClk,
    config = ClockDomainConfig(
      resetKind = BOOT
    )
  )

  val resetCtrl = new ClockingArea(resetCtrlClockDomain)
  {
    val systemResetUnbuffered  = False
//    val coreResetUnbuffered = False

    //Implement an counter to keep the reset axiResetOrder high 64 cycles
    // Also this counter will automaticly do a reset when the system boot.
    val systemResetCounter = Reg(UInt(6 bits)) init(0)
    when(systemResetCounter =/= U(systemResetCounter.range -> true)){
      systemResetCounter := systemResetCounter + 1
      systemResetUnbuffered := True
    }
    when(BufferCC(io.asyncReset)){
      systemResetCounter := 0
    }

    //Create all reset used later in the design
    val systemReset  = RegNext(systemResetUnbuffered)
    val axiReset     = RegNext(systemResetUnbuffered)
  }

  val axiClockDomain = ClockDomain(
    clock = io.axiClk,
    reset = resetCtrl.axiReset,
    frequency = FixedFrequency(axiFrequency) //The frequency information is used by the SDRAM controller
  )

  val debugClockDomain = ClockDomain(
    clock = io.axiClk,
    reset = resetCtrl.systemReset,
    frequency = FixedFrequency(axiFrequency)
  )

  val axi = new ClockingArea(axiClockDomain) {

    val ocram = Axi4SharedOnChipRam(
      dataWidth = 32,
      byteCount = onChipRamSize,
      idWidth = 4
    )

    val sdramCtrl = Axi4SharedSdramCtrl(
      axiDataWidth = 32,
      axiIdWidth   = 4,
      layout       = sdramLayout,
      timing       = sdramTimings,
      CAS          = 3
    )

    val apbBridge = Axi4SharedToApb3Bridge(
      addressWidth = 20,
      dataWidth    = 32,
      idWidth      = 4
    )

    val apbBridge2 = Axi4SharedToApb3Bridge(
      addressWidth = 20,
      dataWidth    = 32,
      idWidth      = 4
    )

    val gpioACtrl = Apb3GpioSetClear(
      gpioWidth = 32,
      withReadSync = false
    )
    val gpioBCtrl = Apb3GpioSetClear(
      gpioWidth = 32,
      withReadSync = false
    )

    val timerCtrl = PinsecTimerCtrl()

    val uart1Ctrl = Apb3UartCtrl(uart1CtrlConfig)
    val uart2Ctrl = Apb3UartCtrl(uart2CtrlConfig)

    val spim1Ctrl = Apb3SpiMasterCtrl(spim1CtrlConfig)
    val spim2Ctrl = Apb3SpiMasterCtrl(spim2CtrlConfig)

    val core = new Area
	 {
      val config = VexRiscvConfig(
        plugins = cpuPlugins += new DebugPlugin(debugClockDomain)
      )

      val cpu = new VexRiscv(config)
      var iBus : Axi4ReadOnly = null
      var dBus : Axi4Shared = null

      for (plugin <- config.plugins) plugin match
		{
         case plugin : IBusSimplePlugin => iBus = plugin.iBus.toAxi4ReadOnly()
         case plugin : IBusCachedPlugin => iBus = plugin.iBus.toAxi4ReadOnly()
         case plugin : DBusSimplePlugin => dBus = plugin.dBus.toAxi4Shared()
         case plugin : DBusCachedPlugin => dBus = plugin.dBus.toAxi4Shared(true)
         case plugin : CsrPlugin        => {
           plugin.externalInterrupt := BufferCC(io.coreInterrupt)
           plugin.timerInterrupt := timerCtrl.io.interrupt
         }
			case plugin : DebugPlugin         => debugClockDomain{
			  resetCtrl.axiReset setWhen(RegNext(plugin.io.resetOut))
			  io.jtag <> plugin.io.bus.fromJtag()
			}

         case _ =>
      }
    }


    val axiCrossbar = Axi4CrossbarFactory()

    axiCrossbar.addSlaves(
      ocram.io.axi      -> (0x80000000L,   onChipRamSize),
      sdramCtrl.io.axi  -> (0x40000000L,   sdramLayout.capacity),
      apbBridge.io.axi  -> (0xF0000000L,   1 MB),
      apbBridge2.io.axi -> (0xF1000000L,   1 MB)
    )

    axiCrossbar.addConnections(
      core.iBus       -> List( ocram.io.axi, sdramCtrl.io.axi),
      core.dBus       -> List( ocram.io.axi, sdramCtrl.io.axi, apbBridge.io.axi, apbBridge2.io.axi )
    )


    axiCrossbar.addPipelining(apbBridge.io.axi)((crossbar,bridge) => {
      crossbar.sharedCmd.halfPipe() >> bridge.sharedCmd
      crossbar.writeData.halfPipe() >> bridge.writeData
      crossbar.writeRsp             << bridge.writeRsp
      crossbar.readRsp              << bridge.readRsp
    })

    axiCrossbar.addPipelining(apbBridge2.io.axi)((crossbar,bridge) => {
      crossbar.sharedCmd.halfPipe() >> bridge.sharedCmd
      crossbar.writeData.halfPipe() >> bridge.writeData
      crossbar.writeRsp             << bridge.writeRsp
      crossbar.readRsp              << bridge.readRsp
    })

    axiCrossbar.addPipelining(sdramCtrl.io.axi)((crossbar,ctrl) => {
      crossbar.sharedCmd.halfPipe()  >>  ctrl.sharedCmd
      crossbar.writeData            >/-> ctrl.writeData
      crossbar.writeRsp              <<  ctrl.writeRsp
      crossbar.readRsp               <<  ctrl.readRsp
    })

    axiCrossbar.addPipelining(ocram.io.axi)((crossbar,ctrl) => {
      crossbar.sharedCmd.halfPipe()  >>  ctrl.sharedCmd
      crossbar.writeData            >/-> ctrl.writeData
      crossbar.writeRsp              <<  ctrl.writeRsp
      crossbar.readRsp               <<  ctrl.readRsp
    })

    axiCrossbar.addPipelining(core.dBus)((cpu,crossbar) => {
      cpu.sharedCmd             >>  crossbar.sharedCmd
      cpu.writeData             >>  crossbar.writeData
      cpu.writeRsp              <<  crossbar.writeRsp
      cpu.readRsp               <-< crossbar.readRsp //Data cache directly use read responses without buffering, so pipeline it for FMax
    })

    axiCrossbar.build()


    val apbDecoder = Apb3Decoder(
	 //
      master = apbBridge.io.apb,
      slaves = List
	   (
        gpioACtrl.io.apb  -> (0x00000, 4 kB),
        gpioBCtrl.io.apb  -> (0x01000, 4 kB),
        uart1Ctrl.io.apb  -> (0x10000, 4 kB),
        uart2Ctrl.io.apb  -> (0x11000, 4 kB),
        timerCtrl.io.apb  -> (0x20000, 4 kB),
        spim1Ctrl.io.apb  -> (0x40000, 4 kB),
        spim2Ctrl.io.apb  -> (0x41000, 4 kB)
      )
    )
  }

  io.sdram          <> axi.sdramCtrl.io.sdram

  io.gpioA          <> axi.gpioACtrl.io.gpio
  io.gpioB          <> axi.gpioBCtrl.io.gpio
  io.timerExternal  <> axi.timerCtrl.io.external
  io.uart1          <> axi.uart1Ctrl.io.uart
  io.uart2          <> axi.uart2Ctrl.io.uart
  io.spim1          <> axi.spim1Ctrl.io.spi
  io.spim2          <> axi.spim2Ctrl.io.spi

  io.apb2           <> axi.apbBridge2.io.apb
}

// Cyclone IV Starter Kit
object VRV1_443
{
  def main(args: Array[String])
  {
    val config = SpinalConfig()
    config.generateVerilog(
	 {
      val toplevel = new VRV1_443(VRV1_443Config.default)
      HexTools.initRam(toplevel.axi.ocram.ram, "VRV1_443_1M.hex", 0x80000000l)
      toplevel
    })
  }
}
