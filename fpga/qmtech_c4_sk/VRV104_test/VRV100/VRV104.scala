/************************************
VRV104 SoC:
-----------
VexRiscV CPU Core (I32M):
 - I32 with the following extensions: Mul-Div (M)
 - Frequency fixed to 100 MHz
 - MCYCLE CSR
 - Single Cycle Shift
 (no Instruction Cache)
 (no Data Cache)
 - JTAG Debugging Interface (special openocd required)
Integrater Peripherals:
 0x10000000: OCRAM, 32 kByte
 (no SDRAM)
 0x80000000: BOOTROM(RAM), 4 kByte
 0xF0000000: GPIOA (32 bit, bidirectional, independent bit control)
 (no GPIOB)
 0xF0010000: UART1, used as debug console
 (no UART2)
 0xF0020000: Timer
 (no VGA controller)
 0xF0040000: SPI Master 1 (CS0: SPI Flash)
 (no SPI2)
 0xF1000000: External APB3 Bus (Master) - for user extensions
*/

package vexriscv.demo

import vexriscv.plugin._
import vexriscv._
import vexriscv.ip.{DataCacheConfig, InstructionCacheConfig}
import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba3.apb._
import spinal.lib.bus.misc.SizeMapping
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.simple._
import spinal.lib.bus.simple.PipelinedMemoryBus
import spinal.lib.com.jtag.Jtag
import spinal.lib.com.uart.{Apb3UartCtrl, Uart, UartCtrlGenerics, UartCtrlMemoryMappedConfig}
import spinal.lib.com.spi._
import spinal.lib.io.TriStateArray
import spinal.lib.misc.HexTools
import spinal.lib.soc.pinsec.{PinsecTimerCtrl, PinsecTimerCtrlExternal}
import spinal.lib.system.debugger.{JtagAxi4SharedDebugger, JtagBridge, SystemDebugger, SystemDebuggerConfig}

import scala.collection.mutable.ArrayBuffer


case class VRV104Config(
  coreFrequency      : HertzNumber,
  onChipRamSize      : BigInt,
  pipelineDBus       : Boolean,
  pipelineMainBus    : Boolean,
  pipelineApbBridge  : Boolean,
  hardwareBreakpointCount : Int,
  cpuPlugins : ArrayBuffer[Plugin[VexRiscv]],
  uart1CtrlConfig : UartCtrlMemoryMappedConfig,
  spim1CtrlConfig : SpiMasterCtrlMemoryMappedConfig
)

object VRV104Config
{
  def default =
  {
    val config = VRV104Config(
      coreFrequency = 100 MHz,
      onChipRamSize  = 32 kB,
	   hardwareBreakpointCount = 0,
		pipelineDBus          = true,
		pipelineMainBus       = false,
		pipelineApbBridge     = true,

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
      spim1CtrlConfig = SpiMasterCtrlMemoryMappedConfig(
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

        new IBusSimplePlugin(
          resetVector = 0x80000000l,
          cmdForkOnSecondStage = true,
          cmdForkPersistence = false,
          prediction = NONE,
          catchAccessFault = true,
          compressedGen = false
        ),
        new DBusSimplePlugin(
          catchAddressMisaligned = false,
          catchAccessFault = false,
          earlyInjection = false
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

class VRV104(config: VRV104Config) extends Component
{
  import config._

  val io = new Bundle
  {
    //Clocks / reset
    val asyncReset = in Bool()
    val mainClk     = in Bool()

    //Main components IO
    val jtag       = slave(Jtag())

    //Peripherals IO
    val gpioA         = master(TriStateArray(32 bits))
    val uart1         = master(Uart())
    val spim1         = master(SpiMaster(spim1CtrlConfig.ctrlGenerics.ssWidth))

    val timerExternal = in(PinsecTimerCtrlExternal())
    val coreInterrupt = in Bool()

	 val apb2 = master(Apb3(
      addressWidth = 20,
      dataWidth    = 32
	  ))
  }

  val resetCtrlClockDomain = ClockDomain(
    clock = io.mainClk,
    config = ClockDomainConfig(
      resetKind = BOOT
    )
  )

  val resetCtrl = new ClockingArea(resetCtrlClockDomain) {
    val mainClkResetUnbuffered  = False

    //Implement an counter to keep the reset axiResetOrder high 64 cycles
    // Also this counter will automatically do a reset when the system boot.
    val systemClkResetCounter = Reg(UInt(6 bits)) init(0)
    when(systemClkResetCounter =/= U(systemClkResetCounter.range -> true)){
      systemClkResetCounter := systemClkResetCounter + 1
      mainClkResetUnbuffered := True
    }
    when(BufferCC(io.asyncReset)){
      systemClkResetCounter := 0
    }

    //Create all reset used later in the design
    val mainClkReset = RegNext(mainClkResetUnbuffered)
    val systemReset  = RegNext(mainClkResetUnbuffered)
  }

  val systemClockDomain = ClockDomain(
    clock = io.mainClk,
    reset = resetCtrl.systemReset,
    frequency = FixedFrequency(coreFrequency)
  )

  val debugClockDomain = ClockDomain(
    clock = io.mainClk,
    reset = resetCtrl.mainClkReset,
    frequency = FixedFrequency(coreFrequency)
  )

  val system = new ClockingArea(systemClockDomain) {
    val pipelinedMemoryBusConfig = PipelinedMemoryBusConfig(
      addressWidth = 32,
      dataWidth = 32
    )

    val bigEndianDBus = false

    //Arbiter of the cpu dBus/iBus to drive the mainBus
    //Priority to dBus, !! cmd transactions can change on the fly !!
    val mainBusArbiter = new MuraxMasterArbiter(pipelinedMemoryBusConfig, bigEndianDBus)

    //Instanciate the CPU
    val cpu = new VexRiscv(
      config = VexRiscvConfig(
        plugins = cpuPlugins += new DebugPlugin(debugClockDomain, hardwareBreakpointCount)
      )
    )

    //Checkout plugins used to instanciate the CPU to connect them to the SoC
    val timerInterrupt = False
    val externalInterrupt = False
    for(plugin <- cpu.plugins) plugin match{
      case plugin : IBusSimplePlugin =>
        mainBusArbiter.io.iBus.cmd <> plugin.iBus.cmd
        mainBusArbiter.io.iBus.rsp <> plugin.iBus.rsp
      case plugin : DBusSimplePlugin => {
        if(!pipelineDBus)
          mainBusArbiter.io.dBus <> plugin.dBus
        else {
          mainBusArbiter.io.dBus.cmd << plugin.dBus.cmd.halfPipe()
          mainBusArbiter.io.dBus.rsp <> plugin.dBus.rsp
        }
      }
      case plugin : CsrPlugin        => {
        plugin.externalInterrupt := externalInterrupt
        plugin.timerInterrupt := timerInterrupt
      }
      case plugin : DebugPlugin         => plugin.debugClockDomain{
        resetCtrl.systemReset setWhen(RegNext(plugin.io.resetOut))
        io.jtag <> plugin.io.bus.fromJtag()
      }
      case _ =>
    }

    //****** MainBus slaves ********
    val mainBusMapping = ArrayBuffer[(PipelinedMemoryBus,SizeMapping)]()

    val bootrom = new MuraxPipelinedMemoryBusRam(
      onChipRamSize = 4 kB,
      onChipRamHexFile = "VRV104_1M.hex",
      pipelinedMemoryBusConfig = pipelinedMemoryBusConfig,
      bigEndian = bigEndianDBus
    )
    mainBusMapping += bootrom.io.bus -> (0x80000000l, 4 kB)

    val ram = new MuraxPipelinedMemoryBusRam(
      onChipRamSize = onChipRamSize,
      onChipRamHexFile = null,
      pipelinedMemoryBusConfig = pipelinedMemoryBusConfig,
      bigEndian = bigEndianDBus
    )
    mainBusMapping += ram.io.bus -> (0x10000000l, onChipRamSize)

    val apbBridge = new PipelinedMemoryBusToApbBridge(
      apb3Config = Apb3Config(
        addressWidth = 20,
        dataWidth = 32
      ),
      pipelineBridge = pipelineApbBridge,
      pipelinedMemoryBusConfig = pipelinedMemoryBusConfig
    )
    mainBusMapping += apbBridge.io.pipelinedMemoryBus -> (0xF0000000l, 1 MB)

    val apbBridge2 = new PipelinedMemoryBusToApbBridge(
      apb3Config = Apb3Config(
        addressWidth = 20,
        dataWidth = 32
      ),
      pipelineBridge = pipelineApbBridge,
      pipelinedMemoryBusConfig = pipelinedMemoryBusConfig
    )
    mainBusMapping += apbBridge2.io.pipelinedMemoryBus -> (0xF1000000l, 1 MB)

    //******** APB peripherals *********

    val gpioACtrl = Apb3GpioSetClear(
      gpioWidth = 32,
      withReadSync = true
    )

    val uart1Ctrl = Apb3UartCtrl(uart1CtrlConfig)
    val spim1Ctrl = Apb3SpiMasterCtrl(spim1CtrlConfig)
    val timerCtrl = PinsecTimerCtrl()

    val apbMapping = ArrayBuffer[(Apb3, SizeMapping)]()

    apbMapping += gpioACtrl.io.apb  -> (0x00000, 4 kB)
    apbMapping += uart1Ctrl.io.apb  -> (0x10000, 4 kB)
    apbMapping += timerCtrl.io.apb  -> (0x20000, 4 kB)
    apbMapping += spim1Ctrl.io.apb  -> (0x40000, 4 kB)

    val apbDecoder = Apb3Decoder(
      master = apbBridge.io.apb,
      slaves = apbMapping
    )

    val mainBusDecoder = new Area {
      val logic = new MuraxPipelinedMemoryBusDecoder(
        master = mainBusArbiter.io.masterBus,
        specification = mainBusMapping,
        pipelineMaster = pipelineMainBus
      )
    }

    io.gpioA          <> gpioACtrl.io.gpio
    io.timerExternal  <> timerCtrl.io.external
    io.uart1          <> uart1Ctrl.io.uart
    io.spim1          <> spim1Ctrl.io.spi

    io.apb2           <> apbBridge2.io.apb

  }
}

// Cyclone IV Starter Kit
object VRV104
{
  def main(args: Array[String])
  {
    val config = SpinalConfig()
    config.generateVerilog(
	 {
      val toplevel = new VRV104(VRV104Config.default)
      //HexTools.initRam(toplevel.axi.bootrom.ram, "VRV104_1M.hex", 0x80000000l)
      toplevel
    })
  }
}
