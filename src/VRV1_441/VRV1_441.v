// Generator : SpinalHDL v1.6.0    git head : 73c8d8e2b86b45646e9d0b2e729291f2b65e6be3
// Component : VRV1_441
// Git hash  : 68e704f3092be640aa92c876cf78702a83167f94


`define SdramCtrlBackendTask_binary_sequential_type [2:0]
`define SdramCtrlBackendTask_binary_sequential_MODE 3'b000
`define SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL 3'b001
`define SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE 3'b010
`define SdramCtrlBackendTask_binary_sequential_REFRESH 3'b011
`define SdramCtrlBackendTask_binary_sequential_ACTIVE 3'b100
`define SdramCtrlBackendTask_binary_sequential_READ 3'b101
`define SdramCtrlBackendTask_binary_sequential_WRITE 3'b110

`define SdramCtrlFrontendState_binary_sequential_type [1:0]
`define SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE 2'b00
`define SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH 2'b01
`define SdramCtrlFrontendState_binary_sequential_BOOT_MODE 2'b10
`define SdramCtrlFrontendState_binary_sequential_RUN 2'b11

`define Axi4ToApb3BridgePhase_binary_sequential_type [1:0]
`define Axi4ToApb3BridgePhase_binary_sequential_SETUP 2'b00
`define Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 2'b01
`define Axi4ToApb3BridgePhase_binary_sequential_RESPONSE 2'b10

`define UartStopType_binary_sequential_type [0:0]
`define UartStopType_binary_sequential_ONE 1'b0
`define UartStopType_binary_sequential_TWO 1'b1

`define UartParityType_binary_sequential_type [1:0]
`define UartParityType_binary_sequential_NONE 2'b00
`define UartParityType_binary_sequential_EVEN 2'b01
`define UartParityType_binary_sequential_ODD 2'b10

`define UartCtrlTxState_binary_sequential_type [2:0]
`define UartCtrlTxState_binary_sequential_IDLE 3'b000
`define UartCtrlTxState_binary_sequential_START 3'b001
`define UartCtrlTxState_binary_sequential_DATA 3'b010
`define UartCtrlTxState_binary_sequential_PARITY 3'b011
`define UartCtrlTxState_binary_sequential_STOP 3'b100

`define UartCtrlRxState_binary_sequential_type [2:0]
`define UartCtrlRxState_binary_sequential_IDLE 3'b000
`define UartCtrlRxState_binary_sequential_START 3'b001
`define UartCtrlRxState_binary_sequential_DATA 3'b010
`define UartCtrlRxState_binary_sequential_PARITY 3'b011
`define UartCtrlRxState_binary_sequential_STOP 3'b100

`define SpiMasterCtrlCmdMode_binary_sequential_type [0:0]
`define SpiMasterCtrlCmdMode_binary_sequential_DATA 1'b0
`define SpiMasterCtrlCmdMode_binary_sequential_SS 1'b1

`define EnvCtrlEnum_binary_sequential_type [0:0]
`define EnvCtrlEnum_binary_sequential_NONE 1'b0
`define EnvCtrlEnum_binary_sequential_XRET 1'b1

`define BranchCtrlEnum_binary_sequential_type [1:0]
`define BranchCtrlEnum_binary_sequential_INC 2'b00
`define BranchCtrlEnum_binary_sequential_B 2'b01
`define BranchCtrlEnum_binary_sequential_JAL 2'b10
`define BranchCtrlEnum_binary_sequential_JALR 2'b11

`define ShiftCtrlEnum_binary_sequential_type [1:0]
`define ShiftCtrlEnum_binary_sequential_DISABLE_1 2'b00
`define ShiftCtrlEnum_binary_sequential_SLL_1 2'b01
`define ShiftCtrlEnum_binary_sequential_SRL_1 2'b10
`define ShiftCtrlEnum_binary_sequential_SRA_1 2'b11

`define AluBitwiseCtrlEnum_binary_sequential_type [1:0]
`define AluBitwiseCtrlEnum_binary_sequential_XOR_1 2'b00
`define AluBitwiseCtrlEnum_binary_sequential_OR_1 2'b01
`define AluBitwiseCtrlEnum_binary_sequential_AND_1 2'b10

`define Src2CtrlEnum_binary_sequential_type [1:0]
`define Src2CtrlEnum_binary_sequential_RS 2'b00
`define Src2CtrlEnum_binary_sequential_IMI 2'b01
`define Src2CtrlEnum_binary_sequential_IMS 2'b10
`define Src2CtrlEnum_binary_sequential_PC 2'b11

`define AluCtrlEnum_binary_sequential_type [1:0]
`define AluCtrlEnum_binary_sequential_ADD_SUB 2'b00
`define AluCtrlEnum_binary_sequential_SLT_SLTU 2'b01
`define AluCtrlEnum_binary_sequential_BITWISE 2'b10

`define Src1CtrlEnum_binary_sequential_type [1:0]
`define Src1CtrlEnum_binary_sequential_RS 2'b00
`define Src1CtrlEnum_binary_sequential_IMU 2'b01
`define Src1CtrlEnum_binary_sequential_PC_INCREMENT 2'b10
`define Src1CtrlEnum_binary_sequential_URS1 2'b11

`define JtagState_binary_sequential_type [3:0]
`define JtagState_binary_sequential_RESET 4'b0000
`define JtagState_binary_sequential_IDLE 4'b0001
`define JtagState_binary_sequential_IR_SELECT 4'b0010
`define JtagState_binary_sequential_IR_CAPTURE 4'b0011
`define JtagState_binary_sequential_IR_SHIFT 4'b0100
`define JtagState_binary_sequential_IR_EXIT1 4'b0101
`define JtagState_binary_sequential_IR_PAUSE 4'b0110
`define JtagState_binary_sequential_IR_EXIT2 4'b0111
`define JtagState_binary_sequential_IR_UPDATE 4'b1000
`define JtagState_binary_sequential_DR_SELECT 4'b1001
`define JtagState_binary_sequential_DR_CAPTURE 4'b1010
`define JtagState_binary_sequential_DR_SHIFT 4'b1011
`define JtagState_binary_sequential_DR_EXIT1 4'b1100
`define JtagState_binary_sequential_DR_PAUSE 4'b1101
`define JtagState_binary_sequential_DR_EXIT2 4'b1110
`define JtagState_binary_sequential_DR_UPDATE 4'b1111


module VRV1_441 (
  input               io_asyncReset,
  input               io_axiClk,
  input               io_jtag_tms,
  input               io_jtag_tdi,
  output              io_jtag_tdo,
  input               io_jtag_tck,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input      [31:0]   io_gpioA_read,
  output     [31:0]   io_gpioA_write,
  output     [31:0]   io_gpioA_writeEnable,
  input      [31:0]   io_gpioB_read,
  output     [31:0]   io_gpioB_write,
  output     [31:0]   io_gpioB_writeEnable,
  output              io_uart1_txd,
  input               io_uart1_rxd,
  output              io_uart2_txd,
  input               io_uart2_rxd,
  output     [3:0]    io_spim1_ss,
  output              io_spim1_sclk,
  output              io_spim1_mosi,
  input               io_spim1_miso,
  output     [3:0]    io_spim2_ss,
  output              io_spim2_sclk,
  output              io_spim2_mosi,
  input               io_spim2_miso,
  input               io_timerExternal_clear,
  input               io_timerExternal_tick,
  input               io_coreInterrupt,
  output     [19:0]   io_apb2_PADDR,
  output     [0:0]    io_apb2_PSEL,
  output              io_apb2_PENABLE,
  input               io_apb2_PREADY,
  output              io_apb2_PWRITE,
  output     [31:0]   io_apb2_PWDATA,
  input      [31:0]   io_apb2_PRDATA,
  input               io_apb2_PSLVERROR
);
  wire       [4:0]    axi_gpioACtrl_io_apb_PADDR;
  wire       [4:0]    axi_gpioBCtrl_io_apb_PADDR;
  wire       [7:0]    axi_timerCtrl_io_apb_PADDR;
  wire       [4:0]    axi_uart1Ctrl_io_apb_PADDR;
  wire       [4:0]    axi_uart2Ctrl_io_apb_PADDR;
  wire       [7:0]    axi_spim1Ctrl_io_apb_PADDR;
  wire       [7:0]    axi_spim2Ctrl_io_apb_PADDR;
  reg                 axi_core_cpu_dBus_cmd_ready;
  wire                axi_core_cpu_dBus_rsp_payload_last;
  wire                axi_core_cpu_dBus_rsp_payload_error;
  wire       [7:0]    axi_core_cpu_debug_bus_cmd_payload_address;
  wire                axi_core_cpu_iBus_rsp_payload_error;
  wire                streamFork_5_io_input_valid;
  reg                 streamFork_5_io_outputs_0_ready;
  reg                 streamFork_5_io_outputs_1_ready;
  reg                 dbus_axi_decoder_io_input_r_ready;
  wire       [11:0]   axi_ocram_io_axi_arbiter_io_readInputs_0_ar_payload_addr;
  wire       [11:0]   axi_ocram_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr;
  wire                axi_ocram_io_axi_arbiter_io_output_arw_ready;
  wire                axi_ocram_io_axi_arbiter_io_output_w_ready;
  wire       [24:0]   axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_payload_addr;
  wire       [24:0]   axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_ready;
  wire       [19:0]   axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_ready;
  wire       [19:0]   axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_arw_ready;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_w_ready;
  wire                io_asyncReset_buffercc_io_dataOut;
  wire                axi_ocram_io_axi_arw_ready;
  wire                axi_ocram_io_axi_w_ready;
  wire                axi_ocram_io_axi_b_valid;
  wire       [3:0]    axi_ocram_io_axi_b_payload_id;
  wire       [1:0]    axi_ocram_io_axi_b_payload_resp;
  wire                axi_ocram_io_axi_r_valid;
  wire       [31:0]   axi_ocram_io_axi_r_payload_data;
  wire       [3:0]    axi_ocram_io_axi_r_payload_id;
  wire       [1:0]    axi_ocram_io_axi_r_payload_resp;
  wire                axi_ocram_io_axi_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arw_ready;
  wire                axi_sdramCtrl_io_axi_w_ready;
  wire                axi_sdramCtrl_io_axi_b_valid;
  wire       [3:0]    axi_sdramCtrl_io_axi_b_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_b_payload_resp;
  wire                axi_sdramCtrl_io_axi_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_r_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_r_payload_last;
  wire       [12:0]   axi_sdramCtrl_io_sdram_ADDR;
  wire       [1:0]    axi_sdramCtrl_io_sdram_BA;
  wire                axi_sdramCtrl_io_sdram_CASn;
  wire                axi_sdramCtrl_io_sdram_CKE;
  wire                axi_sdramCtrl_io_sdram_CSn;
  wire       [1:0]    axi_sdramCtrl_io_sdram_DQM;
  wire                axi_sdramCtrl_io_sdram_RASn;
  wire                axi_sdramCtrl_io_sdram_WEn;
  wire       [15:0]   axi_sdramCtrl_io_sdram_DQ_write;
  wire       [15:0]   axi_sdramCtrl_io_sdram_DQ_writeEnable;
  wire                axi_apbBridge_io_axi_arw_ready;
  wire                axi_apbBridge_io_axi_w_ready;
  wire                axi_apbBridge_io_axi_b_valid;
  wire       [3:0]    axi_apbBridge_io_axi_b_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_b_payload_resp;
  wire                axi_apbBridge_io_axi_r_valid;
  wire       [31:0]   axi_apbBridge_io_axi_r_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_r_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_r_payload_resp;
  wire                axi_apbBridge_io_axi_r_payload_last;
  wire       [19:0]   axi_apbBridge_io_apb_PADDR;
  wire       [0:0]    axi_apbBridge_io_apb_PSEL;
  wire                axi_apbBridge_io_apb_PENABLE;
  wire                axi_apbBridge_io_apb_PWRITE;
  wire       [31:0]   axi_apbBridge_io_apb_PWDATA;
  wire                axi_apbBridge2_io_axi_arw_ready;
  wire                axi_apbBridge2_io_axi_w_ready;
  wire                axi_apbBridge2_io_axi_b_valid;
  wire       [3:0]    axi_apbBridge2_io_axi_b_payload_id;
  wire       [1:0]    axi_apbBridge2_io_axi_b_payload_resp;
  wire                axi_apbBridge2_io_axi_r_valid;
  wire       [31:0]   axi_apbBridge2_io_axi_r_payload_data;
  wire       [3:0]    axi_apbBridge2_io_axi_r_payload_id;
  wire       [1:0]    axi_apbBridge2_io_axi_r_payload_resp;
  wire                axi_apbBridge2_io_axi_r_payload_last;
  wire       [19:0]   axi_apbBridge2_io_apb_PADDR;
  wire       [0:0]    axi_apbBridge2_io_apb_PSEL;
  wire                axi_apbBridge2_io_apb_PENABLE;
  wire                axi_apbBridge2_io_apb_PWRITE;
  wire       [31:0]   axi_apbBridge2_io_apb_PWDATA;
  wire                axi_gpioACtrl_io_apb_PREADY;
  wire       [31:0]   axi_gpioACtrl_io_apb_PRDATA;
  wire                axi_gpioACtrl_io_apb_PSLVERROR;
  wire       [31:0]   axi_gpioACtrl_io_gpio_write;
  wire       [31:0]   axi_gpioACtrl_io_gpio_writeEnable;
  wire       [31:0]   axi_gpioACtrl_io_value;
  wire                axi_gpioBCtrl_io_apb_PREADY;
  wire       [31:0]   axi_gpioBCtrl_io_apb_PRDATA;
  wire                axi_gpioBCtrl_io_apb_PSLVERROR;
  wire       [31:0]   axi_gpioBCtrl_io_gpio_write;
  wire       [31:0]   axi_gpioBCtrl_io_gpio_writeEnable;
  wire       [31:0]   axi_gpioBCtrl_io_value;
  wire                axi_timerCtrl_io_apb_PREADY;
  wire       [31:0]   axi_timerCtrl_io_apb_PRDATA;
  wire                axi_timerCtrl_io_apb_PSLVERROR;
  wire                axi_timerCtrl_io_interrupt;
  wire                axi_uart1Ctrl_io_apb_PREADY;
  wire       [31:0]   axi_uart1Ctrl_io_apb_PRDATA;
  wire                axi_uart1Ctrl_io_uart_txd;
  wire                axi_uart1Ctrl_io_interrupt;
  wire                axi_uart2Ctrl_io_apb_PREADY;
  wire       [31:0]   axi_uart2Ctrl_io_apb_PRDATA;
  wire                axi_uart2Ctrl_io_uart_txd;
  wire                axi_uart2Ctrl_io_interrupt;
  wire                axi_spim1Ctrl_io_apb_PREADY;
  wire       [31:0]   axi_spim1Ctrl_io_apb_PRDATA;
  wire                axi_spim1Ctrl_io_spi_sclk;
  wire                axi_spim1Ctrl_io_spi_mosi;
  wire       [3:0]    axi_spim1Ctrl_io_spi_ss;
  wire                axi_spim1Ctrl_io_interrupt;
  wire                axi_spim2Ctrl_io_apb_PREADY;
  wire       [31:0]   axi_spim2Ctrl_io_apb_PRDATA;
  wire                axi_spim2Ctrl_io_spi_sclk;
  wire                axi_spim2Ctrl_io_spi_mosi;
  wire       [3:0]    axi_spim2Ctrl_io_spi_ss;
  wire                axi_spim2Ctrl_io_interrupt;
  wire                axi_core_cpu_dBus_cmd_valid;
  wire                axi_core_cpu_dBus_cmd_payload_wr;
  wire                axi_core_cpu_dBus_cmd_payload_uncached;
  wire       [31:0]   axi_core_cpu_dBus_cmd_payload_address;
  wire       [31:0]   axi_core_cpu_dBus_cmd_payload_data;
  wire       [3:0]    axi_core_cpu_dBus_cmd_payload_mask;
  wire       [2:0]    axi_core_cpu_dBus_cmd_payload_size;
  wire                axi_core_cpu_dBus_cmd_payload_last;
  wire                axi_core_cpu_debug_bus_cmd_ready;
  wire       [31:0]   axi_core_cpu_debug_bus_rsp_data;
  wire                axi_core_cpu_debug_resetOut;
  wire                axi_core_cpu_iBus_cmd_valid;
  wire       [31:0]   axi_core_cpu_iBus_cmd_payload_address;
  wire       [2:0]    axi_core_cpu_iBus_cmd_payload_size;
  wire                streamFork_5_io_input_ready;
  wire                streamFork_5_io_outputs_0_valid;
  wire                streamFork_5_io_outputs_0_payload_wr;
  wire                streamFork_5_io_outputs_0_payload_uncached;
  wire       [31:0]   streamFork_5_io_outputs_0_payload_address;
  wire       [31:0]   streamFork_5_io_outputs_0_payload_data;
  wire       [3:0]    streamFork_5_io_outputs_0_payload_mask;
  wire       [2:0]    streamFork_5_io_outputs_0_payload_size;
  wire                streamFork_5_io_outputs_0_payload_last;
  wire                streamFork_5_io_outputs_1_valid;
  wire                streamFork_5_io_outputs_1_payload_wr;
  wire                streamFork_5_io_outputs_1_payload_uncached;
  wire       [31:0]   streamFork_5_io_outputs_1_payload_address;
  wire       [31:0]   streamFork_5_io_outputs_1_payload_data;
  wire       [3:0]    streamFork_5_io_outputs_1_payload_mask;
  wire       [2:0]    streamFork_5_io_outputs_1_payload_size;
  wire                streamFork_5_io_outputs_1_payload_last;
  wire                io_coreInterrupt_buffercc_io_dataOut;
  wire                jtagBridge_1_io_jtag_tdo;
  wire                jtagBridge_1_io_remote_cmd_valid;
  wire                jtagBridge_1_io_remote_cmd_payload_last;
  wire       [0:0]    jtagBridge_1_io_remote_cmd_payload_fragment;
  wire                jtagBridge_1_io_remote_rsp_ready;
  wire                systemDebugger_1_io_remote_cmd_ready;
  wire                systemDebugger_1_io_remote_rsp_valid;
  wire                systemDebugger_1_io_remote_rsp_payload_error;
  wire       [31:0]   systemDebugger_1_io_remote_rsp_payload_data;
  wire                systemDebugger_1_io_mem_cmd_valid;
  wire       [31:0]   systemDebugger_1_io_mem_cmd_payload_address;
  wire       [31:0]   systemDebugger_1_io_mem_cmd_payload_data;
  wire                systemDebugger_1_io_mem_cmd_payload_wr;
  wire       [1:0]    systemDebugger_1_io_mem_cmd_payload_size;
  wire                axi4ReadOnlyDecoder_1_io_input_ar_ready;
  wire                axi4ReadOnlyDecoder_1_io_input_r_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_input_r_payload_data;
  wire       [1:0]    axi4ReadOnlyDecoder_1_io_input_r_payload_resp;
  wire                axi4ReadOnlyDecoder_1_io_input_r_payload_last;
  wire                axi4ReadOnlyDecoder_1_io_outputs_0_ar_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_addr;
  wire       [7:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_len;
  wire       [1:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_burst;
  wire       [3:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_prot;
  wire                axi4ReadOnlyDecoder_1_io_outputs_0_r_ready;
  wire                axi4ReadOnlyDecoder_1_io_outputs_1_ar_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_addr;
  wire       [7:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_len;
  wire       [1:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_burst;
  wire       [3:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_prot;
  wire                axi4ReadOnlyDecoder_1_io_outputs_1_r_ready;
  wire                dbus_axi_decoder_io_input_arw_ready;
  wire                dbus_axi_decoder_io_input_w_ready;
  wire                dbus_axi_decoder_io_input_b_valid;
  wire       [1:0]    dbus_axi_decoder_io_input_b_payload_resp;
  wire                dbus_axi_decoder_io_input_r_valid;
  wire       [31:0]   dbus_axi_decoder_io_input_r_payload_data;
  wire       [1:0]    dbus_axi_decoder_io_input_r_payload_resp;
  wire                dbus_axi_decoder_io_input_r_payload_last;
  wire                dbus_axi_decoder_io_sharedOutputs_0_arw_valid;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_0_arw_payload_addr;
  wire       [7:0]    dbus_axi_decoder_io_sharedOutputs_0_arw_payload_len;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_0_arw_payload_size;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_0_arw_payload_cache;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_0_arw_payload_prot;
  wire                dbus_axi_decoder_io_sharedOutputs_0_arw_payload_write;
  wire                dbus_axi_decoder_io_sharedOutputs_0_w_valid;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_0_w_payload_data;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_0_w_payload_strb;
  wire                dbus_axi_decoder_io_sharedOutputs_0_w_payload_last;
  wire                dbus_axi_decoder_io_sharedOutputs_0_b_ready;
  wire                dbus_axi_decoder_io_sharedOutputs_0_r_ready;
  wire                dbus_axi_decoder_io_sharedOutputs_1_arw_valid;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_1_arw_payload_addr;
  wire       [7:0]    dbus_axi_decoder_io_sharedOutputs_1_arw_payload_len;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_1_arw_payload_size;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_1_arw_payload_cache;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_1_arw_payload_prot;
  wire                dbus_axi_decoder_io_sharedOutputs_1_arw_payload_write;
  wire                dbus_axi_decoder_io_sharedOutputs_1_w_valid;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_1_w_payload_data;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_1_w_payload_strb;
  wire                dbus_axi_decoder_io_sharedOutputs_1_w_payload_last;
  wire                dbus_axi_decoder_io_sharedOutputs_1_b_ready;
  wire                dbus_axi_decoder_io_sharedOutputs_1_r_ready;
  wire                dbus_axi_decoder_io_sharedOutputs_2_arw_valid;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_2_arw_payload_addr;
  wire       [7:0]    dbus_axi_decoder_io_sharedOutputs_2_arw_payload_len;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_2_arw_payload_size;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_2_arw_payload_cache;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_2_arw_payload_prot;
  wire                dbus_axi_decoder_io_sharedOutputs_2_arw_payload_write;
  wire                dbus_axi_decoder_io_sharedOutputs_2_w_valid;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_2_w_payload_data;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_2_w_payload_strb;
  wire                dbus_axi_decoder_io_sharedOutputs_2_w_payload_last;
  wire                dbus_axi_decoder_io_sharedOutputs_2_b_ready;
  wire                dbus_axi_decoder_io_sharedOutputs_2_r_ready;
  wire                dbus_axi_decoder_io_sharedOutputs_3_arw_valid;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_3_arw_payload_addr;
  wire       [7:0]    dbus_axi_decoder_io_sharedOutputs_3_arw_payload_len;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_3_arw_payload_size;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_3_arw_payload_cache;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_3_arw_payload_prot;
  wire                dbus_axi_decoder_io_sharedOutputs_3_arw_payload_write;
  wire                dbus_axi_decoder_io_sharedOutputs_3_w_valid;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_3_w_payload_data;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_3_w_payload_strb;
  wire                dbus_axi_decoder_io_sharedOutputs_3_w_payload_last;
  wire                dbus_axi_decoder_io_sharedOutputs_3_b_ready;
  wire                dbus_axi_decoder_io_sharedOutputs_3_r_ready;
  wire                axi_ocram_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                axi_ocram_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [2:0]    axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                axi_ocram_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_ocram_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_ocram_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [2:0]    axi_ocram_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_ocram_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [2:0]    axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_ocram_io_axi_arbiter_io_output_arw_valid;
  wire       [11:0]   axi_ocram_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_ocram_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_ocram_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_ocram_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_ocram_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_ocram_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_ocram_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_ocram_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_ocram_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_ocram_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_ocram_io_axi_arbiter_io_output_b_ready;
  wire                axi_ocram_io_axi_arbiter_io_output_r_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [2:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [2:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [2:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid;
  wire       [24:0]   axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_b_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_r_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_valid;
  wire       [19:0]   axi_apbBridge_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_apbBridge_io_axi_arbiter_io_output_b_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_output_r_ready;
  wire                axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [3:0]    axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [3:0]    axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_arw_valid;
  wire       [19:0]   axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_apbBridge2_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_apbBridge2_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_b_ready;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_r_ready;
  wire                io_apb_decoder_io_input_PREADY;
  wire       [31:0]   io_apb_decoder_io_input_PRDATA;
  wire                io_apb_decoder_io_input_PSLVERROR;
  wire       [19:0]   io_apb_decoder_io_output_PADDR;
  wire       [6:0]    io_apb_decoder_io_output_PSEL;
  wire                io_apb_decoder_io_output_PENABLE;
  wire                io_apb_decoder_io_output_PWRITE;
  wire       [31:0]   io_apb_decoder_io_output_PWDATA;
  wire                apb3Router_1_io_input_PREADY;
  wire       [31:0]   apb3Router_1_io_input_PRDATA;
  wire                apb3Router_1_io_input_PSLVERROR;
  wire       [19:0]   apb3Router_1_io_outputs_0_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_0_PSEL;
  wire                apb3Router_1_io_outputs_0_PENABLE;
  wire                apb3Router_1_io_outputs_0_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_0_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_1_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_1_PSEL;
  wire                apb3Router_1_io_outputs_1_PENABLE;
  wire                apb3Router_1_io_outputs_1_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_1_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_2_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_2_PSEL;
  wire                apb3Router_1_io_outputs_2_PENABLE;
  wire                apb3Router_1_io_outputs_2_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_2_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_3_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_3_PSEL;
  wire                apb3Router_1_io_outputs_3_PENABLE;
  wire                apb3Router_1_io_outputs_3_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_3_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_4_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_4_PSEL;
  wire                apb3Router_1_io_outputs_4_PENABLE;
  wire                apb3Router_1_io_outputs_4_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_4_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_5_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_5_PSEL;
  wire                apb3Router_1_io_outputs_5_PENABLE;
  wire                apb3Router_1_io_outputs_5_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_5_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_6_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_6_PSEL;
  wire                apb3Router_1_io_outputs_6_PENABLE;
  wire                apb3Router_1_io_outputs_6_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_6_PWDATA;
  wire       [2:0]    _zz_dbus_axi_arw_payload_len;
  reg                 resetCtrl_systemResetUnbuffered;
  reg        [5:0]    resetCtrl_systemResetCounter = 6'h0;
  wire       [5:0]    _zz_when_VRV1_441_l261;
  wire                when_VRV1_441_l261;
  wire                when_VRV1_441_l265;
  reg                 resetCtrl_systemReset;
  reg                 resetCtrl_axiReset;
  wire                dbus_axi_arw_valid;
  wire                dbus_axi_arw_ready;
  wire       [31:0]   dbus_axi_arw_payload_addr;
  wire       [7:0]    dbus_axi_arw_payload_len;
  wire       [2:0]    dbus_axi_arw_payload_size;
  wire       [3:0]    dbus_axi_arw_payload_cache;
  wire       [2:0]    dbus_axi_arw_payload_prot;
  wire                dbus_axi_arw_payload_write;
  wire                dbus_axi_w_valid;
  wire                dbus_axi_w_ready;
  wire       [31:0]   dbus_axi_w_payload_data;
  wire       [3:0]    dbus_axi_w_payload_strb;
  wire                dbus_axi_w_payload_last;
  wire                dbus_axi_b_valid;
  wire                dbus_axi_b_ready;
  wire       [1:0]    dbus_axi_b_payload_resp;
  wire                dbus_axi_r_valid;
  wire                dbus_axi_r_ready;
  wire       [31:0]   dbus_axi_r_payload_data;
  wire       [1:0]    dbus_axi_r_payload_resp;
  wire                dbus_axi_r_payload_last;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_valid;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_ready;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_payload_wr;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_payload_uncached;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_payload_address;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_payload_data;
  wire       [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_payload_mask;
  wire       [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_payload_size;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_payload_last;
  reg                 axi_core_cpu_dBus_cmd_rValid;
  reg                 axi_core_cpu_dBus_cmd_rData_wr;
  reg                 axi_core_cpu_dBus_cmd_rData_uncached;
  reg        [31:0]   axi_core_cpu_dBus_cmd_rData_address;
  reg        [31:0]   axi_core_cpu_dBus_cmd_rData_data;
  reg        [3:0]    axi_core_cpu_dBus_cmd_rData_mask;
  reg        [2:0]    axi_core_cpu_dBus_cmd_rData_size;
  reg                 axi_core_cpu_dBus_cmd_rData_last;
  wire                when_Stream_l342;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_ready;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_wr;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_uncached;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_address;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_data;
  wire       [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_mask;
  wire       [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_size;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_last;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_rValid;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_rData_wr;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_rData_uncached;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_rData_address;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_rData_data;
  reg        [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_rData_mask;
  reg        [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_rData_size;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_rData_last;
  wire                when_Stream_l342_1;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_valid;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_uncached;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_address;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_data;
  wire       [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_mask;
  wire       [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_size;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_last;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_wr;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_uncached;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_address;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_data;
  reg        [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_mask;
  reg        [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_size;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_last;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_fire;
  wire                when_Utils_l466;
  wire                dbus_axi_b_fire;
  reg                 _zz_when_Utils_l494;
  reg                 _zz_when_Utils_l494_1;
  reg        [2:0]    _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready;
  reg        [2:0]    _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready_1;
  wire                when_Utils_l494;
  wire                when_Utils_l496;
  wire                _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready_2;
  wire                streamFork_5_io_outputs_0_fire;
  reg                 _zz_1;
  reg                 streamFork_5_io_outputs_0_thrown_valid;
  wire                streamFork_5_io_outputs_0_thrown_ready;
  wire                streamFork_5_io_outputs_0_thrown_payload_wr;
  wire                streamFork_5_io_outputs_0_thrown_payload_uncached;
  wire       [31:0]   streamFork_5_io_outputs_0_thrown_payload_address;
  wire       [31:0]   streamFork_5_io_outputs_0_thrown_payload_data;
  wire       [3:0]    streamFork_5_io_outputs_0_thrown_payload_mask;
  wire       [2:0]    streamFork_5_io_outputs_0_thrown_payload_size;
  wire                streamFork_5_io_outputs_0_thrown_payload_last;
  wire                when_Stream_l408;
  reg                 streamFork_5_io_outputs_1_thrown_valid;
  wire                streamFork_5_io_outputs_1_thrown_ready;
  wire                streamFork_5_io_outputs_1_thrown_payload_wr;
  wire                streamFork_5_io_outputs_1_thrown_payload_uncached;
  wire       [31:0]   streamFork_5_io_outputs_1_thrown_payload_address;
  wire       [31:0]   streamFork_5_io_outputs_1_thrown_payload_data;
  wire       [3:0]    streamFork_5_io_outputs_1_thrown_payload_mask;
  wire       [2:0]    streamFork_5_io_outputs_1_thrown_payload_size;
  wire                streamFork_5_io_outputs_1_thrown_payload_last;
  reg                 axi_core_cpu_debug_resetOut_regNext;
  wire                axi_core_cpu_debug_bus_cmd_fire;
  reg                 axi_core_cpu_debug_bus_cmd_fire_regNext;
  wire                axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_valid;
  wire                axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_ready;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_addr;
  wire       [7:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_len;
  wire       [1:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_burst;
  wire       [3:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_prot;
  reg                 axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid;
  wire                axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire;
  wire                axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire_1;
  wire                axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_valid;
  wire                axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_ready;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_addr;
  wire       [7:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_len;
  wire       [1:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_burst;
  wire       [3:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_prot;
  reg                 axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid;
  wire                axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire;
  wire                axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire_1;
  wire                dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_valid;
  wire                dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_ready;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_addr;
  wire       [7:0]    dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_len;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_size;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_cache;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_prot;
  wire                dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_write;
  reg                 dbus_axi_decoder_io_sharedOutputs_0_arw_rValid;
  wire                dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_fire;
  wire                dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_fire_1;
  wire                dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_valid;
  wire                dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_ready;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_addr;
  wire       [7:0]    dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_len;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_size;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_cache;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_prot;
  wire                dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_write;
  reg                 dbus_axi_decoder_io_sharedOutputs_1_arw_rValid;
  wire                dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_fire;
  wire                dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_fire_1;
  wire                dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_valid;
  wire                dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_ready;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_addr;
  wire       [7:0]    dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_len;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_size;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_cache;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_prot;
  wire                dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_write;
  reg                 dbus_axi_decoder_io_sharedOutputs_2_arw_rValid;
  wire                dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_fire;
  wire                dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_fire_1;
  wire                dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_valid;
  wire                dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_ready;
  wire       [31:0]   dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_addr;
  wire       [7:0]    dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_len;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_size;
  wire       [3:0]    dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_cache;
  wire       [2:0]    dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_prot;
  wire                dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_write;
  reg                 dbus_axi_decoder_io_sharedOutputs_3_arw_rValid;
  wire                dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_fire;
  wire                dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_fire_1;
  wire                dbus_axi_decoder_io_input_r_m2sPipe_valid;
  wire                dbus_axi_decoder_io_input_r_m2sPipe_ready;
  wire       [31:0]   dbus_axi_decoder_io_input_r_m2sPipe_payload_data;
  wire       [1:0]    dbus_axi_decoder_io_input_r_m2sPipe_payload_resp;
  wire                dbus_axi_decoder_io_input_r_m2sPipe_payload_last;
  reg                 dbus_axi_decoder_io_input_r_rValid;
  reg        [31:0]   dbus_axi_decoder_io_input_r_rData_data;
  reg        [1:0]    dbus_axi_decoder_io_input_r_rData_resp;
  reg                 dbus_axi_decoder_io_input_r_rData_last;
  wire                when_Stream_l342_2;
  wire       [2:0]    _zz_io_readInputs_0_ar_payload_id;
  wire       [2:0]    _zz_io_sharedInputs_0_arw_payload_id;
  wire                axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [11:0]   axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 axi_ocram_io_axi_arbiter_io_output_arw_rValid;
  wire                axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_fire;
  reg        [11:0]   axi_ocram_io_axi_arbiter_io_output_arw_rData_addr;
  reg        [3:0]    axi_ocram_io_axi_arbiter_io_output_arw_rData_id;
  reg        [7:0]    axi_ocram_io_axi_arbiter_io_output_arw_rData_len;
  reg        [2:0]    axi_ocram_io_axi_arbiter_io_output_arw_rData_size;
  reg        [1:0]    axi_ocram_io_axi_arbiter_io_output_arw_rData_burst;
  reg                 axi_ocram_io_axi_arbiter_io_output_arw_rData_write;
  wire                axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_valid;
  reg                 axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_ready;
  wire       [31:0]   axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
  wire       [3:0]    axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
  wire                axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
  reg                 axi_ocram_io_axi_arbiter_io_output_w_rValid;
  reg        [31:0]   axi_ocram_io_axi_arbiter_io_output_w_rData_data;
  reg        [3:0]    axi_ocram_io_axi_arbiter_io_output_w_rData_strb;
  reg                 axi_ocram_io_axi_arbiter_io_output_w_rData_last;
  wire                axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid;
  wire                axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready;
  wire       [31:0]   axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data;
  wire       [3:0]    axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb;
  wire                axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last;
  reg                 axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rValid;
  reg        [31:0]   axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rData_data;
  reg        [3:0]    axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rData_strb;
  reg                 axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rData_last;
  wire                when_Stream_l342_3;
  wire       [2:0]    _zz_io_readInputs_0_ar_payload_id_1;
  wire       [2:0]    _zz_io_sharedInputs_0_arw_payload_id_1;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [24:0]   axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_arw_rValid;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_fire;
  reg        [24:0]   axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_addr;
  reg        [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_id;
  reg        [7:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_len;
  reg        [2:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_size;
  reg        [1:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_burst;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_write;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_valid;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_rValid;
  reg        [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_rData_data;
  reg        [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_rData_strb;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_rData_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid;
  reg        [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_data;
  reg        [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_strb;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_last;
  wire                when_Stream_l342_4;
  wire       [3:0]    _zz_io_sharedInputs_0_arw_payload_id_2;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [19:0]   axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_arw_rValid;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_fire;
  reg        [19:0]   axi_apbBridge_io_axi_arbiter_io_output_arw_rData_addr;
  reg        [3:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_rData_id;
  reg        [7:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_rData_len;
  reg        [2:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_rData_size;
  reg        [1:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_rData_burst;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_arw_rData_write;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_strb;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_last;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_w_rValid;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_fire;
  reg        [31:0]   axi_apbBridge_io_axi_arbiter_io_output_w_rData_data;
  reg        [3:0]    axi_apbBridge_io_axi_arbiter_io_output_w_rData_strb;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_w_rData_last;
  wire       [3:0]    _zz_io_sharedInputs_0_arw_payload_id_3;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [19:0]   axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 axi_apbBridge2_io_axi_arbiter_io_output_arw_rValid;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_fire;
  reg        [19:0]   axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_addr;
  reg        [3:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_id;
  reg        [7:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_len;
  reg        [2:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_size;
  reg        [1:0]    axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_burst;
  reg                 axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_write;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_valid;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_ready;
  wire       [31:0]   axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_payload_data;
  wire       [3:0]    axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_payload_strb;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_payload_last;
  reg                 axi_apbBridge2_io_axi_arbiter_io_output_w_rValid;
  wire                axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_fire;
  reg        [31:0]   axi_apbBridge2_io_axi_arbiter_io_output_w_rData_data;
  reg        [3:0]    axi_apbBridge2_io_axi_arbiter_io_output_w_rData_strb;
  reg                 axi_apbBridge2_io_axi_arbiter_io_output_w_rData_last;

  assign _zz_dbus_axi_arw_payload_len = ((streamFork_5_io_outputs_0_thrown_payload_size == 3'b101) ? 3'b111 : 3'b000);
  BufferCC_4 io_asyncReset_buffercc (
    .io_dataIn     (io_asyncReset                      ), //i
    .io_dataOut    (io_asyncReset_buffercc_io_dataOut  ), //o
    .io_axiClk     (io_axiClk                          )  //i
  );
  Axi4SharedOnChipRam axi_ocram (
    .io_axi_arw_valid            (axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_valid              ), //i
    .io_axi_arw_ready            (axi_ocram_io_axi_arw_ready                                         ), //o
    .io_axi_arw_payload_addr     (axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_addr       ), //i
    .io_axi_arw_payload_id       (axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_id         ), //i
    .io_axi_arw_payload_len      (axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_len        ), //i
    .io_axi_arw_payload_size     (axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_size       ), //i
    .io_axi_arw_payload_burst    (axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_burst      ), //i
    .io_axi_arw_payload_write    (axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_write      ), //i
    .io_axi_w_valid              (axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid         ), //i
    .io_axi_w_ready              (axi_ocram_io_axi_w_ready                                           ), //o
    .io_axi_w_payload_data       (axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data  ), //i
    .io_axi_w_payload_strb       (axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb  ), //i
    .io_axi_w_payload_last       (axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last  ), //i
    .io_axi_b_valid              (axi_ocram_io_axi_b_valid                                           ), //o
    .io_axi_b_ready              (axi_ocram_io_axi_arbiter_io_output_b_ready                         ), //i
    .io_axi_b_payload_id         (axi_ocram_io_axi_b_payload_id                                      ), //o
    .io_axi_b_payload_resp       (axi_ocram_io_axi_b_payload_resp                                    ), //o
    .io_axi_r_valid              (axi_ocram_io_axi_r_valid                                           ), //o
    .io_axi_r_ready              (axi_ocram_io_axi_arbiter_io_output_r_ready                         ), //i
    .io_axi_r_payload_data       (axi_ocram_io_axi_r_payload_data                                    ), //o
    .io_axi_r_payload_id         (axi_ocram_io_axi_r_payload_id                                      ), //o
    .io_axi_r_payload_resp       (axi_ocram_io_axi_r_payload_resp                                    ), //o
    .io_axi_r_payload_last       (axi_ocram_io_axi_r_payload_last                                    ), //o
    .io_axiClk                   (io_axiClk                                                          ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                                 )  //i
  );
  Axi4SharedSdramCtrl axi_sdramCtrl (
    .io_axi_arw_valid            (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid              ), //i
    .io_axi_arw_ready            (axi_sdramCtrl_io_axi_arw_ready                                         ), //o
    .io_axi_arw_payload_addr     (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_addr       ), //i
    .io_axi_arw_payload_id       (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_id         ), //i
    .io_axi_arw_payload_len      (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_len        ), //i
    .io_axi_arw_payload_size     (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_size       ), //i
    .io_axi_arw_payload_burst    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_burst      ), //i
    .io_axi_arw_payload_write    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_write      ), //i
    .io_axi_w_valid              (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid         ), //i
    .io_axi_w_ready              (axi_sdramCtrl_io_axi_w_ready                                           ), //o
    .io_axi_w_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data  ), //i
    .io_axi_w_payload_strb       (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb  ), //i
    .io_axi_w_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last  ), //i
    .io_axi_b_valid              (axi_sdramCtrl_io_axi_b_valid                                           ), //o
    .io_axi_b_ready              (axi_sdramCtrl_io_axi_arbiter_io_output_b_ready                         ), //i
    .io_axi_b_payload_id         (axi_sdramCtrl_io_axi_b_payload_id                                      ), //o
    .io_axi_b_payload_resp       (axi_sdramCtrl_io_axi_b_payload_resp                                    ), //o
    .io_axi_r_valid              (axi_sdramCtrl_io_axi_r_valid                                           ), //o
    .io_axi_r_ready              (axi_sdramCtrl_io_axi_arbiter_io_output_r_ready                         ), //i
    .io_axi_r_payload_data       (axi_sdramCtrl_io_axi_r_payload_data                                    ), //o
    .io_axi_r_payload_id         (axi_sdramCtrl_io_axi_r_payload_id                                      ), //o
    .io_axi_r_payload_resp       (axi_sdramCtrl_io_axi_r_payload_resp                                    ), //o
    .io_axi_r_payload_last       (axi_sdramCtrl_io_axi_r_payload_last                                    ), //o
    .io_sdram_ADDR               (axi_sdramCtrl_io_sdram_ADDR                                            ), //o
    .io_sdram_BA                 (axi_sdramCtrl_io_sdram_BA                                              ), //o
    .io_sdram_DQ_read            (io_sdram_DQ_read                                                       ), //i
    .io_sdram_DQ_write           (axi_sdramCtrl_io_sdram_DQ_write                                        ), //o
    .io_sdram_DQ_writeEnable     (axi_sdramCtrl_io_sdram_DQ_writeEnable                                  ), //o
    .io_sdram_DQM                (axi_sdramCtrl_io_sdram_DQM                                             ), //o
    .io_sdram_CASn               (axi_sdramCtrl_io_sdram_CASn                                            ), //o
    .io_sdram_CKE                (axi_sdramCtrl_io_sdram_CKE                                             ), //o
    .io_sdram_CSn                (axi_sdramCtrl_io_sdram_CSn                                             ), //o
    .io_sdram_RASn               (axi_sdramCtrl_io_sdram_RASn                                            ), //o
    .io_sdram_WEn                (axi_sdramCtrl_io_sdram_WEn                                             ), //o
    .io_axiClk                   (io_axiClk                                                              ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                                     )  //i
  );
  Axi4SharedToApb3Bridge axi_apbBridge (
    .io_axi_arw_valid            (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid          ), //i
    .io_axi_arw_ready            (axi_apbBridge_io_axi_arw_ready                                     ), //o
    .io_axi_arw_payload_addr     (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_addr   ), //i
    .io_axi_arw_payload_id       (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_id     ), //i
    .io_axi_arw_payload_len      (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_len    ), //i
    .io_axi_arw_payload_size     (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_size   ), //i
    .io_axi_arw_payload_burst    (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_burst  ), //i
    .io_axi_arw_payload_write    (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_write  ), //i
    .io_axi_w_valid              (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid            ), //i
    .io_axi_w_ready              (axi_apbBridge_io_axi_w_ready                                       ), //o
    .io_axi_w_payload_data       (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_data     ), //i
    .io_axi_w_payload_strb       (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_strb     ), //i
    .io_axi_w_payload_last       (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_last     ), //i
    .io_axi_b_valid              (axi_apbBridge_io_axi_b_valid                                       ), //o
    .io_axi_b_ready              (axi_apbBridge_io_axi_arbiter_io_output_b_ready                     ), //i
    .io_axi_b_payload_id         (axi_apbBridge_io_axi_b_payload_id                                  ), //o
    .io_axi_b_payload_resp       (axi_apbBridge_io_axi_b_payload_resp                                ), //o
    .io_axi_r_valid              (axi_apbBridge_io_axi_r_valid                                       ), //o
    .io_axi_r_ready              (axi_apbBridge_io_axi_arbiter_io_output_r_ready                     ), //i
    .io_axi_r_payload_data       (axi_apbBridge_io_axi_r_payload_data                                ), //o
    .io_axi_r_payload_id         (axi_apbBridge_io_axi_r_payload_id                                  ), //o
    .io_axi_r_payload_resp       (axi_apbBridge_io_axi_r_payload_resp                                ), //o
    .io_axi_r_payload_last       (axi_apbBridge_io_axi_r_payload_last                                ), //o
    .io_apb_PADDR                (axi_apbBridge_io_apb_PADDR                                         ), //o
    .io_apb_PSEL                 (axi_apbBridge_io_apb_PSEL                                          ), //o
    .io_apb_PENABLE              (axi_apbBridge_io_apb_PENABLE                                       ), //o
    .io_apb_PREADY               (io_apb_decoder_io_input_PREADY                                     ), //i
    .io_apb_PWRITE               (axi_apbBridge_io_apb_PWRITE                                        ), //o
    .io_apb_PWDATA               (axi_apbBridge_io_apb_PWDATA                                        ), //o
    .io_apb_PRDATA               (io_apb_decoder_io_input_PRDATA                                     ), //i
    .io_apb_PSLVERROR            (io_apb_decoder_io_input_PSLVERROR                                  ), //i
    .io_axiClk                   (io_axiClk                                                          ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                                 )  //i
  );
  Axi4SharedToApb3Bridge axi_apbBridge2 (
    .io_axi_arw_valid            (axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_valid          ), //i
    .io_axi_arw_ready            (axi_apbBridge2_io_axi_arw_ready                                     ), //o
    .io_axi_arw_payload_addr     (axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_addr   ), //i
    .io_axi_arw_payload_id       (axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_id     ), //i
    .io_axi_arw_payload_len      (axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_len    ), //i
    .io_axi_arw_payload_size     (axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_size   ), //i
    .io_axi_arw_payload_burst    (axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_burst  ), //i
    .io_axi_arw_payload_write    (axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_write  ), //i
    .io_axi_w_valid              (axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_valid            ), //i
    .io_axi_w_ready              (axi_apbBridge2_io_axi_w_ready                                       ), //o
    .io_axi_w_payload_data       (axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_payload_data     ), //i
    .io_axi_w_payload_strb       (axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_payload_strb     ), //i
    .io_axi_w_payload_last       (axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_payload_last     ), //i
    .io_axi_b_valid              (axi_apbBridge2_io_axi_b_valid                                       ), //o
    .io_axi_b_ready              (axi_apbBridge2_io_axi_arbiter_io_output_b_ready                     ), //i
    .io_axi_b_payload_id         (axi_apbBridge2_io_axi_b_payload_id                                  ), //o
    .io_axi_b_payload_resp       (axi_apbBridge2_io_axi_b_payload_resp                                ), //o
    .io_axi_r_valid              (axi_apbBridge2_io_axi_r_valid                                       ), //o
    .io_axi_r_ready              (axi_apbBridge2_io_axi_arbiter_io_output_r_ready                     ), //i
    .io_axi_r_payload_data       (axi_apbBridge2_io_axi_r_payload_data                                ), //o
    .io_axi_r_payload_id         (axi_apbBridge2_io_axi_r_payload_id                                  ), //o
    .io_axi_r_payload_resp       (axi_apbBridge2_io_axi_r_payload_resp                                ), //o
    .io_axi_r_payload_last       (axi_apbBridge2_io_axi_r_payload_last                                ), //o
    .io_apb_PADDR                (axi_apbBridge2_io_apb_PADDR                                         ), //o
    .io_apb_PSEL                 (axi_apbBridge2_io_apb_PSEL                                          ), //o
    .io_apb_PENABLE              (axi_apbBridge2_io_apb_PENABLE                                       ), //o
    .io_apb_PREADY               (io_apb2_PREADY                                                      ), //i
    .io_apb_PWRITE               (axi_apbBridge2_io_apb_PWRITE                                        ), //o
    .io_apb_PWDATA               (axi_apbBridge2_io_apb_PWDATA                                        ), //o
    .io_apb_PRDATA               (io_apb2_PRDATA                                                      ), //i
    .io_apb_PSLVERROR            (io_apb2_PSLVERROR                                                   ), //i
    .io_axiClk                   (io_axiClk                                                           ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                                  )  //i
  );
  Apb3GpioSetClear axi_gpioACtrl (
    .io_apb_PADDR           (axi_gpioACtrl_io_apb_PADDR         ), //i
    .io_apb_PSEL            (apb3Router_1_io_outputs_0_PSEL     ), //i
    .io_apb_PENABLE         (apb3Router_1_io_outputs_0_PENABLE  ), //i
    .io_apb_PREADY          (axi_gpioACtrl_io_apb_PREADY        ), //o
    .io_apb_PWRITE          (apb3Router_1_io_outputs_0_PWRITE   ), //i
    .io_apb_PWDATA          (apb3Router_1_io_outputs_0_PWDATA   ), //i
    .io_apb_PRDATA          (axi_gpioACtrl_io_apb_PRDATA        ), //o
    .io_apb_PSLVERROR       (axi_gpioACtrl_io_apb_PSLVERROR     ), //o
    .io_gpio_read           (io_gpioA_read                      ), //i
    .io_gpio_write          (axi_gpioACtrl_io_gpio_write        ), //o
    .io_gpio_writeEnable    (axi_gpioACtrl_io_gpio_writeEnable  ), //o
    .io_value               (axi_gpioACtrl_io_value             ), //o
    .io_axiClk              (io_axiClk                          ), //i
    .resetCtrl_axiReset     (resetCtrl_axiReset                 )  //i
  );
  Apb3GpioSetClear axi_gpioBCtrl (
    .io_apb_PADDR           (axi_gpioBCtrl_io_apb_PADDR         ), //i
    .io_apb_PSEL            (apb3Router_1_io_outputs_1_PSEL     ), //i
    .io_apb_PENABLE         (apb3Router_1_io_outputs_1_PENABLE  ), //i
    .io_apb_PREADY          (axi_gpioBCtrl_io_apb_PREADY        ), //o
    .io_apb_PWRITE          (apb3Router_1_io_outputs_1_PWRITE   ), //i
    .io_apb_PWDATA          (apb3Router_1_io_outputs_1_PWDATA   ), //i
    .io_apb_PRDATA          (axi_gpioBCtrl_io_apb_PRDATA        ), //o
    .io_apb_PSLVERROR       (axi_gpioBCtrl_io_apb_PSLVERROR     ), //o
    .io_gpio_read           (io_gpioB_read                      ), //i
    .io_gpio_write          (axi_gpioBCtrl_io_gpio_write        ), //o
    .io_gpio_writeEnable    (axi_gpioBCtrl_io_gpio_writeEnable  ), //o
    .io_value               (axi_gpioBCtrl_io_value             ), //o
    .io_axiClk              (io_axiClk                          ), //i
    .resetCtrl_axiReset     (resetCtrl_axiReset                 )  //i
  );
  PinsecTimerCtrl axi_timerCtrl (
    .io_apb_PADDR          (axi_timerCtrl_io_apb_PADDR         ), //i
    .io_apb_PSEL           (apb3Router_1_io_outputs_4_PSEL     ), //i
    .io_apb_PENABLE        (apb3Router_1_io_outputs_4_PENABLE  ), //i
    .io_apb_PREADY         (axi_timerCtrl_io_apb_PREADY        ), //o
    .io_apb_PWRITE         (apb3Router_1_io_outputs_4_PWRITE   ), //i
    .io_apb_PWDATA         (apb3Router_1_io_outputs_4_PWDATA   ), //i
    .io_apb_PRDATA         (axi_timerCtrl_io_apb_PRDATA        ), //o
    .io_apb_PSLVERROR      (axi_timerCtrl_io_apb_PSLVERROR     ), //o
    .io_external_clear     (io_timerExternal_clear             ), //i
    .io_external_tick      (io_timerExternal_tick              ), //i
    .io_interrupt          (axi_timerCtrl_io_interrupt         ), //o
    .io_axiClk             (io_axiClk                          ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                 )  //i
  );
  Apb3UartCtrl axi_uart1Ctrl (
    .io_apb_PADDR          (axi_uart1Ctrl_io_apb_PADDR         ), //i
    .io_apb_PSEL           (apb3Router_1_io_outputs_2_PSEL     ), //i
    .io_apb_PENABLE        (apb3Router_1_io_outputs_2_PENABLE  ), //i
    .io_apb_PREADY         (axi_uart1Ctrl_io_apb_PREADY        ), //o
    .io_apb_PWRITE         (apb3Router_1_io_outputs_2_PWRITE   ), //i
    .io_apb_PWDATA         (apb3Router_1_io_outputs_2_PWDATA   ), //i
    .io_apb_PRDATA         (axi_uart1Ctrl_io_apb_PRDATA        ), //o
    .io_uart_txd           (axi_uart1Ctrl_io_uart_txd          ), //o
    .io_uart_rxd           (io_uart1_rxd                       ), //i
    .io_interrupt          (axi_uart1Ctrl_io_interrupt         ), //o
    .io_axiClk             (io_axiClk                          ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                 )  //i
  );
  Apb3UartCtrl axi_uart2Ctrl (
    .io_apb_PADDR          (axi_uart2Ctrl_io_apb_PADDR         ), //i
    .io_apb_PSEL           (apb3Router_1_io_outputs_3_PSEL     ), //i
    .io_apb_PENABLE        (apb3Router_1_io_outputs_3_PENABLE  ), //i
    .io_apb_PREADY         (axi_uart2Ctrl_io_apb_PREADY        ), //o
    .io_apb_PWRITE         (apb3Router_1_io_outputs_3_PWRITE   ), //i
    .io_apb_PWDATA         (apb3Router_1_io_outputs_3_PWDATA   ), //i
    .io_apb_PRDATA         (axi_uart2Ctrl_io_apb_PRDATA        ), //o
    .io_uart_txd           (axi_uart2Ctrl_io_uart_txd          ), //o
    .io_uart_rxd           (io_uart2_rxd                       ), //i
    .io_interrupt          (axi_uart2Ctrl_io_interrupt         ), //o
    .io_axiClk             (io_axiClk                          ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                 )  //i
  );
  Apb3SpiMasterCtrl axi_spim1Ctrl (
    .io_apb_PADDR          (axi_spim1Ctrl_io_apb_PADDR         ), //i
    .io_apb_PSEL           (apb3Router_1_io_outputs_5_PSEL     ), //i
    .io_apb_PENABLE        (apb3Router_1_io_outputs_5_PENABLE  ), //i
    .io_apb_PREADY         (axi_spim1Ctrl_io_apb_PREADY        ), //o
    .io_apb_PWRITE         (apb3Router_1_io_outputs_5_PWRITE   ), //i
    .io_apb_PWDATA         (apb3Router_1_io_outputs_5_PWDATA   ), //i
    .io_apb_PRDATA         (axi_spim1Ctrl_io_apb_PRDATA        ), //o
    .io_spi_ss             (axi_spim1Ctrl_io_spi_ss            ), //o
    .io_spi_sclk           (axi_spim1Ctrl_io_spi_sclk          ), //o
    .io_spi_mosi           (axi_spim1Ctrl_io_spi_mosi          ), //o
    .io_spi_miso           (io_spim1_miso                      ), //i
    .io_interrupt          (axi_spim1Ctrl_io_interrupt         ), //o
    .io_axiClk             (io_axiClk                          ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                 )  //i
  );
  Apb3SpiMasterCtrl axi_spim2Ctrl (
    .io_apb_PADDR          (axi_spim2Ctrl_io_apb_PADDR         ), //i
    .io_apb_PSEL           (apb3Router_1_io_outputs_6_PSEL     ), //i
    .io_apb_PENABLE        (apb3Router_1_io_outputs_6_PENABLE  ), //i
    .io_apb_PREADY         (axi_spim2Ctrl_io_apb_PREADY        ), //o
    .io_apb_PWRITE         (apb3Router_1_io_outputs_6_PWRITE   ), //i
    .io_apb_PWDATA         (apb3Router_1_io_outputs_6_PWDATA   ), //i
    .io_apb_PRDATA         (axi_spim2Ctrl_io_apb_PRDATA        ), //o
    .io_spi_ss             (axi_spim2Ctrl_io_spi_ss            ), //o
    .io_spi_sclk           (axi_spim2Ctrl_io_spi_sclk          ), //o
    .io_spi_mosi           (axi_spim2Ctrl_io_spi_mosi          ), //o
    .io_spi_miso           (io_spim2_miso                      ), //i
    .io_interrupt          (axi_spim2Ctrl_io_interrupt         ), //o
    .io_axiClk             (io_axiClk                          ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                 )  //i
  );
  VexRiscv axi_core_cpu (
    .dBus_cmd_valid                   (axi_core_cpu_dBus_cmd_valid                    ), //o
    .dBus_cmd_ready                   (axi_core_cpu_dBus_cmd_ready                    ), //i
    .dBus_cmd_payload_wr              (axi_core_cpu_dBus_cmd_payload_wr               ), //o
    .dBus_cmd_payload_uncached        (axi_core_cpu_dBus_cmd_payload_uncached         ), //o
    .dBus_cmd_payload_address         (axi_core_cpu_dBus_cmd_payload_address          ), //o
    .dBus_cmd_payload_data            (axi_core_cpu_dBus_cmd_payload_data             ), //o
    .dBus_cmd_payload_mask            (axi_core_cpu_dBus_cmd_payload_mask             ), //o
    .dBus_cmd_payload_size            (axi_core_cpu_dBus_cmd_payload_size             ), //o
    .dBus_cmd_payload_last            (axi_core_cpu_dBus_cmd_payload_last             ), //o
    .dBus_rsp_valid                   (dbus_axi_r_valid                               ), //i
    .dBus_rsp_payload_last            (axi_core_cpu_dBus_rsp_payload_last             ), //i
    .dBus_rsp_payload_data            (dbus_axi_r_payload_data                        ), //i
    .dBus_rsp_payload_error           (axi_core_cpu_dBus_rsp_payload_error            ), //i
    .timerInterrupt                   (axi_timerCtrl_io_interrupt                     ), //i
    .externalInterrupt                (io_coreInterrupt_buffercc_io_dataOut           ), //i
    .softwareInterrupt                (1'b0                                           ), //i
    .debug_bus_cmd_valid              (systemDebugger_1_io_mem_cmd_valid              ), //i
    .debug_bus_cmd_ready              (axi_core_cpu_debug_bus_cmd_ready               ), //o
    .debug_bus_cmd_payload_wr         (systemDebugger_1_io_mem_cmd_payload_wr         ), //i
    .debug_bus_cmd_payload_address    (axi_core_cpu_debug_bus_cmd_payload_address     ), //i
    .debug_bus_cmd_payload_data       (systemDebugger_1_io_mem_cmd_payload_data       ), //i
    .debug_bus_rsp_data               (axi_core_cpu_debug_bus_rsp_data                ), //o
    .debug_resetOut                   (axi_core_cpu_debug_resetOut                    ), //o
    .iBus_cmd_valid                   (axi_core_cpu_iBus_cmd_valid                    ), //o
    .iBus_cmd_ready                   (axi4ReadOnlyDecoder_1_io_input_ar_ready        ), //i
    .iBus_cmd_payload_address         (axi_core_cpu_iBus_cmd_payload_address          ), //o
    .iBus_cmd_payload_size            (axi_core_cpu_iBus_cmd_payload_size             ), //o
    .iBus_rsp_valid                   (axi4ReadOnlyDecoder_1_io_input_r_valid         ), //i
    .iBus_rsp_payload_data            (axi4ReadOnlyDecoder_1_io_input_r_payload_data  ), //i
    .iBus_rsp_payload_error           (axi_core_cpu_iBus_rsp_payload_error            ), //i
    .io_axiClk                        (io_axiClk                                      ), //i
    .resetCtrl_axiReset               (resetCtrl_axiReset                             ), //i
    .resetCtrl_systemReset            (resetCtrl_systemReset                          )  //i
  );
  StreamFork_4 streamFork_5 (
    .io_input_valid                   (streamFork_5_io_input_valid                                     ), //i
    .io_input_ready                   (streamFork_5_io_input_ready                                     ), //o
    .io_input_payload_wr              (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr        ), //i
    .io_input_payload_uncached        (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_uncached  ), //i
    .io_input_payload_address         (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_address   ), //i
    .io_input_payload_data            (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_data      ), //i
    .io_input_payload_mask            (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_mask      ), //i
    .io_input_payload_size            (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_size      ), //i
    .io_input_payload_last            (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_last      ), //i
    .io_outputs_0_valid               (streamFork_5_io_outputs_0_valid                                 ), //o
    .io_outputs_0_ready               (streamFork_5_io_outputs_0_ready                                 ), //i
    .io_outputs_0_payload_wr          (streamFork_5_io_outputs_0_payload_wr                            ), //o
    .io_outputs_0_payload_uncached    (streamFork_5_io_outputs_0_payload_uncached                      ), //o
    .io_outputs_0_payload_address     (streamFork_5_io_outputs_0_payload_address                       ), //o
    .io_outputs_0_payload_data        (streamFork_5_io_outputs_0_payload_data                          ), //o
    .io_outputs_0_payload_mask        (streamFork_5_io_outputs_0_payload_mask                          ), //o
    .io_outputs_0_payload_size        (streamFork_5_io_outputs_0_payload_size                          ), //o
    .io_outputs_0_payload_last        (streamFork_5_io_outputs_0_payload_last                          ), //o
    .io_outputs_1_valid               (streamFork_5_io_outputs_1_valid                                 ), //o
    .io_outputs_1_ready               (streamFork_5_io_outputs_1_ready                                 ), //i
    .io_outputs_1_payload_wr          (streamFork_5_io_outputs_1_payload_wr                            ), //o
    .io_outputs_1_payload_uncached    (streamFork_5_io_outputs_1_payload_uncached                      ), //o
    .io_outputs_1_payload_address     (streamFork_5_io_outputs_1_payload_address                       ), //o
    .io_outputs_1_payload_data        (streamFork_5_io_outputs_1_payload_data                          ), //o
    .io_outputs_1_payload_mask        (streamFork_5_io_outputs_1_payload_mask                          ), //o
    .io_outputs_1_payload_size        (streamFork_5_io_outputs_1_payload_size                          ), //o
    .io_outputs_1_payload_last        (streamFork_5_io_outputs_1_payload_last                          ), //o
    .io_axiClk                        (io_axiClk                                                       ), //i
    .resetCtrl_axiReset               (resetCtrl_axiReset                                              )  //i
  );
  BufferCC_5 io_coreInterrupt_buffercc (
    .io_dataIn             (io_coreInterrupt                      ), //i
    .io_dataOut            (io_coreInterrupt_buffercc_io_dataOut  ), //o
    .io_axiClk             (io_axiClk                             ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                    )  //i
  );
  JtagBridge jtagBridge_1 (
    .io_jtag_tms                       (io_jtag_tms                                   ), //i
    .io_jtag_tdi                       (io_jtag_tdi                                   ), //i
    .io_jtag_tdo                       (jtagBridge_1_io_jtag_tdo                      ), //o
    .io_jtag_tck                       (io_jtag_tck                                   ), //i
    .io_remote_cmd_valid               (jtagBridge_1_io_remote_cmd_valid              ), //o
    .io_remote_cmd_ready               (systemDebugger_1_io_remote_cmd_ready          ), //i
    .io_remote_cmd_payload_last        (jtagBridge_1_io_remote_cmd_payload_last       ), //o
    .io_remote_cmd_payload_fragment    (jtagBridge_1_io_remote_cmd_payload_fragment   ), //o
    .io_remote_rsp_valid               (systemDebugger_1_io_remote_rsp_valid          ), //i
    .io_remote_rsp_ready               (jtagBridge_1_io_remote_rsp_ready              ), //o
    .io_remote_rsp_payload_error       (systemDebugger_1_io_remote_rsp_payload_error  ), //i
    .io_remote_rsp_payload_data        (systemDebugger_1_io_remote_rsp_payload_data   ), //i
    .io_axiClk                         (io_axiClk                                     ), //i
    .resetCtrl_systemReset             (resetCtrl_systemReset                         )  //i
  );
  SystemDebugger systemDebugger_1 (
    .io_remote_cmd_valid               (jtagBridge_1_io_remote_cmd_valid              ), //i
    .io_remote_cmd_ready               (systemDebugger_1_io_remote_cmd_ready          ), //o
    .io_remote_cmd_payload_last        (jtagBridge_1_io_remote_cmd_payload_last       ), //i
    .io_remote_cmd_payload_fragment    (jtagBridge_1_io_remote_cmd_payload_fragment   ), //i
    .io_remote_rsp_valid               (systemDebugger_1_io_remote_rsp_valid          ), //o
    .io_remote_rsp_ready               (jtagBridge_1_io_remote_rsp_ready              ), //i
    .io_remote_rsp_payload_error       (systemDebugger_1_io_remote_rsp_payload_error  ), //o
    .io_remote_rsp_payload_data        (systemDebugger_1_io_remote_rsp_payload_data   ), //o
    .io_mem_cmd_valid                  (systemDebugger_1_io_mem_cmd_valid             ), //o
    .io_mem_cmd_ready                  (axi_core_cpu_debug_bus_cmd_ready              ), //i
    .io_mem_cmd_payload_address        (systemDebugger_1_io_mem_cmd_payload_address   ), //o
    .io_mem_cmd_payload_data           (systemDebugger_1_io_mem_cmd_payload_data      ), //o
    .io_mem_cmd_payload_wr             (systemDebugger_1_io_mem_cmd_payload_wr        ), //o
    .io_mem_cmd_payload_size           (systemDebugger_1_io_mem_cmd_payload_size      ), //o
    .io_mem_rsp_valid                  (axi_core_cpu_debug_bus_cmd_fire_regNext       ), //i
    .io_mem_rsp_payload                (axi_core_cpu_debug_bus_rsp_data               ), //i
    .io_axiClk                         (io_axiClk                                     ), //i
    .resetCtrl_systemReset             (resetCtrl_systemReset                         )  //i
  );
  Axi4ReadOnlyDecoder axi4ReadOnlyDecoder_1 (
    .io_input_ar_valid                (axi_core_cpu_iBus_cmd_valid                                  ), //i
    .io_input_ar_ready                (axi4ReadOnlyDecoder_1_io_input_ar_ready                      ), //o
    .io_input_ar_payload_addr         (axi_core_cpu_iBus_cmd_payload_address                        ), //i
    .io_input_ar_payload_len          (8'h07                                                        ), //i
    .io_input_ar_payload_burst        (2'b01                                                        ), //i
    .io_input_ar_payload_cache        (4'b1111                                                      ), //i
    .io_input_ar_payload_prot         (3'b110                                                       ), //i
    .io_input_r_valid                 (axi4ReadOnlyDecoder_1_io_input_r_valid                       ), //o
    .io_input_r_ready                 (1'b1                                                         ), //i
    .io_input_r_payload_data          (axi4ReadOnlyDecoder_1_io_input_r_payload_data                ), //o
    .io_input_r_payload_resp          (axi4ReadOnlyDecoder_1_io_input_r_payload_resp                ), //o
    .io_input_r_payload_last          (axi4ReadOnlyDecoder_1_io_input_r_payload_last                ), //o
    .io_outputs_0_ar_valid            (axi4ReadOnlyDecoder_1_io_outputs_0_ar_valid                  ), //o
    .io_outputs_0_ar_ready            (axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire_1       ), //i
    .io_outputs_0_ar_payload_addr     (axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_addr           ), //o
    .io_outputs_0_ar_payload_len      (axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_len            ), //o
    .io_outputs_0_ar_payload_burst    (axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_burst          ), //o
    .io_outputs_0_ar_payload_cache    (axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_cache          ), //o
    .io_outputs_0_ar_payload_prot     (axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_prot           ), //o
    .io_outputs_0_r_valid             (axi_ocram_io_axi_arbiter_io_readInputs_0_r_valid             ), //i
    .io_outputs_0_r_ready             (axi4ReadOnlyDecoder_1_io_outputs_0_r_ready                   ), //o
    .io_outputs_0_r_payload_data      (axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_data      ), //i
    .io_outputs_0_r_payload_resp      (axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_resp      ), //i
    .io_outputs_0_r_payload_last      (axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_last      ), //i
    .io_outputs_1_ar_valid            (axi4ReadOnlyDecoder_1_io_outputs_1_ar_valid                  ), //o
    .io_outputs_1_ar_ready            (axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire_1       ), //i
    .io_outputs_1_ar_payload_addr     (axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_addr           ), //o
    .io_outputs_1_ar_payload_len      (axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_len            ), //o
    .io_outputs_1_ar_payload_burst    (axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_burst          ), //o
    .io_outputs_1_ar_payload_cache    (axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_cache          ), //o
    .io_outputs_1_ar_payload_prot     (axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_prot           ), //o
    .io_outputs_1_r_valid             (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_valid         ), //i
    .io_outputs_1_r_ready             (axi4ReadOnlyDecoder_1_io_outputs_1_r_ready                   ), //o
    .io_outputs_1_r_payload_data      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_data  ), //i
    .io_outputs_1_r_payload_resp      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_resp  ), //i
    .io_outputs_1_r_payload_last      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_last  ), //i
    .io_axiClk                        (io_axiClk                                                    ), //i
    .resetCtrl_axiReset               (resetCtrl_axiReset                                           )  //i
  );
  Axi4SharedDecoder dbus_axi_decoder (
    .io_input_arw_valid                      (dbus_axi_arw_valid                                              ), //i
    .io_input_arw_ready                      (dbus_axi_decoder_io_input_arw_ready                             ), //o
    .io_input_arw_payload_addr               (dbus_axi_arw_payload_addr                                       ), //i
    .io_input_arw_payload_len                (dbus_axi_arw_payload_len                                        ), //i
    .io_input_arw_payload_size               (dbus_axi_arw_payload_size                                       ), //i
    .io_input_arw_payload_cache              (dbus_axi_arw_payload_cache                                      ), //i
    .io_input_arw_payload_prot               (dbus_axi_arw_payload_prot                                       ), //i
    .io_input_arw_payload_write              (dbus_axi_arw_payload_write                                      ), //i
    .io_input_w_valid                        (dbus_axi_w_valid                                                ), //i
    .io_input_w_ready                        (dbus_axi_decoder_io_input_w_ready                               ), //o
    .io_input_w_payload_data                 (dbus_axi_w_payload_data                                         ), //i
    .io_input_w_payload_strb                 (dbus_axi_w_payload_strb                                         ), //i
    .io_input_w_payload_last                 (dbus_axi_w_payload_last                                         ), //i
    .io_input_b_valid                        (dbus_axi_decoder_io_input_b_valid                               ), //o
    .io_input_b_ready                        (dbus_axi_b_ready                                                ), //i
    .io_input_b_payload_resp                 (dbus_axi_decoder_io_input_b_payload_resp                        ), //o
    .io_input_r_valid                        (dbus_axi_decoder_io_input_r_valid                               ), //o
    .io_input_r_ready                        (dbus_axi_decoder_io_input_r_ready                               ), //i
    .io_input_r_payload_data                 (dbus_axi_decoder_io_input_r_payload_data                        ), //o
    .io_input_r_payload_resp                 (dbus_axi_decoder_io_input_r_payload_resp                        ), //o
    .io_input_r_payload_last                 (dbus_axi_decoder_io_input_r_payload_last                        ), //o
    .io_sharedOutputs_0_arw_valid            (dbus_axi_decoder_io_sharedOutputs_0_arw_valid                   ), //o
    .io_sharedOutputs_0_arw_ready            (dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_fire_1        ), //i
    .io_sharedOutputs_0_arw_payload_addr     (dbus_axi_decoder_io_sharedOutputs_0_arw_payload_addr            ), //o
    .io_sharedOutputs_0_arw_payload_len      (dbus_axi_decoder_io_sharedOutputs_0_arw_payload_len             ), //o
    .io_sharedOutputs_0_arw_payload_size     (dbus_axi_decoder_io_sharedOutputs_0_arw_payload_size            ), //o
    .io_sharedOutputs_0_arw_payload_cache    (dbus_axi_decoder_io_sharedOutputs_0_arw_payload_cache           ), //o
    .io_sharedOutputs_0_arw_payload_prot     (dbus_axi_decoder_io_sharedOutputs_0_arw_payload_prot            ), //o
    .io_sharedOutputs_0_arw_payload_write    (dbus_axi_decoder_io_sharedOutputs_0_arw_payload_write           ), //o
    .io_sharedOutputs_0_w_valid              (dbus_axi_decoder_io_sharedOutputs_0_w_valid                     ), //o
    .io_sharedOutputs_0_w_ready              (axi_ocram_io_axi_arbiter_io_sharedInputs_0_w_ready              ), //i
    .io_sharedOutputs_0_w_payload_data       (dbus_axi_decoder_io_sharedOutputs_0_w_payload_data              ), //o
    .io_sharedOutputs_0_w_payload_strb       (dbus_axi_decoder_io_sharedOutputs_0_w_payload_strb              ), //o
    .io_sharedOutputs_0_w_payload_last       (dbus_axi_decoder_io_sharedOutputs_0_w_payload_last              ), //o
    .io_sharedOutputs_0_b_valid              (axi_ocram_io_axi_arbiter_io_sharedInputs_0_b_valid              ), //i
    .io_sharedOutputs_0_b_ready              (dbus_axi_decoder_io_sharedOutputs_0_b_ready                     ), //o
    .io_sharedOutputs_0_b_payload_resp       (axi_ocram_io_axi_arbiter_io_sharedInputs_0_b_payload_resp       ), //i
    .io_sharedOutputs_0_r_valid              (axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_valid              ), //i
    .io_sharedOutputs_0_r_ready              (dbus_axi_decoder_io_sharedOutputs_0_r_ready                     ), //o
    .io_sharedOutputs_0_r_payload_data       (axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_data       ), //i
    .io_sharedOutputs_0_r_payload_resp       (axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_resp       ), //i
    .io_sharedOutputs_0_r_payload_last       (axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_last       ), //i
    .io_sharedOutputs_1_arw_valid            (dbus_axi_decoder_io_sharedOutputs_1_arw_valid                   ), //o
    .io_sharedOutputs_1_arw_ready            (dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_fire_1        ), //i
    .io_sharedOutputs_1_arw_payload_addr     (dbus_axi_decoder_io_sharedOutputs_1_arw_payload_addr            ), //o
    .io_sharedOutputs_1_arw_payload_len      (dbus_axi_decoder_io_sharedOutputs_1_arw_payload_len             ), //o
    .io_sharedOutputs_1_arw_payload_size     (dbus_axi_decoder_io_sharedOutputs_1_arw_payload_size            ), //o
    .io_sharedOutputs_1_arw_payload_cache    (dbus_axi_decoder_io_sharedOutputs_1_arw_payload_cache           ), //o
    .io_sharedOutputs_1_arw_payload_prot     (dbus_axi_decoder_io_sharedOutputs_1_arw_payload_prot            ), //o
    .io_sharedOutputs_1_arw_payload_write    (dbus_axi_decoder_io_sharedOutputs_1_arw_payload_write           ), //o
    .io_sharedOutputs_1_w_valid              (dbus_axi_decoder_io_sharedOutputs_1_w_valid                     ), //o
    .io_sharedOutputs_1_w_ready              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_w_ready          ), //i
    .io_sharedOutputs_1_w_payload_data       (dbus_axi_decoder_io_sharedOutputs_1_w_payload_data              ), //o
    .io_sharedOutputs_1_w_payload_strb       (dbus_axi_decoder_io_sharedOutputs_1_w_payload_strb              ), //o
    .io_sharedOutputs_1_w_payload_last       (dbus_axi_decoder_io_sharedOutputs_1_w_payload_last              ), //o
    .io_sharedOutputs_1_b_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_valid          ), //i
    .io_sharedOutputs_1_b_ready              (dbus_axi_decoder_io_sharedOutputs_1_b_ready                     ), //o
    .io_sharedOutputs_1_b_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_resp   ), //i
    .io_sharedOutputs_1_r_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_valid          ), //i
    .io_sharedOutputs_1_r_ready              (dbus_axi_decoder_io_sharedOutputs_1_r_ready                     ), //o
    .io_sharedOutputs_1_r_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_data   ), //i
    .io_sharedOutputs_1_r_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_resp   ), //i
    .io_sharedOutputs_1_r_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_last   ), //i
    .io_sharedOutputs_2_arw_valid            (dbus_axi_decoder_io_sharedOutputs_2_arw_valid                   ), //o
    .io_sharedOutputs_2_arw_ready            (dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_fire_1        ), //i
    .io_sharedOutputs_2_arw_payload_addr     (dbus_axi_decoder_io_sharedOutputs_2_arw_payload_addr            ), //o
    .io_sharedOutputs_2_arw_payload_len      (dbus_axi_decoder_io_sharedOutputs_2_arw_payload_len             ), //o
    .io_sharedOutputs_2_arw_payload_size     (dbus_axi_decoder_io_sharedOutputs_2_arw_payload_size            ), //o
    .io_sharedOutputs_2_arw_payload_cache    (dbus_axi_decoder_io_sharedOutputs_2_arw_payload_cache           ), //o
    .io_sharedOutputs_2_arw_payload_prot     (dbus_axi_decoder_io_sharedOutputs_2_arw_payload_prot            ), //o
    .io_sharedOutputs_2_arw_payload_write    (dbus_axi_decoder_io_sharedOutputs_2_arw_payload_write           ), //o
    .io_sharedOutputs_2_w_valid              (dbus_axi_decoder_io_sharedOutputs_2_w_valid                     ), //o
    .io_sharedOutputs_2_w_ready              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready          ), //i
    .io_sharedOutputs_2_w_payload_data       (dbus_axi_decoder_io_sharedOutputs_2_w_payload_data              ), //o
    .io_sharedOutputs_2_w_payload_strb       (dbus_axi_decoder_io_sharedOutputs_2_w_payload_strb              ), //o
    .io_sharedOutputs_2_w_payload_last       (dbus_axi_decoder_io_sharedOutputs_2_w_payload_last              ), //o
    .io_sharedOutputs_2_b_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid          ), //i
    .io_sharedOutputs_2_b_ready              (dbus_axi_decoder_io_sharedOutputs_2_b_ready                     ), //o
    .io_sharedOutputs_2_b_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp   ), //i
    .io_sharedOutputs_2_r_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid          ), //i
    .io_sharedOutputs_2_r_ready              (dbus_axi_decoder_io_sharedOutputs_2_r_ready                     ), //o
    .io_sharedOutputs_2_r_payload_data       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data   ), //i
    .io_sharedOutputs_2_r_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp   ), //i
    .io_sharedOutputs_2_r_payload_last       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last   ), //i
    .io_sharedOutputs_3_arw_valid            (dbus_axi_decoder_io_sharedOutputs_3_arw_valid                   ), //o
    .io_sharedOutputs_3_arw_ready            (dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_fire_1        ), //i
    .io_sharedOutputs_3_arw_payload_addr     (dbus_axi_decoder_io_sharedOutputs_3_arw_payload_addr            ), //o
    .io_sharedOutputs_3_arw_payload_len      (dbus_axi_decoder_io_sharedOutputs_3_arw_payload_len             ), //o
    .io_sharedOutputs_3_arw_payload_size     (dbus_axi_decoder_io_sharedOutputs_3_arw_payload_size            ), //o
    .io_sharedOutputs_3_arw_payload_cache    (dbus_axi_decoder_io_sharedOutputs_3_arw_payload_cache           ), //o
    .io_sharedOutputs_3_arw_payload_prot     (dbus_axi_decoder_io_sharedOutputs_3_arw_payload_prot            ), //o
    .io_sharedOutputs_3_arw_payload_write    (dbus_axi_decoder_io_sharedOutputs_3_arw_payload_write           ), //o
    .io_sharedOutputs_3_w_valid              (dbus_axi_decoder_io_sharedOutputs_3_w_valid                     ), //o
    .io_sharedOutputs_3_w_ready              (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_w_ready         ), //i
    .io_sharedOutputs_3_w_payload_data       (dbus_axi_decoder_io_sharedOutputs_3_w_payload_data              ), //o
    .io_sharedOutputs_3_w_payload_strb       (dbus_axi_decoder_io_sharedOutputs_3_w_payload_strb              ), //o
    .io_sharedOutputs_3_w_payload_last       (dbus_axi_decoder_io_sharedOutputs_3_w_payload_last              ), //o
    .io_sharedOutputs_3_b_valid              (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_b_valid         ), //i
    .io_sharedOutputs_3_b_ready              (dbus_axi_decoder_io_sharedOutputs_3_b_ready                     ), //o
    .io_sharedOutputs_3_b_payload_resp       (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_b_payload_resp  ), //i
    .io_sharedOutputs_3_r_valid              (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_valid         ), //i
    .io_sharedOutputs_3_r_ready              (dbus_axi_decoder_io_sharedOutputs_3_r_ready                     ), //o
    .io_sharedOutputs_3_r_payload_data       (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_data  ), //i
    .io_sharedOutputs_3_r_payload_resp       (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_resp  ), //i
    .io_sharedOutputs_3_r_payload_last       (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_last  ), //i
    .io_axiClk                               (io_axiClk                                                       ), //i
    .resetCtrl_axiReset                      (resetCtrl_axiReset                                              )  //i
  );
  Axi4SharedArbiter axi_ocram_io_axi_arbiter (
    .io_readInputs_0_ar_valid               (axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_valid            ), //i
    .io_readInputs_0_ar_ready               (axi_ocram_io_axi_arbiter_io_readInputs_0_ar_ready                ), //o
    .io_readInputs_0_ar_payload_addr        (axi_ocram_io_axi_arbiter_io_readInputs_0_ar_payload_addr         ), //i
    .io_readInputs_0_ar_payload_id          (_zz_io_readInputs_0_ar_payload_id                                ), //i
    .io_readInputs_0_ar_payload_len         (axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_len      ), //i
    .io_readInputs_0_ar_payload_size        (3'b010                                                           ), //i
    .io_readInputs_0_ar_payload_burst       (axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_burst    ), //i
    .io_readInputs_0_r_valid                (axi_ocram_io_axi_arbiter_io_readInputs_0_r_valid                 ), //o
    .io_readInputs_0_r_ready                (axi4ReadOnlyDecoder_1_io_outputs_0_r_ready                       ), //i
    .io_readInputs_0_r_payload_data         (axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_data          ), //o
    .io_readInputs_0_r_payload_id           (axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_id            ), //o
    .io_readInputs_0_r_payload_resp         (axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_resp          ), //o
    .io_readInputs_0_r_payload_last         (axi_ocram_io_axi_arbiter_io_readInputs_0_r_payload_last          ), //o
    .io_sharedInputs_0_arw_valid            (dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_valid          ), //i
    .io_sharedInputs_0_arw_ready            (axi_ocram_io_axi_arbiter_io_sharedInputs_0_arw_ready             ), //o
    .io_sharedInputs_0_arw_payload_addr     (axi_ocram_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr      ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_io_sharedInputs_0_arw_payload_id                             ), //i
    .io_sharedInputs_0_arw_payload_len      (dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_len    ), //i
    .io_sharedInputs_0_arw_payload_size     (dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_size   ), //i
    .io_sharedInputs_0_arw_payload_burst    (2'b01                                                            ), //i
    .io_sharedInputs_0_arw_payload_write    (dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_write  ), //i
    .io_sharedInputs_0_w_valid              (dbus_axi_decoder_io_sharedOutputs_0_w_valid                      ), //i
    .io_sharedInputs_0_w_ready              (axi_ocram_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //o
    .io_sharedInputs_0_w_payload_data       (dbus_axi_decoder_io_sharedOutputs_0_w_payload_data               ), //i
    .io_sharedInputs_0_w_payload_strb       (dbus_axi_decoder_io_sharedOutputs_0_w_payload_strb               ), //i
    .io_sharedInputs_0_w_payload_last       (dbus_axi_decoder_io_sharedOutputs_0_w_payload_last               ), //i
    .io_sharedInputs_0_b_valid              (axi_ocram_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //o
    .io_sharedInputs_0_b_ready              (dbus_axi_decoder_io_sharedOutputs_0_b_ready                      ), //i
    .io_sharedInputs_0_b_payload_id         (axi_ocram_io_axi_arbiter_io_sharedInputs_0_b_payload_id          ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_ocram_io_axi_arbiter_io_sharedInputs_0_b_payload_resp        ), //o
    .io_sharedInputs_0_r_valid              (axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //o
    .io_sharedInputs_0_r_ready              (dbus_axi_decoder_io_sharedOutputs_0_r_ready                      ), //i
    .io_sharedInputs_0_r_payload_data       (axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_data        ), //o
    .io_sharedInputs_0_r_payload_id         (axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_id          ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_resp        ), //o
    .io_sharedInputs_0_r_payload_last       (axi_ocram_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //o
    .io_output_arw_valid                    (axi_ocram_io_axi_arbiter_io_output_arw_valid                     ), //o
    .io_output_arw_ready                    (axi_ocram_io_axi_arbiter_io_output_arw_ready                     ), //i
    .io_output_arw_payload_addr             (axi_ocram_io_axi_arbiter_io_output_arw_payload_addr              ), //o
    .io_output_arw_payload_id               (axi_ocram_io_axi_arbiter_io_output_arw_payload_id                ), //o
    .io_output_arw_payload_len              (axi_ocram_io_axi_arbiter_io_output_arw_payload_len               ), //o
    .io_output_arw_payload_size             (axi_ocram_io_axi_arbiter_io_output_arw_payload_size              ), //o
    .io_output_arw_payload_burst            (axi_ocram_io_axi_arbiter_io_output_arw_payload_burst             ), //o
    .io_output_arw_payload_write            (axi_ocram_io_axi_arbiter_io_output_arw_payload_write             ), //o
    .io_output_w_valid                      (axi_ocram_io_axi_arbiter_io_output_w_valid                       ), //o
    .io_output_w_ready                      (axi_ocram_io_axi_arbiter_io_output_w_ready                       ), //i
    .io_output_w_payload_data               (axi_ocram_io_axi_arbiter_io_output_w_payload_data                ), //o
    .io_output_w_payload_strb               (axi_ocram_io_axi_arbiter_io_output_w_payload_strb                ), //o
    .io_output_w_payload_last               (axi_ocram_io_axi_arbiter_io_output_w_payload_last                ), //o
    .io_output_b_valid                      (axi_ocram_io_axi_b_valid                                         ), //i
    .io_output_b_ready                      (axi_ocram_io_axi_arbiter_io_output_b_ready                       ), //o
    .io_output_b_payload_id                 (axi_ocram_io_axi_b_payload_id                                    ), //i
    .io_output_b_payload_resp               (axi_ocram_io_axi_b_payload_resp                                  ), //i
    .io_output_r_valid                      (axi_ocram_io_axi_r_valid                                         ), //i
    .io_output_r_ready                      (axi_ocram_io_axi_arbiter_io_output_r_ready                       ), //o
    .io_output_r_payload_data               (axi_ocram_io_axi_r_payload_data                                  ), //i
    .io_output_r_payload_id                 (axi_ocram_io_axi_r_payload_id                                    ), //i
    .io_output_r_payload_resp               (axi_ocram_io_axi_r_payload_resp                                  ), //i
    .io_output_r_payload_last               (axi_ocram_io_axi_r_payload_last                                  ), //i
    .io_axiClk                              (io_axiClk                                                        ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                               )  //i
  );
  Axi4SharedArbiter_1 axi_sdramCtrl_io_axi_arbiter (
    .io_readInputs_0_ar_valid               (axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_valid            ), //i
    .io_readInputs_0_ar_ready               (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_ready            ), //o
    .io_readInputs_0_ar_payload_addr        (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_payload_addr     ), //i
    .io_readInputs_0_ar_payload_id          (_zz_io_readInputs_0_ar_payload_id_1                              ), //i
    .io_readInputs_0_ar_payload_len         (axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_len      ), //i
    .io_readInputs_0_ar_payload_size        (3'b010                                                           ), //i
    .io_readInputs_0_ar_payload_burst       (axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_burst    ), //i
    .io_readInputs_0_r_valid                (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_valid             ), //o
    .io_readInputs_0_r_ready                (axi4ReadOnlyDecoder_1_io_outputs_1_r_ready                       ), //i
    .io_readInputs_0_r_payload_data         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_data      ), //o
    .io_readInputs_0_r_payload_id           (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_id        ), //o
    .io_readInputs_0_r_payload_resp         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_resp      ), //o
    .io_readInputs_0_r_payload_last         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_last      ), //o
    .io_sharedInputs_0_arw_valid            (dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_valid          ), //i
    .io_sharedInputs_0_arw_ready            (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_ready         ), //o
    .io_sharedInputs_0_arw_payload_addr     (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr  ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_io_sharedInputs_0_arw_payload_id_1                           ), //i
    .io_sharedInputs_0_arw_payload_len      (dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_len    ), //i
    .io_sharedInputs_0_arw_payload_size     (dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_size   ), //i
    .io_sharedInputs_0_arw_payload_burst    (2'b01                                                            ), //i
    .io_sharedInputs_0_arw_payload_write    (dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_write  ), //i
    .io_sharedInputs_0_w_valid              (dbus_axi_decoder_io_sharedOutputs_1_w_valid                      ), //i
    .io_sharedInputs_0_w_ready              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_w_ready           ), //o
    .io_sharedInputs_0_w_payload_data       (dbus_axi_decoder_io_sharedOutputs_1_w_payload_data               ), //i
    .io_sharedInputs_0_w_payload_strb       (dbus_axi_decoder_io_sharedOutputs_1_w_payload_strb               ), //i
    .io_sharedInputs_0_w_payload_last       (dbus_axi_decoder_io_sharedOutputs_1_w_payload_last               ), //i
    .io_sharedInputs_0_b_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_valid           ), //o
    .io_sharedInputs_0_b_ready              (dbus_axi_decoder_io_sharedOutputs_1_b_ready                      ), //i
    .io_sharedInputs_0_b_payload_id         (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_id      ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_resp    ), //o
    .io_sharedInputs_0_r_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_valid           ), //o
    .io_sharedInputs_0_r_ready              (dbus_axi_decoder_io_sharedOutputs_1_r_ready                      ), //i
    .io_sharedInputs_0_r_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_data    ), //o
    .io_sharedInputs_0_r_payload_id         (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_id      ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_resp    ), //o
    .io_sharedInputs_0_r_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_last    ), //o
    .io_output_arw_valid                    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid                 ), //o
    .io_output_arw_ready                    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_ready                 ), //i
    .io_output_arw_payload_addr             (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_addr          ), //o
    .io_output_arw_payload_id               (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_id            ), //o
    .io_output_arw_payload_len              (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_len           ), //o
    .io_output_arw_payload_size             (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_size          ), //o
    .io_output_arw_payload_burst            (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_burst         ), //o
    .io_output_arw_payload_write            (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_write         ), //o
    .io_output_w_valid                      (axi_sdramCtrl_io_axi_arbiter_io_output_w_valid                   ), //o
    .io_output_w_ready                      (axi_sdramCtrl_io_axi_arbiter_io_output_w_ready                   ), //i
    .io_output_w_payload_data               (axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data            ), //o
    .io_output_w_payload_strb               (axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb            ), //o
    .io_output_w_payload_last               (axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last            ), //o
    .io_output_b_valid                      (axi_sdramCtrl_io_axi_b_valid                                     ), //i
    .io_output_b_ready                      (axi_sdramCtrl_io_axi_arbiter_io_output_b_ready                   ), //o
    .io_output_b_payload_id                 (axi_sdramCtrl_io_axi_b_payload_id                                ), //i
    .io_output_b_payload_resp               (axi_sdramCtrl_io_axi_b_payload_resp                              ), //i
    .io_output_r_valid                      (axi_sdramCtrl_io_axi_r_valid                                     ), //i
    .io_output_r_ready                      (axi_sdramCtrl_io_axi_arbiter_io_output_r_ready                   ), //o
    .io_output_r_payload_data               (axi_sdramCtrl_io_axi_r_payload_data                              ), //i
    .io_output_r_payload_id                 (axi_sdramCtrl_io_axi_r_payload_id                                ), //i
    .io_output_r_payload_resp               (axi_sdramCtrl_io_axi_r_payload_resp                              ), //i
    .io_output_r_payload_last               (axi_sdramCtrl_io_axi_r_payload_last                              ), //i
    .io_axiClk                              (io_axiClk                                                        ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                               )  //i
  );
  Axi4SharedArbiter_2 axi_apbBridge_io_axi_arbiter (
    .io_sharedInputs_0_arw_valid            (dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_valid          ), //i
    .io_sharedInputs_0_arw_ready            (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready         ), //o
    .io_sharedInputs_0_arw_payload_addr     (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr  ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_io_sharedInputs_0_arw_payload_id_2                           ), //i
    .io_sharedInputs_0_arw_payload_len      (dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_len    ), //i
    .io_sharedInputs_0_arw_payload_size     (dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_size   ), //i
    .io_sharedInputs_0_arw_payload_burst    (2'b01                                                            ), //i
    .io_sharedInputs_0_arw_payload_write    (dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_write  ), //i
    .io_sharedInputs_0_w_valid              (dbus_axi_decoder_io_sharedOutputs_2_w_valid                      ), //i
    .io_sharedInputs_0_w_ready              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready           ), //o
    .io_sharedInputs_0_w_payload_data       (dbus_axi_decoder_io_sharedOutputs_2_w_payload_data               ), //i
    .io_sharedInputs_0_w_payload_strb       (dbus_axi_decoder_io_sharedOutputs_2_w_payload_strb               ), //i
    .io_sharedInputs_0_w_payload_last       (dbus_axi_decoder_io_sharedOutputs_2_w_payload_last               ), //i
    .io_sharedInputs_0_b_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid           ), //o
    .io_sharedInputs_0_b_ready              (dbus_axi_decoder_io_sharedOutputs_2_b_ready                      ), //i
    .io_sharedInputs_0_b_payload_id         (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_id      ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp    ), //o
    .io_sharedInputs_0_r_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid           ), //o
    .io_sharedInputs_0_r_ready              (dbus_axi_decoder_io_sharedOutputs_2_r_ready                      ), //i
    .io_sharedInputs_0_r_payload_data       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data    ), //o
    .io_sharedInputs_0_r_payload_id         (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_id      ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp    ), //o
    .io_sharedInputs_0_r_payload_last       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last    ), //o
    .io_output_arw_valid                    (axi_apbBridge_io_axi_arbiter_io_output_arw_valid                 ), //o
    .io_output_arw_ready                    (axi_apbBridge_io_axi_arbiter_io_output_arw_ready                 ), //i
    .io_output_arw_payload_addr             (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_addr          ), //o
    .io_output_arw_payload_id               (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_id            ), //o
    .io_output_arw_payload_len              (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_len           ), //o
    .io_output_arw_payload_size             (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_size          ), //o
    .io_output_arw_payload_burst            (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_burst         ), //o
    .io_output_arw_payload_write            (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_write         ), //o
    .io_output_w_valid                      (axi_apbBridge_io_axi_arbiter_io_output_w_valid                   ), //o
    .io_output_w_ready                      (axi_apbBridge_io_axi_arbiter_io_output_w_ready                   ), //i
    .io_output_w_payload_data               (axi_apbBridge_io_axi_arbiter_io_output_w_payload_data            ), //o
    .io_output_w_payload_strb               (axi_apbBridge_io_axi_arbiter_io_output_w_payload_strb            ), //o
    .io_output_w_payload_last               (axi_apbBridge_io_axi_arbiter_io_output_w_payload_last            ), //o
    .io_output_b_valid                      (axi_apbBridge_io_axi_b_valid                                     ), //i
    .io_output_b_ready                      (axi_apbBridge_io_axi_arbiter_io_output_b_ready                   ), //o
    .io_output_b_payload_id                 (axi_apbBridge_io_axi_b_payload_id                                ), //i
    .io_output_b_payload_resp               (axi_apbBridge_io_axi_b_payload_resp                              ), //i
    .io_output_r_valid                      (axi_apbBridge_io_axi_r_valid                                     ), //i
    .io_output_r_ready                      (axi_apbBridge_io_axi_arbiter_io_output_r_ready                   ), //o
    .io_output_r_payload_data               (axi_apbBridge_io_axi_r_payload_data                              ), //i
    .io_output_r_payload_id                 (axi_apbBridge_io_axi_r_payload_id                                ), //i
    .io_output_r_payload_resp               (axi_apbBridge_io_axi_r_payload_resp                              ), //i
    .io_output_r_payload_last               (axi_apbBridge_io_axi_r_payload_last                              ), //i
    .io_axiClk                              (io_axiClk                                                        ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                               )  //i
  );
  Axi4SharedArbiter_2 axi_apbBridge2_io_axi_arbiter (
    .io_sharedInputs_0_arw_valid            (dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_valid           ), //i
    .io_sharedInputs_0_arw_ready            (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_arw_ready         ), //o
    .io_sharedInputs_0_arw_payload_addr     (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr  ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_io_sharedInputs_0_arw_payload_id_3                            ), //i
    .io_sharedInputs_0_arw_payload_len      (dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_len     ), //i
    .io_sharedInputs_0_arw_payload_size     (dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_size    ), //i
    .io_sharedInputs_0_arw_payload_burst    (2'b01                                                             ), //i
    .io_sharedInputs_0_arw_payload_write    (dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_write   ), //i
    .io_sharedInputs_0_w_valid              (dbus_axi_decoder_io_sharedOutputs_3_w_valid                       ), //i
    .io_sharedInputs_0_w_ready              (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_w_ready           ), //o
    .io_sharedInputs_0_w_payload_data       (dbus_axi_decoder_io_sharedOutputs_3_w_payload_data                ), //i
    .io_sharedInputs_0_w_payload_strb       (dbus_axi_decoder_io_sharedOutputs_3_w_payload_strb                ), //i
    .io_sharedInputs_0_w_payload_last       (dbus_axi_decoder_io_sharedOutputs_3_w_payload_last                ), //i
    .io_sharedInputs_0_b_valid              (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_b_valid           ), //o
    .io_sharedInputs_0_b_ready              (dbus_axi_decoder_io_sharedOutputs_3_b_ready                       ), //i
    .io_sharedInputs_0_b_payload_id         (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_b_payload_id      ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_b_payload_resp    ), //o
    .io_sharedInputs_0_r_valid              (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_valid           ), //o
    .io_sharedInputs_0_r_ready              (dbus_axi_decoder_io_sharedOutputs_3_r_ready                       ), //i
    .io_sharedInputs_0_r_payload_data       (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_data    ), //o
    .io_sharedInputs_0_r_payload_id         (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_id      ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_resp    ), //o
    .io_sharedInputs_0_r_payload_last       (axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_r_payload_last    ), //o
    .io_output_arw_valid                    (axi_apbBridge2_io_axi_arbiter_io_output_arw_valid                 ), //o
    .io_output_arw_ready                    (axi_apbBridge2_io_axi_arbiter_io_output_arw_ready                 ), //i
    .io_output_arw_payload_addr             (axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_addr          ), //o
    .io_output_arw_payload_id               (axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_id            ), //o
    .io_output_arw_payload_len              (axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_len           ), //o
    .io_output_arw_payload_size             (axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_size          ), //o
    .io_output_arw_payload_burst            (axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_burst         ), //o
    .io_output_arw_payload_write            (axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_write         ), //o
    .io_output_w_valid                      (axi_apbBridge2_io_axi_arbiter_io_output_w_valid                   ), //o
    .io_output_w_ready                      (axi_apbBridge2_io_axi_arbiter_io_output_w_ready                   ), //i
    .io_output_w_payload_data               (axi_apbBridge2_io_axi_arbiter_io_output_w_payload_data            ), //o
    .io_output_w_payload_strb               (axi_apbBridge2_io_axi_arbiter_io_output_w_payload_strb            ), //o
    .io_output_w_payload_last               (axi_apbBridge2_io_axi_arbiter_io_output_w_payload_last            ), //o
    .io_output_b_valid                      (axi_apbBridge2_io_axi_b_valid                                     ), //i
    .io_output_b_ready                      (axi_apbBridge2_io_axi_arbiter_io_output_b_ready                   ), //o
    .io_output_b_payload_id                 (axi_apbBridge2_io_axi_b_payload_id                                ), //i
    .io_output_b_payload_resp               (axi_apbBridge2_io_axi_b_payload_resp                              ), //i
    .io_output_r_valid                      (axi_apbBridge2_io_axi_r_valid                                     ), //i
    .io_output_r_ready                      (axi_apbBridge2_io_axi_arbiter_io_output_r_ready                   ), //o
    .io_output_r_payload_data               (axi_apbBridge2_io_axi_r_payload_data                              ), //i
    .io_output_r_payload_id                 (axi_apbBridge2_io_axi_r_payload_id                                ), //i
    .io_output_r_payload_resp               (axi_apbBridge2_io_axi_r_payload_resp                              ), //i
    .io_output_r_payload_last               (axi_apbBridge2_io_axi_r_payload_last                              ), //i
    .io_axiClk                              (io_axiClk                                                         ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                                )  //i
  );
  Apb3Decoder io_apb_decoder (
    .io_input_PADDR         (axi_apbBridge_io_apb_PADDR         ), //i
    .io_input_PSEL          (axi_apbBridge_io_apb_PSEL          ), //i
    .io_input_PENABLE       (axi_apbBridge_io_apb_PENABLE       ), //i
    .io_input_PREADY        (io_apb_decoder_io_input_PREADY     ), //o
    .io_input_PWRITE        (axi_apbBridge_io_apb_PWRITE        ), //i
    .io_input_PWDATA        (axi_apbBridge_io_apb_PWDATA        ), //i
    .io_input_PRDATA        (io_apb_decoder_io_input_PRDATA     ), //o
    .io_input_PSLVERROR     (io_apb_decoder_io_input_PSLVERROR  ), //o
    .io_output_PADDR        (io_apb_decoder_io_output_PADDR     ), //o
    .io_output_PSEL         (io_apb_decoder_io_output_PSEL      ), //o
    .io_output_PENABLE      (io_apb_decoder_io_output_PENABLE   ), //o
    .io_output_PREADY       (apb3Router_1_io_input_PREADY       ), //i
    .io_output_PWRITE       (io_apb_decoder_io_output_PWRITE    ), //o
    .io_output_PWDATA       (io_apb_decoder_io_output_PWDATA    ), //o
    .io_output_PRDATA       (apb3Router_1_io_input_PRDATA       ), //i
    .io_output_PSLVERROR    (apb3Router_1_io_input_PSLVERROR    )  //i
  );
  Apb3Router apb3Router_1 (
    .io_input_PADDR            (io_apb_decoder_io_output_PADDR     ), //i
    .io_input_PSEL             (io_apb_decoder_io_output_PSEL      ), //i
    .io_input_PENABLE          (io_apb_decoder_io_output_PENABLE   ), //i
    .io_input_PREADY           (apb3Router_1_io_input_PREADY       ), //o
    .io_input_PWRITE           (io_apb_decoder_io_output_PWRITE    ), //i
    .io_input_PWDATA           (io_apb_decoder_io_output_PWDATA    ), //i
    .io_input_PRDATA           (apb3Router_1_io_input_PRDATA       ), //o
    .io_input_PSLVERROR        (apb3Router_1_io_input_PSLVERROR    ), //o
    .io_outputs_0_PADDR        (apb3Router_1_io_outputs_0_PADDR    ), //o
    .io_outputs_0_PSEL         (apb3Router_1_io_outputs_0_PSEL     ), //o
    .io_outputs_0_PENABLE      (apb3Router_1_io_outputs_0_PENABLE  ), //o
    .io_outputs_0_PREADY       (axi_gpioACtrl_io_apb_PREADY        ), //i
    .io_outputs_0_PWRITE       (apb3Router_1_io_outputs_0_PWRITE   ), //o
    .io_outputs_0_PWDATA       (apb3Router_1_io_outputs_0_PWDATA   ), //o
    .io_outputs_0_PRDATA       (axi_gpioACtrl_io_apb_PRDATA        ), //i
    .io_outputs_0_PSLVERROR    (axi_gpioACtrl_io_apb_PSLVERROR     ), //i
    .io_outputs_1_PADDR        (apb3Router_1_io_outputs_1_PADDR    ), //o
    .io_outputs_1_PSEL         (apb3Router_1_io_outputs_1_PSEL     ), //o
    .io_outputs_1_PENABLE      (apb3Router_1_io_outputs_1_PENABLE  ), //o
    .io_outputs_1_PREADY       (axi_gpioBCtrl_io_apb_PREADY        ), //i
    .io_outputs_1_PWRITE       (apb3Router_1_io_outputs_1_PWRITE   ), //o
    .io_outputs_1_PWDATA       (apb3Router_1_io_outputs_1_PWDATA   ), //o
    .io_outputs_1_PRDATA       (axi_gpioBCtrl_io_apb_PRDATA        ), //i
    .io_outputs_1_PSLVERROR    (axi_gpioBCtrl_io_apb_PSLVERROR     ), //i
    .io_outputs_2_PADDR        (apb3Router_1_io_outputs_2_PADDR    ), //o
    .io_outputs_2_PSEL         (apb3Router_1_io_outputs_2_PSEL     ), //o
    .io_outputs_2_PENABLE      (apb3Router_1_io_outputs_2_PENABLE  ), //o
    .io_outputs_2_PREADY       (axi_uart1Ctrl_io_apb_PREADY        ), //i
    .io_outputs_2_PWRITE       (apb3Router_1_io_outputs_2_PWRITE   ), //o
    .io_outputs_2_PWDATA       (apb3Router_1_io_outputs_2_PWDATA   ), //o
    .io_outputs_2_PRDATA       (axi_uart1Ctrl_io_apb_PRDATA        ), //i
    .io_outputs_2_PSLVERROR    (1'b0                               ), //i
    .io_outputs_3_PADDR        (apb3Router_1_io_outputs_3_PADDR    ), //o
    .io_outputs_3_PSEL         (apb3Router_1_io_outputs_3_PSEL     ), //o
    .io_outputs_3_PENABLE      (apb3Router_1_io_outputs_3_PENABLE  ), //o
    .io_outputs_3_PREADY       (axi_uart2Ctrl_io_apb_PREADY        ), //i
    .io_outputs_3_PWRITE       (apb3Router_1_io_outputs_3_PWRITE   ), //o
    .io_outputs_3_PWDATA       (apb3Router_1_io_outputs_3_PWDATA   ), //o
    .io_outputs_3_PRDATA       (axi_uart2Ctrl_io_apb_PRDATA        ), //i
    .io_outputs_3_PSLVERROR    (1'b0                               ), //i
    .io_outputs_4_PADDR        (apb3Router_1_io_outputs_4_PADDR    ), //o
    .io_outputs_4_PSEL         (apb3Router_1_io_outputs_4_PSEL     ), //o
    .io_outputs_4_PENABLE      (apb3Router_1_io_outputs_4_PENABLE  ), //o
    .io_outputs_4_PREADY       (axi_timerCtrl_io_apb_PREADY        ), //i
    .io_outputs_4_PWRITE       (apb3Router_1_io_outputs_4_PWRITE   ), //o
    .io_outputs_4_PWDATA       (apb3Router_1_io_outputs_4_PWDATA   ), //o
    .io_outputs_4_PRDATA       (axi_timerCtrl_io_apb_PRDATA        ), //i
    .io_outputs_4_PSLVERROR    (axi_timerCtrl_io_apb_PSLVERROR     ), //i
    .io_outputs_5_PADDR        (apb3Router_1_io_outputs_5_PADDR    ), //o
    .io_outputs_5_PSEL         (apb3Router_1_io_outputs_5_PSEL     ), //o
    .io_outputs_5_PENABLE      (apb3Router_1_io_outputs_5_PENABLE  ), //o
    .io_outputs_5_PREADY       (axi_spim1Ctrl_io_apb_PREADY        ), //i
    .io_outputs_5_PWRITE       (apb3Router_1_io_outputs_5_PWRITE   ), //o
    .io_outputs_5_PWDATA       (apb3Router_1_io_outputs_5_PWDATA   ), //o
    .io_outputs_5_PRDATA       (axi_spim1Ctrl_io_apb_PRDATA        ), //i
    .io_outputs_5_PSLVERROR    (1'b0                               ), //i
    .io_outputs_6_PADDR        (apb3Router_1_io_outputs_6_PADDR    ), //o
    .io_outputs_6_PSEL         (apb3Router_1_io_outputs_6_PSEL     ), //o
    .io_outputs_6_PENABLE      (apb3Router_1_io_outputs_6_PENABLE  ), //o
    .io_outputs_6_PREADY       (axi_spim2Ctrl_io_apb_PREADY        ), //i
    .io_outputs_6_PWRITE       (apb3Router_1_io_outputs_6_PWRITE   ), //o
    .io_outputs_6_PWDATA       (apb3Router_1_io_outputs_6_PWDATA   ), //o
    .io_outputs_6_PRDATA       (axi_spim2Ctrl_io_apb_PRDATA        ), //i
    .io_outputs_6_PSLVERROR    (1'b0                               ), //i
    .io_axiClk                 (io_axiClk                          ), //i
    .resetCtrl_axiReset        (resetCtrl_axiReset                 )  //i
  );
  always @(*) begin
    resetCtrl_systemResetUnbuffered = 1'b0;
    if(when_VRV1_441_l261) begin
      resetCtrl_systemResetUnbuffered = 1'b1;
    end
  end

  assign _zz_when_VRV1_441_l261[5 : 0] = 6'h3f;
  assign when_VRV1_441_l261 = (resetCtrl_systemResetCounter != _zz_when_VRV1_441_l261);
  assign when_VRV1_441_l265 = io_asyncReset_buffercc_io_dataOut;
  assign axi_core_cpu_iBus_rsp_payload_error = (! (axi4ReadOnlyDecoder_1_io_input_r_payload_resp == 2'b00));
  always @(*) begin
    axi_core_cpu_dBus_cmd_ready = axi_core_cpu_dBus_cmd_m2sPipe_ready;
    if(when_Stream_l342) begin
      axi_core_cpu_dBus_cmd_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! axi_core_cpu_dBus_cmd_m2sPipe_valid);
  assign axi_core_cpu_dBus_cmd_m2sPipe_valid = axi_core_cpu_dBus_cmd_rValid;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_wr = axi_core_cpu_dBus_cmd_rData_wr;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_uncached = axi_core_cpu_dBus_cmd_rData_uncached;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_address = axi_core_cpu_dBus_cmd_rData_address;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_data = axi_core_cpu_dBus_cmd_rData_data;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_mask = axi_core_cpu_dBus_cmd_rData_mask;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_size = axi_core_cpu_dBus_cmd_rData_size;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_last = axi_core_cpu_dBus_cmd_rData_last;
  always @(*) begin
    axi_core_cpu_dBus_cmd_m2sPipe_ready = axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_ready;
    if(when_Stream_l342_1) begin
      axi_core_cpu_dBus_cmd_m2sPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l342_1 = (! axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid = axi_core_cpu_dBus_cmd_m2sPipe_rValid;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_wr = axi_core_cpu_dBus_cmd_m2sPipe_rData_wr;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_uncached = axi_core_cpu_dBus_cmd_m2sPipe_rData_uncached;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_address = axi_core_cpu_dBus_cmd_m2sPipe_rData_address;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_data = axi_core_cpu_dBus_cmd_m2sPipe_rData_data;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_mask = axi_core_cpu_dBus_cmd_m2sPipe_rData_mask;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_size = axi_core_cpu_dBus_cmd_m2sPipe_rData_size;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_last = axi_core_cpu_dBus_cmd_m2sPipe_rData_last;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_ready = (! axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_valid = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid || axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_wr : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_wr);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_uncached = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_uncached : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_uncached);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_address = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_address : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_address);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_data = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_data : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_data);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_mask = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_mask : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_mask);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_size = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_size : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_size);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_last = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_last : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_last);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_fire = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_valid && axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready);
  assign when_Utils_l466 = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_fire && axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr);
  assign dbus_axi_b_fire = (dbus_axi_b_valid && dbus_axi_b_ready);
  always @(*) begin
    _zz_when_Utils_l494 = 1'b0;
    if(when_Utils_l466) begin
      _zz_when_Utils_l494 = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_Utils_l494_1 = 1'b0;
    if(dbus_axi_b_fire) begin
      _zz_when_Utils_l494_1 = 1'b1;
    end
  end

  assign when_Utils_l494 = (_zz_when_Utils_l494 && (! _zz_when_Utils_l494_1));
  always @(*) begin
    if(when_Utils_l494) begin
      _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready_1 = 3'b001;
    end else begin
      if(when_Utils_l496) begin
        _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready_1 = 3'b111;
      end else begin
        _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready_1 = 3'b000;
      end
    end
  end

  assign when_Utils_l496 = ((! _zz_when_Utils_l494) && _zz_when_Utils_l494_1);
  assign _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready_2 = (! (((_zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready != 3'b000) && (! axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr)) || (_zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready == 3'b111)));
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready = (streamFork_5_io_input_ready && _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready_2);
  assign streamFork_5_io_input_valid = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_valid && _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready_2);
  assign streamFork_5_io_outputs_0_fire = (streamFork_5_io_outputs_0_valid && streamFork_5_io_outputs_0_ready);
  always @(*) begin
    streamFork_5_io_outputs_0_thrown_valid = streamFork_5_io_outputs_0_valid;
    if(_zz_1) begin
      streamFork_5_io_outputs_0_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    streamFork_5_io_outputs_0_ready = streamFork_5_io_outputs_0_thrown_ready;
    if(_zz_1) begin
      streamFork_5_io_outputs_0_ready = 1'b1;
    end
  end

  assign streamFork_5_io_outputs_0_thrown_payload_wr = streamFork_5_io_outputs_0_payload_wr;
  assign streamFork_5_io_outputs_0_thrown_payload_uncached = streamFork_5_io_outputs_0_payload_uncached;
  assign streamFork_5_io_outputs_0_thrown_payload_address = streamFork_5_io_outputs_0_payload_address;
  assign streamFork_5_io_outputs_0_thrown_payload_data = streamFork_5_io_outputs_0_payload_data;
  assign streamFork_5_io_outputs_0_thrown_payload_mask = streamFork_5_io_outputs_0_payload_mask;
  assign streamFork_5_io_outputs_0_thrown_payload_size = streamFork_5_io_outputs_0_payload_size;
  assign streamFork_5_io_outputs_0_thrown_payload_last = streamFork_5_io_outputs_0_payload_last;
  assign when_Stream_l408 = (! streamFork_5_io_outputs_1_payload_wr);
  always @(*) begin
    streamFork_5_io_outputs_1_thrown_valid = streamFork_5_io_outputs_1_valid;
    if(when_Stream_l408) begin
      streamFork_5_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    streamFork_5_io_outputs_1_ready = streamFork_5_io_outputs_1_thrown_ready;
    if(when_Stream_l408) begin
      streamFork_5_io_outputs_1_ready = 1'b1;
    end
  end

  assign streamFork_5_io_outputs_1_thrown_payload_wr = streamFork_5_io_outputs_1_payload_wr;
  assign streamFork_5_io_outputs_1_thrown_payload_uncached = streamFork_5_io_outputs_1_payload_uncached;
  assign streamFork_5_io_outputs_1_thrown_payload_address = streamFork_5_io_outputs_1_payload_address;
  assign streamFork_5_io_outputs_1_thrown_payload_data = streamFork_5_io_outputs_1_payload_data;
  assign streamFork_5_io_outputs_1_thrown_payload_mask = streamFork_5_io_outputs_1_payload_mask;
  assign streamFork_5_io_outputs_1_thrown_payload_size = streamFork_5_io_outputs_1_payload_size;
  assign streamFork_5_io_outputs_1_thrown_payload_last = streamFork_5_io_outputs_1_payload_last;
  assign dbus_axi_arw_valid = streamFork_5_io_outputs_0_thrown_valid;
  assign streamFork_5_io_outputs_0_thrown_ready = dbus_axi_arw_ready;
  assign dbus_axi_arw_payload_write = streamFork_5_io_outputs_0_thrown_payload_wr;
  assign dbus_axi_arw_payload_prot = 3'b010;
  assign dbus_axi_arw_payload_cache = 4'b1111;
  assign dbus_axi_arw_payload_size = 3'b010;
  assign dbus_axi_arw_payload_addr = streamFork_5_io_outputs_0_thrown_payload_address;
  assign dbus_axi_arw_payload_len = {5'd0, _zz_dbus_axi_arw_payload_len};
  assign dbus_axi_w_valid = streamFork_5_io_outputs_1_thrown_valid;
  assign streamFork_5_io_outputs_1_thrown_ready = dbus_axi_w_ready;
  assign dbus_axi_w_payload_data = streamFork_5_io_outputs_1_thrown_payload_data;
  assign dbus_axi_w_payload_strb = streamFork_5_io_outputs_1_thrown_payload_mask;
  assign dbus_axi_w_payload_last = streamFork_5_io_outputs_1_thrown_payload_last;
  assign axi_core_cpu_dBus_rsp_payload_error = (! (dbus_axi_r_payload_resp == 2'b00));
  assign dbus_axi_r_ready = 1'b1;
  assign dbus_axi_b_ready = 1'b1;
  assign axi_core_cpu_debug_bus_cmd_payload_address = systemDebugger_1_io_mem_cmd_payload_address[7:0];
  assign axi_core_cpu_debug_bus_cmd_fire = (systemDebugger_1_io_mem_cmd_valid && axi_core_cpu_debug_bus_cmd_ready);
  assign io_jtag_tdo = jtagBridge_1_io_jtag_tdo;
  assign axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire = (axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_valid && axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_ready);
  assign axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire_1 = (axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_valid && axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_ready);
  assign axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_valid = axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid;
  assign axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_addr = axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_addr;
  assign axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_len = axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_len;
  assign axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_burst = axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_burst;
  assign axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_cache = axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_cache;
  assign axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_prot = axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_prot;
  assign axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_ready = axi_ocram_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire = (axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_valid && axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_ready);
  assign axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire_1 = (axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_valid && axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_ready);
  assign axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_valid = axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid;
  assign axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_addr = axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_addr;
  assign axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_len = axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_len;
  assign axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_burst = axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_burst;
  assign axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_cache = axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_cache;
  assign axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_prot = axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_prot;
  assign axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_ready = axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_fire = (dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_valid && dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_ready);
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_fire_1 = (dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_valid && dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_ready);
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_valid = dbus_axi_decoder_io_sharedOutputs_0_arw_rValid;
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_addr = dbus_axi_decoder_io_sharedOutputs_0_arw_payload_addr;
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_len = dbus_axi_decoder_io_sharedOutputs_0_arw_payload_len;
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_size = dbus_axi_decoder_io_sharedOutputs_0_arw_payload_size;
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_cache = dbus_axi_decoder_io_sharedOutputs_0_arw_payload_cache;
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_prot = dbus_axi_decoder_io_sharedOutputs_0_arw_payload_prot;
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_write = dbus_axi_decoder_io_sharedOutputs_0_arw_payload_write;
  assign dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_ready = axi_ocram_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_fire = (dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_valid && dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_ready);
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_fire_1 = (dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_valid && dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_ready);
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_valid = dbus_axi_decoder_io_sharedOutputs_1_arw_rValid;
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_addr = dbus_axi_decoder_io_sharedOutputs_1_arw_payload_addr;
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_len = dbus_axi_decoder_io_sharedOutputs_1_arw_payload_len;
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_size = dbus_axi_decoder_io_sharedOutputs_1_arw_payload_size;
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_cache = dbus_axi_decoder_io_sharedOutputs_1_arw_payload_cache;
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_prot = dbus_axi_decoder_io_sharedOutputs_1_arw_payload_prot;
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_write = dbus_axi_decoder_io_sharedOutputs_1_arw_payload_write;
  assign dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_ready = axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_fire = (dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_valid && dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_ready);
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_fire_1 = (dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_valid && dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_ready);
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_valid = dbus_axi_decoder_io_sharedOutputs_2_arw_rValid;
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_addr = dbus_axi_decoder_io_sharedOutputs_2_arw_payload_addr;
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_len = dbus_axi_decoder_io_sharedOutputs_2_arw_payload_len;
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_size = dbus_axi_decoder_io_sharedOutputs_2_arw_payload_size;
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_cache = dbus_axi_decoder_io_sharedOutputs_2_arw_payload_cache;
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_prot = dbus_axi_decoder_io_sharedOutputs_2_arw_payload_prot;
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_write = dbus_axi_decoder_io_sharedOutputs_2_arw_payload_write;
  assign dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_ready = axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_fire = (dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_valid && dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_ready);
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_fire_1 = (dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_valid && dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_ready);
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_valid = dbus_axi_decoder_io_sharedOutputs_3_arw_rValid;
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_addr = dbus_axi_decoder_io_sharedOutputs_3_arw_payload_addr;
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_len = dbus_axi_decoder_io_sharedOutputs_3_arw_payload_len;
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_size = dbus_axi_decoder_io_sharedOutputs_3_arw_payload_size;
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_cache = dbus_axi_decoder_io_sharedOutputs_3_arw_payload_cache;
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_prot = dbus_axi_decoder_io_sharedOutputs_3_arw_payload_prot;
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_write = dbus_axi_decoder_io_sharedOutputs_3_arw_payload_write;
  assign dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_ready = axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign dbus_axi_arw_ready = dbus_axi_decoder_io_input_arw_ready;
  assign dbus_axi_w_ready = dbus_axi_decoder_io_input_w_ready;
  assign dbus_axi_b_valid = dbus_axi_decoder_io_input_b_valid;
  assign dbus_axi_b_payload_resp = dbus_axi_decoder_io_input_b_payload_resp;
  always @(*) begin
    dbus_axi_decoder_io_input_r_ready = dbus_axi_decoder_io_input_r_m2sPipe_ready;
    if(when_Stream_l342_2) begin
      dbus_axi_decoder_io_input_r_ready = 1'b1;
    end
  end

  assign when_Stream_l342_2 = (! dbus_axi_decoder_io_input_r_m2sPipe_valid);
  assign dbus_axi_decoder_io_input_r_m2sPipe_valid = dbus_axi_decoder_io_input_r_rValid;
  assign dbus_axi_decoder_io_input_r_m2sPipe_payload_data = dbus_axi_decoder_io_input_r_rData_data;
  assign dbus_axi_decoder_io_input_r_m2sPipe_payload_resp = dbus_axi_decoder_io_input_r_rData_resp;
  assign dbus_axi_decoder_io_input_r_m2sPipe_payload_last = dbus_axi_decoder_io_input_r_rData_last;
  assign dbus_axi_r_valid = dbus_axi_decoder_io_input_r_m2sPipe_valid;
  assign dbus_axi_decoder_io_input_r_m2sPipe_ready = dbus_axi_r_ready;
  assign dbus_axi_r_payload_data = dbus_axi_decoder_io_input_r_m2sPipe_payload_data;
  assign dbus_axi_r_payload_resp = dbus_axi_decoder_io_input_r_m2sPipe_payload_resp;
  assign dbus_axi_r_payload_last = dbus_axi_decoder_io_input_r_m2sPipe_payload_last;
  assign axi_ocram_io_axi_arbiter_io_readInputs_0_ar_payload_addr = axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_addr[11:0];
  assign _zz_io_readInputs_0_ar_payload_id[2 : 0] = 3'b000;
  assign axi_ocram_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr = dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_payload_addr[11:0];
  assign _zz_io_sharedInputs_0_arw_payload_id[2 : 0] = 3'b000;
  assign axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_fire = (axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_valid && axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_ready);
  assign axi_ocram_io_axi_arbiter_io_output_arw_ready = (! axi_ocram_io_axi_arbiter_io_output_arw_rValid);
  assign axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_valid = axi_ocram_io_axi_arbiter_io_output_arw_rValid;
  assign axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = axi_ocram_io_axi_arbiter_io_output_arw_rData_addr;
  assign axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_id = axi_ocram_io_axi_arbiter_io_output_arw_rData_id;
  assign axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_len = axi_ocram_io_axi_arbiter_io_output_arw_rData_len;
  assign axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_size = axi_ocram_io_axi_arbiter_io_output_arw_rData_size;
  assign axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = axi_ocram_io_axi_arbiter_io_output_arw_rData_burst;
  assign axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_payload_write = axi_ocram_io_axi_arbiter_io_output_arw_rData_write;
  assign axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_ready = axi_ocram_io_axi_arw_ready;
  assign axi_ocram_io_axi_arbiter_io_output_w_ready = (! axi_ocram_io_axi_arbiter_io_output_w_rValid);
  assign axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_valid = (axi_ocram_io_axi_arbiter_io_output_w_valid || axi_ocram_io_axi_arbiter_io_output_w_rValid);
  assign axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_payload_data = (axi_ocram_io_axi_arbiter_io_output_w_rValid ? axi_ocram_io_axi_arbiter_io_output_w_rData_data : axi_ocram_io_axi_arbiter_io_output_w_payload_data);
  assign axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_payload_strb = (axi_ocram_io_axi_arbiter_io_output_w_rValid ? axi_ocram_io_axi_arbiter_io_output_w_rData_strb : axi_ocram_io_axi_arbiter_io_output_w_payload_strb);
  assign axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_payload_last = (axi_ocram_io_axi_arbiter_io_output_w_rValid ? axi_ocram_io_axi_arbiter_io_output_w_rData_last : axi_ocram_io_axi_arbiter_io_output_w_payload_last);
  always @(*) begin
    axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_ready = axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready;
    if(when_Stream_l342_3) begin
      axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l342_3 = (! axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid);
  assign axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid = axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rValid;
  assign axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data = axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rData_data;
  assign axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb = axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rData_strb;
  assign axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last = axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rData_last;
  assign axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready = axi_ocram_io_axi_w_ready;
  assign axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_payload_addr = axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_addr[24:0];
  assign _zz_io_readInputs_0_ar_payload_id_1[2 : 0] = 3'b000;
  assign axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr = dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_payload_addr[24:0];
  assign _zz_io_sharedInputs_0_arw_payload_id_1[2 : 0] = 3'b000;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_fire = (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid && axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_ready = (! axi_sdramCtrl_io_axi_arbiter_io_output_arw_rValid);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid = axi_sdramCtrl_io_axi_arbiter_io_output_arw_rValid;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_addr;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_id = axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_id;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_len = axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_len;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_size = axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_size;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_burst;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_write = axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_write;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready = axi_sdramCtrl_io_axi_arw_ready;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_ready = (! axi_sdramCtrl_io_axi_arbiter_io_output_w_rValid);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_valid = (axi_sdramCtrl_io_axi_arbiter_io_output_w_valid || axi_sdramCtrl_io_axi_arbiter_io_output_w_rValid);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_data = (axi_sdramCtrl_io_axi_arbiter_io_output_w_rValid ? axi_sdramCtrl_io_axi_arbiter_io_output_w_rData_data : axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_strb = (axi_sdramCtrl_io_axi_arbiter_io_output_w_rValid ? axi_sdramCtrl_io_axi_arbiter_io_output_w_rData_strb : axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_last = (axi_sdramCtrl_io_axi_arbiter_io_output_w_rValid ? axi_sdramCtrl_io_axi_arbiter_io_output_w_rData_last : axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last);
  always @(*) begin
    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready;
    if(when_Stream_l342_4) begin
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l342_4 = (! axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_data;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_strb;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_last;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready = axi_sdramCtrl_io_axi_w_ready;
  assign axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr = dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_payload_addr[19:0];
  assign _zz_io_sharedInputs_0_arw_payload_id_2[3 : 0] = 4'b0000;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_fire = (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid && axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready);
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_ready = (! axi_apbBridge_io_axi_arbiter_io_output_arw_rValid);
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid = axi_apbBridge_io_axi_arbiter_io_output_arw_rValid;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = axi_apbBridge_io_axi_arbiter_io_output_arw_rData_addr;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_id = axi_apbBridge_io_axi_arbiter_io_output_arw_rData_id;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_len = axi_apbBridge_io_axi_arbiter_io_output_arw_rData_len;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_size = axi_apbBridge_io_axi_arbiter_io_output_arw_rData_size;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = axi_apbBridge_io_axi_arbiter_io_output_arw_rData_burst;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_write = axi_apbBridge_io_axi_arbiter_io_output_arw_rData_write;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready = axi_apbBridge_io_axi_arw_ready;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_fire = (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid && axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready);
  assign axi_apbBridge_io_axi_arbiter_io_output_w_ready = (! axi_apbBridge_io_axi_arbiter_io_output_w_rValid);
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid = axi_apbBridge_io_axi_arbiter_io_output_w_rValid;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_data = axi_apbBridge_io_axi_arbiter_io_output_w_rData_data;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_strb = axi_apbBridge_io_axi_arbiter_io_output_w_rData_strb;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_last = axi_apbBridge_io_axi_arbiter_io_output_w_rData_last;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready = axi_apbBridge_io_axi_w_ready;
  assign axi_apbBridge2_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr = dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_payload_addr[19:0];
  assign _zz_io_sharedInputs_0_arw_payload_id_3[3 : 0] = 4'b0000;
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_fire = (axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_valid && axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_ready);
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_ready = (! axi_apbBridge2_io_axi_arbiter_io_output_arw_rValid);
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_valid = axi_apbBridge2_io_axi_arbiter_io_output_arw_rValid;
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_addr;
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_id = axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_id;
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_len = axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_len;
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_size = axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_size;
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_burst;
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_payload_write = axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_write;
  assign axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_ready = axi_apbBridge2_io_axi_arw_ready;
  assign axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_fire = (axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_valid && axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_ready);
  assign axi_apbBridge2_io_axi_arbiter_io_output_w_ready = (! axi_apbBridge2_io_axi_arbiter_io_output_w_rValid);
  assign axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_valid = axi_apbBridge2_io_axi_arbiter_io_output_w_rValid;
  assign axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_payload_data = axi_apbBridge2_io_axi_arbiter_io_output_w_rData_data;
  assign axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_payload_strb = axi_apbBridge2_io_axi_arbiter_io_output_w_rData_strb;
  assign axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_payload_last = axi_apbBridge2_io_axi_arbiter_io_output_w_rData_last;
  assign axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_ready = axi_apbBridge2_io_axi_w_ready;
  assign axi_gpioACtrl_io_apb_PADDR = apb3Router_1_io_outputs_0_PADDR[4:0];
  assign axi_gpioBCtrl_io_apb_PADDR = apb3Router_1_io_outputs_1_PADDR[4:0];
  assign axi_uart1Ctrl_io_apb_PADDR = apb3Router_1_io_outputs_2_PADDR[4:0];
  assign axi_uart2Ctrl_io_apb_PADDR = apb3Router_1_io_outputs_3_PADDR[4:0];
  assign axi_timerCtrl_io_apb_PADDR = apb3Router_1_io_outputs_4_PADDR[7:0];
  assign axi_spim1Ctrl_io_apb_PADDR = apb3Router_1_io_outputs_5_PADDR[7:0];
  assign axi_spim2Ctrl_io_apb_PADDR = apb3Router_1_io_outputs_6_PADDR[7:0];
  assign io_sdram_ADDR = axi_sdramCtrl_io_sdram_ADDR;
  assign io_sdram_BA = axi_sdramCtrl_io_sdram_BA;
  assign io_sdram_DQ_write = axi_sdramCtrl_io_sdram_DQ_write;
  assign io_sdram_DQ_writeEnable = axi_sdramCtrl_io_sdram_DQ_writeEnable;
  assign io_sdram_DQM = axi_sdramCtrl_io_sdram_DQM;
  assign io_sdram_CASn = axi_sdramCtrl_io_sdram_CASn;
  assign io_sdram_CKE = axi_sdramCtrl_io_sdram_CKE;
  assign io_sdram_CSn = axi_sdramCtrl_io_sdram_CSn;
  assign io_sdram_RASn = axi_sdramCtrl_io_sdram_RASn;
  assign io_sdram_WEn = axi_sdramCtrl_io_sdram_WEn;
  assign io_gpioA_write = axi_gpioACtrl_io_gpio_write;
  assign io_gpioA_writeEnable = axi_gpioACtrl_io_gpio_writeEnable;
  assign io_gpioB_write = axi_gpioBCtrl_io_gpio_write;
  assign io_gpioB_writeEnable = axi_gpioBCtrl_io_gpio_writeEnable;
  assign io_uart1_txd = axi_uart1Ctrl_io_uart_txd;
  assign io_uart2_txd = axi_uart2Ctrl_io_uart_txd;
  assign io_spim1_ss = axi_spim1Ctrl_io_spi_ss;
  assign io_spim1_sclk = axi_spim1Ctrl_io_spi_sclk;
  assign io_spim1_mosi = axi_spim1Ctrl_io_spi_mosi;
  assign io_spim2_ss = axi_spim2Ctrl_io_spi_ss;
  assign io_spim2_sclk = axi_spim2Ctrl_io_spi_sclk;
  assign io_spim2_mosi = axi_spim2Ctrl_io_spi_mosi;
  assign io_apb2_PADDR = axi_apbBridge2_io_apb_PADDR;
  assign io_apb2_PSEL = axi_apbBridge2_io_apb_PSEL;
  assign io_apb2_PENABLE = axi_apbBridge2_io_apb_PENABLE;
  assign io_apb2_PWRITE = axi_apbBridge2_io_apb_PWRITE;
  assign io_apb2_PWDATA = axi_apbBridge2_io_apb_PWDATA;
  always @(posedge io_axiClk) begin
    if(when_VRV1_441_l261) begin
      resetCtrl_systemResetCounter <= (resetCtrl_systemResetCounter + 6'h01);
    end
    if(when_VRV1_441_l265) begin
      resetCtrl_systemResetCounter <= 6'h0;
    end
  end

  always @(posedge io_axiClk) begin
    resetCtrl_systemReset <= resetCtrl_systemResetUnbuffered;
    resetCtrl_axiReset <= resetCtrl_systemResetUnbuffered;
    if(axi_core_cpu_debug_resetOut_regNext) begin
      resetCtrl_axiReset <= 1'b1;
    end
  end

  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      axi_core_cpu_dBus_cmd_rValid <= 1'b0;
      axi_core_cpu_dBus_cmd_m2sPipe_rValid <= 1'b0;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid <= 1'b0;
      _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready <= 3'b000;
      _zz_1 <= 1'b0;
      axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid <= 1'b0;
      axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid <= 1'b0;
      dbus_axi_decoder_io_sharedOutputs_0_arw_rValid <= 1'b0;
      dbus_axi_decoder_io_sharedOutputs_1_arw_rValid <= 1'b0;
      dbus_axi_decoder_io_sharedOutputs_2_arw_rValid <= 1'b0;
      dbus_axi_decoder_io_sharedOutputs_3_arw_rValid <= 1'b0;
      dbus_axi_decoder_io_input_r_rValid <= 1'b0;
      axi_ocram_io_axi_arbiter_io_output_arw_rValid <= 1'b0;
      axi_ocram_io_axi_arbiter_io_output_w_rValid <= 1'b0;
      axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_rValid <= 1'b0;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_rValid <= 1'b0;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      axi_apbBridge_io_axi_arbiter_io_output_arw_rValid <= 1'b0;
      axi_apbBridge_io_axi_arbiter_io_output_w_rValid <= 1'b0;
      axi_apbBridge2_io_axi_arbiter_io_output_arw_rValid <= 1'b0;
      axi_apbBridge2_io_axi_arbiter_io_output_w_rValid <= 1'b0;
    end else begin
      if(axi_core_cpu_dBus_cmd_ready) begin
        axi_core_cpu_dBus_cmd_rValid <= axi_core_cpu_dBus_cmd_valid;
      end
      if(axi_core_cpu_dBus_cmd_m2sPipe_ready) begin
        axi_core_cpu_dBus_cmd_m2sPipe_rValid <= axi_core_cpu_dBus_cmd_m2sPipe_valid;
      end
      if(axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid) begin
        axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid <= 1'b1;
      end
      if(axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready) begin
        axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid <= 1'b0;
      end
      _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready <= (_zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready + _zz_axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready_1);
      if(streamFork_5_io_outputs_0_fire) begin
        _zz_1 <= (! streamFork_5_io_outputs_0_payload_last);
      end
      if(axi4ReadOnlyDecoder_1_io_outputs_0_ar_valid) begin
        axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid <= 1'b1;
      end
      if(axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire) begin
        axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid <= 1'b0;
      end
      if(axi4ReadOnlyDecoder_1_io_outputs_1_ar_valid) begin
        axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid <= 1'b1;
      end
      if(axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire) begin
        axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid <= 1'b0;
      end
      if(dbus_axi_decoder_io_sharedOutputs_0_arw_valid) begin
        dbus_axi_decoder_io_sharedOutputs_0_arw_rValid <= 1'b1;
      end
      if(dbus_axi_decoder_io_sharedOutputs_0_arw_validPipe_fire) begin
        dbus_axi_decoder_io_sharedOutputs_0_arw_rValid <= 1'b0;
      end
      if(dbus_axi_decoder_io_sharedOutputs_1_arw_valid) begin
        dbus_axi_decoder_io_sharedOutputs_1_arw_rValid <= 1'b1;
      end
      if(dbus_axi_decoder_io_sharedOutputs_1_arw_validPipe_fire) begin
        dbus_axi_decoder_io_sharedOutputs_1_arw_rValid <= 1'b0;
      end
      if(dbus_axi_decoder_io_sharedOutputs_2_arw_valid) begin
        dbus_axi_decoder_io_sharedOutputs_2_arw_rValid <= 1'b1;
      end
      if(dbus_axi_decoder_io_sharedOutputs_2_arw_validPipe_fire) begin
        dbus_axi_decoder_io_sharedOutputs_2_arw_rValid <= 1'b0;
      end
      if(dbus_axi_decoder_io_sharedOutputs_3_arw_valid) begin
        dbus_axi_decoder_io_sharedOutputs_3_arw_rValid <= 1'b1;
      end
      if(dbus_axi_decoder_io_sharedOutputs_3_arw_validPipe_fire) begin
        dbus_axi_decoder_io_sharedOutputs_3_arw_rValid <= 1'b0;
      end
      if(dbus_axi_decoder_io_input_r_ready) begin
        dbus_axi_decoder_io_input_r_rValid <= dbus_axi_decoder_io_input_r_valid;
      end
      if(axi_ocram_io_axi_arbiter_io_output_arw_valid) begin
        axi_ocram_io_axi_arbiter_io_output_arw_rValid <= 1'b1;
      end
      if(axi_ocram_io_axi_arbiter_io_output_arw_halfPipe_fire) begin
        axi_ocram_io_axi_arbiter_io_output_arw_rValid <= 1'b0;
      end
      if(axi_ocram_io_axi_arbiter_io_output_w_valid) begin
        axi_ocram_io_axi_arbiter_io_output_w_rValid <= 1'b1;
      end
      if(axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_ready) begin
        axi_ocram_io_axi_arbiter_io_output_w_rValid <= 1'b0;
      end
      if(axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_ready) begin
        axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rValid <= axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_valid;
      end
      if(axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid) begin
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_rValid <= 1'b1;
      end
      if(axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_fire) begin
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_rValid <= 1'b0;
      end
      if(axi_sdramCtrl_io_axi_arbiter_io_output_w_valid) begin
        axi_sdramCtrl_io_axi_arbiter_io_output_w_rValid <= 1'b1;
      end
      if(axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready) begin
        axi_sdramCtrl_io_axi_arbiter_io_output_w_rValid <= 1'b0;
      end
      if(axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready) begin
        axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_valid;
      end
      if(axi_apbBridge_io_axi_arbiter_io_output_arw_valid) begin
        axi_apbBridge_io_axi_arbiter_io_output_arw_rValid <= 1'b1;
      end
      if(axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_fire) begin
        axi_apbBridge_io_axi_arbiter_io_output_arw_rValid <= 1'b0;
      end
      if(axi_apbBridge_io_axi_arbiter_io_output_w_valid) begin
        axi_apbBridge_io_axi_arbiter_io_output_w_rValid <= 1'b1;
      end
      if(axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_fire) begin
        axi_apbBridge_io_axi_arbiter_io_output_w_rValid <= 1'b0;
      end
      if(axi_apbBridge2_io_axi_arbiter_io_output_arw_valid) begin
        axi_apbBridge2_io_axi_arbiter_io_output_arw_rValid <= 1'b1;
      end
      if(axi_apbBridge2_io_axi_arbiter_io_output_arw_halfPipe_fire) begin
        axi_apbBridge2_io_axi_arbiter_io_output_arw_rValid <= 1'b0;
      end
      if(axi_apbBridge2_io_axi_arbiter_io_output_w_valid) begin
        axi_apbBridge2_io_axi_arbiter_io_output_w_rValid <= 1'b1;
      end
      if(axi_apbBridge2_io_axi_arbiter_io_output_w_halfPipe_fire) begin
        axi_apbBridge2_io_axi_arbiter_io_output_w_rValid <= 1'b0;
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(axi_core_cpu_dBus_cmd_ready) begin
      axi_core_cpu_dBus_cmd_rData_wr <= axi_core_cpu_dBus_cmd_payload_wr;
      axi_core_cpu_dBus_cmd_rData_uncached <= axi_core_cpu_dBus_cmd_payload_uncached;
      axi_core_cpu_dBus_cmd_rData_address <= axi_core_cpu_dBus_cmd_payload_address;
      axi_core_cpu_dBus_cmd_rData_data <= axi_core_cpu_dBus_cmd_payload_data;
      axi_core_cpu_dBus_cmd_rData_mask <= axi_core_cpu_dBus_cmd_payload_mask;
      axi_core_cpu_dBus_cmd_rData_size <= axi_core_cpu_dBus_cmd_payload_size;
      axi_core_cpu_dBus_cmd_rData_last <= axi_core_cpu_dBus_cmd_payload_last;
    end
    if(axi_core_cpu_dBus_cmd_m2sPipe_ready) begin
      axi_core_cpu_dBus_cmd_m2sPipe_rData_wr <= axi_core_cpu_dBus_cmd_m2sPipe_payload_wr;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_uncached <= axi_core_cpu_dBus_cmd_m2sPipe_payload_uncached;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_address <= axi_core_cpu_dBus_cmd_m2sPipe_payload_address;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_data <= axi_core_cpu_dBus_cmd_m2sPipe_payload_data;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_mask <= axi_core_cpu_dBus_cmd_m2sPipe_payload_mask;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_size <= axi_core_cpu_dBus_cmd_m2sPipe_payload_size;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_last <= axi_core_cpu_dBus_cmd_m2sPipe_payload_last;
    end
    if(axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_ready) begin
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_wr <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_wr;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_uncached <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_uncached;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_address <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_address;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_data <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_data;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_mask <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_mask;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_size <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_size;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_last <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_last;
    end
    if(dbus_axi_decoder_io_input_r_ready) begin
      dbus_axi_decoder_io_input_r_rData_data <= dbus_axi_decoder_io_input_r_payload_data;
      dbus_axi_decoder_io_input_r_rData_resp <= dbus_axi_decoder_io_input_r_payload_resp;
      dbus_axi_decoder_io_input_r_rData_last <= dbus_axi_decoder_io_input_r_payload_last;
    end
    if(axi_ocram_io_axi_arbiter_io_output_arw_ready) begin
      axi_ocram_io_axi_arbiter_io_output_arw_rData_addr <= axi_ocram_io_axi_arbiter_io_output_arw_payload_addr;
      axi_ocram_io_axi_arbiter_io_output_arw_rData_id <= axi_ocram_io_axi_arbiter_io_output_arw_payload_id;
      axi_ocram_io_axi_arbiter_io_output_arw_rData_len <= axi_ocram_io_axi_arbiter_io_output_arw_payload_len;
      axi_ocram_io_axi_arbiter_io_output_arw_rData_size <= axi_ocram_io_axi_arbiter_io_output_arw_payload_size;
      axi_ocram_io_axi_arbiter_io_output_arw_rData_burst <= axi_ocram_io_axi_arbiter_io_output_arw_payload_burst;
      axi_ocram_io_axi_arbiter_io_output_arw_rData_write <= axi_ocram_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(axi_ocram_io_axi_arbiter_io_output_w_ready) begin
      axi_ocram_io_axi_arbiter_io_output_w_rData_data <= axi_ocram_io_axi_arbiter_io_output_w_payload_data;
      axi_ocram_io_axi_arbiter_io_output_w_rData_strb <= axi_ocram_io_axi_arbiter_io_output_w_payload_strb;
      axi_ocram_io_axi_arbiter_io_output_w_rData_last <= axi_ocram_io_axi_arbiter_io_output_w_payload_last;
    end
    if(axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_ready) begin
      axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rData_data <= axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
      axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rData_strb <= axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
      axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_rData_last <= axi_ocram_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
    end
    if(axi_sdramCtrl_io_axi_arbiter_io_output_arw_ready) begin
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_addr <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_addr;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_id <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_id;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_len <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_len;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_size <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_size;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_burst <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_burst;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_rData_write <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(axi_sdramCtrl_io_axi_arbiter_io_output_w_ready) begin
      axi_sdramCtrl_io_axi_arbiter_io_output_w_rData_data <= axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_rData_strb <= axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_rData_last <= axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last;
    end
    if(axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready) begin
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_data <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_strb <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_last <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
    end
    if(axi_apbBridge_io_axi_arbiter_io_output_arw_ready) begin
      axi_apbBridge_io_axi_arbiter_io_output_arw_rData_addr <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_addr;
      axi_apbBridge_io_axi_arbiter_io_output_arw_rData_id <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_id;
      axi_apbBridge_io_axi_arbiter_io_output_arw_rData_len <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_len;
      axi_apbBridge_io_axi_arbiter_io_output_arw_rData_size <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_size;
      axi_apbBridge_io_axi_arbiter_io_output_arw_rData_burst <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_burst;
      axi_apbBridge_io_axi_arbiter_io_output_arw_rData_write <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(axi_apbBridge_io_axi_arbiter_io_output_w_ready) begin
      axi_apbBridge_io_axi_arbiter_io_output_w_rData_data <= axi_apbBridge_io_axi_arbiter_io_output_w_payload_data;
      axi_apbBridge_io_axi_arbiter_io_output_w_rData_strb <= axi_apbBridge_io_axi_arbiter_io_output_w_payload_strb;
      axi_apbBridge_io_axi_arbiter_io_output_w_rData_last <= axi_apbBridge_io_axi_arbiter_io_output_w_payload_last;
    end
    if(axi_apbBridge2_io_axi_arbiter_io_output_arw_ready) begin
      axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_addr <= axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_addr;
      axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_id <= axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_id;
      axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_len <= axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_len;
      axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_size <= axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_size;
      axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_burst <= axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_burst;
      axi_apbBridge2_io_axi_arbiter_io_output_arw_rData_write <= axi_apbBridge2_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(axi_apbBridge2_io_axi_arbiter_io_output_w_ready) begin
      axi_apbBridge2_io_axi_arbiter_io_output_w_rData_data <= axi_apbBridge2_io_axi_arbiter_io_output_w_payload_data;
      axi_apbBridge2_io_axi_arbiter_io_output_w_rData_strb <= axi_apbBridge2_io_axi_arbiter_io_output_w_payload_strb;
      axi_apbBridge2_io_axi_arbiter_io_output_w_rData_last <= axi_apbBridge2_io_axi_arbiter_io_output_w_payload_last;
    end
  end

  always @(posedge io_axiClk) begin
    axi_core_cpu_debug_resetOut_regNext <= axi_core_cpu_debug_resetOut;
  end

  always @(posedge io_axiClk or posedge resetCtrl_systemReset) begin
    if(resetCtrl_systemReset) begin
      axi_core_cpu_debug_bus_cmd_fire_regNext <= 1'b0;
    end else begin
      axi_core_cpu_debug_bus_cmd_fire_regNext <= axi_core_cpu_debug_bus_cmd_fire;
    end
  end


endmodule

module Apb3Router (
  input      [19:0]   io_input_PADDR,
  input      [6:0]    io_input_PSEL,
  input               io_input_PENABLE,
  output              io_input_PREADY,
  input               io_input_PWRITE,
  input      [31:0]   io_input_PWDATA,
  output     [31:0]   io_input_PRDATA,
  output              io_input_PSLVERROR,
  output     [19:0]   io_outputs_0_PADDR,
  output     [0:0]    io_outputs_0_PSEL,
  output              io_outputs_0_PENABLE,
  input               io_outputs_0_PREADY,
  output              io_outputs_0_PWRITE,
  output     [31:0]   io_outputs_0_PWDATA,
  input      [31:0]   io_outputs_0_PRDATA,
  input               io_outputs_0_PSLVERROR,
  output     [19:0]   io_outputs_1_PADDR,
  output     [0:0]    io_outputs_1_PSEL,
  output              io_outputs_1_PENABLE,
  input               io_outputs_1_PREADY,
  output              io_outputs_1_PWRITE,
  output     [31:0]   io_outputs_1_PWDATA,
  input      [31:0]   io_outputs_1_PRDATA,
  input               io_outputs_1_PSLVERROR,
  output     [19:0]   io_outputs_2_PADDR,
  output     [0:0]    io_outputs_2_PSEL,
  output              io_outputs_2_PENABLE,
  input               io_outputs_2_PREADY,
  output              io_outputs_2_PWRITE,
  output     [31:0]   io_outputs_2_PWDATA,
  input      [31:0]   io_outputs_2_PRDATA,
  input               io_outputs_2_PSLVERROR,
  output     [19:0]   io_outputs_3_PADDR,
  output     [0:0]    io_outputs_3_PSEL,
  output              io_outputs_3_PENABLE,
  input               io_outputs_3_PREADY,
  output              io_outputs_3_PWRITE,
  output     [31:0]   io_outputs_3_PWDATA,
  input      [31:0]   io_outputs_3_PRDATA,
  input               io_outputs_3_PSLVERROR,
  output     [19:0]   io_outputs_4_PADDR,
  output     [0:0]    io_outputs_4_PSEL,
  output              io_outputs_4_PENABLE,
  input               io_outputs_4_PREADY,
  output              io_outputs_4_PWRITE,
  output     [31:0]   io_outputs_4_PWDATA,
  input      [31:0]   io_outputs_4_PRDATA,
  input               io_outputs_4_PSLVERROR,
  output     [19:0]   io_outputs_5_PADDR,
  output     [0:0]    io_outputs_5_PSEL,
  output              io_outputs_5_PENABLE,
  input               io_outputs_5_PREADY,
  output              io_outputs_5_PWRITE,
  output     [31:0]   io_outputs_5_PWDATA,
  input      [31:0]   io_outputs_5_PRDATA,
  input               io_outputs_5_PSLVERROR,
  output     [19:0]   io_outputs_6_PADDR,
  output     [0:0]    io_outputs_6_PSEL,
  output              io_outputs_6_PENABLE,
  input               io_outputs_6_PREADY,
  output              io_outputs_6_PWRITE,
  output     [31:0]   io_outputs_6_PWDATA,
  input      [31:0]   io_outputs_6_PRDATA,
  input               io_outputs_6_PSLVERROR,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_io_input_PREADY;
  reg        [31:0]   _zz_io_input_PRDATA;
  reg                 _zz_io_input_PSLVERROR;
  wire                _zz_selIndex;
  wire                _zz_selIndex_1;
  wire                _zz_selIndex_2;
  wire                _zz_selIndex_3;
  wire                _zz_selIndex_4;
  wire                _zz_selIndex_5;
  reg        [2:0]    selIndex;

  always @(*) begin
    case(selIndex)
      3'b000 : begin
        _zz_io_input_PREADY = io_outputs_0_PREADY;
        _zz_io_input_PRDATA = io_outputs_0_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_0_PSLVERROR;
      end
      3'b001 : begin
        _zz_io_input_PREADY = io_outputs_1_PREADY;
        _zz_io_input_PRDATA = io_outputs_1_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_1_PSLVERROR;
      end
      3'b010 : begin
        _zz_io_input_PREADY = io_outputs_2_PREADY;
        _zz_io_input_PRDATA = io_outputs_2_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_2_PSLVERROR;
      end
      3'b011 : begin
        _zz_io_input_PREADY = io_outputs_3_PREADY;
        _zz_io_input_PRDATA = io_outputs_3_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_3_PSLVERROR;
      end
      3'b100 : begin
        _zz_io_input_PREADY = io_outputs_4_PREADY;
        _zz_io_input_PRDATA = io_outputs_4_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_4_PSLVERROR;
      end
      3'b101 : begin
        _zz_io_input_PREADY = io_outputs_5_PREADY;
        _zz_io_input_PRDATA = io_outputs_5_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_5_PSLVERROR;
      end
      default : begin
        _zz_io_input_PREADY = io_outputs_6_PREADY;
        _zz_io_input_PRDATA = io_outputs_6_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_6_PSLVERROR;
      end
    endcase
  end

  assign io_outputs_0_PADDR = io_input_PADDR;
  assign io_outputs_0_PENABLE = io_input_PENABLE;
  assign io_outputs_0_PSEL[0] = io_input_PSEL[0];
  assign io_outputs_0_PWRITE = io_input_PWRITE;
  assign io_outputs_0_PWDATA = io_input_PWDATA;
  assign io_outputs_1_PADDR = io_input_PADDR;
  assign io_outputs_1_PENABLE = io_input_PENABLE;
  assign io_outputs_1_PSEL[0] = io_input_PSEL[1];
  assign io_outputs_1_PWRITE = io_input_PWRITE;
  assign io_outputs_1_PWDATA = io_input_PWDATA;
  assign io_outputs_2_PADDR = io_input_PADDR;
  assign io_outputs_2_PENABLE = io_input_PENABLE;
  assign io_outputs_2_PSEL[0] = io_input_PSEL[2];
  assign io_outputs_2_PWRITE = io_input_PWRITE;
  assign io_outputs_2_PWDATA = io_input_PWDATA;
  assign io_outputs_3_PADDR = io_input_PADDR;
  assign io_outputs_3_PENABLE = io_input_PENABLE;
  assign io_outputs_3_PSEL[0] = io_input_PSEL[3];
  assign io_outputs_3_PWRITE = io_input_PWRITE;
  assign io_outputs_3_PWDATA = io_input_PWDATA;
  assign io_outputs_4_PADDR = io_input_PADDR;
  assign io_outputs_4_PENABLE = io_input_PENABLE;
  assign io_outputs_4_PSEL[0] = io_input_PSEL[4];
  assign io_outputs_4_PWRITE = io_input_PWRITE;
  assign io_outputs_4_PWDATA = io_input_PWDATA;
  assign io_outputs_5_PADDR = io_input_PADDR;
  assign io_outputs_5_PENABLE = io_input_PENABLE;
  assign io_outputs_5_PSEL[0] = io_input_PSEL[5];
  assign io_outputs_5_PWRITE = io_input_PWRITE;
  assign io_outputs_5_PWDATA = io_input_PWDATA;
  assign io_outputs_6_PADDR = io_input_PADDR;
  assign io_outputs_6_PENABLE = io_input_PENABLE;
  assign io_outputs_6_PSEL[0] = io_input_PSEL[6];
  assign io_outputs_6_PWRITE = io_input_PWRITE;
  assign io_outputs_6_PWDATA = io_input_PWDATA;
  assign _zz_selIndex = io_input_PSEL[3];
  assign _zz_selIndex_1 = io_input_PSEL[5];
  assign _zz_selIndex_2 = io_input_PSEL[6];
  assign _zz_selIndex_3 = ((io_input_PSEL[1] || _zz_selIndex) || _zz_selIndex_1);
  assign _zz_selIndex_4 = ((io_input_PSEL[2] || _zz_selIndex) || _zz_selIndex_2);
  assign _zz_selIndex_5 = ((io_input_PSEL[4] || _zz_selIndex_1) || _zz_selIndex_2);
  assign io_input_PREADY = _zz_io_input_PREADY;
  assign io_input_PRDATA = _zz_io_input_PRDATA;
  assign io_input_PSLVERROR = _zz_io_input_PSLVERROR;
  always @(posedge io_axiClk) begin
    selIndex <= {_zz_selIndex_5,{_zz_selIndex_4,_zz_selIndex_3}};
  end


endmodule

module Apb3Decoder (
  input      [19:0]   io_input_PADDR,
  input      [0:0]    io_input_PSEL,
  input               io_input_PENABLE,
  output reg          io_input_PREADY,
  input               io_input_PWRITE,
  input      [31:0]   io_input_PWDATA,
  output     [31:0]   io_input_PRDATA,
  output reg          io_input_PSLVERROR,
  output     [19:0]   io_output_PADDR,
  output reg [6:0]    io_output_PSEL,
  output              io_output_PENABLE,
  input               io_output_PREADY,
  output              io_output_PWRITE,
  output     [31:0]   io_output_PWDATA,
  input      [31:0]   io_output_PRDATA,
  input               io_output_PSLVERROR
);
  wire                when_Apb3Decoder_l84;

  assign io_output_PADDR = io_input_PADDR;
  assign io_output_PENABLE = io_input_PENABLE;
  assign io_output_PWRITE = io_input_PWRITE;
  assign io_output_PWDATA = io_input_PWDATA;
  always @(*) begin
    io_output_PSEL[0] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h0) && io_input_PSEL[0]);
    io_output_PSEL[1] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h01000) && io_input_PSEL[0]);
    io_output_PSEL[2] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h10000) && io_input_PSEL[0]);
    io_output_PSEL[3] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h11000) && io_input_PSEL[0]);
    io_output_PSEL[4] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h20000) && io_input_PSEL[0]);
    io_output_PSEL[5] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h40000) && io_input_PSEL[0]);
    io_output_PSEL[6] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h41000) && io_input_PSEL[0]);
  end

  always @(*) begin
    io_input_PREADY = io_output_PREADY;
    if(when_Apb3Decoder_l84) begin
      io_input_PREADY = 1'b1;
    end
  end

  assign io_input_PRDATA = io_output_PRDATA;
  always @(*) begin
    io_input_PSLVERROR = io_output_PSLVERROR;
    if(when_Apb3Decoder_l84) begin
      io_input_PSLVERROR = 1'b1;
    end
  end

  assign when_Apb3Decoder_l84 = (io_input_PSEL[0] && (io_output_PSEL == 7'h0));

endmodule

//Axi4SharedArbiter_2 replaced by Axi4SharedArbiter_2

module Axi4SharedArbiter_2 (
  input               io_sharedInputs_0_arw_valid,
  output              io_sharedInputs_0_arw_ready,
  input      [19:0]   io_sharedInputs_0_arw_payload_addr,
  input      [3:0]    io_sharedInputs_0_arw_payload_id,
  input      [7:0]    io_sharedInputs_0_arw_payload_len,
  input      [2:0]    io_sharedInputs_0_arw_payload_size,
  input      [1:0]    io_sharedInputs_0_arw_payload_burst,
  input               io_sharedInputs_0_arw_payload_write,
  input               io_sharedInputs_0_w_valid,
  output              io_sharedInputs_0_w_ready,
  input      [31:0]   io_sharedInputs_0_w_payload_data,
  input      [3:0]    io_sharedInputs_0_w_payload_strb,
  input               io_sharedInputs_0_w_payload_last,
  output              io_sharedInputs_0_b_valid,
  input               io_sharedInputs_0_b_ready,
  output     [3:0]    io_sharedInputs_0_b_payload_id,
  output     [1:0]    io_sharedInputs_0_b_payload_resp,
  output              io_sharedInputs_0_r_valid,
  input               io_sharedInputs_0_r_ready,
  output     [31:0]   io_sharedInputs_0_r_payload_data,
  output     [3:0]    io_sharedInputs_0_r_payload_id,
  output     [1:0]    io_sharedInputs_0_r_payload_resp,
  output              io_sharedInputs_0_r_payload_last,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [19:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 cmdArbiter_io_output_fork_io_outputs_1_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_ready;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [19:0]   cmdArbiter_io_output_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosenOH;
  wire                cmdArbiter_io_output_fork_io_input_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_0_valid;
  wire       [19:0]   cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_valid;
  wire       [19:0]   cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [19:0]   inputsCmd_0_payload_addr;
  wire       [3:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                when_Stream_l408;
  reg                 cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
  wire       [19:0]   cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                io_output_w_fire;
  wire                writeLogic_writeRspSels_0;
  wire                readRspSels_0;

  StreamArbiter_2 cmdArbiter (
    .io_inputs_0_valid            (inputsCmd_0_valid                         ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr                  ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id                    ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len                   ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size                  ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst                 ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                 ), //i
    .io_output_valid              (cmdArbiter_io_output_valid                ), //o
    .io_output_ready              (cmdArbiter_io_output_fork_io_input_ready  ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr         ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id           ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len          ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size         ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst        ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write        ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH                    ), //o
    .io_axiClk                    (io_axiClk                                 ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset                        )  //i
  );
  StreamFork_2 cmdArbiter_io_output_fork (
    .io_input_valid                (cmdArbiter_io_output_valid                            ), //i
    .io_input_ready                (cmdArbiter_io_output_fork_io_input_ready              ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr                     ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id                       ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len                      ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size                     ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst                    ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write                    ), //i
    .io_outputs_0_valid            (cmdArbiter_io_output_fork_io_outputs_0_valid          ), //o
    .io_outputs_0_ready            (io_output_arw_ready                                   ), //i
    .io_outputs_0_payload_addr     (cmdArbiter_io_output_fork_io_outputs_0_payload_addr   ), //o
    .io_outputs_0_payload_id       (cmdArbiter_io_output_fork_io_outputs_0_payload_id     ), //o
    .io_outputs_0_payload_len      (cmdArbiter_io_output_fork_io_outputs_0_payload_len    ), //o
    .io_outputs_0_payload_size     (cmdArbiter_io_output_fork_io_outputs_0_payload_size   ), //o
    .io_outputs_0_payload_burst    (cmdArbiter_io_output_fork_io_outputs_0_payload_burst  ), //o
    .io_outputs_0_payload_write    (cmdArbiter_io_output_fork_io_outputs_0_payload_write  ), //o
    .io_outputs_1_valid            (cmdArbiter_io_output_fork_io_outputs_1_valid          ), //o
    .io_outputs_1_ready            (cmdArbiter_io_output_fork_io_outputs_1_ready          ), //i
    .io_outputs_1_payload_addr     (cmdArbiter_io_output_fork_io_outputs_1_payload_addr   ), //o
    .io_outputs_1_payload_id       (cmdArbiter_io_output_fork_io_outputs_1_payload_id     ), //o
    .io_outputs_1_payload_len      (cmdArbiter_io_output_fork_io_outputs_1_payload_len    ), //o
    .io_outputs_1_payload_size     (cmdArbiter_io_output_fork_io_outputs_1_payload_size   ), //o
    .io_outputs_1_payload_burst    (cmdArbiter_io_output_fork_io_outputs_1_payload_burst  ), //o
    .io_outputs_1_payload_write    (cmdArbiter_io_output_fork_io_outputs_1_payload_write  ), //o
    .io_axiClk                     (io_axiClk                                             ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                                    )  //i
  );
  StreamFifoLowLatency_1 cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo (
    .io_push_valid         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid               ), //i
    .io_push_ready         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready  ), //o
    .io_pop_valid          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid   ), //o
    .io_pop_ready          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_ready   ), //i
    .io_flush              (1'b0                                                                         ), //i
    .io_occupancy          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy   ), //o
    .io_axiClk             (io_axiClk                                                                    ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                           )  //i
  );
  assign inputsCmd_0_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_0_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_0_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_0_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_0_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_0_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign io_output_arw_valid = cmdArbiter_io_output_fork_io_outputs_0_valid;
  assign io_output_arw_payload_addr = cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  assign io_output_arw_payload_size = cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  assign io_output_arw_payload_id = (cmdArbiter_io_output_fork_io_outputs_0_payload_write ? cmdArbiter_io_output_fork_io_outputs_0_payload_id : cmdArbiter_io_output_fork_io_outputs_0_payload_id);
  assign when_Stream_l408 = (! cmdArbiter_io_output_fork_io_outputs_1_payload_write);
  always @(*) begin
    cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = cmdArbiter_io_output_fork_io_outputs_1_valid;
    if(when_Stream_l408) begin
      cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    cmdArbiter_io_output_fork_io_outputs_1_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
    if(when_Stream_l408) begin
      cmdArbiter_io_output_fork_io_outputs_1_ready = 1'b1;
    end
  end

  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr = cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id = cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len = cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size = cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst = cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write = cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid = cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign io_output_w_fire = (io_output_w_valid && io_output_w_ready);
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_ready = (io_output_w_fire && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id;
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspSels_0 = 1'b1;
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id;
  assign io_output_r_ready = io_sharedInputs_0_r_ready;

endmodule

module Axi4SharedArbiter_1 (
  input               io_readInputs_0_ar_valid,
  output              io_readInputs_0_ar_ready,
  input      [24:0]   io_readInputs_0_ar_payload_addr,
  input      [2:0]    io_readInputs_0_ar_payload_id,
  input      [7:0]    io_readInputs_0_ar_payload_len,
  input      [2:0]    io_readInputs_0_ar_payload_size,
  input      [1:0]    io_readInputs_0_ar_payload_burst,
  output              io_readInputs_0_r_valid,
  input               io_readInputs_0_r_ready,
  output     [31:0]   io_readInputs_0_r_payload_data,
  output     [2:0]    io_readInputs_0_r_payload_id,
  output     [1:0]    io_readInputs_0_r_payload_resp,
  output              io_readInputs_0_r_payload_last,
  input               io_sharedInputs_0_arw_valid,
  output              io_sharedInputs_0_arw_ready,
  input      [24:0]   io_sharedInputs_0_arw_payload_addr,
  input      [2:0]    io_sharedInputs_0_arw_payload_id,
  input      [7:0]    io_sharedInputs_0_arw_payload_len,
  input      [2:0]    io_sharedInputs_0_arw_payload_size,
  input      [1:0]    io_sharedInputs_0_arw_payload_burst,
  input               io_sharedInputs_0_arw_payload_write,
  input               io_sharedInputs_0_w_valid,
  output              io_sharedInputs_0_w_ready,
  input      [31:0]   io_sharedInputs_0_w_payload_data,
  input      [3:0]    io_sharedInputs_0_w_payload_strb,
  input               io_sharedInputs_0_w_payload_last,
  output              io_sharedInputs_0_b_valid,
  input               io_sharedInputs_0_b_ready,
  output     [2:0]    io_sharedInputs_0_b_payload_id,
  output     [1:0]    io_sharedInputs_0_b_payload_resp,
  output              io_sharedInputs_0_r_valid,
  input               io_sharedInputs_0_r_ready,
  output     [31:0]   io_sharedInputs_0_r_payload_data,
  output     [2:0]    io_sharedInputs_0_r_payload_id,
  output     [1:0]    io_sharedInputs_0_r_payload_resp,
  output              io_sharedInputs_0_r_payload_last,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [24:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 cmdArbiter_io_output_fork_io_outputs_1_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_ready;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [24:0]   cmdArbiter_io_output_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdArbiter_io_output_fork_io_input_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_0_valid;
  wire       [24:0]   cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_valid;
  wire       [24:0]   cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire       [1:0]    _zz__zz_io_output_arw_payload_id;
  wire       [3:0]    _zz_io_output_arw_payload_id_1;
  wire       [2:0]    _zz_io_output_arw_payload_id_2;
  reg                 _zz_io_output_r_ready;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [24:0]   inputsCmd_0_payload_addr;
  wire       [2:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [24:0]   inputsCmd_1_payload_addr;
  wire       [2:0]    inputsCmd_1_payload_id;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire                inputsCmd_1_payload_write;
  wire                _zz_io_output_arw_payload_id;
  wire                when_Stream_l408;
  reg                 cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
  wire       [24:0]   cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                io_output_w_fire;
  wire                writeLogic_writeRspSels_0;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  assign _zz__zz_io_output_arw_payload_id = {cmdArbiter_io_chosenOH[1 : 1],cmdArbiter_io_chosenOH[0 : 0]};
  assign _zz_io_output_arw_payload_id_2 = cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  assign _zz_io_output_arw_payload_id_1 = {1'd0, _zz_io_output_arw_payload_id_2};
  StreamArbiter_1 cmdArbiter (
    .io_inputs_0_valid            (inputsCmd_0_valid                         ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr                  ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id                    ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len                   ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size                  ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst                 ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                 ), //i
    .io_inputs_1_valid            (inputsCmd_1_valid                         ), //i
    .io_inputs_1_ready            (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr     (inputsCmd_1_payload_addr                  ), //i
    .io_inputs_1_payload_id       (inputsCmd_1_payload_id                    ), //i
    .io_inputs_1_payload_len      (inputsCmd_1_payload_len                   ), //i
    .io_inputs_1_payload_size     (inputsCmd_1_payload_size                  ), //i
    .io_inputs_1_payload_burst    (inputsCmd_1_payload_burst                 ), //i
    .io_inputs_1_payload_write    (inputsCmd_1_payload_write                 ), //i
    .io_output_valid              (cmdArbiter_io_output_valid                ), //o
    .io_output_ready              (cmdArbiter_io_output_fork_io_input_ready  ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr         ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id           ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len          ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size         ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst        ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write        ), //o
    .io_chosen                    (cmdArbiter_io_chosen                      ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH                    ), //o
    .io_axiClk                    (io_axiClk                                 ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset                        )  //i
  );
  StreamFork_1 cmdArbiter_io_output_fork (
    .io_input_valid                (cmdArbiter_io_output_valid                            ), //i
    .io_input_ready                (cmdArbiter_io_output_fork_io_input_ready              ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr                     ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id                       ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len                      ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size                     ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst                    ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write                    ), //i
    .io_outputs_0_valid            (cmdArbiter_io_output_fork_io_outputs_0_valid          ), //o
    .io_outputs_0_ready            (io_output_arw_ready                                   ), //i
    .io_outputs_0_payload_addr     (cmdArbiter_io_output_fork_io_outputs_0_payload_addr   ), //o
    .io_outputs_0_payload_id       (cmdArbiter_io_output_fork_io_outputs_0_payload_id     ), //o
    .io_outputs_0_payload_len      (cmdArbiter_io_output_fork_io_outputs_0_payload_len    ), //o
    .io_outputs_0_payload_size     (cmdArbiter_io_output_fork_io_outputs_0_payload_size   ), //o
    .io_outputs_0_payload_burst    (cmdArbiter_io_output_fork_io_outputs_0_payload_burst  ), //o
    .io_outputs_0_payload_write    (cmdArbiter_io_output_fork_io_outputs_0_payload_write  ), //o
    .io_outputs_1_valid            (cmdArbiter_io_output_fork_io_outputs_1_valid          ), //o
    .io_outputs_1_ready            (cmdArbiter_io_output_fork_io_outputs_1_ready          ), //i
    .io_outputs_1_payload_addr     (cmdArbiter_io_output_fork_io_outputs_1_payload_addr   ), //o
    .io_outputs_1_payload_id       (cmdArbiter_io_output_fork_io_outputs_1_payload_id     ), //o
    .io_outputs_1_payload_len      (cmdArbiter_io_output_fork_io_outputs_1_payload_len    ), //o
    .io_outputs_1_payload_size     (cmdArbiter_io_output_fork_io_outputs_1_payload_size   ), //o
    .io_outputs_1_payload_burst    (cmdArbiter_io_output_fork_io_outputs_1_payload_burst  ), //o
    .io_outputs_1_payload_write    (cmdArbiter_io_output_fork_io_outputs_1_payload_write  ), //o
    .io_axiClk                     (io_axiClk                                             ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                                    )  //i
  );
  StreamFifoLowLatency_1 cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo (
    .io_push_valid         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid               ), //i
    .io_push_ready         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready  ), //o
    .io_pop_valid          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid   ), //o
    .io_pop_ready          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_ready   ), //i
    .io_flush              (1'b0                                                                         ), //i
    .io_occupancy          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy   ), //o
    .io_axiClk             (io_axiClk                                                                    ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                           )  //i
  );
  always @(*) begin
    case(readRspIndex)
      1'b0 : begin
        _zz_io_output_r_ready = io_readInputs_0_r_ready;
      end
      default : begin
        _zz_io_output_r_ready = io_sharedInputs_0_r_ready;
      end
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_1_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_1_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_1_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_1_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_1_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  assign io_output_arw_valid = cmdArbiter_io_output_fork_io_outputs_0_valid;
  assign io_output_arw_payload_addr = cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  assign io_output_arw_payload_size = cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  assign _zz_io_output_arw_payload_id = _zz__zz_io_output_arw_payload_id[1];
  assign io_output_arw_payload_id = (cmdArbiter_io_output_fork_io_outputs_0_payload_write ? _zz_io_output_arw_payload_id_1 : {_zz_io_output_arw_payload_id,cmdArbiter_io_output_fork_io_outputs_0_payload_id});
  assign when_Stream_l408 = (! cmdArbiter_io_output_fork_io_outputs_1_payload_write);
  always @(*) begin
    cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = cmdArbiter_io_output_fork_io_outputs_1_valid;
    if(when_Stream_l408) begin
      cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    cmdArbiter_io_output_fork_io_outputs_1_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
    if(when_Stream_l408) begin
      cmdArbiter_io_output_fork_io_outputs_1_ready = 1'b1;
    end
  end

  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr = cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id = cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len = cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size = cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst = cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write = cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid = cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign io_output_w_fire = (io_output_w_valid && io_output_w_ready);
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_ready = (io_output_w_fire && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[2:0];
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspIndex = io_output_r_payload_id[3 : 3];
  assign readRspSels_0 = (readRspIndex == 1'b0);
  assign readRspSels_1 = (readRspIndex == 1'b1);
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_output_r_ready = _zz_io_output_r_ready;

endmodule

module Axi4SharedArbiter (
  input               io_readInputs_0_ar_valid,
  output              io_readInputs_0_ar_ready,
  input      [11:0]   io_readInputs_0_ar_payload_addr,
  input      [2:0]    io_readInputs_0_ar_payload_id,
  input      [7:0]    io_readInputs_0_ar_payload_len,
  input      [2:0]    io_readInputs_0_ar_payload_size,
  input      [1:0]    io_readInputs_0_ar_payload_burst,
  output              io_readInputs_0_r_valid,
  input               io_readInputs_0_r_ready,
  output     [31:0]   io_readInputs_0_r_payload_data,
  output     [2:0]    io_readInputs_0_r_payload_id,
  output     [1:0]    io_readInputs_0_r_payload_resp,
  output              io_readInputs_0_r_payload_last,
  input               io_sharedInputs_0_arw_valid,
  output              io_sharedInputs_0_arw_ready,
  input      [11:0]   io_sharedInputs_0_arw_payload_addr,
  input      [2:0]    io_sharedInputs_0_arw_payload_id,
  input      [7:0]    io_sharedInputs_0_arw_payload_len,
  input      [2:0]    io_sharedInputs_0_arw_payload_size,
  input      [1:0]    io_sharedInputs_0_arw_payload_burst,
  input               io_sharedInputs_0_arw_payload_write,
  input               io_sharedInputs_0_w_valid,
  output              io_sharedInputs_0_w_ready,
  input      [31:0]   io_sharedInputs_0_w_payload_data,
  input      [3:0]    io_sharedInputs_0_w_payload_strb,
  input               io_sharedInputs_0_w_payload_last,
  output              io_sharedInputs_0_b_valid,
  input               io_sharedInputs_0_b_ready,
  output     [2:0]    io_sharedInputs_0_b_payload_id,
  output     [1:0]    io_sharedInputs_0_b_payload_resp,
  output              io_sharedInputs_0_r_valid,
  input               io_sharedInputs_0_r_ready,
  output     [31:0]   io_sharedInputs_0_r_payload_data,
  output     [2:0]    io_sharedInputs_0_r_payload_id,
  output     [1:0]    io_sharedInputs_0_r_payload_resp,
  output              io_sharedInputs_0_r_payload_last,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [11:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 cmdArbiter_io_output_fork_io_outputs_1_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_ready;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [11:0]   cmdArbiter_io_output_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdArbiter_io_output_fork_io_input_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_0_valid;
  wire       [11:0]   cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_valid;
  wire       [11:0]   cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire       [1:0]    _zz__zz_io_output_arw_payload_id;
  wire       [3:0]    _zz_io_output_arw_payload_id_1;
  wire       [2:0]    _zz_io_output_arw_payload_id_2;
  reg                 _zz_io_output_r_ready;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [11:0]   inputsCmd_0_payload_addr;
  wire       [2:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [11:0]   inputsCmd_1_payload_addr;
  wire       [2:0]    inputsCmd_1_payload_id;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire                inputsCmd_1_payload_write;
  wire                _zz_io_output_arw_payload_id;
  wire                when_Stream_l408;
  reg                 cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
  wire       [11:0]   cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                io_output_w_fire;
  wire                writeLogic_writeRspSels_0;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  assign _zz__zz_io_output_arw_payload_id = {cmdArbiter_io_chosenOH[1 : 1],cmdArbiter_io_chosenOH[0 : 0]};
  assign _zz_io_output_arw_payload_id_2 = cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  assign _zz_io_output_arw_payload_id_1 = {1'd0, _zz_io_output_arw_payload_id_2};
  StreamArbiter cmdArbiter (
    .io_inputs_0_valid            (inputsCmd_0_valid                         ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr                  ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id                    ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len                   ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size                  ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst                 ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                 ), //i
    .io_inputs_1_valid            (inputsCmd_1_valid                         ), //i
    .io_inputs_1_ready            (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr     (inputsCmd_1_payload_addr                  ), //i
    .io_inputs_1_payload_id       (inputsCmd_1_payload_id                    ), //i
    .io_inputs_1_payload_len      (inputsCmd_1_payload_len                   ), //i
    .io_inputs_1_payload_size     (inputsCmd_1_payload_size                  ), //i
    .io_inputs_1_payload_burst    (inputsCmd_1_payload_burst                 ), //i
    .io_inputs_1_payload_write    (inputsCmd_1_payload_write                 ), //i
    .io_output_valid              (cmdArbiter_io_output_valid                ), //o
    .io_output_ready              (cmdArbiter_io_output_fork_io_input_ready  ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr         ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id           ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len          ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size         ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst        ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write        ), //o
    .io_chosen                    (cmdArbiter_io_chosen                      ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH                    ), //o
    .io_axiClk                    (io_axiClk                                 ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset                        )  //i
  );
  StreamFork cmdArbiter_io_output_fork (
    .io_input_valid                (cmdArbiter_io_output_valid                            ), //i
    .io_input_ready                (cmdArbiter_io_output_fork_io_input_ready              ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr                     ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id                       ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len                      ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size                     ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst                    ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write                    ), //i
    .io_outputs_0_valid            (cmdArbiter_io_output_fork_io_outputs_0_valid          ), //o
    .io_outputs_0_ready            (io_output_arw_ready                                   ), //i
    .io_outputs_0_payload_addr     (cmdArbiter_io_output_fork_io_outputs_0_payload_addr   ), //o
    .io_outputs_0_payload_id       (cmdArbiter_io_output_fork_io_outputs_0_payload_id     ), //o
    .io_outputs_0_payload_len      (cmdArbiter_io_output_fork_io_outputs_0_payload_len    ), //o
    .io_outputs_0_payload_size     (cmdArbiter_io_output_fork_io_outputs_0_payload_size   ), //o
    .io_outputs_0_payload_burst    (cmdArbiter_io_output_fork_io_outputs_0_payload_burst  ), //o
    .io_outputs_0_payload_write    (cmdArbiter_io_output_fork_io_outputs_0_payload_write  ), //o
    .io_outputs_1_valid            (cmdArbiter_io_output_fork_io_outputs_1_valid          ), //o
    .io_outputs_1_ready            (cmdArbiter_io_output_fork_io_outputs_1_ready          ), //i
    .io_outputs_1_payload_addr     (cmdArbiter_io_output_fork_io_outputs_1_payload_addr   ), //o
    .io_outputs_1_payload_id       (cmdArbiter_io_output_fork_io_outputs_1_payload_id     ), //o
    .io_outputs_1_payload_len      (cmdArbiter_io_output_fork_io_outputs_1_payload_len    ), //o
    .io_outputs_1_payload_size     (cmdArbiter_io_output_fork_io_outputs_1_payload_size   ), //o
    .io_outputs_1_payload_burst    (cmdArbiter_io_output_fork_io_outputs_1_payload_burst  ), //o
    .io_outputs_1_payload_write    (cmdArbiter_io_output_fork_io_outputs_1_payload_write  ), //o
    .io_axiClk                     (io_axiClk                                             ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                                    )  //i
  );
  StreamFifoLowLatency_1 cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo (
    .io_push_valid         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid               ), //i
    .io_push_ready         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready  ), //o
    .io_pop_valid          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid   ), //o
    .io_pop_ready          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_ready   ), //i
    .io_flush              (1'b0                                                                         ), //i
    .io_occupancy          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy   ), //o
    .io_axiClk             (io_axiClk                                                                    ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                           )  //i
  );
  always @(*) begin
    case(readRspIndex)
      1'b0 : begin
        _zz_io_output_r_ready = io_readInputs_0_r_ready;
      end
      default : begin
        _zz_io_output_r_ready = io_sharedInputs_0_r_ready;
      end
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_1_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_1_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_1_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_1_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_1_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  assign io_output_arw_valid = cmdArbiter_io_output_fork_io_outputs_0_valid;
  assign io_output_arw_payload_addr = cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  assign io_output_arw_payload_size = cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  assign _zz_io_output_arw_payload_id = _zz__zz_io_output_arw_payload_id[1];
  assign io_output_arw_payload_id = (cmdArbiter_io_output_fork_io_outputs_0_payload_write ? _zz_io_output_arw_payload_id_1 : {_zz_io_output_arw_payload_id,cmdArbiter_io_output_fork_io_outputs_0_payload_id});
  assign when_Stream_l408 = (! cmdArbiter_io_output_fork_io_outputs_1_payload_write);
  always @(*) begin
    cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = cmdArbiter_io_output_fork_io_outputs_1_valid;
    if(when_Stream_l408) begin
      cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    cmdArbiter_io_output_fork_io_outputs_1_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
    if(when_Stream_l408) begin
      cmdArbiter_io_output_fork_io_outputs_1_ready = 1'b1;
    end
  end

  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr = cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id = cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len = cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size = cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst = cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write = cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid = cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign io_output_w_fire = (io_output_w_valid && io_output_w_ready);
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_ready = (io_output_w_fire && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[2:0];
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspIndex = io_output_r_payload_id[3 : 3];
  assign readRspSels_0 = (readRspIndex == 1'b0);
  assign readRspSels_1 = (readRspIndex == 1'b1);
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_output_r_ready = _zz_io_output_r_ready;

endmodule

module Axi4SharedDecoder (
  input               io_input_arw_valid,
  output              io_input_arw_ready,
  input      [31:0]   io_input_arw_payload_addr,
  input      [7:0]    io_input_arw_payload_len,
  input      [2:0]    io_input_arw_payload_size,
  input      [3:0]    io_input_arw_payload_cache,
  input      [2:0]    io_input_arw_payload_prot,
  input               io_input_arw_payload_write,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [31:0]   io_input_w_payload_data,
  input      [3:0]    io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output reg [1:0]    io_input_b_payload_resp,
  output              io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_sharedOutputs_0_arw_valid,
  input               io_sharedOutputs_0_arw_ready,
  output     [31:0]   io_sharedOutputs_0_arw_payload_addr,
  output     [7:0]    io_sharedOutputs_0_arw_payload_len,
  output     [2:0]    io_sharedOutputs_0_arw_payload_size,
  output     [3:0]    io_sharedOutputs_0_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_0_arw_payload_prot,
  output              io_sharedOutputs_0_arw_payload_write,
  output              io_sharedOutputs_0_w_valid,
  input               io_sharedOutputs_0_w_ready,
  output     [31:0]   io_sharedOutputs_0_w_payload_data,
  output     [3:0]    io_sharedOutputs_0_w_payload_strb,
  output              io_sharedOutputs_0_w_payload_last,
  input               io_sharedOutputs_0_b_valid,
  output              io_sharedOutputs_0_b_ready,
  input      [1:0]    io_sharedOutputs_0_b_payload_resp,
  input               io_sharedOutputs_0_r_valid,
  output              io_sharedOutputs_0_r_ready,
  input      [31:0]   io_sharedOutputs_0_r_payload_data,
  input      [1:0]    io_sharedOutputs_0_r_payload_resp,
  input               io_sharedOutputs_0_r_payload_last,
  output              io_sharedOutputs_1_arw_valid,
  input               io_sharedOutputs_1_arw_ready,
  output     [31:0]   io_sharedOutputs_1_arw_payload_addr,
  output     [7:0]    io_sharedOutputs_1_arw_payload_len,
  output     [2:0]    io_sharedOutputs_1_arw_payload_size,
  output     [3:0]    io_sharedOutputs_1_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_1_arw_payload_prot,
  output              io_sharedOutputs_1_arw_payload_write,
  output              io_sharedOutputs_1_w_valid,
  input               io_sharedOutputs_1_w_ready,
  output     [31:0]   io_sharedOutputs_1_w_payload_data,
  output     [3:0]    io_sharedOutputs_1_w_payload_strb,
  output              io_sharedOutputs_1_w_payload_last,
  input               io_sharedOutputs_1_b_valid,
  output              io_sharedOutputs_1_b_ready,
  input      [1:0]    io_sharedOutputs_1_b_payload_resp,
  input               io_sharedOutputs_1_r_valid,
  output              io_sharedOutputs_1_r_ready,
  input      [31:0]   io_sharedOutputs_1_r_payload_data,
  input      [1:0]    io_sharedOutputs_1_r_payload_resp,
  input               io_sharedOutputs_1_r_payload_last,
  output              io_sharedOutputs_2_arw_valid,
  input               io_sharedOutputs_2_arw_ready,
  output     [31:0]   io_sharedOutputs_2_arw_payload_addr,
  output     [7:0]    io_sharedOutputs_2_arw_payload_len,
  output     [2:0]    io_sharedOutputs_2_arw_payload_size,
  output     [3:0]    io_sharedOutputs_2_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_2_arw_payload_prot,
  output              io_sharedOutputs_2_arw_payload_write,
  output              io_sharedOutputs_2_w_valid,
  input               io_sharedOutputs_2_w_ready,
  output     [31:0]   io_sharedOutputs_2_w_payload_data,
  output     [3:0]    io_sharedOutputs_2_w_payload_strb,
  output              io_sharedOutputs_2_w_payload_last,
  input               io_sharedOutputs_2_b_valid,
  output              io_sharedOutputs_2_b_ready,
  input      [1:0]    io_sharedOutputs_2_b_payload_resp,
  input               io_sharedOutputs_2_r_valid,
  output              io_sharedOutputs_2_r_ready,
  input      [31:0]   io_sharedOutputs_2_r_payload_data,
  input      [1:0]    io_sharedOutputs_2_r_payload_resp,
  input               io_sharedOutputs_2_r_payload_last,
  output              io_sharedOutputs_3_arw_valid,
  input               io_sharedOutputs_3_arw_ready,
  output     [31:0]   io_sharedOutputs_3_arw_payload_addr,
  output     [7:0]    io_sharedOutputs_3_arw_payload_len,
  output     [2:0]    io_sharedOutputs_3_arw_payload_size,
  output     [3:0]    io_sharedOutputs_3_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_3_arw_payload_prot,
  output              io_sharedOutputs_3_arw_payload_write,
  output              io_sharedOutputs_3_w_valid,
  input               io_sharedOutputs_3_w_ready,
  output     [31:0]   io_sharedOutputs_3_w_payload_data,
  output     [3:0]    io_sharedOutputs_3_w_payload_strb,
  output              io_sharedOutputs_3_w_payload_last,
  input               io_sharedOutputs_3_b_valid,
  output              io_sharedOutputs_3_b_ready,
  input      [1:0]    io_sharedOutputs_3_b_payload_resp,
  input               io_sharedOutputs_3_r_valid,
  output              io_sharedOutputs_3_r_ready,
  input      [31:0]   io_sharedOutputs_3_r_payload_data,
  input      [1:0]    io_sharedOutputs_3_r_payload_resp,
  input               io_sharedOutputs_3_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                errorSlave_io_axi_arw_valid;
  wire                errorSlave_io_axi_w_valid;
  wire                errorSlave_io_axi_arw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire       [1:0]    errorSlave_io_axi_b_payload_resp;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  reg        [1:0]    _zz_io_input_b_payload_resp;
  reg        [31:0]   _zz_io_input_r_payload_data;
  reg        [1:0]    _zz_io_input_r_payload_resp;
  reg                 _zz_io_input_r_payload_last;
  reg        [2:0]    _zz_pendingCmdCounter;
  reg        [2:0]    _zz_pendingCmdCounter_1;
  reg        [2:0]    _zz_pendingCmdCounter_2;
  wire                cmdAllowedStart;
  wire                io_input_arw_fire;
  wire                io_input_b_fire;
  wire                io_input_r_fire;
  wire                when_Utils_l520;
  reg        [2:0]    pendingCmdCounter;
  wire       [2:0]    _zz_pendingCmdCounter_3;
  wire                when_Utils_l466;
  wire                io_input_w_fire;
  wire                when_Utils_l469;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire                when_Utils_l494;
  wire                when_Utils_l496;
  wire       [3:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [3:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_cmdAllowedStart;
  wire       [3:0]    _zz_io_sharedOutputs_0_arw_valid;
  wire       [3:0]    _zz_io_sharedOutputs_0_w_valid;
  wire       [3:0]    _zz_writeRspIndex;
  wire                _zz_writeRspIndex_1;
  wire                _zz_writeRspIndex_2;
  wire                _zz_writeRspIndex_3;
  wire       [1:0]    writeRspIndex;
  wire       [3:0]    _zz_readRspIndex;
  wire                _zz_readRspIndex_1;
  wire                _zz_readRspIndex_2;
  wire                _zz_readRspIndex_3;
  wire       [1:0]    readRspIndex;

  Axi4SharedErrorSlave errorSlave (
    .io_axi_arw_valid            (errorSlave_io_axi_arw_valid       ), //i
    .io_axi_arw_ready            (errorSlave_io_axi_arw_ready       ), //o
    .io_axi_arw_payload_addr     (io_input_arw_payload_addr         ), //i
    .io_axi_arw_payload_len      (io_input_arw_payload_len          ), //i
    .io_axi_arw_payload_size     (io_input_arw_payload_size         ), //i
    .io_axi_arw_payload_cache    (io_input_arw_payload_cache        ), //i
    .io_axi_arw_payload_prot     (io_input_arw_payload_prot         ), //i
    .io_axi_arw_payload_write    (io_input_arw_payload_write        ), //i
    .io_axi_w_valid              (errorSlave_io_axi_w_valid         ), //i
    .io_axi_w_ready              (errorSlave_io_axi_w_ready         ), //o
    .io_axi_w_payload_data       (io_input_w_payload_data           ), //i
    .io_axi_w_payload_strb       (io_input_w_payload_strb           ), //i
    .io_axi_w_payload_last       (io_input_w_payload_last           ), //i
    .io_axi_b_valid              (errorSlave_io_axi_b_valid         ), //o
    .io_axi_b_ready              (io_input_b_ready                  ), //i
    .io_axi_b_payload_resp       (errorSlave_io_axi_b_payload_resp  ), //o
    .io_axi_r_valid              (errorSlave_io_axi_r_valid         ), //o
    .io_axi_r_ready              (io_input_r_ready                  ), //i
    .io_axi_r_payload_data       (errorSlave_io_axi_r_payload_data  ), //o
    .io_axi_r_payload_resp       (errorSlave_io_axi_r_payload_resp  ), //o
    .io_axi_r_payload_last       (errorSlave_io_axi_r_payload_last  ), //o
    .io_axiClk                   (io_axiClk                         ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                )  //i
  );
  always @(*) begin
    case(writeRspIndex)
      2'b00 : begin
        _zz_io_input_b_payload_resp = io_sharedOutputs_0_b_payload_resp;
      end
      2'b01 : begin
        _zz_io_input_b_payload_resp = io_sharedOutputs_1_b_payload_resp;
      end
      2'b10 : begin
        _zz_io_input_b_payload_resp = io_sharedOutputs_2_b_payload_resp;
      end
      default : begin
        _zz_io_input_b_payload_resp = io_sharedOutputs_3_b_payload_resp;
      end
    endcase
  end

  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_0_r_payload_data;
        _zz_io_input_r_payload_resp = io_sharedOutputs_0_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_0_r_payload_last;
      end
      2'b01 : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_1_r_payload_data;
        _zz_io_input_r_payload_resp = io_sharedOutputs_1_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_1_r_payload_last;
      end
      2'b10 : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_2_r_payload_data;
        _zz_io_input_r_payload_resp = io_sharedOutputs_2_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_2_r_payload_last;
      end
      default : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_3_r_payload_data;
        _zz_io_input_r_payload_resp = io_sharedOutputs_3_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_3_r_payload_last;
      end
    endcase
  end

  always @(*) begin
    _zz_pendingCmdCounter = _zz_pendingCmdCounter_1;
    if(when_Utils_l520) begin
      _zz_pendingCmdCounter = (_zz_pendingCmdCounter_1 - 3'b001);
    end
  end

  always @(*) begin
    _zz_pendingCmdCounter_1 = _zz_pendingCmdCounter_2;
    if(io_input_b_fire) begin
      _zz_pendingCmdCounter_1 = (_zz_pendingCmdCounter_2 - 3'b001);
    end
  end

  always @(*) begin
    _zz_pendingCmdCounter_2 = _zz_pendingCmdCounter_3;
    if(io_input_arw_fire) begin
      _zz_pendingCmdCounter_2 = (_zz_pendingCmdCounter_3 + 3'b001);
    end
  end

  assign io_input_arw_fire = (io_input_arw_valid && io_input_arw_ready);
  assign io_input_b_fire = (io_input_b_valid && io_input_b_ready);
  assign io_input_r_fire = (io_input_r_valid && io_input_r_ready);
  assign when_Utils_l520 = (io_input_r_fire && io_input_r_payload_last);
  assign _zz_pendingCmdCounter_3 = pendingCmdCounter;
  assign when_Utils_l466 = (cmdAllowedStart && io_input_arw_payload_write);
  assign io_input_w_fire = (io_input_w_valid && io_input_w_ready);
  assign when_Utils_l469 = (io_input_w_fire && io_input_w_payload_last);
  always @(*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if(when_Utils_l466) begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @(*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(when_Utils_l469) begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_willOverflowIfInc = ((pendingDataCounter_value == 3'b111) && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  assign when_Utils_l494 = (pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt));
  always @(*) begin
    if(when_Utils_l494) begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(when_Utils_l496) begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign when_Utils_l496 = ((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt);
  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {((io_input_arw_payload_addr & (~ 32'h000fffff)) == 32'hf1000000),{((io_input_arw_payload_addr & (~ 32'h000fffff)) == 32'hf0000000),{((io_input_arw_payload_addr & (~ 32'h01ffffff)) == 32'h40000000),((io_input_arw_payload_addr & (~ 32'h00000fff)) == 32'h80000000)}}};
  assign decodedCmdError = (decodedCmdSels == 4'b0000);
  assign allowCmd = ((pendingCmdCounter == 3'b000) || ((pendingCmdCounter != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_arw_valid && allowCmd) && _zz_cmdAllowedStart);
  assign io_input_arw_ready = ((((decodedCmdSels & {io_sharedOutputs_3_arw_ready,{io_sharedOutputs_2_arw_ready,{io_sharedOutputs_1_arw_ready,io_sharedOutputs_0_arw_ready}}}) != 4'b0000) || (decodedCmdError && errorSlave_io_axi_arw_ready)) && allowCmd);
  assign errorSlave_io_axi_arw_valid = ((io_input_arw_valid && decodedCmdError) && allowCmd);
  assign _zz_io_sharedOutputs_0_arw_valid = decodedCmdSels[3 : 0];
  assign io_sharedOutputs_0_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[0]) && allowCmd);
  assign io_sharedOutputs_0_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_0_arw_payload_len = io_input_arw_payload_len;
  assign io_sharedOutputs_0_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_0_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_0_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_0_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_1_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[1]) && allowCmd);
  assign io_sharedOutputs_1_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_1_arw_payload_len = io_input_arw_payload_len;
  assign io_sharedOutputs_1_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_1_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_1_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_1_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_2_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[2]) && allowCmd);
  assign io_sharedOutputs_2_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_2_arw_payload_len = io_input_arw_payload_len;
  assign io_sharedOutputs_2_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_2_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_2_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_2_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_3_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[3]) && allowCmd);
  assign io_sharedOutputs_3_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_3_arw_payload_len = io_input_arw_payload_len;
  assign io_sharedOutputs_3_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_3_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_3_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_3_arw_payload_write = io_input_arw_payload_write;
  assign io_input_w_ready = ((((pendingSels[3 : 0] & {io_sharedOutputs_3_w_ready,{io_sharedOutputs_2_w_ready,{io_sharedOutputs_1_w_ready,io_sharedOutputs_0_w_ready}}}) != 4'b0000) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign errorSlave_io_axi_w_valid = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_io_sharedOutputs_0_w_valid = pendingSels[3 : 0];
  assign io_sharedOutputs_0_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[0]) && allowData);
  assign io_sharedOutputs_0_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_0_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_1_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[1]) && allowData);
  assign io_sharedOutputs_1_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_1_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_2_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[2]) && allowData);
  assign io_sharedOutputs_2_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_2_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_2_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_3_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[3]) && allowData);
  assign io_sharedOutputs_3_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_3_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_3_w_payload_last = io_input_w_payload_last;
  assign _zz_writeRspIndex = pendingSels[3 : 0];
  assign _zz_writeRspIndex_1 = _zz_writeRspIndex[3];
  assign _zz_writeRspIndex_2 = (_zz_writeRspIndex[1] || _zz_writeRspIndex_1);
  assign _zz_writeRspIndex_3 = (_zz_writeRspIndex[2] || _zz_writeRspIndex_1);
  assign writeRspIndex = {_zz_writeRspIndex_3,_zz_writeRspIndex_2};
  assign io_input_b_valid = (({io_sharedOutputs_3_b_valid,{io_sharedOutputs_2_b_valid,{io_sharedOutputs_1_b_valid,io_sharedOutputs_0_b_valid}}} != 4'b0000) || errorSlave_io_axi_b_valid);
  always @(*) begin
    io_input_b_payload_resp = _zz_io_input_b_payload_resp;
    if(pendingError) begin
      io_input_b_payload_resp = errorSlave_io_axi_b_payload_resp;
    end
  end

  assign io_sharedOutputs_0_b_ready = io_input_b_ready;
  assign io_sharedOutputs_1_b_ready = io_input_b_ready;
  assign io_sharedOutputs_2_b_ready = io_input_b_ready;
  assign io_sharedOutputs_3_b_ready = io_input_b_ready;
  assign _zz_readRspIndex = pendingSels[3 : 0];
  assign _zz_readRspIndex_1 = _zz_readRspIndex[3];
  assign _zz_readRspIndex_2 = (_zz_readRspIndex[1] || _zz_readRspIndex_1);
  assign _zz_readRspIndex_3 = (_zz_readRspIndex[2] || _zz_readRspIndex_1);
  assign readRspIndex = {_zz_readRspIndex_3,_zz_readRspIndex_2};
  assign io_input_r_valid = (({io_sharedOutputs_3_r_valid,{io_sharedOutputs_2_r_valid,{io_sharedOutputs_1_r_valid,io_sharedOutputs_0_r_valid}}} != 4'b0000) || errorSlave_io_axi_r_valid);
  assign io_input_r_payload_data = _zz_io_input_r_payload_data;
  always @(*) begin
    io_input_r_payload_resp = _zz_io_input_r_payload_resp;
    if(pendingError) begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @(*) begin
    io_input_r_payload_last = _zz_io_input_r_payload_last;
    if(pendingError) begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_sharedOutputs_0_r_ready = io_input_r_ready;
  assign io_sharedOutputs_1_r_ready = io_input_r_ready;
  assign io_sharedOutputs_2_r_ready = io_input_r_ready;
  assign io_sharedOutputs_3_r_ready = io_input_r_ready;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      pendingCmdCounter <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 4'b0000;
      pendingError <= 1'b0;
      _zz_cmdAllowedStart <= 1'b1;
    end else begin
      pendingCmdCounter <= _zz_pendingCmdCounter;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart) begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart) begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart) begin
        _zz_cmdAllowedStart <= 1'b0;
      end
      if(io_input_arw_ready) begin
        _zz_cmdAllowedStart <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [31:0]   io_input_ar_payload_addr,
  input      [7:0]    io_input_ar_payload_len,
  input      [1:0]    io_input_ar_payload_burst,
  input      [3:0]    io_input_ar_payload_cache,
  input      [2:0]    io_input_ar_payload_prot,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [31:0]   io_outputs_0_ar_payload_addr,
  output     [7:0]    io_outputs_0_ar_payload_len,
  output     [1:0]    io_outputs_0_ar_payload_burst,
  output     [3:0]    io_outputs_0_ar_payload_cache,
  output     [2:0]    io_outputs_0_ar_payload_prot,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [31:0]   io_outputs_0_r_payload_data,
  input      [1:0]    io_outputs_0_r_payload_resp,
  input               io_outputs_0_r_payload_last,
  output              io_outputs_1_ar_valid,
  input               io_outputs_1_ar_ready,
  output     [31:0]   io_outputs_1_ar_payload_addr,
  output     [7:0]    io_outputs_1_ar_payload_len,
  output     [1:0]    io_outputs_1_ar_payload_burst,
  output     [3:0]    io_outputs_1_ar_payload_cache,
  output     [2:0]    io_outputs_1_ar_payload_prot,
  input               io_outputs_1_r_valid,
  output              io_outputs_1_r_ready,
  input      [31:0]   io_outputs_1_r_payload_data,
  input      [1:0]    io_outputs_1_r_payload_resp,
  input               io_outputs_1_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                errorSlave_io_axi_ar_valid;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  wire                io_input_ar_fire;
  wire                io_input_r_fire;
  wire                when_Utils_l469;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire                when_Utils_l494;
  wire                when_Utils_l496;
  wire       [1:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [1:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                _zz_io_input_r_payload_data;
  wire                _zz_readRspIndex;
  wire       [0:0]    readRspIndex;

  Axi4ReadOnlyErrorSlave errorSlave (
    .io_axi_ar_valid            (errorSlave_io_axi_ar_valid        ), //i
    .io_axi_ar_ready            (errorSlave_io_axi_ar_ready        ), //o
    .io_axi_ar_payload_addr     (io_input_ar_payload_addr          ), //i
    .io_axi_ar_payload_len      (io_input_ar_payload_len           ), //i
    .io_axi_ar_payload_burst    (io_input_ar_payload_burst         ), //i
    .io_axi_ar_payload_cache    (io_input_ar_payload_cache         ), //i
    .io_axi_ar_payload_prot     (io_input_ar_payload_prot          ), //i
    .io_axi_r_valid             (errorSlave_io_axi_r_valid         ), //o
    .io_axi_r_ready             (io_input_r_ready                  ), //i
    .io_axi_r_payload_data      (errorSlave_io_axi_r_payload_data  ), //o
    .io_axi_r_payload_resp      (errorSlave_io_axi_r_payload_resp  ), //o
    .io_axi_r_payload_last      (errorSlave_io_axi_r_payload_last  ), //o
    .io_axiClk                  (io_axiClk                         ), //i
    .resetCtrl_axiReset         (resetCtrl_axiReset                )  //i
  );
  assign io_input_ar_fire = (io_input_ar_valid && io_input_ar_ready);
  assign io_input_r_fire = (io_input_r_valid && io_input_r_ready);
  assign when_Utils_l469 = (io_input_r_fire && io_input_r_payload_last);
  always @(*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if(io_input_ar_fire) begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @(*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(when_Utils_l469) begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  assign when_Utils_l494 = (pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt));
  always @(*) begin
    if(when_Utils_l494) begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(when_Utils_l496) begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign when_Utils_l496 = ((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt);
  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_ar_payload_addr & (~ 32'h01ffffff)) == 32'h40000000) && io_input_ar_valid),(((io_input_ar_payload_addr & (~ 32'h00000fff)) == 32'h80000000) && io_input_ar_valid)};
  assign decodedCmdError = (decodedCmdSels == 2'b00);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = ((((decodedCmdSels & {io_outputs_1_ar_ready,io_outputs_0_ar_ready}) != 2'b00) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign errorSlave_io_axi_ar_valid = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_0_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_1_ar_valid = ((io_input_ar_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_1_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_1_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_1_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_1_ar_payload_prot = io_input_ar_payload_prot;
  assign _zz_io_input_r_payload_data = pendingSels[0];
  assign _zz_readRspIndex = pendingSels[1];
  assign readRspIndex = _zz_readRspIndex;
  always @(*) begin
    io_input_r_valid = ({io_outputs_1_r_valid,io_outputs_0_r_valid} != 2'b00);
    if(errorSlave_io_axi_r_valid) begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = (_zz_io_input_r_payload_data ? io_outputs_0_r_payload_data : io_outputs_1_r_payload_data);
  always @(*) begin
    io_input_r_payload_resp = (_zz_io_input_r_payload_data ? io_outputs_0_r_payload_resp : io_outputs_1_r_payload_resp);
    if(pendingError) begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @(*) begin
    io_input_r_payload_last = (_zz_io_input_r_payload_data ? io_outputs_0_r_payload_last : io_outputs_1_r_payload_last);
    if(pendingError) begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  assign io_outputs_1_r_ready = io_input_r_ready;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingSels <= 2'b00;
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready) begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready) begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module SystemDebugger (
  input               io_remote_cmd_valid,
  output              io_remote_cmd_ready,
  input               io_remote_cmd_payload_last,
  input      [0:0]    io_remote_cmd_payload_fragment,
  output              io_remote_rsp_valid,
  input               io_remote_rsp_ready,
  output              io_remote_rsp_payload_error,
  output     [31:0]   io_remote_rsp_payload_data,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output              io_mem_cmd_payload_wr,
  output     [1:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload,
  input               io_axiClk,
  input               resetCtrl_systemReset
);
  reg        [66:0]   dispatcher_dataShifter;
  reg                 dispatcher_dataLoaded;
  reg        [7:0]    dispatcher_headerShifter;
  wire       [7:0]    dispatcher_header;
  reg                 dispatcher_headerLoaded;
  reg        [2:0]    dispatcher_counter;
  wire                when_Fragment_l346;
  wire                when_Fragment_l349;
  wire       [66:0]   _zz_io_mem_cmd_payload_address;
  wire                io_mem_cmd_isStall;
  wire                when_Fragment_l372;

  assign dispatcher_header = dispatcher_headerShifter[7 : 0];
  assign when_Fragment_l346 = (dispatcher_headerLoaded == 1'b0);
  assign when_Fragment_l349 = (dispatcher_counter == 3'b111);
  assign io_remote_cmd_ready = (! dispatcher_dataLoaded);
  assign _zz_io_mem_cmd_payload_address = dispatcher_dataShifter[66 : 0];
  assign io_mem_cmd_payload_address = _zz_io_mem_cmd_payload_address[31 : 0];
  assign io_mem_cmd_payload_data = _zz_io_mem_cmd_payload_address[63 : 32];
  assign io_mem_cmd_payload_wr = _zz_io_mem_cmd_payload_address[64];
  assign io_mem_cmd_payload_size = _zz_io_mem_cmd_payload_address[66 : 65];
  assign io_mem_cmd_valid = (dispatcher_dataLoaded && (dispatcher_header == 8'h0));
  assign io_mem_cmd_isStall = (io_mem_cmd_valid && (! io_mem_cmd_ready));
  assign when_Fragment_l372 = ((dispatcher_headerLoaded && dispatcher_dataLoaded) && (! io_mem_cmd_isStall));
  assign io_remote_rsp_valid = io_mem_rsp_valid;
  assign io_remote_rsp_payload_error = 1'b0;
  assign io_remote_rsp_payload_data = io_mem_rsp_payload;
  always @(posedge io_axiClk or posedge resetCtrl_systemReset) begin
    if(resetCtrl_systemReset) begin
      dispatcher_dataLoaded <= 1'b0;
      dispatcher_headerLoaded <= 1'b0;
      dispatcher_counter <= 3'b000;
    end else begin
      if(io_remote_cmd_valid) begin
        if(when_Fragment_l346) begin
          dispatcher_counter <= (dispatcher_counter + 3'b001);
          if(when_Fragment_l349) begin
            dispatcher_headerLoaded <= 1'b1;
          end
        end
        if(io_remote_cmd_payload_last) begin
          dispatcher_headerLoaded <= 1'b1;
          dispatcher_dataLoaded <= 1'b1;
          dispatcher_counter <= 3'b000;
        end
      end
      if(when_Fragment_l372) begin
        dispatcher_headerLoaded <= 1'b0;
        dispatcher_dataLoaded <= 1'b0;
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(io_remote_cmd_valid) begin
      if(when_Fragment_l346) begin
        dispatcher_headerShifter <= ({io_remote_cmd_payload_fragment,dispatcher_headerShifter} >>> 1);
      end else begin
        dispatcher_dataShifter <= ({io_remote_cmd_payload_fragment,dispatcher_dataShifter} >>> 1);
      end
    end
  end


endmodule

module JtagBridge (
  input               io_jtag_tms,
  input               io_jtag_tdi,
  output              io_jtag_tdo,
  input               io_jtag_tck,
  output              io_remote_cmd_valid,
  input               io_remote_cmd_ready,
  output              io_remote_cmd_payload_last,
  output     [0:0]    io_remote_cmd_payload_fragment,
  input               io_remote_rsp_valid,
  output              io_remote_rsp_ready,
  input               io_remote_rsp_payload_error,
  input      [31:0]   io_remote_rsp_payload_data,
  input               io_axiClk,
  input               resetCtrl_systemReset
);
  wire                flowCCByToggle_1_io_input_payload_last;
  wire                flowCCByToggle_1_io_output_valid;
  wire                flowCCByToggle_1_io_output_payload_last;
  wire       [0:0]    flowCCByToggle_1_io_output_payload_fragment;
  wire       [1:0]    _zz_jtag_tap_instructionShift;
  wire                system_cmd_valid;
  wire                system_cmd_payload_last;
  wire       [0:0]    system_cmd_payload_fragment;
  (* async_reg = "true" *) reg                 system_rsp_valid;
  (* async_reg = "true" *) reg                 system_rsp_payload_error;
  (* async_reg = "true" *) reg        [31:0]   system_rsp_payload_data;
  wire                io_remote_rsp_fire;
  wire       `JtagState_binary_sequential_type jtag_tap_fsm_stateNext;
  reg        `JtagState_binary_sequential_type jtag_tap_fsm_state = `JtagState_binary_sequential_RESET;
  reg        `JtagState_binary_sequential_type _zz_jtag_tap_fsm_stateNext;
  reg        [3:0]    jtag_tap_instruction;
  reg        [3:0]    jtag_tap_instructionShift;
  reg                 jtag_tap_bypass;
  reg                 jtag_tap_tdoUnbufferd;
  reg                 jtag_tap_tdoDr;
  wire                jtag_tap_tdoIr;
  reg                 jtag_tap_tdoUnbufferd_regNext;
  wire                _zz_1;
  reg        [31:0]   _zz_jtag_tap_tdoDr;
  wire                when_JtagTap_l115;
  wire                _zz_io_input_valid;
  wire                _zz_io_input_valid_1;
  wire       [0:0]    _zz_io_input_payload_fragment;
  reg                 _zz_io_input_valid_2;
  reg                 _zz_io_input_payload_fragment_1;
  wire                _zz_2;
  reg        [33:0]   _zz_jtag_tap_tdoDr_1;
  `ifndef SYNTHESIS
  reg [79:0] jtag_tap_fsm_stateNext_string;
  reg [79:0] jtag_tap_fsm_state_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_string;
  `endif


  assign _zz_jtag_tap_instructionShift = 2'b01;
  FlowCCByToggle flowCCByToggle_1 (
    .io_input_valid                (_zz_io_input_valid_2                         ), //i
    .io_input_payload_last         (flowCCByToggle_1_io_input_payload_last       ), //i
    .io_input_payload_fragment     (_zz_io_input_payload_fragment                ), //i
    .io_output_valid               (flowCCByToggle_1_io_output_valid             ), //o
    .io_output_payload_last        (flowCCByToggle_1_io_output_payload_last      ), //o
    .io_output_payload_fragment    (flowCCByToggle_1_io_output_payload_fragment  ), //o
    .io_jtag_tck                   (io_jtag_tck                                  ), //i
    .io_axiClk                     (io_axiClk                                    ), //i
    .resetCtrl_systemReset         (resetCtrl_systemReset                        )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(jtag_tap_fsm_stateNext)
      `JtagState_binary_sequential_RESET : jtag_tap_fsm_stateNext_string = "RESET     ";
      `JtagState_binary_sequential_IDLE : jtag_tap_fsm_stateNext_string = "IDLE      ";
      `JtagState_binary_sequential_IR_SELECT : jtag_tap_fsm_stateNext_string = "IR_SELECT ";
      `JtagState_binary_sequential_IR_CAPTURE : jtag_tap_fsm_stateNext_string = "IR_CAPTURE";
      `JtagState_binary_sequential_IR_SHIFT : jtag_tap_fsm_stateNext_string = "IR_SHIFT  ";
      `JtagState_binary_sequential_IR_EXIT1 : jtag_tap_fsm_stateNext_string = "IR_EXIT1  ";
      `JtagState_binary_sequential_IR_PAUSE : jtag_tap_fsm_stateNext_string = "IR_PAUSE  ";
      `JtagState_binary_sequential_IR_EXIT2 : jtag_tap_fsm_stateNext_string = "IR_EXIT2  ";
      `JtagState_binary_sequential_IR_UPDATE : jtag_tap_fsm_stateNext_string = "IR_UPDATE ";
      `JtagState_binary_sequential_DR_SELECT : jtag_tap_fsm_stateNext_string = "DR_SELECT ";
      `JtagState_binary_sequential_DR_CAPTURE : jtag_tap_fsm_stateNext_string = "DR_CAPTURE";
      `JtagState_binary_sequential_DR_SHIFT : jtag_tap_fsm_stateNext_string = "DR_SHIFT  ";
      `JtagState_binary_sequential_DR_EXIT1 : jtag_tap_fsm_stateNext_string = "DR_EXIT1  ";
      `JtagState_binary_sequential_DR_PAUSE : jtag_tap_fsm_stateNext_string = "DR_PAUSE  ";
      `JtagState_binary_sequential_DR_EXIT2 : jtag_tap_fsm_stateNext_string = "DR_EXIT2  ";
      `JtagState_binary_sequential_DR_UPDATE : jtag_tap_fsm_stateNext_string = "DR_UPDATE ";
      default : jtag_tap_fsm_stateNext_string = "??????????";
    endcase
  end
  always @(*) begin
    case(jtag_tap_fsm_state)
      `JtagState_binary_sequential_RESET : jtag_tap_fsm_state_string = "RESET     ";
      `JtagState_binary_sequential_IDLE : jtag_tap_fsm_state_string = "IDLE      ";
      `JtagState_binary_sequential_IR_SELECT : jtag_tap_fsm_state_string = "IR_SELECT ";
      `JtagState_binary_sequential_IR_CAPTURE : jtag_tap_fsm_state_string = "IR_CAPTURE";
      `JtagState_binary_sequential_IR_SHIFT : jtag_tap_fsm_state_string = "IR_SHIFT  ";
      `JtagState_binary_sequential_IR_EXIT1 : jtag_tap_fsm_state_string = "IR_EXIT1  ";
      `JtagState_binary_sequential_IR_PAUSE : jtag_tap_fsm_state_string = "IR_PAUSE  ";
      `JtagState_binary_sequential_IR_EXIT2 : jtag_tap_fsm_state_string = "IR_EXIT2  ";
      `JtagState_binary_sequential_IR_UPDATE : jtag_tap_fsm_state_string = "IR_UPDATE ";
      `JtagState_binary_sequential_DR_SELECT : jtag_tap_fsm_state_string = "DR_SELECT ";
      `JtagState_binary_sequential_DR_CAPTURE : jtag_tap_fsm_state_string = "DR_CAPTURE";
      `JtagState_binary_sequential_DR_SHIFT : jtag_tap_fsm_state_string = "DR_SHIFT  ";
      `JtagState_binary_sequential_DR_EXIT1 : jtag_tap_fsm_state_string = "DR_EXIT1  ";
      `JtagState_binary_sequential_DR_PAUSE : jtag_tap_fsm_state_string = "DR_PAUSE  ";
      `JtagState_binary_sequential_DR_EXIT2 : jtag_tap_fsm_state_string = "DR_EXIT2  ";
      `JtagState_binary_sequential_DR_UPDATE : jtag_tap_fsm_state_string = "DR_UPDATE ";
      default : jtag_tap_fsm_state_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext)
      `JtagState_binary_sequential_RESET : _zz_jtag_tap_fsm_stateNext_string = "RESET     ";
      `JtagState_binary_sequential_IDLE : _zz_jtag_tap_fsm_stateNext_string = "IDLE      ";
      `JtagState_binary_sequential_IR_SELECT : _zz_jtag_tap_fsm_stateNext_string = "IR_SELECT ";
      `JtagState_binary_sequential_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_string = "IR_CAPTURE";
      `JtagState_binary_sequential_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_string = "IR_SHIFT  ";
      `JtagState_binary_sequential_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_string = "IR_EXIT1  ";
      `JtagState_binary_sequential_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_string = "IR_PAUSE  ";
      `JtagState_binary_sequential_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_string = "IR_EXIT2  ";
      `JtagState_binary_sequential_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_string = "IR_UPDATE ";
      `JtagState_binary_sequential_DR_SELECT : _zz_jtag_tap_fsm_stateNext_string = "DR_SELECT ";
      `JtagState_binary_sequential_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_string = "DR_CAPTURE";
      `JtagState_binary_sequential_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_string = "DR_SHIFT  ";
      `JtagState_binary_sequential_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_string = "DR_EXIT1  ";
      `JtagState_binary_sequential_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_string = "DR_PAUSE  ";
      `JtagState_binary_sequential_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_string = "DR_EXIT2  ";
      `JtagState_binary_sequential_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_string = "??????????";
    endcase
  end
  `endif

  assign io_remote_cmd_valid = system_cmd_valid;
  assign io_remote_cmd_payload_last = system_cmd_payload_last;
  assign io_remote_cmd_payload_fragment = system_cmd_payload_fragment;
  assign io_remote_rsp_fire = (io_remote_rsp_valid && io_remote_rsp_ready);
  assign io_remote_rsp_ready = 1'b1;
  always @(*) begin
    case(jtag_tap_fsm_state)
      `JtagState_binary_sequential_IDLE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_DR_SELECT : `JtagState_binary_sequential_IDLE);
      end
      `JtagState_binary_sequential_IR_SELECT : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_RESET : `JtagState_binary_sequential_IR_CAPTURE);
      end
      `JtagState_binary_sequential_IR_CAPTURE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_IR_EXIT1 : `JtagState_binary_sequential_IR_SHIFT);
      end
      `JtagState_binary_sequential_IR_SHIFT : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_IR_EXIT1 : `JtagState_binary_sequential_IR_SHIFT);
      end
      `JtagState_binary_sequential_IR_EXIT1 : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_IR_UPDATE : `JtagState_binary_sequential_IR_PAUSE);
      end
      `JtagState_binary_sequential_IR_PAUSE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_IR_EXIT2 : `JtagState_binary_sequential_IR_PAUSE);
      end
      `JtagState_binary_sequential_IR_EXIT2 : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_IR_UPDATE : `JtagState_binary_sequential_IR_SHIFT);
      end
      `JtagState_binary_sequential_IR_UPDATE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_DR_SELECT : `JtagState_binary_sequential_IDLE);
      end
      `JtagState_binary_sequential_DR_SELECT : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_IR_SELECT : `JtagState_binary_sequential_DR_CAPTURE);
      end
      `JtagState_binary_sequential_DR_CAPTURE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_DR_EXIT1 : `JtagState_binary_sequential_DR_SHIFT);
      end
      `JtagState_binary_sequential_DR_SHIFT : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_DR_EXIT1 : `JtagState_binary_sequential_DR_SHIFT);
      end
      `JtagState_binary_sequential_DR_EXIT1 : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_DR_UPDATE : `JtagState_binary_sequential_DR_PAUSE);
      end
      `JtagState_binary_sequential_DR_PAUSE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_DR_EXIT2 : `JtagState_binary_sequential_DR_PAUSE);
      end
      `JtagState_binary_sequential_DR_EXIT2 : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_DR_UPDATE : `JtagState_binary_sequential_DR_SHIFT);
      end
      `JtagState_binary_sequential_DR_UPDATE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_DR_SELECT : `JtagState_binary_sequential_IDLE);
      end
      default : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? `JtagState_binary_sequential_RESET : `JtagState_binary_sequential_IDLE);
      end
    endcase
  end

  assign jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext;
  always @(*) begin
    jtag_tap_tdoUnbufferd = jtag_tap_bypass;
    case(jtag_tap_fsm_state)
      `JtagState_binary_sequential_IR_SHIFT : begin
        jtag_tap_tdoUnbufferd = jtag_tap_tdoIr;
      end
      `JtagState_binary_sequential_DR_SHIFT : begin
        jtag_tap_tdoUnbufferd = jtag_tap_tdoDr;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    jtag_tap_tdoDr = 1'b0;
    if(_zz_1) begin
      jtag_tap_tdoDr = _zz_jtag_tap_tdoDr[0];
    end
    if(_zz_io_input_valid) begin
      jtag_tap_tdoDr = 1'b0;
    end
    if(_zz_2) begin
      jtag_tap_tdoDr = _zz_jtag_tap_tdoDr_1[0];
    end
  end

  assign jtag_tap_tdoIr = jtag_tap_instructionShift[0];
  assign io_jtag_tdo = jtag_tap_tdoUnbufferd_regNext;
  assign _zz_1 = (jtag_tap_instruction == 4'b0001);
  assign when_JtagTap_l115 = (jtag_tap_fsm_state == `JtagState_binary_sequential_RESET);
  assign _zz_io_input_payload_fragment[0] = _zz_io_input_payload_fragment_1;
  assign flowCCByToggle_1_io_input_payload_last = (! (_zz_io_input_valid && _zz_io_input_valid_1));
  assign system_cmd_valid = flowCCByToggle_1_io_output_valid;
  assign system_cmd_payload_last = flowCCByToggle_1_io_output_payload_last;
  assign system_cmd_payload_fragment = flowCCByToggle_1_io_output_payload_fragment;
  assign _zz_io_input_valid = (jtag_tap_instruction == 4'b0010);
  assign _zz_io_input_valid_1 = (jtag_tap_fsm_state == `JtagState_binary_sequential_DR_SHIFT);
  assign _zz_2 = (jtag_tap_instruction == 4'b0011);
  always @(posedge io_axiClk) begin
    if(io_remote_cmd_valid) begin
      system_rsp_valid <= 1'b0;
    end
    if(io_remote_rsp_fire) begin
      system_rsp_valid <= 1'b1;
      system_rsp_payload_error <= io_remote_rsp_payload_error;
      system_rsp_payload_data <= io_remote_rsp_payload_data;
    end
  end

  always @(posedge io_jtag_tck) begin
    jtag_tap_fsm_state <= jtag_tap_fsm_stateNext;
    jtag_tap_bypass <= io_jtag_tdi;
    case(jtag_tap_fsm_state)
      `JtagState_binary_sequential_IR_CAPTURE : begin
        jtag_tap_instructionShift <= {2'd0, _zz_jtag_tap_instructionShift};
      end
      `JtagState_binary_sequential_IR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1);
      end
      `JtagState_binary_sequential_IR_UPDATE : begin
        jtag_tap_instruction <= jtag_tap_instructionShift;
      end
      `JtagState_binary_sequential_DR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1);
      end
      default : begin
      end
    endcase
    if(_zz_1) begin
      if((jtag_tap_fsm_state == `JtagState_binary_sequential_DR_SHIFT)) begin
        _zz_jtag_tap_tdoDr <= ({io_jtag_tdi,_zz_jtag_tap_tdoDr} >>> 1);
      end
    end
    if((jtag_tap_fsm_state == `JtagState_binary_sequential_DR_CAPTURE)) begin
      _zz_jtag_tap_tdoDr <= 32'h10001fff;
    end
    if(when_JtagTap_l115) begin
      jtag_tap_instruction <= 4'b0001;
    end
    _zz_io_input_valid_2 <= (_zz_io_input_valid && _zz_io_input_valid_1);
    _zz_io_input_payload_fragment_1 <= io_jtag_tdi;
    if(_zz_2) begin
      if((jtag_tap_fsm_state == `JtagState_binary_sequential_DR_CAPTURE)) begin
        _zz_jtag_tap_tdoDr_1 <= {{system_rsp_payload_data,system_rsp_payload_error},system_rsp_valid};
      end
      if((jtag_tap_fsm_state == `JtagState_binary_sequential_DR_SHIFT)) begin
        _zz_jtag_tap_tdoDr_1 <= ({io_jtag_tdi,_zz_jtag_tap_tdoDr_1} >>> 1);
      end
    end
  end

  always @(negedge io_jtag_tck) begin
    jtag_tap_tdoUnbufferd_regNext <= jtag_tap_tdoUnbufferd;
  end


endmodule

module BufferCC_5 (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module StreamFork_4 (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_wr,
  input               io_input_payload_uncached,
  input      [31:0]   io_input_payload_address,
  input      [31:0]   io_input_payload_data,
  input      [3:0]    io_input_payload_mask,
  input      [2:0]    io_input_payload_size,
  input               io_input_payload_last,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_wr,
  output              io_outputs_0_payload_uncached,
  output     [31:0]   io_outputs_0_payload_address,
  output     [31:0]   io_outputs_0_payload_data,
  output     [3:0]    io_outputs_0_payload_mask,
  output     [2:0]    io_outputs_0_payload_size,
  output              io_outputs_0_payload_last,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_1_payload_wr,
  output              io_outputs_1_payload_uncached,
  output     [31:0]   io_outputs_1_payload_address,
  output     [31:0]   io_outputs_1_payload_data,
  output     [3:0]    io_outputs_1_payload_mask,
  output     [2:0]    io_outputs_1_payload_size,
  output              io_outputs_1_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_io_outputs_0_valid;
  reg                 _zz_io_outputs_1_valid;
  wire                when_Stream_l806;
  wire                when_Stream_l806_1;
  wire                io_outputs_0_fire;
  wire                io_outputs_1_fire;

  always @(*) begin
    io_input_ready = 1'b1;
    if(when_Stream_l806) begin
      io_input_ready = 1'b0;
    end
    if(when_Stream_l806_1) begin
      io_input_ready = 1'b0;
    end
  end

  assign when_Stream_l806 = ((! io_outputs_0_ready) && _zz_io_outputs_0_valid);
  assign when_Stream_l806_1 = ((! io_outputs_1_ready) && _zz_io_outputs_1_valid);
  assign io_outputs_0_valid = (io_input_valid && _zz_io_outputs_0_valid);
  assign io_outputs_0_payload_wr = io_input_payload_wr;
  assign io_outputs_0_payload_uncached = io_input_payload_uncached;
  assign io_outputs_0_payload_address = io_input_payload_address;
  assign io_outputs_0_payload_data = io_input_payload_data;
  assign io_outputs_0_payload_mask = io_input_payload_mask;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_last = io_input_payload_last;
  assign io_outputs_0_fire = (io_outputs_0_valid && io_outputs_0_ready);
  assign io_outputs_1_valid = (io_input_valid && _zz_io_outputs_1_valid);
  assign io_outputs_1_payload_wr = io_input_payload_wr;
  assign io_outputs_1_payload_uncached = io_input_payload_uncached;
  assign io_outputs_1_payload_address = io_input_payload_address;
  assign io_outputs_1_payload_data = io_input_payload_data;
  assign io_outputs_1_payload_mask = io_input_payload_mask;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_last = io_input_payload_last;
  assign io_outputs_1_fire = (io_outputs_1_valid && io_outputs_1_ready);
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      _zz_io_outputs_0_valid <= 1'b1;
      _zz_io_outputs_1_valid <= 1'b1;
    end else begin
      if(io_outputs_0_fire) begin
        _zz_io_outputs_0_valid <= 1'b0;
      end
      if(io_outputs_1_fire) begin
        _zz_io_outputs_1_valid <= 1'b0;
      end
      if(io_input_ready) begin
        _zz_io_outputs_0_valid <= 1'b1;
        _zz_io_outputs_1_valid <= 1'b1;
      end
    end
  end


endmodule

module VexRiscv (
  output              dBus_cmd_valid,
  input               dBus_cmd_ready,
  output              dBus_cmd_payload_wr,
  output              dBus_cmd_payload_uncached,
  output     [31:0]   dBus_cmd_payload_address,
  output     [31:0]   dBus_cmd_payload_data,
  output     [3:0]    dBus_cmd_payload_mask,
  output     [2:0]    dBus_cmd_payload_size,
  output              dBus_cmd_payload_last,
  input               dBus_rsp_valid,
  input               dBus_rsp_payload_last,
  input      [31:0]   dBus_rsp_payload_data,
  input               dBus_rsp_payload_error,
  input               timerInterrupt,
  input               externalInterrupt,
  input               softwareInterrupt,
  input               debug_bus_cmd_valid,
  output reg          debug_bus_cmd_ready,
  input               debug_bus_cmd_payload_wr,
  input      [7:0]    debug_bus_cmd_payload_address,
  input      [31:0]   debug_bus_cmd_payload_data,
  output reg [31:0]   debug_bus_rsp_data,
  output              debug_resetOut,
  output              iBus_cmd_valid,
  input               iBus_cmd_ready,
  output reg [31:0]   iBus_cmd_payload_address,
  output     [2:0]    iBus_cmd_payload_size,
  input               iBus_rsp_valid,
  input      [31:0]   iBus_rsp_payload_data,
  input               iBus_rsp_payload_error,
  input               io_axiClk,
  input               resetCtrl_axiReset,
  input               resetCtrl_systemReset
);
  wire                IBusCachedPlugin_cache_io_flush;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_isValid;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_isValid;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_isStuck;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_isRemoved;
  wire                IBusCachedPlugin_cache_io_cpu_decode_isValid;
  wire                IBusCachedPlugin_cache_io_cpu_decode_isStuck;
  wire                IBusCachedPlugin_cache_io_cpu_decode_isUser;
  reg                 IBusCachedPlugin_cache_io_cpu_fill_valid;
  wire                dataCache_1_io_cpu_execute_isValid;
  wire       [31:0]   dataCache_1_io_cpu_execute_address;
  wire                dataCache_1_io_cpu_memory_isValid;
  wire       [31:0]   dataCache_1_io_cpu_memory_address;
  reg                 dataCache_1_io_cpu_memory_mmuRsp_isIoAccess;
  reg                 dataCache_1_io_cpu_writeBack_isValid;
  wire                dataCache_1_io_cpu_writeBack_isUser;
  wire       [31:0]   dataCache_1_io_cpu_writeBack_storeData;
  wire       [31:0]   dataCache_1_io_cpu_writeBack_address;
  wire                dataCache_1_io_cpu_writeBack_fence_SW;
  wire                dataCache_1_io_cpu_writeBack_fence_SR;
  wire                dataCache_1_io_cpu_writeBack_fence_SO;
  wire                dataCache_1_io_cpu_writeBack_fence_SI;
  wire                dataCache_1_io_cpu_writeBack_fence_PW;
  wire                dataCache_1_io_cpu_writeBack_fence_PR;
  wire                dataCache_1_io_cpu_writeBack_fence_PO;
  wire                dataCache_1_io_cpu_writeBack_fence_PI;
  wire       [3:0]    dataCache_1_io_cpu_writeBack_fence_FM;
  wire                dataCache_1_io_cpu_flush_valid;
  reg        [31:0]   _zz_RegFilePlugin_regFile_port0;
  reg        [31:0]   _zz_RegFilePlugin_regFile_port1;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_haltIt;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_data;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress;
  wire                IBusCachedPlugin_cache_io_cpu_decode_error;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuException;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_data;
  wire                IBusCachedPlugin_cache_io_cpu_decode_cacheMiss;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_physicalAddress;
  wire                IBusCachedPlugin_cache_io_mem_cmd_valid;
  wire       [31:0]   IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  wire       [2:0]    IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  wire                dataCache_1_io_cpu_execute_haltIt;
  wire                dataCache_1_io_cpu_execute_refilling;
  wire                dataCache_1_io_cpu_memory_isWrite;
  wire                dataCache_1_io_cpu_writeBack_haltIt;
  wire       [31:0]   dataCache_1_io_cpu_writeBack_data;
  wire                dataCache_1_io_cpu_writeBack_mmuException;
  wire                dataCache_1_io_cpu_writeBack_unalignedAccess;
  wire                dataCache_1_io_cpu_writeBack_accessError;
  wire                dataCache_1_io_cpu_writeBack_isWrite;
  wire                dataCache_1_io_cpu_writeBack_keepMemRspData;
  wire                dataCache_1_io_cpu_writeBack_exclusiveOk;
  wire                dataCache_1_io_cpu_flush_ready;
  wire                dataCache_1_io_cpu_redo;
  wire                dataCache_1_io_mem_cmd_valid;
  wire                dataCache_1_io_mem_cmd_payload_wr;
  wire                dataCache_1_io_mem_cmd_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_payload_mask;
  wire       [2:0]    dataCache_1_io_mem_cmd_payload_size;
  wire                dataCache_1_io_mem_cmd_payload_last;
  wire       [51:0]   _zz_memory_MUL_LOW;
  wire       [51:0]   _zz_memory_MUL_LOW_1;
  wire       [51:0]   _zz_memory_MUL_LOW_2;
  wire       [51:0]   _zz_memory_MUL_LOW_3;
  wire       [32:0]   _zz_memory_MUL_LOW_4;
  wire       [51:0]   _zz_memory_MUL_LOW_5;
  wire       [49:0]   _zz_memory_MUL_LOW_6;
  wire       [51:0]   _zz_memory_MUL_LOW_7;
  wire       [49:0]   _zz_memory_MUL_LOW_8;
  wire       [31:0]   _zz_execute_SHIFT_RIGHT;
  wire       [32:0]   _zz_execute_SHIFT_RIGHT_1;
  wire       [32:0]   _zz_execute_SHIFT_RIGHT_2;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_1;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_2;
  wire                _zz_decode_LEGAL_INSTRUCTION_3;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_4;
  wire       [12:0]   _zz_decode_LEGAL_INSTRUCTION_5;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_6;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_7;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_8;
  wire                _zz_decode_LEGAL_INSTRUCTION_9;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_10;
  wire       [6:0]    _zz_decode_LEGAL_INSTRUCTION_11;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_12;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_13;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_14;
  wire                _zz_decode_LEGAL_INSTRUCTION_15;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_16;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_17;
  wire       [3:0]    _zz__zz_IBusCachedPlugin_jump_pcLoad_payload_1;
  reg        [31:0]   _zz_IBusCachedPlugin_jump_pcLoad_payload_5;
  wire       [1:0]    _zz_IBusCachedPlugin_jump_pcLoad_payload_6;
  wire       [31:0]   _zz_IBusCachedPlugin_fetchPc_pc;
  wire       [2:0]    _zz_IBusCachedPlugin_fetchPc_pc_1;
  wire       [11:0]   _zz__zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  wire       [31:0]   _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_2;
  wire       [19:0]   _zz__zz_2;
  wire       [11:0]   _zz__zz_4;
  wire       [31:0]   _zz__zz_6;
  wire       [31:0]   _zz__zz_6_1;
  wire       [19:0]   _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload;
  wire       [11:0]   _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
  wire                _zz_IBusCachedPlugin_predictionJumpInterface_payload_4;
  wire                _zz_IBusCachedPlugin_predictionJumpInterface_payload_5;
  wire                _zz_IBusCachedPlugin_predictionJumpInterface_payload_6;
  wire       [2:0]    _zz_DBusCachedPlugin_exceptionBus_payload_code;
  wire       [2:0]    _zz_DBusCachedPlugin_exceptionBus_payload_code_1;
  reg        [7:0]    _zz_writeBack_DBusCachedPlugin_rspShifted;
  wire       [1:0]    _zz_writeBack_DBusCachedPlugin_rspShifted_1;
  reg        [7:0]    _zz_writeBack_DBusCachedPlugin_rspShifted_2;
  wire       [0:0]    _zz_writeBack_DBusCachedPlugin_rspShifted_3;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_1;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_2;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_3;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_4;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_5;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_6;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_7;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_8;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_9;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_10;
  wire                _zz__zz_decode_ENV_CTRL_2_11;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_12;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_13;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_14;
  wire       [25:0]   _zz__zz_decode_ENV_CTRL_2_15;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_16;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_17;
  wire                _zz__zz_decode_ENV_CTRL_2_18;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_19;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_20;
  wire       [22:0]   _zz__zz_decode_ENV_CTRL_2_21;
  wire                _zz__zz_decode_ENV_CTRL_2_22;
  wire                _zz__zz_decode_ENV_CTRL_2_23;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_24;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_25;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_26;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_27;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_28;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_29;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_30;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_31;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_32;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_33;
  wire                _zz__zz_decode_ENV_CTRL_2_34;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_35;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_36;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_37;
  wire                _zz__zz_decode_ENV_CTRL_2_38;
  wire       [17:0]   _zz__zz_decode_ENV_CTRL_2_39;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_40;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_41;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_42;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_43;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_44;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_45;
  wire                _zz__zz_decode_ENV_CTRL_2_46;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_47;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_48;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_49;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_50;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_51;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_52;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_53;
  wire       [14:0]   _zz__zz_decode_ENV_CTRL_2_54;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_55;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_56;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_57;
  wire                _zz__zz_decode_ENV_CTRL_2_58;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_59;
  wire                _zz__zz_decode_ENV_CTRL_2_60;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_61;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_62;
  wire                _zz__zz_decode_ENV_CTRL_2_63;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_64;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_65;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_66;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_67;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_68;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_69;
  wire       [3:0]    _zz__zz_decode_ENV_CTRL_2_70;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_71;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_72;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_73;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_74;
  wire                _zz__zz_decode_ENV_CTRL_2_75;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_76;
  wire                _zz__zz_decode_ENV_CTRL_2_77;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_78;
  wire       [11:0]   _zz__zz_decode_ENV_CTRL_2_79;
  wire       [4:0]    _zz__zz_decode_ENV_CTRL_2_80;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_81;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_82;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_83;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_84;
  wire                _zz__zz_decode_ENV_CTRL_2_85;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_86;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_87;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_88;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_89;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_90;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_91;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_92;
  wire       [4:0]    _zz__zz_decode_ENV_CTRL_2_93;
  wire                _zz__zz_decode_ENV_CTRL_2_94;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_95;
  wire       [4:0]    _zz__zz_decode_ENV_CTRL_2_96;
  wire                _zz__zz_decode_ENV_CTRL_2_97;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_98;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_99;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_100;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_101;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_102;
  wire                _zz__zz_decode_ENV_CTRL_2_103;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_104;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_105;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_106;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_107;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_108;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_109;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_110;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_111;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_112;
  wire                _zz__zz_decode_ENV_CTRL_2_113;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_114;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_115;
  wire       [8:0]    _zz__zz_decode_ENV_CTRL_2_116;
  wire                _zz__zz_decode_ENV_CTRL_2_117;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_118;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_119;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_120;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_121;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_122;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_123;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_124;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_125;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_126;
  wire       [6:0]    _zz__zz_decode_ENV_CTRL_2_127;
  wire                _zz__zz_decode_ENV_CTRL_2_128;
  wire                _zz__zz_decode_ENV_CTRL_2_129;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_130;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_131;
  wire       [3:0]    _zz__zz_decode_ENV_CTRL_2_132;
  wire                _zz__zz_decode_ENV_CTRL_2_133;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_134;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_135;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_136;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_137;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_138;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_139;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_140;
  wire       [3:0]    _zz__zz_decode_ENV_CTRL_2_141;
  wire       [4:0]    _zz__zz_decode_ENV_CTRL_2_142;
  wire                _zz__zz_decode_ENV_CTRL_2_143;
  wire                _zz__zz_decode_ENV_CTRL_2_144;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_145;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_146;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_147;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_148;
  wire                _zz__zz_decode_ENV_CTRL_2_149;
  wire                _zz__zz_decode_ENV_CTRL_2_150;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_151;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_152;
  wire                _zz__zz_decode_ENV_CTRL_2_153;
  wire                _zz__zz_decode_ENV_CTRL_2_154;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_155;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_156;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_157;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_158;
  wire                _zz__zz_decode_ENV_CTRL_2_159;
  wire                _zz_RegFilePlugin_regFile_port;
  wire                _zz_decode_RegFilePlugin_rs1Data;
  wire                _zz_RegFilePlugin_regFile_port_1;
  wire                _zz_decode_RegFilePlugin_rs2Data;
  wire       [0:0]    _zz__zz_execute_REGFILE_WRITE_DATA;
  wire       [2:0]    _zz__zz_execute_SRC1;
  wire       [4:0]    _zz__zz_execute_SRC1_1;
  wire       [11:0]   _zz__zz_execute_SRC2_3;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_1;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_2;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_3;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_4;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_5;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_6;
  wire       [65:0]   _zz_writeBack_MulPlugin_result;
  wire       [65:0]   _zz_writeBack_MulPlugin_result_1;
  wire       [31:0]   _zz__zz_decode_RS2_2;
  wire       [31:0]   _zz__zz_decode_RS2_2_1;
  wire       [5:0]    _zz_memory_DivPlugin_div_counter_valueNext;
  wire       [0:0]    _zz_memory_DivPlugin_div_counter_valueNext_1;
  wire       [32:0]   _zz_memory_DivPlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   _zz_memory_DivPlugin_div_stage_0_outRemainder;
  wire       [31:0]   _zz_memory_DivPlugin_div_stage_0_outRemainder_1;
  wire       [32:0]   _zz_memory_DivPlugin_div_stage_0_outNumerator;
  wire       [32:0]   _zz_memory_DivPlugin_div_result_1;
  wire       [32:0]   _zz_memory_DivPlugin_div_result_2;
  wire       [32:0]   _zz_memory_DivPlugin_div_result_3;
  wire       [32:0]   _zz_memory_DivPlugin_div_result_4;
  wire       [0:0]    _zz_memory_DivPlugin_div_result_5;
  wire       [32:0]   _zz_memory_DivPlugin_rs1_2;
  wire       [0:0]    _zz_memory_DivPlugin_rs1_3;
  wire       [31:0]   _zz_memory_DivPlugin_rs2_1;
  wire       [0:0]    _zz_memory_DivPlugin_rs2_2;
  wire       [19:0]   _zz__zz_execute_BranchPlugin_missAlignedTarget_2;
  wire       [11:0]   _zz__zz_execute_BranchPlugin_missAlignedTarget_4;
  wire       [31:0]   _zz__zz_execute_BranchPlugin_missAlignedTarget_6;
  wire       [31:0]   _zz__zz_execute_BranchPlugin_missAlignedTarget_6_1;
  wire       [31:0]   _zz__zz_execute_BranchPlugin_missAlignedTarget_6_2;
  wire       [19:0]   _zz__zz_execute_BranchPlugin_branch_src2_2;
  wire       [11:0]   _zz__zz_execute_BranchPlugin_branch_src2_4;
  wire                _zz_execute_BranchPlugin_branch_src2_6;
  wire                _zz_execute_BranchPlugin_branch_src2_7;
  wire                _zz_execute_BranchPlugin_branch_src2_8;
  wire       [2:0]    _zz_execute_BranchPlugin_branch_src2_9;
  wire       [1:0]    _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1;
  wire       [1:0]    _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1_1;
  wire                _zz_when;
  wire       [51:0]   memory_MUL_LOW;
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_BRANCH_DO;
  wire       [33:0]   memory_MUL_HH;
  wire       [33:0]   execute_MUL_HH;
  wire       [33:0]   execute_MUL_HL;
  wire       [33:0]   execute_MUL_LH;
  wire       [31:0]   execute_MUL_LL;
  wire       [31:0]   execute_SHIFT_RIGHT;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       [31:0]   memory_MEMORY_STORE_DATA_RF;
  wire       [31:0]   execute_MEMORY_STORE_DATA_RF;
  wire                decode_DO_EBREAK;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_CSR_WRITE_OPCODE;
  wire                decode_PREDICTION_HAD_BRANCHED2;
  wire                decode_SRC2_FORCE_ZERO;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_memory_to_writeBack_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_memory_to_writeBack_ENV_CTRL_1;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_execute_to_memory_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_execute_to_memory_ENV_CTRL_1;
  wire       `EnvCtrlEnum_binary_sequential_type decode_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_decode_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_decode_to_execute_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_decode_to_execute_ENV_CTRL_1;
  wire                decode_IS_CSR;
  wire       `BranchCtrlEnum_binary_sequential_type _zz_decode_to_execute_BRANCH_CTRL;
  wire       `BranchCtrlEnum_binary_sequential_type _zz_decode_to_execute_BRANCH_CTRL_1;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_IS_RS1_SIGNED;
  wire                decode_IS_DIV;
  wire                memory_IS_MUL;
  wire                execute_IS_MUL;
  wire                decode_IS_MUL;
  wire       `ShiftCtrlEnum_binary_sequential_type _zz_execute_to_memory_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_binary_sequential_type _zz_execute_to_memory_SHIFT_CTRL_1;
  wire       `ShiftCtrlEnum_binary_sequential_type decode_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_binary_sequential_type _zz_decode_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_binary_sequential_type _zz_decode_to_execute_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_binary_sequential_type _zz_decode_to_execute_SHIFT_CTRL_1;
  wire       `AluBitwiseCtrlEnum_binary_sequential_type decode_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_binary_sequential_type _zz_decode_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_binary_sequential_type _zz_decode_to_execute_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_binary_sequential_type _zz_decode_to_execute_ALU_BITWISE_CTRL_1;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                decode_MEMORY_MANAGMENT;
  wire                memory_MEMORY_WR;
  wire                decode_MEMORY_WR;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       `Src2CtrlEnum_binary_sequential_type decode_SRC2_CTRL;
  wire       `Src2CtrlEnum_binary_sequential_type _zz_decode_SRC2_CTRL;
  wire       `Src2CtrlEnum_binary_sequential_type _zz_decode_to_execute_SRC2_CTRL;
  wire       `Src2CtrlEnum_binary_sequential_type _zz_decode_to_execute_SRC2_CTRL_1;
  wire       `AluCtrlEnum_binary_sequential_type decode_ALU_CTRL;
  wire       `AluCtrlEnum_binary_sequential_type _zz_decode_ALU_CTRL;
  wire       `AluCtrlEnum_binary_sequential_type _zz_decode_to_execute_ALU_CTRL;
  wire       `AluCtrlEnum_binary_sequential_type _zz_decode_to_execute_ALU_CTRL_1;
  wire       `Src1CtrlEnum_binary_sequential_type decode_SRC1_CTRL;
  wire       `Src1CtrlEnum_binary_sequential_type _zz_decode_SRC1_CTRL;
  wire       `Src1CtrlEnum_binary_sequential_type _zz_decode_to_execute_SRC1_CTRL;
  wire       `Src1CtrlEnum_binary_sequential_type _zz_decode_to_execute_SRC1_CTRL_1;
  wire                decode_MEMORY_FORCE_CONSTISTENCY;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [31:0]   memory_PC;
  wire                execute_DO_EBREAK;
  wire                decode_IS_EBREAK;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       `EnvCtrlEnum_binary_sequential_type memory_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_memory_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type execute_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_execute_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type writeBack_ENV_CTRL;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_writeBack_ENV_CTRL;
  wire       [31:0]   memory_BRANCH_CALC;
  wire                memory_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire                execute_PREDICTION_HAD_BRANCHED2;
  wire                execute_BRANCH_COND_RESULT;
  wire       `BranchCtrlEnum_binary_sequential_type execute_BRANCH_CTRL;
  wire       `BranchCtrlEnum_binary_sequential_type _zz_execute_BRANCH_CTRL;
  wire                decode_RS2_USE;
  wire                decode_RS1_USE;
  reg        [31:0]   _zz_decode_RS2;
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  wire                memory_REGFILE_WRITE_VALID;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  wire                execute_IS_RS1_SIGNED;
  wire                execute_IS_DIV;
  wire                execute_IS_RS2_SIGNED;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_IS_DIV;
  wire                writeBack_IS_MUL;
  wire       [33:0]   writeBack_MUL_HH;
  wire       [51:0]   writeBack_MUL_LOW;
  wire       [33:0]   memory_MUL_HL;
  wire       [33:0]   memory_MUL_LH;
  wire       [31:0]   memory_MUL_LL;
  (* keep , syn_keep *) wire       [31:0]   execute_RS1 /* synthesis syn_keep = 1 */ ;
  wire       [31:0]   memory_SHIFT_RIGHT;
  reg        [31:0]   _zz_decode_RS2_1;
  wire       `ShiftCtrlEnum_binary_sequential_type memory_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_binary_sequential_type _zz_memory_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_binary_sequential_type execute_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_binary_sequential_type _zz_execute_SHIFT_CTRL;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_execute_SRC2;
  wire       `Src2CtrlEnum_binary_sequential_type execute_SRC2_CTRL;
  wire       `Src2CtrlEnum_binary_sequential_type _zz_execute_SRC2_CTRL;
  wire       `Src1CtrlEnum_binary_sequential_type execute_SRC1_CTRL;
  wire       `Src1CtrlEnum_binary_sequential_type _zz_execute_SRC1_CTRL;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       `AluCtrlEnum_binary_sequential_type execute_ALU_CTRL;
  wire       `AluCtrlEnum_binary_sequential_type _zz_execute_ALU_CTRL;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       `AluBitwiseCtrlEnum_binary_sequential_type execute_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_binary_sequential_type _zz_execute_ALU_BITWISE_CTRL;
  wire       [31:0]   _zz_lastStageRegFileWrite_payload_address;
  wire                _zz_lastStageRegFileWrite_valid;
  reg                 _zz_1;
  wire       [31:0]   decode_INSTRUCTION_ANTICIPATED;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_decode_ENV_CTRL_1;
  wire       `BranchCtrlEnum_binary_sequential_type _zz_decode_BRANCH_CTRL;
  wire       `ShiftCtrlEnum_binary_sequential_type _zz_decode_SHIFT_CTRL_1;
  wire       `AluBitwiseCtrlEnum_binary_sequential_type _zz_decode_ALU_BITWISE_CTRL_1;
  wire       `Src2CtrlEnum_binary_sequential_type _zz_decode_SRC2_CTRL_1;
  wire       `AluCtrlEnum_binary_sequential_type _zz_decode_ALU_CTRL_1;
  wire       `Src1CtrlEnum_binary_sequential_type _zz_decode_SRC1_CTRL_1;
  reg        [31:0]   _zz_decode_RS2_2;
  wire                writeBack_MEMORY_WR;
  wire       [31:0]   writeBack_MEMORY_STORE_DATA_RF;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire                writeBack_MEMORY_ENABLE;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire                memory_MEMORY_ENABLE;
  wire                execute_MEMORY_FORCE_CONSTISTENCY;
  wire                execute_MEMORY_MANAGMENT;
  (* keep , syn_keep *) wire       [31:0]   execute_RS2 /* synthesis syn_keep = 1 */ ;
  wire                execute_MEMORY_WR;
  wire       [31:0]   execute_SRC_ADD;
  wire                execute_MEMORY_ENABLE;
  wire       [31:0]   execute_INSTRUCTION;
  wire                decode_MEMORY_ENABLE;
  wire                decode_FLUSH_ALL;
  reg                 IBusCachedPlugin_rsp_issueDetected_4;
  reg                 IBusCachedPlugin_rsp_issueDetected_3;
  reg                 IBusCachedPlugin_rsp_issueDetected_2;
  reg                 IBusCachedPlugin_rsp_issueDetected_1;
  wire       `BranchCtrlEnum_binary_sequential_type decode_BRANCH_CTRL;
  wire       `BranchCtrlEnum_binary_sequential_type _zz_decode_BRANCH_CTRL_1;
  wire       [31:0]   decode_INSTRUCTION;
  reg        [31:0]   _zz_memory_to_writeBack_FORMAL_PC_NEXT;
  reg        [31:0]   _zz_decode_to_execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_PC;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  reg                 decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  reg                 decode_arbitration_flushNext;
  reg                 decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  reg                 execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  reg                 execute_arbitration_flushIt;
  reg                 execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  reg                 writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  reg                 writeBack_arbitration_flushIt;
  reg                 writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 IBusCachedPlugin_fetcherHalt;
  reg                 IBusCachedPlugin_incomingInstruction;
  wire                IBusCachedPlugin_predictionJumpInterface_valid;
  (* keep , syn_keep *) wire       [31:0]   IBusCachedPlugin_predictionJumpInterface_payload /* synthesis syn_keep = 1 */ ;
  reg                 IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  wire                IBusCachedPlugin_decodePrediction_rsp_wasWrong;
  wire                IBusCachedPlugin_pcValids_0;
  wire                IBusCachedPlugin_pcValids_1;
  wire                IBusCachedPlugin_pcValids_2;
  wire                IBusCachedPlugin_pcValids_3;
  reg                 IBusCachedPlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusCachedPlugin_decodeExceptionPort_payload_code;
  wire       [31:0]   IBusCachedPlugin_decodeExceptionPort_payload_badAddr;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  wire                IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                IBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                IBusCachedPlugin_mmuBus_rsp_isPaging;
  wire                IBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                IBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                IBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                IBusCachedPlugin_mmuBus_rsp_exception;
  wire                IBusCachedPlugin_mmuBus_rsp_refilling;
  wire                IBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                IBusCachedPlugin_mmuBus_end;
  wire                IBusCachedPlugin_mmuBus_busy;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   DBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  wire                DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                DBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                DBusCachedPlugin_mmuBus_rsp_isPaging;
  wire                DBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                DBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                DBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                DBusCachedPlugin_mmuBus_rsp_exception;
  wire                DBusCachedPlugin_mmuBus_rsp_refilling;
  wire                DBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                DBusCachedPlugin_mmuBus_end;
  wire                DBusCachedPlugin_mmuBus_busy;
  reg                 DBusCachedPlugin_redoBranch_valid;
  wire       [31:0]   DBusCachedPlugin_redoBranch_payload;
  reg                 DBusCachedPlugin_exceptionBus_valid;
  reg        [3:0]    DBusCachedPlugin_exceptionBus_payload_code;
  wire       [31:0]   DBusCachedPlugin_exceptionBus_payload_badAddr;
  reg                 _zz_when_DBusCachedPlugin_l386;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  wire                BranchPlugin_branchExceptionPort_valid;
  wire       [3:0]    BranchPlugin_branchExceptionPort_payload_code;
  wire       [31:0]   BranchPlugin_branchExceptionPort_payload_badAddr;
  wire       [31:0]   CsrPlugin_csrMapping_readDataSignal;
  wire       [31:0]   CsrPlugin_csrMapping_readDataInit;
  wire       [31:0]   CsrPlugin_csrMapping_writeDataSignal;
  wire                CsrPlugin_csrMapping_allowCsrSignal;
  wire                CsrPlugin_csrMapping_hazardFree;
  wire                CsrPlugin_inWfi /* verilator public */ ;
  reg                 CsrPlugin_thirdPartyWake;
  reg                 CsrPlugin_jumpInterface_valid;
  reg        [31:0]   CsrPlugin_jumpInterface_payload;
  wire                CsrPlugin_exceptionPendings_0;
  wire                CsrPlugin_exceptionPendings_1;
  wire                CsrPlugin_exceptionPendings_2;
  wire                CsrPlugin_exceptionPendings_3;
  wire                contextSwitching;
  reg        [1:0]    CsrPlugin_privilege;
  reg                 CsrPlugin_forceMachineWire;
  reg                 CsrPlugin_allowInterrupts;
  reg                 CsrPlugin_allowException;
  reg                 CsrPlugin_allowEbreakException;
  reg                 IBusCachedPlugin_injectionPort_valid;
  reg                 IBusCachedPlugin_injectionPort_ready;
  wire       [31:0]   IBusCachedPlugin_injectionPort_payload;
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [3:0]    _zz_IBusCachedPlugin_jump_pcLoad_payload;
  wire       [3:0]    _zz_IBusCachedPlugin_jump_pcLoad_payload_1;
  wire                _zz_IBusCachedPlugin_jump_pcLoad_payload_2;
  wire                _zz_IBusCachedPlugin_jump_pcLoad_payload_3;
  wire                _zz_IBusCachedPlugin_jump_pcLoad_payload_4;
  wire                IBusCachedPlugin_fetchPc_output_valid;
  wire                IBusCachedPlugin_fetchPc_output_ready;
  wire       [31:0]   IBusCachedPlugin_fetchPc_output_payload;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusCachedPlugin_fetchPc_correction;
  reg                 IBusCachedPlugin_fetchPc_correctionReg;
  wire                IBusCachedPlugin_fetchPc_output_fire;
  wire                IBusCachedPlugin_fetchPc_corrected;
  reg                 IBusCachedPlugin_fetchPc_pcRegPropagate;
  reg                 IBusCachedPlugin_fetchPc_booted;
  reg                 IBusCachedPlugin_fetchPc_inc;
  wire                when_Fetcher_l131;
  wire                IBusCachedPlugin_fetchPc_output_fire_1;
  wire                when_Fetcher_l131_1;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pc;
  wire                IBusCachedPlugin_fetchPc_redo_valid;
  wire       [31:0]   IBusCachedPlugin_fetchPc_redo_payload;
  reg                 IBusCachedPlugin_fetchPc_flushed;
  wire                when_Fetcher_l158;
  reg                 IBusCachedPlugin_iBusRsp_redoFetch;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_2_halt;
  wire                _zz_IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire                _zz_IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire                _zz_IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire                _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_1;
  reg                 _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_payload;
  reg                 _zz_IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_valid;
  reg        [31:0]   _zz_IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_payload;
  reg                 IBusCachedPlugin_iBusRsp_readyForError;
  wire                IBusCachedPlugin_iBusRsp_output_valid;
  wire                IBusCachedPlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_pc;
  wire                IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusCachedPlugin_iBusRsp_output_payload_isRvc;
  wire                when_Fetcher_l240;
  wire                when_Fetcher_l320;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_0;
  wire                when_Fetcher_l329;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_1;
  wire                when_Fetcher_l329_1;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_2;
  wire                when_Fetcher_l329_2;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_3;
  wire                when_Fetcher_l329_3;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_4;
  wire                when_Fetcher_l329_4;
  wire                _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  reg        [18:0]   _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1;
  wire                _zz_2;
  reg        [10:0]   _zz_3;
  wire                _zz_4;
  reg        [18:0]   _zz_5;
  reg                 _zz_6;
  wire                _zz_IBusCachedPlugin_predictionJumpInterface_payload;
  reg        [10:0]   _zz_IBusCachedPlugin_predictionJumpInterface_payload_1;
  wire                _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
  reg        [18:0]   _zz_IBusCachedPlugin_predictionJumpInterface_payload_3;
  wire       [31:0]   _zz_IBusCachedPlugin_rspCounter;
  reg        [31:0]   IBusCachedPlugin_rspCounter;
  wire                IBusCachedPlugin_s0_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s1_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s2_tightlyCoupledHit;
  wire                IBusCachedPlugin_rsp_iBusRspOutputHalt;
  wire                IBusCachedPlugin_rsp_issueDetected;
  reg                 IBusCachedPlugin_rsp_redoFetch;
  wire                when_IBusCachedPlugin_l239;
  wire                when_IBusCachedPlugin_l244;
  wire                when_IBusCachedPlugin_l250;
  wire                when_IBusCachedPlugin_l256;
  wire                when_IBusCachedPlugin_l267;
  wire       [31:0]   _zz_DBusCachedPlugin_rspCounter;
  reg        [31:0]   DBusCachedPlugin_rspCounter;
  wire                when_DBusCachedPlugin_l303;
  wire       [1:0]    execute_DBusCachedPlugin_size;
  reg        [31:0]   _zz_execute_MEMORY_STORE_DATA_RF;
  wire                dataCache_1_io_cpu_flush_isStall;
  wire                when_DBusCachedPlugin_l343;
  wire                when_DBusCachedPlugin_l359;
  wire                when_DBusCachedPlugin_l386;
  wire                when_DBusCachedPlugin_l438;
  wire                when_DBusCachedPlugin_l458;
  wire       [7:0]    writeBack_DBusCachedPlugin_rspSplits_0;
  wire       [7:0]    writeBack_DBusCachedPlugin_rspSplits_1;
  wire       [7:0]    writeBack_DBusCachedPlugin_rspSplits_2;
  wire       [7:0]    writeBack_DBusCachedPlugin_rspSplits_3;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspShifted;
  wire       [31:0]   writeBack_DBusCachedPlugin_rspRf;
  wire       [1:0]    switch_Misc_l200;
  wire                _zz_writeBack_DBusCachedPlugin_rspFormated;
  reg        [31:0]   _zz_writeBack_DBusCachedPlugin_rspFormated_1;
  wire                _zz_writeBack_DBusCachedPlugin_rspFormated_2;
  reg        [31:0]   _zz_writeBack_DBusCachedPlugin_rspFormated_3;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspFormated;
  wire                when_DBusCachedPlugin_l484;
  wire       [31:0]   _zz_decode_ENV_CTRL_2;
  wire                _zz_decode_ENV_CTRL_3;
  wire                _zz_decode_ENV_CTRL_4;
  wire                _zz_decode_ENV_CTRL_5;
  wire                _zz_decode_ENV_CTRL_6;
  wire       `Src1CtrlEnum_binary_sequential_type _zz_decode_SRC1_CTRL_2;
  wire       `AluCtrlEnum_binary_sequential_type _zz_decode_ALU_CTRL_2;
  wire       `Src2CtrlEnum_binary_sequential_type _zz_decode_SRC2_CTRL_2;
  wire       `AluBitwiseCtrlEnum_binary_sequential_type _zz_decode_ALU_BITWISE_CTRL_2;
  wire       `ShiftCtrlEnum_binary_sequential_type _zz_decode_SHIFT_CTRL_2;
  wire       `BranchCtrlEnum_binary_sequential_type _zz_decode_BRANCH_CTRL_2;
  wire       `EnvCtrlEnum_binary_sequential_type _zz_decode_ENV_CTRL_7;
  wire                when_RegFilePlugin_l63;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  reg        [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  reg        [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  reg                 _zz_7;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_execute_REGFILE_WRITE_DATA;
  reg        [31:0]   _zz_execute_SRC1;
  wire                _zz_execute_SRC2_1;
  reg        [19:0]   _zz_execute_SRC2_2;
  wire                _zz_execute_SRC2_3;
  reg        [19:0]   _zz_execute_SRC2_4;
  reg        [31:0]   _zz_execute_SRC2_5;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_execute_FullBarrelShifterPlugin_reversed;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_decode_RS2_3;
  reg                 execute_MulPlugin_aSigned;
  reg                 execute_MulPlugin_bSigned;
  wire       [31:0]   execute_MulPlugin_a;
  wire       [31:0]   execute_MulPlugin_b;
  wire       [1:0]    switch_MulPlugin_l87;
  wire       [15:0]   execute_MulPlugin_aULow;
  wire       [15:0]   execute_MulPlugin_bULow;
  wire       [16:0]   execute_MulPlugin_aSLow;
  wire       [16:0]   execute_MulPlugin_bSLow;
  wire       [16:0]   execute_MulPlugin_aHigh;
  wire       [16:0]   execute_MulPlugin_bHigh;
  wire       [65:0]   writeBack_MulPlugin_result;
  wire                when_MulPlugin_l147;
  wire       [1:0]    switch_MulPlugin_l148;
  reg        [32:0]   memory_DivPlugin_rs1;
  reg        [31:0]   memory_DivPlugin_rs2;
  reg        [64:0]   memory_DivPlugin_accumulator;
  wire                memory_DivPlugin_frontendOk;
  reg                 memory_DivPlugin_div_needRevert;
  reg                 memory_DivPlugin_div_counter_willIncrement;
  reg                 memory_DivPlugin_div_counter_willClear;
  reg        [5:0]    memory_DivPlugin_div_counter_valueNext;
  reg        [5:0]    memory_DivPlugin_div_counter_value;
  wire                memory_DivPlugin_div_counter_willOverflowIfInc;
  wire                memory_DivPlugin_div_counter_willOverflow;
  reg                 memory_DivPlugin_div_done;
  wire                when_MulDivIterativePlugin_l126;
  wire                when_MulDivIterativePlugin_l126_1;
  reg        [31:0]   memory_DivPlugin_div_result;
  wire                when_MulDivIterativePlugin_l128;
  wire                when_MulDivIterativePlugin_l129;
  wire                when_MulDivIterativePlugin_l132;
  wire       [31:0]   _zz_memory_DivPlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_DivPlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_DivPlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_DivPlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_DivPlugin_div_stage_0_outNumerator;
  wire                when_MulDivIterativePlugin_l151;
  wire       [31:0]   _zz_memory_DivPlugin_div_result;
  wire                when_MulDivIterativePlugin_l162;
  wire                _zz_memory_DivPlugin_rs2;
  wire                _zz_memory_DivPlugin_rs1;
  reg        [32:0]   _zz_memory_DivPlugin_rs1_1;
  reg                 HazardSimplePlugin_src0Hazard;
  reg                 HazardSimplePlugin_src1Hazard;
  wire                HazardSimplePlugin_writeBackWrites_valid;
  wire       [4:0]    HazardSimplePlugin_writeBackWrites_payload_address;
  wire       [31:0]   HazardSimplePlugin_writeBackWrites_payload_data;
  reg                 HazardSimplePlugin_writeBackBuffer_valid;
  reg        [4:0]    HazardSimplePlugin_writeBackBuffer_payload_address;
  reg        [31:0]   HazardSimplePlugin_writeBackBuffer_payload_data;
  wire                HazardSimplePlugin_addr0Match;
  wire                HazardSimplePlugin_addr1Match;
  wire                when_HazardSimplePlugin_l47;
  wire                when_HazardSimplePlugin_l48;
  wire                when_HazardSimplePlugin_l51;
  wire                when_HazardSimplePlugin_l45;
  wire                when_HazardSimplePlugin_l57;
  wire                when_HazardSimplePlugin_l58;
  wire                when_HazardSimplePlugin_l48_1;
  wire                when_HazardSimplePlugin_l51_1;
  wire                when_HazardSimplePlugin_l45_1;
  wire                when_HazardSimplePlugin_l57_1;
  wire                when_HazardSimplePlugin_l58_1;
  wire                when_HazardSimplePlugin_l48_2;
  wire                when_HazardSimplePlugin_l51_2;
  wire                when_HazardSimplePlugin_l45_2;
  wire                when_HazardSimplePlugin_l57_2;
  wire                when_HazardSimplePlugin_l58_2;
  wire                when_HazardSimplePlugin_l105;
  wire                when_HazardSimplePlugin_l108;
  wire                when_HazardSimplePlugin_l113;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    switch_Misc_l200_1;
  reg                 _zz_execute_BRANCH_COND_RESULT;
  reg                 _zz_execute_BRANCH_COND_RESULT_1;
  wire                _zz_execute_BranchPlugin_missAlignedTarget;
  reg        [19:0]   _zz_execute_BranchPlugin_missAlignedTarget_1;
  wire                _zz_execute_BranchPlugin_missAlignedTarget_2;
  reg        [10:0]   _zz_execute_BranchPlugin_missAlignedTarget_3;
  wire                _zz_execute_BranchPlugin_missAlignedTarget_4;
  reg        [18:0]   _zz_execute_BranchPlugin_missAlignedTarget_5;
  reg                 _zz_execute_BranchPlugin_missAlignedTarget_6;
  wire                execute_BranchPlugin_missAlignedTarget;
  reg        [31:0]   execute_BranchPlugin_branch_src1;
  reg        [31:0]   execute_BranchPlugin_branch_src2;
  wire                _zz_execute_BranchPlugin_branch_src2;
  reg        [19:0]   _zz_execute_BranchPlugin_branch_src2_1;
  wire                _zz_execute_BranchPlugin_branch_src2_2;
  reg        [10:0]   _zz_execute_BranchPlugin_branch_src2_3;
  wire                _zz_execute_BranchPlugin_branch_src2_4;
  reg        [18:0]   _zz_execute_BranchPlugin_branch_src2_5;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  wire       [1:0]    CsrPlugin_misa_base;
  wire       [25:0]   CsrPlugin_misa_extensions;
  wire       [1:0]    CsrPlugin_mtvec_mode;
  wire       [29:0]   CsrPlugin_mtvec_base;
  reg        [31:0]   CsrPlugin_mepc;
  reg                 CsrPlugin_mstatus_MIE;
  reg                 CsrPlugin_mstatus_MPIE;
  reg        [1:0]    CsrPlugin_mstatus_MPP;
  reg                 CsrPlugin_mip_MEIP;
  reg                 CsrPlugin_mip_MTIP;
  reg                 CsrPlugin_mip_MSIP;
  reg                 CsrPlugin_mie_MEIE;
  reg                 CsrPlugin_mie_MTIE;
  reg                 CsrPlugin_mie_MSIE;
  reg                 CsrPlugin_mcause_interrupt;
  reg        [3:0]    CsrPlugin_mcause_exceptionCode;
  reg        [31:0]   CsrPlugin_mtval;
  reg        [63:0]   CsrPlugin_mcycle = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg        [63:0]   CsrPlugin_minstret = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  wire                _zz_when_CsrPlugin_l952;
  wire                _zz_when_CsrPlugin_l952_1;
  wire                _zz_when_CsrPlugin_l952_2;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg        [3:0]    CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire       [1:0]    _zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  wire                _zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1;
  wire                when_CsrPlugin_l909;
  wire                when_CsrPlugin_l909_1;
  wire                when_CsrPlugin_l909_2;
  wire                when_CsrPlugin_l909_3;
  wire                when_CsrPlugin_l922;
  reg                 CsrPlugin_interrupt_valid;
  reg        [3:0]    CsrPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    CsrPlugin_interrupt_targetPrivilege;
  wire                when_CsrPlugin_l946;
  wire                when_CsrPlugin_l952;
  wire                when_CsrPlugin_l952_1;
  wire                when_CsrPlugin_l952_2;
  wire                CsrPlugin_exception;
  wire                CsrPlugin_lastStageWasWfi;
  reg                 CsrPlugin_pipelineLiberator_pcValids_0;
  reg                 CsrPlugin_pipelineLiberator_pcValids_1;
  reg                 CsrPlugin_pipelineLiberator_pcValids_2;
  wire                CsrPlugin_pipelineLiberator_active;
  wire                when_CsrPlugin_l980;
  wire                when_CsrPlugin_l980_1;
  wire                when_CsrPlugin_l980_2;
  wire                when_CsrPlugin_l985;
  reg                 CsrPlugin_pipelineLiberator_done;
  wire                when_CsrPlugin_l991;
  wire                CsrPlugin_interruptJump /* verilator public */ ;
  reg                 CsrPlugin_hadException /* verilator public */ ;
  reg        [1:0]    CsrPlugin_targetPrivilege;
  reg        [3:0]    CsrPlugin_trapCause;
  reg        [1:0]    CsrPlugin_xtvec_mode;
  reg        [29:0]   CsrPlugin_xtvec_base;
  wire                when_CsrPlugin_l1019;
  wire                when_CsrPlugin_l1064;
  wire       [1:0]    switch_CsrPlugin_l1068;
  reg                 execute_CsrPlugin_wfiWake;
  wire                when_CsrPlugin_l1116;
  wire                execute_CsrPlugin_blockedBySideEffects;
  reg                 execute_CsrPlugin_illegalAccess;
  reg                 execute_CsrPlugin_illegalInstruction;
  wire                when_CsrPlugin_l1136;
  wire                when_CsrPlugin_l1137;
  reg                 execute_CsrPlugin_writeInstruction;
  reg                 execute_CsrPlugin_readInstruction;
  wire                execute_CsrPlugin_writeEnable;
  wire                execute_CsrPlugin_readEnable;
  wire       [31:0]   execute_CsrPlugin_readToWriteData;
  wire                switch_Misc_l200_2;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_writeDataSignal;
  wire                when_CsrPlugin_l1176;
  wire                when_CsrPlugin_l1180;
  wire       [11:0]   execute_CsrPlugin_csrAddress;
  reg                 DebugPlugin_firstCycle;
  reg                 DebugPlugin_secondCycle;
  reg                 DebugPlugin_resetIt;
  reg                 DebugPlugin_haltIt;
  reg                 DebugPlugin_stepIt;
  reg                 DebugPlugin_isPipBusy;
  reg                 DebugPlugin_godmode;
  wire                when_DebugPlugin_l225;
  reg                 DebugPlugin_haltedByBreak;
  reg                 DebugPlugin_debugUsed /* verilator public */ ;
  reg                 DebugPlugin_disableEbreak;
  wire                DebugPlugin_allowEBreak;
  reg        [31:0]   DebugPlugin_busReadDataReg;
  reg                 _zz_when_DebugPlugin_l244;
  wire                when_DebugPlugin_l244;
  wire       [5:0]    switch_DebugPlugin_l256;
  wire                when_DebugPlugin_l260;
  wire                when_DebugPlugin_l260_1;
  wire                when_DebugPlugin_l261;
  wire                when_DebugPlugin_l261_1;
  wire                when_DebugPlugin_l262;
  wire                when_DebugPlugin_l263;
  wire                when_DebugPlugin_l264;
  wire                when_DebugPlugin_l264_1;
  wire                when_DebugPlugin_l284;
  wire                when_DebugPlugin_l287;
  wire                when_DebugPlugin_l300;
  reg                 DebugPlugin_resetIt_regNext;
  wire                when_DebugPlugin_l316;
  wire                when_Pipeline_l124;
  reg        [31:0]   decode_to_execute_PC;
  wire                when_Pipeline_l124_1;
  reg        [31:0]   execute_to_memory_PC;
  wire                when_Pipeline_l124_2;
  reg        [31:0]   memory_to_writeBack_PC;
  wire                when_Pipeline_l124_3;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  wire                when_Pipeline_l124_4;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  wire                when_Pipeline_l124_5;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  wire                when_Pipeline_l124_6;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_7;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_8;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_9;
  reg                 decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  wire                when_Pipeline_l124_10;
  reg        `Src1CtrlEnum_binary_sequential_type decode_to_execute_SRC1_CTRL;
  wire                when_Pipeline_l124_11;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  wire                when_Pipeline_l124_12;
  reg                 decode_to_execute_MEMORY_ENABLE;
  wire                when_Pipeline_l124_13;
  reg                 execute_to_memory_MEMORY_ENABLE;
  wire                when_Pipeline_l124_14;
  reg                 memory_to_writeBack_MEMORY_ENABLE;
  wire                when_Pipeline_l124_15;
  reg        `AluCtrlEnum_binary_sequential_type decode_to_execute_ALU_CTRL;
  wire                when_Pipeline_l124_16;
  reg        `Src2CtrlEnum_binary_sequential_type decode_to_execute_SRC2_CTRL;
  wire                when_Pipeline_l124_17;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_18;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_19;
  reg                 memory_to_writeBack_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_20;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  wire                when_Pipeline_l124_21;
  reg                 decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  wire                when_Pipeline_l124_22;
  reg                 execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  wire                when_Pipeline_l124_23;
  reg                 decode_to_execute_MEMORY_WR;
  wire                when_Pipeline_l124_24;
  reg                 execute_to_memory_MEMORY_WR;
  wire                when_Pipeline_l124_25;
  reg                 memory_to_writeBack_MEMORY_WR;
  wire                when_Pipeline_l124_26;
  reg                 decode_to_execute_MEMORY_MANAGMENT;
  wire                when_Pipeline_l124_27;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  wire                when_Pipeline_l124_28;
  reg        `AluBitwiseCtrlEnum_binary_sequential_type decode_to_execute_ALU_BITWISE_CTRL;
  wire                when_Pipeline_l124_29;
  reg        `ShiftCtrlEnum_binary_sequential_type decode_to_execute_SHIFT_CTRL;
  wire                when_Pipeline_l124_30;
  reg        `ShiftCtrlEnum_binary_sequential_type execute_to_memory_SHIFT_CTRL;
  wire                when_Pipeline_l124_31;
  reg                 decode_to_execute_IS_MUL;
  wire                when_Pipeline_l124_32;
  reg                 execute_to_memory_IS_MUL;
  wire                when_Pipeline_l124_33;
  reg                 memory_to_writeBack_IS_MUL;
  wire                when_Pipeline_l124_34;
  reg                 decode_to_execute_IS_DIV;
  wire                when_Pipeline_l124_35;
  reg                 execute_to_memory_IS_DIV;
  wire                when_Pipeline_l124_36;
  reg                 decode_to_execute_IS_RS1_SIGNED;
  wire                when_Pipeline_l124_37;
  reg                 decode_to_execute_IS_RS2_SIGNED;
  wire                when_Pipeline_l124_38;
  reg        `BranchCtrlEnum_binary_sequential_type decode_to_execute_BRANCH_CTRL;
  wire                when_Pipeline_l124_39;
  reg                 decode_to_execute_IS_CSR;
  wire                when_Pipeline_l124_40;
  reg        `EnvCtrlEnum_binary_sequential_type decode_to_execute_ENV_CTRL;
  wire                when_Pipeline_l124_41;
  reg        `EnvCtrlEnum_binary_sequential_type execute_to_memory_ENV_CTRL;
  wire                when_Pipeline_l124_42;
  reg        `EnvCtrlEnum_binary_sequential_type memory_to_writeBack_ENV_CTRL;
  wire                when_Pipeline_l124_43;
  reg        [31:0]   decode_to_execute_RS1;
  wire                when_Pipeline_l124_44;
  reg        [31:0]   decode_to_execute_RS2;
  wire                when_Pipeline_l124_45;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  wire                when_Pipeline_l124_46;
  reg                 decode_to_execute_PREDICTION_HAD_BRANCHED2;
  wire                when_Pipeline_l124_47;
  reg                 decode_to_execute_CSR_WRITE_OPCODE;
  wire                when_Pipeline_l124_48;
  reg                 decode_to_execute_CSR_READ_OPCODE;
  wire                when_Pipeline_l124_49;
  reg                 decode_to_execute_DO_EBREAK;
  wire                when_Pipeline_l124_50;
  reg        [31:0]   execute_to_memory_MEMORY_STORE_DATA_RF;
  wire                when_Pipeline_l124_51;
  reg        [31:0]   memory_to_writeBack_MEMORY_STORE_DATA_RF;
  wire                when_Pipeline_l124_52;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  wire                when_Pipeline_l124_53;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  wire                when_Pipeline_l124_54;
  reg        [31:0]   execute_to_memory_SHIFT_RIGHT;
  wire                when_Pipeline_l124_55;
  reg        [31:0]   execute_to_memory_MUL_LL;
  wire                when_Pipeline_l124_56;
  reg        [33:0]   execute_to_memory_MUL_LH;
  wire                when_Pipeline_l124_57;
  reg        [33:0]   execute_to_memory_MUL_HL;
  wire                when_Pipeline_l124_58;
  reg        [33:0]   execute_to_memory_MUL_HH;
  wire                when_Pipeline_l124_59;
  reg        [33:0]   memory_to_writeBack_MUL_HH;
  wire                when_Pipeline_l124_60;
  reg                 execute_to_memory_BRANCH_DO;
  wire                when_Pipeline_l124_61;
  reg        [31:0]   execute_to_memory_BRANCH_CALC;
  wire                when_Pipeline_l124_62;
  reg        [51:0]   memory_to_writeBack_MUL_LOW;
  wire                when_Pipeline_l151;
  wire                when_Pipeline_l154;
  wire                when_Pipeline_l151_1;
  wire                when_Pipeline_l154_1;
  wire                when_Pipeline_l151_2;
  wire                when_Pipeline_l154_2;
  reg        [2:0]    switch_Fetcher_l362;
  wire                when_Fetcher_l378;
  wire                when_CsrPlugin_l1264;
  reg                 execute_CsrPlugin_csr_768;
  wire                when_CsrPlugin_l1264_1;
  reg                 execute_CsrPlugin_csr_836;
  wire                when_CsrPlugin_l1264_2;
  reg                 execute_CsrPlugin_csr_772;
  wire                when_CsrPlugin_l1264_3;
  reg                 execute_CsrPlugin_csr_833;
  wire                when_CsrPlugin_l1264_4;
  reg                 execute_CsrPlugin_csr_834;
  wire                when_CsrPlugin_l1264_5;
  reg                 execute_CsrPlugin_csr_835;
  wire                when_CsrPlugin_l1264_6;
  reg                 execute_CsrPlugin_csr_2816;
  wire                when_CsrPlugin_l1264_7;
  reg                 execute_CsrPlugin_csr_2944;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_1;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_2;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_3;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_4;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_5;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_6;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_7;
  wire                when_CsrPlugin_l1297;
  wire                when_CsrPlugin_l1302;
  `ifndef SYNTHESIS
  reg [31:0] _zz_memory_to_writeBack_ENV_CTRL_string;
  reg [31:0] _zz_memory_to_writeBack_ENV_CTRL_1_string;
  reg [31:0] _zz_execute_to_memory_ENV_CTRL_string;
  reg [31:0] _zz_execute_to_memory_ENV_CTRL_1_string;
  reg [31:0] decode_ENV_CTRL_string;
  reg [31:0] _zz_decode_ENV_CTRL_string;
  reg [31:0] _zz_decode_to_execute_ENV_CTRL_string;
  reg [31:0] _zz_decode_to_execute_ENV_CTRL_1_string;
  reg [31:0] _zz_decode_to_execute_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_to_execute_BRANCH_CTRL_1_string;
  reg [71:0] _zz_execute_to_memory_SHIFT_CTRL_string;
  reg [71:0] _zz_execute_to_memory_SHIFT_CTRL_1_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_to_execute_SHIFT_CTRL_1_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_decode_SRC2_CTRL_string;
  reg [23:0] _zz_decode_to_execute_SRC2_CTRL_string;
  reg [23:0] _zz_decode_to_execute_SRC2_CTRL_1_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_decode_ALU_CTRL_string;
  reg [63:0] _zz_decode_to_execute_ALU_CTRL_string;
  reg [63:0] _zz_decode_to_execute_ALU_CTRL_1_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_decode_SRC1_CTRL_string;
  reg [95:0] _zz_decode_to_execute_SRC1_CTRL_string;
  reg [95:0] _zz_decode_to_execute_SRC1_CTRL_1_string;
  reg [31:0] memory_ENV_CTRL_string;
  reg [31:0] _zz_memory_ENV_CTRL_string;
  reg [31:0] execute_ENV_CTRL_string;
  reg [31:0] _zz_execute_ENV_CTRL_string;
  reg [31:0] writeBack_ENV_CTRL_string;
  reg [31:0] _zz_writeBack_ENV_CTRL_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_execute_BRANCH_CTRL_string;
  reg [71:0] memory_SHIFT_CTRL_string;
  reg [71:0] _zz_memory_SHIFT_CTRL_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_execute_SHIFT_CTRL_string;
  reg [23:0] execute_SRC2_CTRL_string;
  reg [23:0] _zz_execute_SRC2_CTRL_string;
  reg [95:0] execute_SRC1_CTRL_string;
  reg [95:0] _zz_execute_SRC1_CTRL_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_execute_ALU_CTRL_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_execute_ALU_BITWISE_CTRL_string;
  reg [31:0] _zz_decode_ENV_CTRL_1_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_1_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_1_string;
  reg [23:0] _zz_decode_SRC2_CTRL_1_string;
  reg [63:0] _zz_decode_ALU_CTRL_1_string;
  reg [95:0] _zz_decode_SRC1_CTRL_1_string;
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_1_string;
  reg [95:0] _zz_decode_SRC1_CTRL_2_string;
  reg [63:0] _zz_decode_ALU_CTRL_2_string;
  reg [23:0] _zz_decode_SRC2_CTRL_2_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_2_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_2_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_2_string;
  reg [31:0] _zz_decode_ENV_CTRL_7_string;
  reg [95:0] decode_to_execute_SRC1_CTRL_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [23:0] decode_to_execute_SRC2_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] execute_to_memory_SHIFT_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  reg [31:0] decode_to_execute_ENV_CTRL_string;
  reg [31:0] execute_to_memory_ENV_CTRL_string;
  reg [31:0] memory_to_writeBack_ENV_CTRL_string;
  `endif

  reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;

  assign _zz_when = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != 2'b00);
  assign _zz_memory_MUL_LOW = ($signed(_zz_memory_MUL_LOW_1) + $signed(_zz_memory_MUL_LOW_5));
  assign _zz_memory_MUL_LOW_1 = ($signed(_zz_memory_MUL_LOW_2) + $signed(_zz_memory_MUL_LOW_3));
  assign _zz_memory_MUL_LOW_2 = 52'h0;
  assign _zz_memory_MUL_LOW_4 = {1'b0,memory_MUL_LL};
  assign _zz_memory_MUL_LOW_3 = {{19{_zz_memory_MUL_LOW_4[32]}}, _zz_memory_MUL_LOW_4};
  assign _zz_memory_MUL_LOW_6 = ({16'd0,memory_MUL_LH} <<< 16);
  assign _zz_memory_MUL_LOW_5 = {{2{_zz_memory_MUL_LOW_6[49]}}, _zz_memory_MUL_LOW_6};
  assign _zz_memory_MUL_LOW_8 = ({16'd0,memory_MUL_HL} <<< 16);
  assign _zz_memory_MUL_LOW_7 = {{2{_zz_memory_MUL_LOW_8[49]}}, _zz_memory_MUL_LOW_8};
  assign _zz_execute_SHIFT_RIGHT_1 = ($signed(_zz_execute_SHIFT_RIGHT_2) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_execute_SHIFT_RIGHT = _zz_execute_SHIFT_RIGHT_1[31 : 0];
  assign _zz_execute_SHIFT_RIGHT_2 = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_binary_sequential_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz__zz_IBusCachedPlugin_jump_pcLoad_payload_1 = (_zz_IBusCachedPlugin_jump_pcLoad_payload - 4'b0001);
  assign _zz_IBusCachedPlugin_fetchPc_pc_1 = {IBusCachedPlugin_fetchPc_inc,2'b00};
  assign _zz_IBusCachedPlugin_fetchPc_pc = {29'd0, _zz_IBusCachedPlugin_fetchPc_pc_1};
  assign _zz__zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_2 = {{_zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz__zz_2 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz__zz_4 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz__zz_6 = {{_zz_3,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz__zz_6_1 = {{_zz_5,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload_2 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_DBusCachedPlugin_exceptionBus_payload_code = (writeBack_MEMORY_WR ? 3'b111 : 3'b101);
  assign _zz_DBusCachedPlugin_exceptionBus_payload_code_1 = (writeBack_MEMORY_WR ? 3'b110 : 3'b100);
  assign _zz__zz_execute_REGFILE_WRITE_DATA = execute_SRC_LESS;
  assign _zz__zz_execute_SRC1 = 3'b100;
  assign _zz__zz_execute_SRC1_1 = execute_INSTRUCTION[19 : 15];
  assign _zz__zz_execute_SRC2_3 = {execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]};
  assign _zz_execute_SrcPlugin_addSub = ($signed(_zz_execute_SrcPlugin_addSub_1) + $signed(_zz_execute_SrcPlugin_addSub_4));
  assign _zz_execute_SrcPlugin_addSub_1 = ($signed(_zz_execute_SrcPlugin_addSub_2) + $signed(_zz_execute_SrcPlugin_addSub_3));
  assign _zz_execute_SrcPlugin_addSub_2 = execute_SRC1;
  assign _zz_execute_SrcPlugin_addSub_3 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_execute_SrcPlugin_addSub_4 = (execute_SRC_USE_SUB_LESS ? _zz_execute_SrcPlugin_addSub_5 : _zz_execute_SrcPlugin_addSub_6);
  assign _zz_execute_SrcPlugin_addSub_5 = 32'h00000001;
  assign _zz_execute_SrcPlugin_addSub_6 = 32'h0;
  assign _zz_writeBack_MulPlugin_result = {{14{writeBack_MUL_LOW[51]}}, writeBack_MUL_LOW};
  assign _zz_writeBack_MulPlugin_result_1 = ({32'd0,writeBack_MUL_HH} <<< 32);
  assign _zz__zz_decode_RS2_2 = writeBack_MUL_LOW[31 : 0];
  assign _zz__zz_decode_RS2_2_1 = writeBack_MulPlugin_result[63 : 32];
  assign _zz_memory_DivPlugin_div_counter_valueNext_1 = memory_DivPlugin_div_counter_willIncrement;
  assign _zz_memory_DivPlugin_div_counter_valueNext = {5'd0, _zz_memory_DivPlugin_div_counter_valueNext_1};
  assign _zz_memory_DivPlugin_div_stage_0_remainderMinusDenominator = {1'd0, memory_DivPlugin_rs2};
  assign _zz_memory_DivPlugin_div_stage_0_outRemainder = memory_DivPlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_memory_DivPlugin_div_stage_0_outRemainder_1 = memory_DivPlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_memory_DivPlugin_div_stage_0_outNumerator = {_zz_memory_DivPlugin_div_stage_0_remainderShifted,(! memory_DivPlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_memory_DivPlugin_div_result_1 = _zz_memory_DivPlugin_div_result_2;
  assign _zz_memory_DivPlugin_div_result_2 = _zz_memory_DivPlugin_div_result_3;
  assign _zz_memory_DivPlugin_div_result_3 = ({memory_DivPlugin_div_needRevert,(memory_DivPlugin_div_needRevert ? (~ _zz_memory_DivPlugin_div_result) : _zz_memory_DivPlugin_div_result)} + _zz_memory_DivPlugin_div_result_4);
  assign _zz_memory_DivPlugin_div_result_5 = memory_DivPlugin_div_needRevert;
  assign _zz_memory_DivPlugin_div_result_4 = {32'd0, _zz_memory_DivPlugin_div_result_5};
  assign _zz_memory_DivPlugin_rs1_3 = _zz_memory_DivPlugin_rs1;
  assign _zz_memory_DivPlugin_rs1_2 = {32'd0, _zz_memory_DivPlugin_rs1_3};
  assign _zz_memory_DivPlugin_rs2_2 = _zz_memory_DivPlugin_rs2;
  assign _zz_memory_DivPlugin_rs2_1 = {31'd0, _zz_memory_DivPlugin_rs2_2};
  assign _zz__zz_execute_BranchPlugin_missAlignedTarget_2 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz__zz_execute_BranchPlugin_missAlignedTarget_4 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz__zz_execute_BranchPlugin_missAlignedTarget_6 = {_zz_execute_BranchPlugin_missAlignedTarget_1,execute_INSTRUCTION[31 : 20]};
  assign _zz__zz_execute_BranchPlugin_missAlignedTarget_6_1 = {{_zz_execute_BranchPlugin_missAlignedTarget_3,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz__zz_execute_BranchPlugin_missAlignedTarget_6_2 = {{_zz_execute_BranchPlugin_missAlignedTarget_5,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz__zz_execute_BranchPlugin_branch_src2_2 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz__zz_execute_BranchPlugin_branch_src2_4 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_execute_BranchPlugin_branch_src2_9 = 3'b100;
  assign _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1 = (_zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code & (~ _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1_1));
  assign _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1_1 = (_zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code - 2'b01);
  assign _zz_decode_RegFilePlugin_rs1Data = 1'b1;
  assign _zz_decode_RegFilePlugin_rs2Data = 1'b1;
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_6 = {_zz_IBusCachedPlugin_jump_pcLoad_payload_4,_zz_IBusCachedPlugin_jump_pcLoad_payload_3};
  assign _zz_writeBack_DBusCachedPlugin_rspShifted_1 = dataCache_1_io_cpu_writeBack_address[1 : 0];
  assign _zz_writeBack_DBusCachedPlugin_rspShifted_3 = dataCache_1_io_cpu_writeBack_address[1 : 1];
  assign _zz_decode_LEGAL_INSTRUCTION = 32'h0000107f;
  assign _zz_decode_LEGAL_INSTRUCTION_1 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_decode_LEGAL_INSTRUCTION_2 = 32'h00002073;
  assign _zz_decode_LEGAL_INSTRUCTION_3 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_decode_LEGAL_INSTRUCTION_4 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_decode_LEGAL_INSTRUCTION_5 = {((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION_6) == 32'h00000003),{(_zz_decode_LEGAL_INSTRUCTION_7 == _zz_decode_LEGAL_INSTRUCTION_8),{_zz_decode_LEGAL_INSTRUCTION_9,{_zz_decode_LEGAL_INSTRUCTION_10,_zz_decode_LEGAL_INSTRUCTION_11}}}}}};
  assign _zz_decode_LEGAL_INSTRUCTION_6 = 32'h0000505f;
  assign _zz_decode_LEGAL_INSTRUCTION_7 = (decode_INSTRUCTION & 32'h0000707b);
  assign _zz_decode_LEGAL_INSTRUCTION_8 = 32'h00000063;
  assign _zz_decode_LEGAL_INSTRUCTION_9 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_decode_LEGAL_INSTRUCTION_10 = ((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033);
  assign _zz_decode_LEGAL_INSTRUCTION_11 = {((decode_INSTRUCTION & 32'h01f0707f) == 32'h0000500f),{((decode_INSTRUCTION & 32'hbc00707f) == 32'h00005013),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION_12) == 32'h00001013),{(_zz_decode_LEGAL_INSTRUCTION_13 == _zz_decode_LEGAL_INSTRUCTION_14),{_zz_decode_LEGAL_INSTRUCTION_15,{_zz_decode_LEGAL_INSTRUCTION_16,_zz_decode_LEGAL_INSTRUCTION_17}}}}}};
  assign _zz_decode_LEGAL_INSTRUCTION_12 = 32'hfc00307f;
  assign _zz_decode_LEGAL_INSTRUCTION_13 = (decode_INSTRUCTION & 32'hbe00707f);
  assign _zz_decode_LEGAL_INSTRUCTION_14 = 32'h00005033;
  assign _zz_decode_LEGAL_INSTRUCTION_15 = ((decode_INSTRUCTION & 32'hbe00707f) == 32'h00000033);
  assign _zz_decode_LEGAL_INSTRUCTION_16 = ((decode_INSTRUCTION & 32'hdfffffff) == 32'h10200073);
  assign _zz_decode_LEGAL_INSTRUCTION_17 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h00100073);
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_4 = decode_INSTRUCTION[31];
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_5 = decode_INSTRUCTION[31];
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_6 = decode_INSTRUCTION[7];
  assign _zz__zz_decode_ENV_CTRL_2 = 32'h10003050;
  assign _zz__zz_decode_ENV_CTRL_2_1 = (decode_INSTRUCTION & 32'h00103050);
  assign _zz__zz_decode_ENV_CTRL_2_2 = 32'h00000050;
  assign _zz__zz_decode_ENV_CTRL_2_3 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_4) == 32'h00001050);
  assign _zz__zz_decode_ENV_CTRL_2_5 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_6) == 32'h00002050);
  assign _zz__zz_decode_ENV_CTRL_2_7 = {_zz_decode_ENV_CTRL_5,(_zz__zz_decode_ENV_CTRL_2_8 == _zz__zz_decode_ENV_CTRL_2_9)};
  assign _zz__zz_decode_ENV_CTRL_2_10 = 2'b00;
  assign _zz__zz_decode_ENV_CTRL_2_11 = ((_zz__zz_decode_ENV_CTRL_2_12 == _zz__zz_decode_ENV_CTRL_2_13) != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_14 = (_zz_decode_ENV_CTRL_6 != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_15 = {(_zz__zz_decode_ENV_CTRL_2_16 != _zz__zz_decode_ENV_CTRL_2_17),{_zz__zz_decode_ENV_CTRL_2_18,{_zz__zz_decode_ENV_CTRL_2_19,_zz__zz_decode_ENV_CTRL_2_21}}};
  assign _zz__zz_decode_ENV_CTRL_2_4 = 32'h00001050;
  assign _zz__zz_decode_ENV_CTRL_2_6 = 32'h00002050;
  assign _zz__zz_decode_ENV_CTRL_2_8 = (decode_INSTRUCTION & 32'h0000001c);
  assign _zz__zz_decode_ENV_CTRL_2_9 = 32'h00000004;
  assign _zz__zz_decode_ENV_CTRL_2_12 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz__zz_decode_ENV_CTRL_2_13 = 32'h00000040;
  assign _zz__zz_decode_ENV_CTRL_2_16 = _zz_decode_ENV_CTRL_6;
  assign _zz__zz_decode_ENV_CTRL_2_17 = 1'b0;
  assign _zz__zz_decode_ENV_CTRL_2_18 = (((decode_INSTRUCTION & 32'h02004064) == 32'h02004020) != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_19 = (((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_20) == 32'h02000030) != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_21 = {({_zz__zz_decode_ENV_CTRL_2_22,_zz__zz_decode_ENV_CTRL_2_23} != 2'b00),{({_zz__zz_decode_ENV_CTRL_2_24,_zz__zz_decode_ENV_CTRL_2_26} != 3'b000),{(_zz__zz_decode_ENV_CTRL_2_31 != _zz__zz_decode_ENV_CTRL_2_33),{_zz__zz_decode_ENV_CTRL_2_34,{_zz__zz_decode_ENV_CTRL_2_37,_zz__zz_decode_ENV_CTRL_2_39}}}}};
  assign _zz__zz_decode_ENV_CTRL_2_20 = 32'h02004074;
  assign _zz__zz_decode_ENV_CTRL_2_22 = ((decode_INSTRUCTION & 32'h00007034) == 32'h00005010);
  assign _zz__zz_decode_ENV_CTRL_2_23 = ((decode_INSTRUCTION & 32'h02007064) == 32'h00005020);
  assign _zz__zz_decode_ENV_CTRL_2_24 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_25) == 32'h40001010);
  assign _zz__zz_decode_ENV_CTRL_2_26 = {(_zz__zz_decode_ENV_CTRL_2_27 == _zz__zz_decode_ENV_CTRL_2_28),(_zz__zz_decode_ENV_CTRL_2_29 == _zz__zz_decode_ENV_CTRL_2_30)};
  assign _zz__zz_decode_ENV_CTRL_2_31 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_32) == 32'h00000024);
  assign _zz__zz_decode_ENV_CTRL_2_33 = 1'b0;
  assign _zz__zz_decode_ENV_CTRL_2_34 = ((_zz__zz_decode_ENV_CTRL_2_35 == _zz__zz_decode_ENV_CTRL_2_36) != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_37 = (_zz__zz_decode_ENV_CTRL_2_38 != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_39 = {(_zz__zz_decode_ENV_CTRL_2_40 != _zz__zz_decode_ENV_CTRL_2_45),{_zz__zz_decode_ENV_CTRL_2_46,{_zz__zz_decode_ENV_CTRL_2_49,_zz__zz_decode_ENV_CTRL_2_54}}};
  assign _zz__zz_decode_ENV_CTRL_2_25 = 32'h40003054;
  assign _zz__zz_decode_ENV_CTRL_2_27 = (decode_INSTRUCTION & 32'h00007034);
  assign _zz__zz_decode_ENV_CTRL_2_28 = 32'h00001010;
  assign _zz__zz_decode_ENV_CTRL_2_29 = (decode_INSTRUCTION & 32'h02007054);
  assign _zz__zz_decode_ENV_CTRL_2_30 = 32'h00001010;
  assign _zz__zz_decode_ENV_CTRL_2_32 = 32'h00000064;
  assign _zz__zz_decode_ENV_CTRL_2_35 = (decode_INSTRUCTION & 32'h00001000);
  assign _zz__zz_decode_ENV_CTRL_2_36 = 32'h00001000;
  assign _zz__zz_decode_ENV_CTRL_2_38 = ((decode_INSTRUCTION & 32'h00003000) == 32'h00002000);
  assign _zz__zz_decode_ENV_CTRL_2_40 = {(_zz__zz_decode_ENV_CTRL_2_41 == _zz__zz_decode_ENV_CTRL_2_42),(_zz__zz_decode_ENV_CTRL_2_43 == _zz__zz_decode_ENV_CTRL_2_44)};
  assign _zz__zz_decode_ENV_CTRL_2_45 = 2'b00;
  assign _zz__zz_decode_ENV_CTRL_2_46 = ((_zz__zz_decode_ENV_CTRL_2_47 == _zz__zz_decode_ENV_CTRL_2_48) != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_49 = ({_zz__zz_decode_ENV_CTRL_2_50,_zz__zz_decode_ENV_CTRL_2_52} != 2'b00);
  assign _zz__zz_decode_ENV_CTRL_2_54 = {(_zz__zz_decode_ENV_CTRL_2_55 != _zz__zz_decode_ENV_CTRL_2_62),{_zz__zz_decode_ENV_CTRL_2_63,{_zz__zz_decode_ENV_CTRL_2_66,_zz__zz_decode_ENV_CTRL_2_79}}};
  assign _zz__zz_decode_ENV_CTRL_2_41 = (decode_INSTRUCTION & 32'h00002010);
  assign _zz__zz_decode_ENV_CTRL_2_42 = 32'h00002000;
  assign _zz__zz_decode_ENV_CTRL_2_43 = (decode_INSTRUCTION & 32'h00005000);
  assign _zz__zz_decode_ENV_CTRL_2_44 = 32'h00001000;
  assign _zz__zz_decode_ENV_CTRL_2_47 = (decode_INSTRUCTION & 32'h00004048);
  assign _zz__zz_decode_ENV_CTRL_2_48 = 32'h00004008;
  assign _zz__zz_decode_ENV_CTRL_2_50 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_51) == 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_52 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_53) == 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_55 = {(_zz__zz_decode_ENV_CTRL_2_56 == _zz__zz_decode_ENV_CTRL_2_57),{_zz__zz_decode_ENV_CTRL_2_58,_zz__zz_decode_ENV_CTRL_2_60}};
  assign _zz__zz_decode_ENV_CTRL_2_62 = 3'b000;
  assign _zz__zz_decode_ENV_CTRL_2_63 = ((_zz__zz_decode_ENV_CTRL_2_64 == _zz__zz_decode_ENV_CTRL_2_65) != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_66 = ({_zz__zz_decode_ENV_CTRL_2_67,_zz__zz_decode_ENV_CTRL_2_70} != 5'h0);
  assign _zz__zz_decode_ENV_CTRL_2_79 = {(_zz__zz_decode_ENV_CTRL_2_80 != _zz__zz_decode_ENV_CTRL_2_93),{_zz__zz_decode_ENV_CTRL_2_94,{_zz__zz_decode_ENV_CTRL_2_111,_zz__zz_decode_ENV_CTRL_2_116}}};
  assign _zz__zz_decode_ENV_CTRL_2_51 = 32'h00000034;
  assign _zz__zz_decode_ENV_CTRL_2_53 = 32'h00000064;
  assign _zz__zz_decode_ENV_CTRL_2_56 = (decode_INSTRUCTION & 32'h00000050);
  assign _zz__zz_decode_ENV_CTRL_2_57 = 32'h00000040;
  assign _zz__zz_decode_ENV_CTRL_2_58 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_59) == 32'h0);
  assign _zz__zz_decode_ENV_CTRL_2_60 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_61) == 32'h00000040);
  assign _zz__zz_decode_ENV_CTRL_2_64 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_65 = 32'h00000020;
  assign _zz__zz_decode_ENV_CTRL_2_67 = (_zz__zz_decode_ENV_CTRL_2_68 == _zz__zz_decode_ENV_CTRL_2_69);
  assign _zz__zz_decode_ENV_CTRL_2_70 = {_zz_decode_ENV_CTRL_4,{_zz__zz_decode_ENV_CTRL_2_71,_zz__zz_decode_ENV_CTRL_2_74}};
  assign _zz__zz_decode_ENV_CTRL_2_80 = {_zz_decode_ENV_CTRL_4,{_zz__zz_decode_ENV_CTRL_2_81,_zz__zz_decode_ENV_CTRL_2_84}};
  assign _zz__zz_decode_ENV_CTRL_2_93 = 5'h0;
  assign _zz__zz_decode_ENV_CTRL_2_94 = ({_zz__zz_decode_ENV_CTRL_2_95,_zz__zz_decode_ENV_CTRL_2_96} != 6'h0);
  assign _zz__zz_decode_ENV_CTRL_2_111 = (_zz__zz_decode_ENV_CTRL_2_112 != _zz__zz_decode_ENV_CTRL_2_115);
  assign _zz__zz_decode_ENV_CTRL_2_116 = {_zz__zz_decode_ENV_CTRL_2_117,{_zz__zz_decode_ENV_CTRL_2_122,_zz__zz_decode_ENV_CTRL_2_127}};
  assign _zz__zz_decode_ENV_CTRL_2_59 = 32'h00000038;
  assign _zz__zz_decode_ENV_CTRL_2_61 = 32'h00103040;
  assign _zz__zz_decode_ENV_CTRL_2_68 = (decode_INSTRUCTION & 32'h00000040);
  assign _zz__zz_decode_ENV_CTRL_2_69 = 32'h00000040;
  assign _zz__zz_decode_ENV_CTRL_2_71 = (_zz__zz_decode_ENV_CTRL_2_72 == _zz__zz_decode_ENV_CTRL_2_73);
  assign _zz__zz_decode_ENV_CTRL_2_74 = {_zz__zz_decode_ENV_CTRL_2_75,_zz__zz_decode_ENV_CTRL_2_77};
  assign _zz__zz_decode_ENV_CTRL_2_81 = (_zz__zz_decode_ENV_CTRL_2_82 == _zz__zz_decode_ENV_CTRL_2_83);
  assign _zz__zz_decode_ENV_CTRL_2_84 = {_zz__zz_decode_ENV_CTRL_2_85,{_zz__zz_decode_ENV_CTRL_2_87,_zz__zz_decode_ENV_CTRL_2_90}};
  assign _zz__zz_decode_ENV_CTRL_2_95 = _zz_decode_ENV_CTRL_5;
  assign _zz__zz_decode_ENV_CTRL_2_96 = {_zz__zz_decode_ENV_CTRL_2_97,{_zz__zz_decode_ENV_CTRL_2_99,_zz__zz_decode_ENV_CTRL_2_102}};
  assign _zz__zz_decode_ENV_CTRL_2_112 = {_zz_decode_ENV_CTRL_4,_zz__zz_decode_ENV_CTRL_2_113};
  assign _zz__zz_decode_ENV_CTRL_2_115 = 2'b00;
  assign _zz__zz_decode_ENV_CTRL_2_117 = ({_zz__zz_decode_ENV_CTRL_2_118,_zz__zz_decode_ENV_CTRL_2_119} != 2'b00);
  assign _zz__zz_decode_ENV_CTRL_2_122 = (_zz__zz_decode_ENV_CTRL_2_123 != _zz__zz_decode_ENV_CTRL_2_126);
  assign _zz__zz_decode_ENV_CTRL_2_127 = {_zz__zz_decode_ENV_CTRL_2_128,{_zz__zz_decode_ENV_CTRL_2_131,_zz__zz_decode_ENV_CTRL_2_142}};
  assign _zz__zz_decode_ENV_CTRL_2_72 = (decode_INSTRUCTION & 32'h00004020);
  assign _zz__zz_decode_ENV_CTRL_2_73 = 32'h00004020;
  assign _zz__zz_decode_ENV_CTRL_2_75 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_76) == 32'h00000010);
  assign _zz__zz_decode_ENV_CTRL_2_77 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_78) == 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_82 = (decode_INSTRUCTION & 32'h00002030);
  assign _zz__zz_decode_ENV_CTRL_2_83 = 32'h00002010;
  assign _zz__zz_decode_ENV_CTRL_2_85 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_86) == 32'h00000010);
  assign _zz__zz_decode_ENV_CTRL_2_87 = (_zz__zz_decode_ENV_CTRL_2_88 == _zz__zz_decode_ENV_CTRL_2_89);
  assign _zz__zz_decode_ENV_CTRL_2_90 = (_zz__zz_decode_ENV_CTRL_2_91 == _zz__zz_decode_ENV_CTRL_2_92);
  assign _zz__zz_decode_ENV_CTRL_2_97 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_98) == 32'h00001010);
  assign _zz__zz_decode_ENV_CTRL_2_99 = (_zz__zz_decode_ENV_CTRL_2_100 == _zz__zz_decode_ENV_CTRL_2_101);
  assign _zz__zz_decode_ENV_CTRL_2_102 = {_zz__zz_decode_ENV_CTRL_2_103,{_zz__zz_decode_ENV_CTRL_2_105,_zz__zz_decode_ENV_CTRL_2_108}};
  assign _zz__zz_decode_ENV_CTRL_2_113 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_114) == 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_118 = _zz_decode_ENV_CTRL_4;
  assign _zz__zz_decode_ENV_CTRL_2_119 = (_zz__zz_decode_ENV_CTRL_2_120 == _zz__zz_decode_ENV_CTRL_2_121);
  assign _zz__zz_decode_ENV_CTRL_2_123 = (_zz__zz_decode_ENV_CTRL_2_124 == _zz__zz_decode_ENV_CTRL_2_125);
  assign _zz__zz_decode_ENV_CTRL_2_126 = 1'b0;
  assign _zz__zz_decode_ENV_CTRL_2_128 = (_zz__zz_decode_ENV_CTRL_2_129 != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_131 = (_zz__zz_decode_ENV_CTRL_2_132 != _zz__zz_decode_ENV_CTRL_2_141);
  assign _zz__zz_decode_ENV_CTRL_2_142 = {_zz__zz_decode_ENV_CTRL_2_143,{_zz__zz_decode_ENV_CTRL_2_145,_zz__zz_decode_ENV_CTRL_2_152}};
  assign _zz__zz_decode_ENV_CTRL_2_76 = 32'h00000030;
  assign _zz__zz_decode_ENV_CTRL_2_78 = 32'h02000020;
  assign _zz__zz_decode_ENV_CTRL_2_86 = 32'h00001030;
  assign _zz__zz_decode_ENV_CTRL_2_88 = (decode_INSTRUCTION & 32'h02002060);
  assign _zz__zz_decode_ENV_CTRL_2_89 = 32'h00002020;
  assign _zz__zz_decode_ENV_CTRL_2_91 = (decode_INSTRUCTION & 32'h02003020);
  assign _zz__zz_decode_ENV_CTRL_2_92 = 32'h00000020;
  assign _zz__zz_decode_ENV_CTRL_2_98 = 32'h00001010;
  assign _zz__zz_decode_ENV_CTRL_2_100 = (decode_INSTRUCTION & 32'h00002010);
  assign _zz__zz_decode_ENV_CTRL_2_101 = 32'h00002010;
  assign _zz__zz_decode_ENV_CTRL_2_103 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_104) == 32'h00000010);
  assign _zz__zz_decode_ENV_CTRL_2_105 = (_zz__zz_decode_ENV_CTRL_2_106 == _zz__zz_decode_ENV_CTRL_2_107);
  assign _zz__zz_decode_ENV_CTRL_2_108 = (_zz__zz_decode_ENV_CTRL_2_109 == _zz__zz_decode_ENV_CTRL_2_110);
  assign _zz__zz_decode_ENV_CTRL_2_114 = 32'h00000070;
  assign _zz__zz_decode_ENV_CTRL_2_120 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_121 = 32'h0;
  assign _zz__zz_decode_ENV_CTRL_2_124 = (decode_INSTRUCTION & 32'h00004014);
  assign _zz__zz_decode_ENV_CTRL_2_125 = 32'h00004010;
  assign _zz__zz_decode_ENV_CTRL_2_129 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_130) == 32'h00002010);
  assign _zz__zz_decode_ENV_CTRL_2_132 = {_zz__zz_decode_ENV_CTRL_2_133,{_zz__zz_decode_ENV_CTRL_2_134,_zz__zz_decode_ENV_CTRL_2_136}};
  assign _zz__zz_decode_ENV_CTRL_2_141 = 4'b0000;
  assign _zz__zz_decode_ENV_CTRL_2_143 = (_zz__zz_decode_ENV_CTRL_2_144 != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_145 = (_zz__zz_decode_ENV_CTRL_2_146 != _zz__zz_decode_ENV_CTRL_2_151);
  assign _zz__zz_decode_ENV_CTRL_2_152 = {_zz__zz_decode_ENV_CTRL_2_153,{_zz__zz_decode_ENV_CTRL_2_155,_zz__zz_decode_ENV_CTRL_2_158}};
  assign _zz__zz_decode_ENV_CTRL_2_104 = 32'h00000050;
  assign _zz__zz_decode_ENV_CTRL_2_106 = (decode_INSTRUCTION & 32'h0000000c);
  assign _zz__zz_decode_ENV_CTRL_2_107 = 32'h00000004;
  assign _zz__zz_decode_ENV_CTRL_2_109 = (decode_INSTRUCTION & 32'h00000028);
  assign _zz__zz_decode_ENV_CTRL_2_110 = 32'h0;
  assign _zz__zz_decode_ENV_CTRL_2_130 = 32'h00006014;
  assign _zz__zz_decode_ENV_CTRL_2_133 = ((decode_INSTRUCTION & 32'h00000044) == 32'h0);
  assign _zz__zz_decode_ENV_CTRL_2_134 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_135) == 32'h0);
  assign _zz__zz_decode_ENV_CTRL_2_136 = {(_zz__zz_decode_ENV_CTRL_2_137 == _zz__zz_decode_ENV_CTRL_2_138),(_zz__zz_decode_ENV_CTRL_2_139 == _zz__zz_decode_ENV_CTRL_2_140)};
  assign _zz__zz_decode_ENV_CTRL_2_144 = ((decode_INSTRUCTION & 32'h00000058) == 32'h0);
  assign _zz__zz_decode_ENV_CTRL_2_146 = {(_zz__zz_decode_ENV_CTRL_2_147 == _zz__zz_decode_ENV_CTRL_2_148),{_zz__zz_decode_ENV_CTRL_2_149,_zz__zz_decode_ENV_CTRL_2_150}};
  assign _zz__zz_decode_ENV_CTRL_2_151 = 3'b000;
  assign _zz__zz_decode_ENV_CTRL_2_153 = ({_zz__zz_decode_ENV_CTRL_2_154,_zz_decode_ENV_CTRL_3} != 2'b00);
  assign _zz__zz_decode_ENV_CTRL_2_155 = ({_zz__zz_decode_ENV_CTRL_2_156,_zz__zz_decode_ENV_CTRL_2_157} != 2'b00);
  assign _zz__zz_decode_ENV_CTRL_2_158 = (_zz__zz_decode_ENV_CTRL_2_159 != 1'b0);
  assign _zz__zz_decode_ENV_CTRL_2_135 = 32'h00000018;
  assign _zz__zz_decode_ENV_CTRL_2_137 = (decode_INSTRUCTION & 32'h00006004);
  assign _zz__zz_decode_ENV_CTRL_2_138 = 32'h00002000;
  assign _zz__zz_decode_ENV_CTRL_2_139 = (decode_INSTRUCTION & 32'h00005004);
  assign _zz__zz_decode_ENV_CTRL_2_140 = 32'h00001000;
  assign _zz__zz_decode_ENV_CTRL_2_147 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz__zz_decode_ENV_CTRL_2_148 = 32'h00000040;
  assign _zz__zz_decode_ENV_CTRL_2_149 = ((decode_INSTRUCTION & 32'h00002014) == 32'h00002010);
  assign _zz__zz_decode_ENV_CTRL_2_150 = ((decode_INSTRUCTION & 32'h40000034) == 32'h40000030);
  assign _zz__zz_decode_ENV_CTRL_2_154 = ((decode_INSTRUCTION & 32'h00000014) == 32'h00000004);
  assign _zz__zz_decode_ENV_CTRL_2_156 = ((decode_INSTRUCTION & 32'h00000044) == 32'h00000004);
  assign _zz__zz_decode_ENV_CTRL_2_157 = _zz_decode_ENV_CTRL_3;
  assign _zz__zz_decode_ENV_CTRL_2_159 = ((decode_INSTRUCTION & 32'h00005048) == 32'h00001008);
  assign _zz_execute_BranchPlugin_branch_src2_6 = execute_INSTRUCTION[31];
  assign _zz_execute_BranchPlugin_branch_src2_7 = execute_INSTRUCTION[31];
  assign _zz_execute_BranchPlugin_branch_src2_8 = execute_INSTRUCTION[7];
  always @(posedge io_axiClk) begin
    if(_zz_decode_RegFilePlugin_rs1Data) begin
      _zz_RegFilePlugin_regFile_port0 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
    end
  end

  always @(posedge io_axiClk) begin
    if(_zz_decode_RegFilePlugin_rs2Data) begin
      _zz_RegFilePlugin_regFile_port1 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
    end
  end

  always @(posedge io_axiClk) begin
    if(_zz_1) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  InstructionCache IBusCachedPlugin_cache (
    .io_flush                                 (IBusCachedPlugin_cache_io_flush                       ), //i
    .io_cpu_prefetch_isValid                  (IBusCachedPlugin_cache_io_cpu_prefetch_isValid        ), //i
    .io_cpu_prefetch_haltIt                   (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt         ), //o
    .io_cpu_prefetch_pc                       (IBusCachedPlugin_iBusRsp_stages_0_input_payload       ), //i
    .io_cpu_fetch_isValid                     (IBusCachedPlugin_cache_io_cpu_fetch_isValid           ), //i
    .io_cpu_fetch_isStuck                     (IBusCachedPlugin_cache_io_cpu_fetch_isStuck           ), //i
    .io_cpu_fetch_isRemoved                   (IBusCachedPlugin_cache_io_cpu_fetch_isRemoved         ), //i
    .io_cpu_fetch_pc                          (IBusCachedPlugin_iBusRsp_stages_1_input_payload       ), //i
    .io_cpu_fetch_data                        (IBusCachedPlugin_cache_io_cpu_fetch_data              ), //o
    .io_cpu_fetch_mmuRsp_physicalAddress      (IBusCachedPlugin_mmuBus_rsp_physicalAddress           ), //i
    .io_cpu_fetch_mmuRsp_isIoAccess           (IBusCachedPlugin_mmuBus_rsp_isIoAccess                ), //i
    .io_cpu_fetch_mmuRsp_isPaging             (IBusCachedPlugin_mmuBus_rsp_isPaging                  ), //i
    .io_cpu_fetch_mmuRsp_allowRead            (IBusCachedPlugin_mmuBus_rsp_allowRead                 ), //i
    .io_cpu_fetch_mmuRsp_allowWrite           (IBusCachedPlugin_mmuBus_rsp_allowWrite                ), //i
    .io_cpu_fetch_mmuRsp_allowExecute         (IBusCachedPlugin_mmuBus_rsp_allowExecute              ), //i
    .io_cpu_fetch_mmuRsp_exception            (IBusCachedPlugin_mmuBus_rsp_exception                 ), //i
    .io_cpu_fetch_mmuRsp_refilling            (IBusCachedPlugin_mmuBus_rsp_refilling                 ), //i
    .io_cpu_fetch_mmuRsp_bypassTranslation    (IBusCachedPlugin_mmuBus_rsp_bypassTranslation         ), //i
    .io_cpu_fetch_physicalAddress             (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress   ), //o
    .io_cpu_decode_isValid                    (IBusCachedPlugin_cache_io_cpu_decode_isValid          ), //i
    .io_cpu_decode_isStuck                    (IBusCachedPlugin_cache_io_cpu_decode_isStuck          ), //i
    .io_cpu_decode_pc                         (IBusCachedPlugin_iBusRsp_stages_2_input_payload       ), //i
    .io_cpu_decode_physicalAddress            (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress  ), //o
    .io_cpu_decode_data                       (IBusCachedPlugin_cache_io_cpu_decode_data             ), //o
    .io_cpu_decode_cacheMiss                  (IBusCachedPlugin_cache_io_cpu_decode_cacheMiss        ), //o
    .io_cpu_decode_error                      (IBusCachedPlugin_cache_io_cpu_decode_error            ), //o
    .io_cpu_decode_mmuRefilling               (IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling     ), //o
    .io_cpu_decode_mmuException               (IBusCachedPlugin_cache_io_cpu_decode_mmuException     ), //o
    .io_cpu_decode_isUser                     (IBusCachedPlugin_cache_io_cpu_decode_isUser           ), //i
    .io_cpu_fill_valid                        (IBusCachedPlugin_cache_io_cpu_fill_valid              ), //i
    .io_cpu_fill_payload                      (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress  ), //i
    .io_mem_cmd_valid                         (IBusCachedPlugin_cache_io_mem_cmd_valid               ), //o
    .io_mem_cmd_ready                         (iBus_cmd_ready                                        ), //i
    .io_mem_cmd_payload_address               (IBusCachedPlugin_cache_io_mem_cmd_payload_address     ), //o
    .io_mem_cmd_payload_size                  (IBusCachedPlugin_cache_io_mem_cmd_payload_size        ), //o
    .io_mem_rsp_valid                         (iBus_rsp_valid                                        ), //i
    .io_mem_rsp_payload_data                  (iBus_rsp_payload_data                                 ), //i
    .io_mem_rsp_payload_error                 (iBus_rsp_payload_error                                ), //i
    ._zz_when_Fetcher_l398                    (switch_Fetcher_l362                                   ), //i
    ._zz_decodeStage_hit_data_1               (IBusCachedPlugin_injectionPort_payload                ), //i
    .io_axiClk                                (io_axiClk                                             ), //i
    .resetCtrl_axiReset                       (resetCtrl_axiReset                                    )  //i
  );
  DataCache dataCache_1 (
    .io_cpu_execute_isValid                    (dataCache_1_io_cpu_execute_isValid             ), //i
    .io_cpu_execute_address                    (dataCache_1_io_cpu_execute_address             ), //i
    .io_cpu_execute_haltIt                     (dataCache_1_io_cpu_execute_haltIt              ), //o
    .io_cpu_execute_args_wr                    (execute_MEMORY_WR                              ), //i
    .io_cpu_execute_args_size                  (execute_DBusCachedPlugin_size                  ), //i
    .io_cpu_execute_args_totalyConsistent      (execute_MEMORY_FORCE_CONSTISTENCY              ), //i
    .io_cpu_execute_refilling                  (dataCache_1_io_cpu_execute_refilling           ), //o
    .io_cpu_memory_isValid                     (dataCache_1_io_cpu_memory_isValid              ), //i
    .io_cpu_memory_isStuck                     (memory_arbitration_isStuck                     ), //i
    .io_cpu_memory_isWrite                     (dataCache_1_io_cpu_memory_isWrite              ), //o
    .io_cpu_memory_address                     (dataCache_1_io_cpu_memory_address              ), //i
    .io_cpu_memory_mmuRsp_physicalAddress      (DBusCachedPlugin_mmuBus_rsp_physicalAddress    ), //i
    .io_cpu_memory_mmuRsp_isIoAccess           (dataCache_1_io_cpu_memory_mmuRsp_isIoAccess    ), //i
    .io_cpu_memory_mmuRsp_isPaging             (DBusCachedPlugin_mmuBus_rsp_isPaging           ), //i
    .io_cpu_memory_mmuRsp_allowRead            (DBusCachedPlugin_mmuBus_rsp_allowRead          ), //i
    .io_cpu_memory_mmuRsp_allowWrite           (DBusCachedPlugin_mmuBus_rsp_allowWrite         ), //i
    .io_cpu_memory_mmuRsp_allowExecute         (DBusCachedPlugin_mmuBus_rsp_allowExecute       ), //i
    .io_cpu_memory_mmuRsp_exception            (DBusCachedPlugin_mmuBus_rsp_exception          ), //i
    .io_cpu_memory_mmuRsp_refilling            (DBusCachedPlugin_mmuBus_rsp_refilling          ), //i
    .io_cpu_memory_mmuRsp_bypassTranslation    (DBusCachedPlugin_mmuBus_rsp_bypassTranslation  ), //i
    .io_cpu_writeBack_isValid                  (dataCache_1_io_cpu_writeBack_isValid           ), //i
    .io_cpu_writeBack_isStuck                  (writeBack_arbitration_isStuck                  ), //i
    .io_cpu_writeBack_isUser                   (dataCache_1_io_cpu_writeBack_isUser            ), //i
    .io_cpu_writeBack_haltIt                   (dataCache_1_io_cpu_writeBack_haltIt            ), //o
    .io_cpu_writeBack_isWrite                  (dataCache_1_io_cpu_writeBack_isWrite           ), //o
    .io_cpu_writeBack_storeData                (dataCache_1_io_cpu_writeBack_storeData         ), //i
    .io_cpu_writeBack_data                     (dataCache_1_io_cpu_writeBack_data              ), //o
    .io_cpu_writeBack_address                  (dataCache_1_io_cpu_writeBack_address           ), //i
    .io_cpu_writeBack_mmuException             (dataCache_1_io_cpu_writeBack_mmuException      ), //o
    .io_cpu_writeBack_unalignedAccess          (dataCache_1_io_cpu_writeBack_unalignedAccess   ), //o
    .io_cpu_writeBack_accessError              (dataCache_1_io_cpu_writeBack_accessError       ), //o
    .io_cpu_writeBack_keepMemRspData           (dataCache_1_io_cpu_writeBack_keepMemRspData    ), //o
    .io_cpu_writeBack_fence_SW                 (dataCache_1_io_cpu_writeBack_fence_SW          ), //i
    .io_cpu_writeBack_fence_SR                 (dataCache_1_io_cpu_writeBack_fence_SR          ), //i
    .io_cpu_writeBack_fence_SO                 (dataCache_1_io_cpu_writeBack_fence_SO          ), //i
    .io_cpu_writeBack_fence_SI                 (dataCache_1_io_cpu_writeBack_fence_SI          ), //i
    .io_cpu_writeBack_fence_PW                 (dataCache_1_io_cpu_writeBack_fence_PW          ), //i
    .io_cpu_writeBack_fence_PR                 (dataCache_1_io_cpu_writeBack_fence_PR          ), //i
    .io_cpu_writeBack_fence_PO                 (dataCache_1_io_cpu_writeBack_fence_PO          ), //i
    .io_cpu_writeBack_fence_PI                 (dataCache_1_io_cpu_writeBack_fence_PI          ), //i
    .io_cpu_writeBack_fence_FM                 (dataCache_1_io_cpu_writeBack_fence_FM          ), //i
    .io_cpu_writeBack_exclusiveOk              (dataCache_1_io_cpu_writeBack_exclusiveOk       ), //o
    .io_cpu_redo                               (dataCache_1_io_cpu_redo                        ), //o
    .io_cpu_flush_valid                        (dataCache_1_io_cpu_flush_valid                 ), //i
    .io_cpu_flush_ready                        (dataCache_1_io_cpu_flush_ready                 ), //o
    .io_mem_cmd_valid                          (dataCache_1_io_mem_cmd_valid                   ), //o
    .io_mem_cmd_ready                          (dBus_cmd_ready                                 ), //i
    .io_mem_cmd_payload_wr                     (dataCache_1_io_mem_cmd_payload_wr              ), //o
    .io_mem_cmd_payload_uncached               (dataCache_1_io_mem_cmd_payload_uncached        ), //o
    .io_mem_cmd_payload_address                (dataCache_1_io_mem_cmd_payload_address         ), //o
    .io_mem_cmd_payload_data                   (dataCache_1_io_mem_cmd_payload_data            ), //o
    .io_mem_cmd_payload_mask                   (dataCache_1_io_mem_cmd_payload_mask            ), //o
    .io_mem_cmd_payload_size                   (dataCache_1_io_mem_cmd_payload_size            ), //o
    .io_mem_cmd_payload_last                   (dataCache_1_io_mem_cmd_payload_last            ), //o
    .io_mem_rsp_valid                          (dBus_rsp_valid                                 ), //i
    .io_mem_rsp_payload_last                   (dBus_rsp_payload_last                          ), //i
    .io_mem_rsp_payload_data                   (dBus_rsp_payload_data                          ), //i
    .io_mem_rsp_payload_error                  (dBus_rsp_payload_error                         ), //i
    .io_axiClk                                 (io_axiClk                                      ), //i
    .resetCtrl_axiReset                        (resetCtrl_axiReset                             )  //i
  );
  always @(*) begin
    case(_zz_IBusCachedPlugin_jump_pcLoad_payload_6)
      2'b00 : begin
        _zz_IBusCachedPlugin_jump_pcLoad_payload_5 = DBusCachedPlugin_redoBranch_payload;
      end
      2'b01 : begin
        _zz_IBusCachedPlugin_jump_pcLoad_payload_5 = CsrPlugin_jumpInterface_payload;
      end
      2'b10 : begin
        _zz_IBusCachedPlugin_jump_pcLoad_payload_5 = BranchPlugin_jumpInterface_payload;
      end
      default : begin
        _zz_IBusCachedPlugin_jump_pcLoad_payload_5 = IBusCachedPlugin_predictionJumpInterface_payload;
      end
    endcase
  end

  always @(*) begin
    case(_zz_writeBack_DBusCachedPlugin_rspShifted_1)
      2'b00 : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted = writeBack_DBusCachedPlugin_rspSplits_0;
      end
      2'b01 : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted = writeBack_DBusCachedPlugin_rspSplits_1;
      end
      2'b10 : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted = writeBack_DBusCachedPlugin_rspSplits_2;
      end
      default : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted = writeBack_DBusCachedPlugin_rspSplits_3;
      end
    endcase
  end

  always @(*) begin
    case(_zz_writeBack_DBusCachedPlugin_rspShifted_3)
      1'b0 : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted_2 = writeBack_DBusCachedPlugin_rspSplits_1;
      end
      default : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted_2 = writeBack_DBusCachedPlugin_rspSplits_3;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(_zz_memory_to_writeBack_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_memory_to_writeBack_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_memory_to_writeBack_ENV_CTRL_string = "XRET";
      default : _zz_memory_to_writeBack_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_to_writeBack_ENV_CTRL_1)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_memory_to_writeBack_ENV_CTRL_1_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_memory_to_writeBack_ENV_CTRL_1_string = "XRET";
      default : _zz_memory_to_writeBack_ENV_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_execute_to_memory_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_execute_to_memory_ENV_CTRL_string = "XRET";
      default : _zz_execute_to_memory_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_ENV_CTRL_1)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_execute_to_memory_ENV_CTRL_1_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_execute_to_memory_ENV_CTRL_1_string = "XRET";
      default : _zz_execute_to_memory_ENV_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : decode_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : decode_ENV_CTRL_string = "XRET";
      default : decode_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_decode_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_decode_ENV_CTRL_string = "XRET";
      default : _zz_decode_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_decode_to_execute_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_decode_to_execute_ENV_CTRL_string = "XRET";
      default : _zz_decode_to_execute_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ENV_CTRL_1)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_decode_to_execute_ENV_CTRL_1_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_decode_to_execute_ENV_CTRL_1_string = "XRET";
      default : _zz_decode_to_execute_ENV_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_INC : _zz_decode_to_execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_binary_sequential_B : _zz_decode_to_execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_binary_sequential_JAL : _zz_decode_to_execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_binary_sequential_JALR : _zz_decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : _zz_decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_BRANCH_CTRL_1)
      `BranchCtrlEnum_binary_sequential_INC : _zz_decode_to_execute_BRANCH_CTRL_1_string = "INC ";
      `BranchCtrlEnum_binary_sequential_B : _zz_decode_to_execute_BRANCH_CTRL_1_string = "B   ";
      `BranchCtrlEnum_binary_sequential_JAL : _zz_decode_to_execute_BRANCH_CTRL_1_string = "JAL ";
      `BranchCtrlEnum_binary_sequential_JALR : _zz_decode_to_execute_BRANCH_CTRL_1_string = "JALR";
      default : _zz_decode_to_execute_BRANCH_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_SHIFT_CTRL_1)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_execute_to_memory_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : decode_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : decode_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : decode_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : decode_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : _zz_decode_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : _zz_decode_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : _zz_decode_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : _zz_decode_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SHIFT_CTRL_1)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_decode_to_execute_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_binary_sequential_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_binary_sequential_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : _zz_decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : _zz_decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_binary_sequential_XOR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_BITWISE_CTRL_1)
      `AluBitwiseCtrlEnum_binary_sequential_XOR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "XOR_1";
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "OR_1 ";
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "AND_1";
      default : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_binary_sequential_RS : decode_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_binary_sequential_IMI : decode_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_binary_sequential_IMS : decode_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_binary_sequential_PC : decode_SRC2_CTRL_string = "PC ";
      default : decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL)
      `Src2CtrlEnum_binary_sequential_RS : _zz_decode_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_binary_sequential_IMI : _zz_decode_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_binary_sequential_IMS : _zz_decode_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_binary_sequential_PC : _zz_decode_SRC2_CTRL_string = "PC ";
      default : _zz_decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SRC2_CTRL)
      `Src2CtrlEnum_binary_sequential_RS : _zz_decode_to_execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_binary_sequential_IMI : _zz_decode_to_execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_binary_sequential_IMS : _zz_decode_to_execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_binary_sequential_PC : _zz_decode_to_execute_SRC2_CTRL_string = "PC ";
      default : _zz_decode_to_execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SRC2_CTRL_1)
      `Src2CtrlEnum_binary_sequential_RS : _zz_decode_to_execute_SRC2_CTRL_1_string = "RS ";
      `Src2CtrlEnum_binary_sequential_IMI : _zz_decode_to_execute_SRC2_CTRL_1_string = "IMI";
      `Src2CtrlEnum_binary_sequential_IMS : _zz_decode_to_execute_SRC2_CTRL_1_string = "IMS";
      `Src2CtrlEnum_binary_sequential_PC : _zz_decode_to_execute_SRC2_CTRL_1_string = "PC ";
      default : _zz_decode_to_execute_SRC2_CTRL_1_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_ALU_CTRL)
      `AluCtrlEnum_binary_sequential_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_binary_sequential_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_binary_sequential_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL)
      `AluCtrlEnum_binary_sequential_ADD_SUB : _zz_decode_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_binary_sequential_SLT_SLTU : _zz_decode_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_binary_sequential_BITWISE : _zz_decode_ALU_CTRL_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_CTRL)
      `AluCtrlEnum_binary_sequential_ADD_SUB : _zz_decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_binary_sequential_SLT_SLTU : _zz_decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_binary_sequential_BITWISE : _zz_decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : _zz_decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_CTRL_1)
      `AluCtrlEnum_binary_sequential_ADD_SUB : _zz_decode_to_execute_ALU_CTRL_1_string = "ADD_SUB ";
      `AluCtrlEnum_binary_sequential_SLT_SLTU : _zz_decode_to_execute_ALU_CTRL_1_string = "SLT_SLTU";
      `AluCtrlEnum_binary_sequential_BITWISE : _zz_decode_to_execute_ALU_CTRL_1_string = "BITWISE ";
      default : _zz_decode_to_execute_ALU_CTRL_1_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_binary_sequential_RS : decode_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_binary_sequential_IMU : decode_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : decode_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_binary_sequential_URS1 : decode_SRC1_CTRL_string = "URS1        ";
      default : decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL)
      `Src1CtrlEnum_binary_sequential_RS : _zz_decode_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_binary_sequential_IMU : _zz_decode_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : _zz_decode_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_binary_sequential_URS1 : _zz_decode_SRC1_CTRL_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SRC1_CTRL)
      `Src1CtrlEnum_binary_sequential_RS : _zz_decode_to_execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_binary_sequential_IMU : _zz_decode_to_execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : _zz_decode_to_execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_binary_sequential_URS1 : _zz_decode_to_execute_SRC1_CTRL_string = "URS1        ";
      default : _zz_decode_to_execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SRC1_CTRL_1)
      `Src1CtrlEnum_binary_sequential_RS : _zz_decode_to_execute_SRC1_CTRL_1_string = "RS          ";
      `Src1CtrlEnum_binary_sequential_IMU : _zz_decode_to_execute_SRC1_CTRL_1_string = "IMU         ";
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : _zz_decode_to_execute_SRC1_CTRL_1_string = "PC_INCREMENT";
      `Src1CtrlEnum_binary_sequential_URS1 : _zz_decode_to_execute_SRC1_CTRL_1_string = "URS1        ";
      default : _zz_decode_to_execute_SRC1_CTRL_1_string = "????????????";
    endcase
  end
  always @(*) begin
    case(memory_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : memory_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : memory_ENV_CTRL_string = "XRET";
      default : memory_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_memory_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_memory_ENV_CTRL_string = "XRET";
      default : _zz_memory_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(execute_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : execute_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : execute_ENV_CTRL_string = "XRET";
      default : execute_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_execute_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_execute_ENV_CTRL_string = "XRET";
      default : _zz_execute_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : writeBack_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : writeBack_ENV_CTRL_string = "XRET";
      default : writeBack_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_writeBack_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_writeBack_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_writeBack_ENV_CTRL_string = "XRET";
      default : _zz_writeBack_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_INC : execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_binary_sequential_B : execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_binary_sequential_JAL : execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_binary_sequential_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_INC : _zz_execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_binary_sequential_B : _zz_execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_binary_sequential_JAL : _zz_execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_binary_sequential_JALR : _zz_execute_BRANCH_CTRL_string = "JALR";
      default : _zz_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(memory_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : memory_SHIFT_CTRL_string = "SRA_1    ";
      default : memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : _zz_memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : _zz_memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : _zz_memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : _zz_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : execute_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : _zz_execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : _zz_execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : _zz_execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : _zz_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SRC2_CTRL)
      `Src2CtrlEnum_binary_sequential_RS : execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_binary_sequential_IMI : execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_binary_sequential_IMS : execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_binary_sequential_PC : execute_SRC2_CTRL_string = "PC ";
      default : execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_execute_SRC2_CTRL)
      `Src2CtrlEnum_binary_sequential_RS : _zz_execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_binary_sequential_IMI : _zz_execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_binary_sequential_IMS : _zz_execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_binary_sequential_PC : _zz_execute_SRC2_CTRL_string = "PC ";
      default : _zz_execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(execute_SRC1_CTRL)
      `Src1CtrlEnum_binary_sequential_RS : execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_binary_sequential_IMU : execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_binary_sequential_URS1 : execute_SRC1_CTRL_string = "URS1        ";
      default : execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_SRC1_CTRL)
      `Src1CtrlEnum_binary_sequential_RS : _zz_execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_binary_sequential_IMU : _zz_execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : _zz_execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_binary_sequential_URS1 : _zz_execute_SRC1_CTRL_string = "URS1        ";
      default : _zz_execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_binary_sequential_ADD_SUB : execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_binary_sequential_SLT_SLTU : execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_binary_sequential_BITWISE : execute_ALU_CTRL_string = "BITWISE ";
      default : execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ALU_CTRL)
      `AluCtrlEnum_binary_sequential_ADD_SUB : _zz_execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_binary_sequential_SLT_SLTU : _zz_execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_binary_sequential_BITWISE : _zz_execute_ALU_CTRL_string = "BITWISE ";
      default : _zz_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_binary_sequential_XOR_1 : execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_binary_sequential_XOR_1 : _zz_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : _zz_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : _zz_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL_1)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_decode_ENV_CTRL_1_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_decode_ENV_CTRL_1_string = "XRET";
      default : _zz_decode_ENV_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_INC : _zz_decode_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_binary_sequential_B : _zz_decode_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_binary_sequential_JAL : _zz_decode_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_binary_sequential_JALR : _zz_decode_BRANCH_CTRL_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL_1)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : _zz_decode_SHIFT_CTRL_1_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : _zz_decode_SHIFT_CTRL_1_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : _zz_decode_SHIFT_CTRL_1_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : _zz_decode_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL_1)
      `AluBitwiseCtrlEnum_binary_sequential_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "XOR_1";
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "OR_1 ";
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL_1)
      `Src2CtrlEnum_binary_sequential_RS : _zz_decode_SRC2_CTRL_1_string = "RS ";
      `Src2CtrlEnum_binary_sequential_IMI : _zz_decode_SRC2_CTRL_1_string = "IMI";
      `Src2CtrlEnum_binary_sequential_IMS : _zz_decode_SRC2_CTRL_1_string = "IMS";
      `Src2CtrlEnum_binary_sequential_PC : _zz_decode_SRC2_CTRL_1_string = "PC ";
      default : _zz_decode_SRC2_CTRL_1_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL_1)
      `AluCtrlEnum_binary_sequential_ADD_SUB : _zz_decode_ALU_CTRL_1_string = "ADD_SUB ";
      `AluCtrlEnum_binary_sequential_SLT_SLTU : _zz_decode_ALU_CTRL_1_string = "SLT_SLTU";
      `AluCtrlEnum_binary_sequential_BITWISE : _zz_decode_ALU_CTRL_1_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_1_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL_1)
      `Src1CtrlEnum_binary_sequential_RS : _zz_decode_SRC1_CTRL_1_string = "RS          ";
      `Src1CtrlEnum_binary_sequential_IMU : _zz_decode_SRC1_CTRL_1_string = "IMU         ";
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : _zz_decode_SRC1_CTRL_1_string = "PC_INCREMENT";
      `Src1CtrlEnum_binary_sequential_URS1 : _zz_decode_SRC1_CTRL_1_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_1_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_INC : decode_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_binary_sequential_B : decode_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_binary_sequential_JAL : decode_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_binary_sequential_JALR : decode_BRANCH_CTRL_string = "JALR";
      default : decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL_1)
      `BranchCtrlEnum_binary_sequential_INC : _zz_decode_BRANCH_CTRL_1_string = "INC ";
      `BranchCtrlEnum_binary_sequential_B : _zz_decode_BRANCH_CTRL_1_string = "B   ";
      `BranchCtrlEnum_binary_sequential_JAL : _zz_decode_BRANCH_CTRL_1_string = "JAL ";
      `BranchCtrlEnum_binary_sequential_JALR : _zz_decode_BRANCH_CTRL_1_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL_2)
      `Src1CtrlEnum_binary_sequential_RS : _zz_decode_SRC1_CTRL_2_string = "RS          ";
      `Src1CtrlEnum_binary_sequential_IMU : _zz_decode_SRC1_CTRL_2_string = "IMU         ";
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : _zz_decode_SRC1_CTRL_2_string = "PC_INCREMENT";
      `Src1CtrlEnum_binary_sequential_URS1 : _zz_decode_SRC1_CTRL_2_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_2_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL_2)
      `AluCtrlEnum_binary_sequential_ADD_SUB : _zz_decode_ALU_CTRL_2_string = "ADD_SUB ";
      `AluCtrlEnum_binary_sequential_SLT_SLTU : _zz_decode_ALU_CTRL_2_string = "SLT_SLTU";
      `AluCtrlEnum_binary_sequential_BITWISE : _zz_decode_ALU_CTRL_2_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_2_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL_2)
      `Src2CtrlEnum_binary_sequential_RS : _zz_decode_SRC2_CTRL_2_string = "RS ";
      `Src2CtrlEnum_binary_sequential_IMI : _zz_decode_SRC2_CTRL_2_string = "IMI";
      `Src2CtrlEnum_binary_sequential_IMS : _zz_decode_SRC2_CTRL_2_string = "IMS";
      `Src2CtrlEnum_binary_sequential_PC : _zz_decode_SRC2_CTRL_2_string = "PC ";
      default : _zz_decode_SRC2_CTRL_2_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL_2)
      `AluBitwiseCtrlEnum_binary_sequential_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "XOR_1";
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "OR_1 ";
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_2_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL_2)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : _zz_decode_SHIFT_CTRL_2_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : _zz_decode_SHIFT_CTRL_2_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : _zz_decode_SHIFT_CTRL_2_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : _zz_decode_SHIFT_CTRL_2_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_2_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL_2)
      `BranchCtrlEnum_binary_sequential_INC : _zz_decode_BRANCH_CTRL_2_string = "INC ";
      `BranchCtrlEnum_binary_sequential_B : _zz_decode_BRANCH_CTRL_2_string = "B   ";
      `BranchCtrlEnum_binary_sequential_JAL : _zz_decode_BRANCH_CTRL_2_string = "JAL ";
      `BranchCtrlEnum_binary_sequential_JALR : _zz_decode_BRANCH_CTRL_2_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_2_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL_7)
      `EnvCtrlEnum_binary_sequential_NONE : _zz_decode_ENV_CTRL_7_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : _zz_decode_ENV_CTRL_7_string = "XRET";
      default : _zz_decode_ENV_CTRL_7_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC1_CTRL)
      `Src1CtrlEnum_binary_sequential_RS : decode_to_execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_binary_sequential_IMU : decode_to_execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : decode_to_execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_binary_sequential_URS1 : decode_to_execute_SRC1_CTRL_string = "URS1        ";
      default : decode_to_execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_CTRL)
      `AluCtrlEnum_binary_sequential_ADD_SUB : decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_binary_sequential_SLT_SLTU : decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_binary_sequential_BITWISE : decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC2_CTRL)
      `Src2CtrlEnum_binary_sequential_RS : decode_to_execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_binary_sequential_IMI : decode_to_execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_binary_sequential_IMS : decode_to_execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_binary_sequential_PC : decode_to_execute_SRC2_CTRL_string = "PC ";
      default : decode_to_execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_binary_sequential_XOR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequential_DISABLE_1 : execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_binary_sequential_SLL_1 : execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRL_1 : execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_binary_sequential_SRA_1 : execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_INC : decode_to_execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_binary_sequential_B : decode_to_execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_binary_sequential_JAL : decode_to_execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_binary_sequential_JALR : decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : decode_to_execute_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : decode_to_execute_ENV_CTRL_string = "XRET";
      default : decode_to_execute_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : execute_to_memory_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : execute_to_memory_ENV_CTRL_string = "XRET";
      default : execute_to_memory_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_ENV_CTRL)
      `EnvCtrlEnum_binary_sequential_NONE : memory_to_writeBack_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_binary_sequential_XRET : memory_to_writeBack_ENV_CTRL_string = "XRET";
      default : memory_to_writeBack_ENV_CTRL_string = "????";
    endcase
  end
  `endif

  assign memory_MUL_LOW = ($signed(_zz_memory_MUL_LOW) + $signed(_zz_memory_MUL_LOW_7));
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_BRANCH_DO = ((execute_PREDICTION_HAD_BRANCHED2 != execute_BRANCH_COND_RESULT) || execute_BranchPlugin_missAlignedTarget);
  assign memory_MUL_HH = execute_to_memory_MUL_HH;
  assign execute_MUL_HH = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_HL = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bSLow));
  assign execute_MUL_LH = ($signed(execute_MulPlugin_aSLow) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_LL = (execute_MulPlugin_aULow * execute_MulPlugin_bULow);
  assign execute_SHIFT_RIGHT = _zz_execute_SHIFT_RIGHT;
  assign execute_REGFILE_WRITE_DATA = _zz_execute_REGFILE_WRITE_DATA;
  assign memory_MEMORY_STORE_DATA_RF = execute_to_memory_MEMORY_STORE_DATA_RF;
  assign execute_MEMORY_STORE_DATA_RF = _zz_execute_MEMORY_STORE_DATA_RF;
  assign decode_DO_EBREAK = (((! DebugPlugin_haltIt) && (decode_IS_EBREAK || 1'b0)) && DebugPlugin_allowEBreak);
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == 2'b01) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == 2'b11) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign decode_PREDICTION_HAD_BRANCHED2 = IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign _zz_memory_to_writeBack_ENV_CTRL = _zz_memory_to_writeBack_ENV_CTRL_1;
  assign _zz_execute_to_memory_ENV_CTRL = _zz_execute_to_memory_ENV_CTRL_1;
  assign decode_ENV_CTRL = _zz_decode_ENV_CTRL;
  assign _zz_decode_to_execute_ENV_CTRL = _zz_decode_to_execute_ENV_CTRL_1;
  assign decode_IS_CSR = _zz_decode_ENV_CTRL_2[29];
  assign _zz_decode_to_execute_BRANCH_CTRL = _zz_decode_to_execute_BRANCH_CTRL_1;
  assign decode_IS_RS2_SIGNED = _zz_decode_ENV_CTRL_2[26];
  assign decode_IS_RS1_SIGNED = _zz_decode_ENV_CTRL_2[25];
  assign decode_IS_DIV = _zz_decode_ENV_CTRL_2[24];
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign decode_IS_MUL = _zz_decode_ENV_CTRL_2[23];
  assign _zz_execute_to_memory_SHIFT_CTRL = _zz_execute_to_memory_SHIFT_CTRL_1;
  assign decode_SHIFT_CTRL = _zz_decode_SHIFT_CTRL;
  assign _zz_decode_to_execute_SHIFT_CTRL = _zz_decode_to_execute_SHIFT_CTRL_1;
  assign decode_ALU_BITWISE_CTRL = _zz_decode_ALU_BITWISE_CTRL;
  assign _zz_decode_to_execute_ALU_BITWISE_CTRL = _zz_decode_to_execute_ALU_BITWISE_CTRL_1;
  assign decode_SRC_LESS_UNSIGNED = _zz_decode_ENV_CTRL_2[17];
  assign decode_MEMORY_MANAGMENT = _zz_decode_ENV_CTRL_2[16];
  assign memory_MEMORY_WR = execute_to_memory_MEMORY_WR;
  assign decode_MEMORY_WR = _zz_decode_ENV_CTRL_2[13];
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_decode_ENV_CTRL_2[12];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_decode_ENV_CTRL_2[11];
  assign decode_SRC2_CTRL = _zz_decode_SRC2_CTRL;
  assign _zz_decode_to_execute_SRC2_CTRL = _zz_decode_to_execute_SRC2_CTRL_1;
  assign decode_ALU_CTRL = _zz_decode_ALU_CTRL;
  assign _zz_decode_to_execute_ALU_CTRL = _zz_decode_to_execute_ALU_CTRL_1;
  assign decode_SRC1_CTRL = _zz_decode_SRC1_CTRL;
  assign _zz_decode_to_execute_SRC1_CTRL = _zz_decode_to_execute_SRC1_CTRL_1;
  assign decode_MEMORY_FORCE_CONSTISTENCY = 1'b0;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + 32'h00000004);
  assign memory_PC = execute_to_memory_PC;
  assign execute_DO_EBREAK = decode_to_execute_DO_EBREAK;
  assign decode_IS_EBREAK = _zz_decode_ENV_CTRL_2[31];
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_memory_ENV_CTRL;
  assign execute_ENV_CTRL = _zz_execute_ENV_CTRL;
  assign writeBack_ENV_CTRL = _zz_writeBack_ENV_CTRL;
  assign memory_BRANCH_CALC = execute_to_memory_BRANCH_CALC;
  assign memory_BRANCH_DO = execute_to_memory_BRANCH_DO;
  assign execute_PC = decode_to_execute_PC;
  assign execute_PREDICTION_HAD_BRANCHED2 = decode_to_execute_PREDICTION_HAD_BRANCHED2;
  assign execute_BRANCH_COND_RESULT = _zz_execute_BRANCH_COND_RESULT_1;
  assign execute_BRANCH_CTRL = _zz_execute_BRANCH_CTRL;
  assign decode_RS2_USE = _zz_decode_ENV_CTRL_2[15];
  assign decode_RS1_USE = _zz_decode_ENV_CTRL_2[5];
  always @(*) begin
    _zz_decode_RS2 = execute_REGFILE_WRITE_DATA;
    if(when_CsrPlugin_l1176) begin
      _zz_decode_RS2 = CsrPlugin_csrMapping_readDataSignal;
    end
  end

  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @(*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(HazardSimplePlugin_writeBackBuffer_valid) begin
      if(HazardSimplePlugin_addr1Match) begin
        decode_RS2 = HazardSimplePlugin_writeBackBuffer_payload_data;
      end
    end
    if(when_HazardSimplePlugin_l45) begin
      if(when_HazardSimplePlugin_l47) begin
        if(when_HazardSimplePlugin_l51) begin
          decode_RS2 = _zz_decode_RS2_2;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_1) begin
      if(memory_BYPASSABLE_MEMORY_STAGE) begin
        if(when_HazardSimplePlugin_l51_1) begin
          decode_RS2 = _zz_decode_RS2_1;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_2) begin
      if(execute_BYPASSABLE_EXECUTE_STAGE) begin
        if(when_HazardSimplePlugin_l51_2) begin
          decode_RS2 = _zz_decode_RS2;
        end
      end
    end
  end

  always @(*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(HazardSimplePlugin_writeBackBuffer_valid) begin
      if(HazardSimplePlugin_addr0Match) begin
        decode_RS1 = HazardSimplePlugin_writeBackBuffer_payload_data;
      end
    end
    if(when_HazardSimplePlugin_l45) begin
      if(when_HazardSimplePlugin_l47) begin
        if(when_HazardSimplePlugin_l48) begin
          decode_RS1 = _zz_decode_RS2_2;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_1) begin
      if(memory_BYPASSABLE_MEMORY_STAGE) begin
        if(when_HazardSimplePlugin_l48_1) begin
          decode_RS1 = _zz_decode_RS2_1;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_2) begin
      if(execute_BYPASSABLE_EXECUTE_STAGE) begin
        if(when_HazardSimplePlugin_l48_2) begin
          decode_RS1 = _zz_decode_RS2;
        end
      end
    end
  end

  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign writeBack_IS_MUL = memory_to_writeBack_IS_MUL;
  assign writeBack_MUL_HH = memory_to_writeBack_MUL_HH;
  assign writeBack_MUL_LOW = memory_to_writeBack_MUL_LOW;
  assign memory_MUL_HL = execute_to_memory_MUL_HL;
  assign memory_MUL_LH = execute_to_memory_MUL_LH;
  assign memory_MUL_LL = execute_to_memory_MUL_LL;
  assign execute_RS1 = decode_to_execute_RS1;
  assign memory_SHIFT_RIGHT = execute_to_memory_SHIFT_RIGHT;
  always @(*) begin
    _zz_decode_RS2_1 = memory_REGFILE_WRITE_DATA;
    if(memory_arbitration_isValid) begin
      case(memory_SHIFT_CTRL)
        `ShiftCtrlEnum_binary_sequential_SLL_1 : begin
          _zz_decode_RS2_1 = _zz_decode_RS2_3;
        end
        `ShiftCtrlEnum_binary_sequential_SRL_1, `ShiftCtrlEnum_binary_sequential_SRA_1 : begin
          _zz_decode_RS2_1 = memory_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
    if(when_MulDivIterativePlugin_l128) begin
      _zz_decode_RS2_1 = memory_DivPlugin_div_result;
    end
  end

  assign memory_SHIFT_CTRL = _zz_memory_SHIFT_CTRL;
  assign execute_SHIFT_CTRL = _zz_execute_SHIFT_CTRL;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_execute_SRC2 = execute_PC;
  assign execute_SRC2_CTRL = _zz_execute_SRC2_CTRL;
  assign execute_SRC1_CTRL = _zz_execute_SRC1_CTRL;
  assign decode_SRC_USE_SUB_LESS = _zz_decode_ENV_CTRL_2[3];
  assign decode_SRC_ADD_ZERO = _zz_decode_ENV_CTRL_2[20];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_execute_ALU_CTRL;
  assign execute_SRC2 = _zz_execute_SRC2_5;
  assign execute_SRC1 = _zz_execute_SRC1;
  assign execute_ALU_BITWISE_CTRL = _zz_execute_ALU_BITWISE_CTRL;
  assign _zz_lastStageRegFileWrite_payload_address = writeBack_INSTRUCTION;
  assign _zz_lastStageRegFileWrite_valid = writeBack_REGFILE_WRITE_VALID;
  always @(*) begin
    _zz_1 = 1'b0;
    if(lastStageRegFileWrite_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusCachedPlugin_cache_io_cpu_fetch_data);
  always @(*) begin
    decode_REGFILE_WRITE_VALID = _zz_decode_ENV_CTRL_2[10];
    if(when_RegFilePlugin_l63) begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = ({((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION) == 32'h00001073),{(_zz_decode_LEGAL_INSTRUCTION_1 == _zz_decode_LEGAL_INSTRUCTION_2),{_zz_decode_LEGAL_INSTRUCTION_3,{_zz_decode_LEGAL_INSTRUCTION_4,_zz_decode_LEGAL_INSTRUCTION_5}}}}}}} != 20'h0);
  always @(*) begin
    _zz_decode_RS2_2 = writeBack_REGFILE_WRITE_DATA;
    if(when_DBusCachedPlugin_l484) begin
      _zz_decode_RS2_2 = writeBack_DBusCachedPlugin_rspFormated;
    end
    if(when_MulPlugin_l147) begin
      case(switch_MulPlugin_l148)
        2'b00 : begin
          _zz_decode_RS2_2 = _zz__zz_decode_RS2_2;
        end
        default : begin
          _zz_decode_RS2_2 = _zz__zz_decode_RS2_2_1;
        end
      endcase
    end
  end

  assign writeBack_MEMORY_WR = memory_to_writeBack_MEMORY_WR;
  assign writeBack_MEMORY_STORE_DATA_RF = memory_to_writeBack_MEMORY_STORE_DATA_RF;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_MEMORY_ENABLE;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_MEMORY_FORCE_CONSTISTENCY = decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  assign execute_MEMORY_MANAGMENT = decode_to_execute_MEMORY_MANAGMENT;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_MEMORY_WR = decode_to_execute_MEMORY_WR;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign decode_MEMORY_ENABLE = _zz_decode_ENV_CTRL_2[4];
  assign decode_FLUSH_ALL = _zz_decode_ENV_CTRL_2[0];
  always @(*) begin
    IBusCachedPlugin_rsp_issueDetected_4 = IBusCachedPlugin_rsp_issueDetected_3;
    if(when_IBusCachedPlugin_l256) begin
      IBusCachedPlugin_rsp_issueDetected_4 = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_rsp_issueDetected_3 = IBusCachedPlugin_rsp_issueDetected_2;
    if(when_IBusCachedPlugin_l250) begin
      IBusCachedPlugin_rsp_issueDetected_3 = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_rsp_issueDetected_2 = IBusCachedPlugin_rsp_issueDetected_1;
    if(when_IBusCachedPlugin_l244) begin
      IBusCachedPlugin_rsp_issueDetected_2 = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_rsp_issueDetected_1 = IBusCachedPlugin_rsp_issueDetected;
    if(when_IBusCachedPlugin_l239) begin
      IBusCachedPlugin_rsp_issueDetected_1 = 1'b1;
    end
  end

  assign decode_BRANCH_CTRL = _zz_decode_BRANCH_CTRL_1;
  assign decode_INSTRUCTION = IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  always @(*) begin
    _zz_memory_to_writeBack_FORMAL_PC_NEXT = memory_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid) begin
      _zz_memory_to_writeBack_FORMAL_PC_NEXT = BranchPlugin_jumpInterface_payload;
    end
  end

  always @(*) begin
    _zz_decode_to_execute_FORMAL_PC_NEXT = decode_FORMAL_PC_NEXT;
    if(IBusCachedPlugin_predictionJumpInterface_valid) begin
      _zz_decode_to_execute_FORMAL_PC_NEXT = IBusCachedPlugin_predictionJumpInterface_payload;
    end
  end

  assign decode_PC = IBusCachedPlugin_iBusRsp_output_payload_pc;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @(*) begin
    decode_arbitration_haltItself = 1'b0;
    if(when_DBusCachedPlugin_l303) begin
      decode_arbitration_haltItself = 1'b1;
    end
    case(switch_Fetcher_l362)
      3'b010 : begin
        decode_arbitration_haltItself = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    decode_arbitration_haltByOther = 1'b0;
    if(when_HazardSimplePlugin_l113) begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(CsrPlugin_pipelineLiberator_active) begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(when_CsrPlugin_l1116) begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @(*) begin
    decode_arbitration_removeIt = 1'b0;
    if(_zz_when) begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed) begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @(*) begin
    decode_arbitration_flushNext = 1'b0;
    if(IBusCachedPlugin_predictionJumpInterface_valid) begin
      decode_arbitration_flushNext = 1'b1;
    end
    if(_zz_when) begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @(*) begin
    execute_arbitration_haltItself = 1'b0;
    if(when_DBusCachedPlugin_l343) begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(when_CsrPlugin_l1180) begin
      if(execute_CsrPlugin_blockedBySideEffects) begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  always @(*) begin
    execute_arbitration_haltByOther = 1'b0;
    if(when_DBusCachedPlugin_l359) begin
      execute_arbitration_haltByOther = 1'b1;
    end
    if(when_DebugPlugin_l284) begin
      execute_arbitration_haltByOther = 1'b1;
    end
  end

  always @(*) begin
    execute_arbitration_removeIt = 1'b0;
    if(execute_arbitration_isFlushed) begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  always @(*) begin
    execute_arbitration_flushIt = 1'b0;
    if(when_DebugPlugin_l284) begin
      if(when_DebugPlugin_l287) begin
        execute_arbitration_flushIt = 1'b1;
      end
    end
  end

  always @(*) begin
    execute_arbitration_flushNext = 1'b0;
    if(when_DebugPlugin_l284) begin
      if(when_DebugPlugin_l287) begin
        execute_arbitration_flushNext = 1'b1;
      end
    end
  end

  always @(*) begin
    memory_arbitration_haltItself = 1'b0;
    if(when_MulDivIterativePlugin_l128) begin
      if(when_MulDivIterativePlugin_l129) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @(*) begin
    memory_arbitration_removeIt = 1'b0;
    if(BranchPlugin_branchExceptionPort_valid) begin
      memory_arbitration_removeIt = 1'b1;
    end
    if(memory_arbitration_isFlushed) begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  always @(*) begin
    memory_arbitration_flushNext = 1'b0;
    if(BranchPlugin_jumpInterface_valid) begin
      memory_arbitration_flushNext = 1'b1;
    end
    if(BranchPlugin_branchExceptionPort_valid) begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  always @(*) begin
    writeBack_arbitration_haltItself = 1'b0;
    if(when_DBusCachedPlugin_l458) begin
      writeBack_arbitration_haltItself = 1'b1;
    end
  end

  assign writeBack_arbitration_haltByOther = 1'b0;
  always @(*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(DBusCachedPlugin_exceptionBus_valid) begin
      writeBack_arbitration_removeIt = 1'b1;
    end
    if(writeBack_arbitration_isFlushed) begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  always @(*) begin
    writeBack_arbitration_flushIt = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid) begin
      writeBack_arbitration_flushIt = 1'b1;
    end
  end

  always @(*) begin
    writeBack_arbitration_flushNext = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(DBusCachedPlugin_exceptionBus_valid) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(when_CsrPlugin_l1019) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(when_CsrPlugin_l1064) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  always @(*) begin
    IBusCachedPlugin_fetcherHalt = 1'b0;
    if(when_CsrPlugin_l922) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(when_CsrPlugin_l1019) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(when_CsrPlugin_l1064) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(when_DebugPlugin_l284) begin
      if(when_DebugPlugin_l287) begin
        IBusCachedPlugin_fetcherHalt = 1'b1;
      end
    end
    if(DebugPlugin_haltIt) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(when_DebugPlugin_l300) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_incomingInstruction = 1'b0;
    if(when_Fetcher_l240) begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_DBusCachedPlugin_l386 = 1'b0;
    if(DebugPlugin_godmode) begin
      _zz_when_DBusCachedPlugin_l386 = 1'b1;
    end
  end

  assign CsrPlugin_csrMapping_allowCsrSignal = 1'b0;
  assign CsrPlugin_csrMapping_readDataSignal = CsrPlugin_csrMapping_readDataInit;
  assign CsrPlugin_inWfi = 1'b0;
  always @(*) begin
    CsrPlugin_thirdPartyWake = 1'b0;
    if(DebugPlugin_haltIt) begin
      CsrPlugin_thirdPartyWake = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(when_CsrPlugin_l1019) begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(when_CsrPlugin_l1064) begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_jumpInterface_payload = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    if(when_CsrPlugin_l1019) begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(when_CsrPlugin_l1064) begin
      case(switch_CsrPlugin_l1068)
        2'b11 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_mepc;
        end
        default : begin
        end
      endcase
    end
  end

  always @(*) begin
    CsrPlugin_forceMachineWire = 1'b0;
    if(DebugPlugin_godmode) begin
      CsrPlugin_forceMachineWire = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_allowInterrupts = 1'b1;
    if(when_DebugPlugin_l316) begin
      CsrPlugin_allowInterrupts = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_allowException = 1'b1;
    if(DebugPlugin_godmode) begin
      CsrPlugin_allowException = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_allowEbreakException = 1'b1;
    if(DebugPlugin_allowEBreak) begin
      CsrPlugin_allowEbreakException = 1'b0;
    end
  end

  assign IBusCachedPlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != 4'b0000);
  assign IBusCachedPlugin_jump_pcLoad_valid = ({CsrPlugin_jumpInterface_valid,{BranchPlugin_jumpInterface_valid,{DBusCachedPlugin_redoBranch_valid,IBusCachedPlugin_predictionJumpInterface_valid}}} != 4'b0000);
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload = {IBusCachedPlugin_predictionJumpInterface_valid,{BranchPlugin_jumpInterface_valid,{CsrPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}}};
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_1 = (_zz_IBusCachedPlugin_jump_pcLoad_payload & (~ _zz__zz_IBusCachedPlugin_jump_pcLoad_payload_1));
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_2 = _zz_IBusCachedPlugin_jump_pcLoad_payload_1[3];
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_3 = (_zz_IBusCachedPlugin_jump_pcLoad_payload_1[1] || _zz_IBusCachedPlugin_jump_pcLoad_payload_2);
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_4 = (_zz_IBusCachedPlugin_jump_pcLoad_payload_1[2] || _zz_IBusCachedPlugin_jump_pcLoad_payload_2);
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_IBusCachedPlugin_jump_pcLoad_payload_5;
  always @(*) begin
    IBusCachedPlugin_fetchPc_correction = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid) begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid) begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_output_fire = (IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready);
  assign IBusCachedPlugin_fetchPc_corrected = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_correctionReg);
  always @(*) begin
    IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b0;
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready) begin
      IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b1;
    end
  end

  assign when_Fetcher_l131 = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_pcRegPropagate);
  assign IBusCachedPlugin_fetchPc_output_fire_1 = (IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready);
  assign when_Fetcher_l131_1 = ((! IBusCachedPlugin_fetchPc_output_valid) && IBusCachedPlugin_fetchPc_output_ready);
  always @(*) begin
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_IBusCachedPlugin_fetchPc_pc);
    if(IBusCachedPlugin_fetchPc_redo_valid) begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_fetchPc_redo_payload;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid) begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_jump_pcLoad_payload;
    end
    IBusCachedPlugin_fetchPc_pc[0] = 1'b0;
    IBusCachedPlugin_fetchPc_pc[1] = 1'b0;
  end

  always @(*) begin
    IBusCachedPlugin_fetchPc_flushed = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid) begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid) begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign when_Fetcher_l158 = (IBusCachedPlugin_fetchPc_booted && ((IBusCachedPlugin_fetchPc_output_ready || IBusCachedPlugin_fetchPc_correction) || IBusCachedPlugin_fetchPc_pcRegPropagate));
  assign IBusCachedPlugin_fetchPc_output_valid = ((! IBusCachedPlugin_fetcherHalt) && IBusCachedPlugin_fetchPc_booted);
  assign IBusCachedPlugin_fetchPc_output_payload = IBusCachedPlugin_fetchPc_pc;
  always @(*) begin
    IBusCachedPlugin_iBusRsp_redoFetch = 1'b0;
    if(IBusCachedPlugin_rsp_redoFetch) begin
      IBusCachedPlugin_iBusRsp_redoFetch = 1'b1;
    end
  end

  assign IBusCachedPlugin_iBusRsp_stages_0_input_valid = IBusCachedPlugin_fetchPc_output_valid;
  assign IBusCachedPlugin_fetchPc_output_ready = IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_payload = IBusCachedPlugin_fetchPc_output_payload;
  always @(*) begin
    IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_prefetch_haltIt) begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_IBusCachedPlugin_iBusRsp_stages_0_input_ready = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_IBusCachedPlugin_iBusRsp_stages_0_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_IBusCachedPlugin_iBusRsp_stages_0_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  always @(*) begin
    IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
    if(IBusCachedPlugin_mmuBus_busy) begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_IBusCachedPlugin_iBusRsp_stages_1_input_ready = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  always @(*) begin
    IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b0;
    if(when_IBusCachedPlugin_l267) begin
      IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b1;
    end
  end

  assign _zz_IBusCachedPlugin_iBusRsp_stages_2_input_ready = (! IBusCachedPlugin_iBusRsp_stages_2_halt);
  assign IBusCachedPlugin_iBusRsp_stages_2_input_ready = (IBusCachedPlugin_iBusRsp_stages_2_output_ready && _zz_IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_valid = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && _zz_IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  assign IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_iBusRsp_flush = ((decode_arbitration_removeIt || (decode_arbitration_flushNext && (! decode_arbitration_isStuck))) || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  assign _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready = ((1'b0 && (! _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_1)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_1 = _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_1;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_valid)) || IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_ready);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_valid = _zz_IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_valid;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_payload = _zz_IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_payload;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_valid = IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_valid;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_ready = IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_payload = IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_payload;
  always @(*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if(when_Fetcher_l320) begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign when_Fetcher_l240 = (IBusCachedPlugin_iBusRsp_stages_1_input_valid || IBusCachedPlugin_iBusRsp_stages_2_input_valid);
  assign when_Fetcher_l320 = (! IBusCachedPlugin_pcValids_0);
  assign when_Fetcher_l329 = (! (! IBusCachedPlugin_iBusRsp_stages_1_input_ready));
  assign when_Fetcher_l329_1 = (! (! IBusCachedPlugin_iBusRsp_stages_2_input_ready));
  assign when_Fetcher_l329_2 = (! execute_arbitration_isStuck);
  assign when_Fetcher_l329_3 = (! memory_arbitration_isStuck);
  assign when_Fetcher_l329_4 = (! writeBack_arbitration_isStuck);
  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_1;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_pcValids_3 = IBusCachedPlugin_injector_nextPcCalc_valids_4;
  assign IBusCachedPlugin_iBusRsp_output_ready = (! decode_arbitration_isStuck);
  always @(*) begin
    decode_arbitration_isValid = IBusCachedPlugin_iBusRsp_output_valid;
    case(switch_Fetcher_l362)
      3'b010 : begin
        decode_arbitration_isValid = 1'b1;
      end
      3'b011 : begin
        decode_arbitration_isValid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch = _zz__zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch[11];
  always @(*) begin
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[18] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[17] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[16] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[15] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[14] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[13] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[12] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[11] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[10] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[9] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[8] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[7] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[6] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[5] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[4] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[3] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[2] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[1] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[0] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  end

  always @(*) begin
    IBusCachedPlugin_decodePrediction_cmd_hadBranch = ((decode_BRANCH_CTRL == `BranchCtrlEnum_binary_sequential_JAL) || ((decode_BRANCH_CTRL == `BranchCtrlEnum_binary_sequential_B) && _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_2[31]));
    if(_zz_6) begin
      IBusCachedPlugin_decodePrediction_cmd_hadBranch = 1'b0;
    end
  end

  assign _zz_2 = _zz__zz_2[19];
  always @(*) begin
    _zz_3[10] = _zz_2;
    _zz_3[9] = _zz_2;
    _zz_3[8] = _zz_2;
    _zz_3[7] = _zz_2;
    _zz_3[6] = _zz_2;
    _zz_3[5] = _zz_2;
    _zz_3[4] = _zz_2;
    _zz_3[3] = _zz_2;
    _zz_3[2] = _zz_2;
    _zz_3[1] = _zz_2;
    _zz_3[0] = _zz_2;
  end

  assign _zz_4 = _zz__zz_4[11];
  always @(*) begin
    _zz_5[18] = _zz_4;
    _zz_5[17] = _zz_4;
    _zz_5[16] = _zz_4;
    _zz_5[15] = _zz_4;
    _zz_5[14] = _zz_4;
    _zz_5[13] = _zz_4;
    _zz_5[12] = _zz_4;
    _zz_5[11] = _zz_4;
    _zz_5[10] = _zz_4;
    _zz_5[9] = _zz_4;
    _zz_5[8] = _zz_4;
    _zz_5[7] = _zz_4;
    _zz_5[6] = _zz_4;
    _zz_5[5] = _zz_4;
    _zz_5[4] = _zz_4;
    _zz_5[3] = _zz_4;
    _zz_5[2] = _zz_4;
    _zz_5[1] = _zz_4;
    _zz_5[0] = _zz_4;
  end

  always @(*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_JAL : begin
        _zz_6 = _zz__zz_6[1];
      end
      default : begin
        _zz_6 = _zz__zz_6_1[1];
      end
    endcase
  end

  assign IBusCachedPlugin_predictionJumpInterface_valid = (decode_arbitration_isValid && IBusCachedPlugin_decodePrediction_cmd_hadBranch);
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload = _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload[19];
  always @(*) begin
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[10] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[9] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[8] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[7] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[6] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[5] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[4] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[3] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[2] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[1] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[0] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
  end

  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_2 = _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload_2[11];
  always @(*) begin
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[18] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[17] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[16] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[15] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[14] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[13] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[12] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[11] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[10] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[9] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[8] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[7] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[6] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[5] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[4] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[3] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[2] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[1] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[0] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
  end

  assign IBusCachedPlugin_predictionJumpInterface_payload = (decode_PC + ((decode_BRANCH_CTRL == `BranchCtrlEnum_binary_sequential_JAL) ? {{_zz_IBusCachedPlugin_predictionJumpInterface_payload_1,{{{_zz_IBusCachedPlugin_predictionJumpInterface_payload_4,decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_IBusCachedPlugin_predictionJumpInterface_payload_3,{{{_zz_IBusCachedPlugin_predictionJumpInterface_payload_5,_zz_IBusCachedPlugin_predictionJumpInterface_payload_6},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0}));
  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @(*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign IBusCachedPlugin_cache_io_cpu_prefetch_isValid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign IBusCachedPlugin_cache_io_cpu_fetch_isValid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign IBusCachedPlugin_cache_io_cpu_fetch_isStuck = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_isValid = IBusCachedPlugin_cache_io_cpu_fetch_isValid;
  assign IBusCachedPlugin_mmuBus_cmd_0_isStuck = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_virtualAddress = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign IBusCachedPlugin_mmuBus_end = (IBusCachedPlugin_iBusRsp_stages_1_input_ready || IBusCachedPlugin_externalFlush);
  assign IBusCachedPlugin_cache_io_cpu_decode_isValid = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && (! IBusCachedPlugin_s2_tightlyCoupledHit));
  assign IBusCachedPlugin_cache_io_cpu_decode_isStuck = (! IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign IBusCachedPlugin_cache_io_cpu_decode_isUser = (CsrPlugin_privilege == 2'b00);
  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @(*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(when_IBusCachedPlugin_l239) begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(when_IBusCachedPlugin_l250) begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_cache_io_cpu_fill_valid = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling));
    if(when_IBusCachedPlugin_l250) begin
      IBusCachedPlugin_cache_io_cpu_fill_valid = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(when_IBusCachedPlugin_l244) begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(when_IBusCachedPlugin_l256) begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @(*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = 4'bxxxx;
    if(when_IBusCachedPlugin_l244) begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b1100;
    end
    if(when_IBusCachedPlugin_l256) begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b0001;
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_2_input_payload[31 : 2],2'b00};
  assign when_IBusCachedPlugin_l239 = ((IBusCachedPlugin_cache_io_cpu_decode_isValid && IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign when_IBusCachedPlugin_l244 = ((IBusCachedPlugin_cache_io_cpu_decode_isValid && IBusCachedPlugin_cache_io_cpu_decode_mmuException) && (! IBusCachedPlugin_rsp_issueDetected_1));
  assign when_IBusCachedPlugin_l250 = ((IBusCachedPlugin_cache_io_cpu_decode_isValid && IBusCachedPlugin_cache_io_cpu_decode_cacheMiss) && (! IBusCachedPlugin_rsp_issueDetected_2));
  assign when_IBusCachedPlugin_l256 = ((IBusCachedPlugin_cache_io_cpu_decode_isValid && IBusCachedPlugin_cache_io_cpu_decode_error) && (! IBusCachedPlugin_rsp_issueDetected_3));
  assign when_IBusCachedPlugin_l267 = (IBusCachedPlugin_rsp_issueDetected_4 || IBusCachedPlugin_rsp_iBusRspOutputHalt);
  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_2_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  assign IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_decode_data;
  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  assign IBusCachedPlugin_cache_io_flush = (decode_arbitration_isValid && decode_FLUSH_ALL);
  assign dBus_cmd_valid = dataCache_1_io_mem_cmd_valid;
  assign dBus_cmd_payload_wr = dataCache_1_io_mem_cmd_payload_wr;
  assign dBus_cmd_payload_uncached = dataCache_1_io_mem_cmd_payload_uncached;
  assign dBus_cmd_payload_address = dataCache_1_io_mem_cmd_payload_address;
  assign dBus_cmd_payload_data = dataCache_1_io_mem_cmd_payload_data;
  assign dBus_cmd_payload_mask = dataCache_1_io_mem_cmd_payload_mask;
  assign dBus_cmd_payload_size = dataCache_1_io_mem_cmd_payload_size;
  assign dBus_cmd_payload_last = dataCache_1_io_mem_cmd_payload_last;
  assign when_DBusCachedPlugin_l303 = ((DBusCachedPlugin_mmuBus_busy && decode_arbitration_isValid) && decode_MEMORY_ENABLE);
  assign execute_DBusCachedPlugin_size = execute_INSTRUCTION[13 : 12];
  assign dataCache_1_io_cpu_execute_isValid = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
  assign dataCache_1_io_cpu_execute_address = execute_SRC_ADD;
  always @(*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_execute_MEMORY_STORE_DATA_RF = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_execute_MEMORY_STORE_DATA_RF = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_execute_MEMORY_STORE_DATA_RF = execute_RS2[31 : 0];
      end
    endcase
  end

  assign dataCache_1_io_cpu_flush_valid = (execute_arbitration_isValid && execute_MEMORY_MANAGMENT);
  assign dataCache_1_io_cpu_flush_isStall = (dataCache_1_io_cpu_flush_valid && (! dataCache_1_io_cpu_flush_ready));
  assign when_DBusCachedPlugin_l343 = (dataCache_1_io_cpu_flush_isStall || dataCache_1_io_cpu_execute_haltIt);
  assign when_DBusCachedPlugin_l359 = (dataCache_1_io_cpu_execute_refilling && execute_arbitration_isValid);
  assign dataCache_1_io_cpu_memory_isValid = (memory_arbitration_isValid && memory_MEMORY_ENABLE);
  assign dataCache_1_io_cpu_memory_address = memory_REGFILE_WRITE_DATA;
  assign DBusCachedPlugin_mmuBus_cmd_0_isValid = dataCache_1_io_cpu_memory_isValid;
  assign DBusCachedPlugin_mmuBus_cmd_0_isStuck = memory_arbitration_isStuck;
  assign DBusCachedPlugin_mmuBus_cmd_0_virtualAddress = dataCache_1_io_cpu_memory_address;
  assign DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign DBusCachedPlugin_mmuBus_end = ((! memory_arbitration_isStuck) || memory_arbitration_removeIt);
  always @(*) begin
    dataCache_1_io_cpu_memory_mmuRsp_isIoAccess = DBusCachedPlugin_mmuBus_rsp_isIoAccess;
    if(when_DBusCachedPlugin_l386) begin
      dataCache_1_io_cpu_memory_mmuRsp_isIoAccess = 1'b1;
    end
  end

  assign when_DBusCachedPlugin_l386 = (_zz_when_DBusCachedPlugin_l386 && (! dataCache_1_io_cpu_memory_isWrite));
  always @(*) begin
    dataCache_1_io_cpu_writeBack_isValid = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
    if(writeBack_arbitration_haltByOther) begin
      dataCache_1_io_cpu_writeBack_isValid = 1'b0;
    end
  end

  assign dataCache_1_io_cpu_writeBack_isUser = (CsrPlugin_privilege == 2'b00);
  assign dataCache_1_io_cpu_writeBack_address = writeBack_REGFILE_WRITE_DATA;
  assign dataCache_1_io_cpu_writeBack_storeData[31 : 0] = writeBack_MEMORY_STORE_DATA_RF;
  always @(*) begin
    DBusCachedPlugin_redoBranch_valid = 1'b0;
    if(when_DBusCachedPlugin_l438) begin
      if(dataCache_1_io_cpu_redo) begin
        DBusCachedPlugin_redoBranch_valid = 1'b1;
      end
    end
  end

  assign DBusCachedPlugin_redoBranch_payload = writeBack_PC;
  always @(*) begin
    DBusCachedPlugin_exceptionBus_valid = 1'b0;
    if(when_DBusCachedPlugin_l438) begin
      if(dataCache_1_io_cpu_writeBack_accessError) begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_mmuException) begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess) begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_redo) begin
        DBusCachedPlugin_exceptionBus_valid = 1'b0;
      end
    end
  end

  assign DBusCachedPlugin_exceptionBus_payload_badAddr = writeBack_REGFILE_WRITE_DATA;
  always @(*) begin
    DBusCachedPlugin_exceptionBus_payload_code = 4'bxxxx;
    if(when_DBusCachedPlugin_l438) begin
      if(dataCache_1_io_cpu_writeBack_accessError) begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_DBusCachedPlugin_exceptionBus_payload_code};
      end
      if(dataCache_1_io_cpu_writeBack_mmuException) begin
        DBusCachedPlugin_exceptionBus_payload_code = (writeBack_MEMORY_WR ? 4'b1111 : 4'b1101);
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess) begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_DBusCachedPlugin_exceptionBus_payload_code_1};
      end
    end
  end

  assign when_DBusCachedPlugin_l438 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign when_DBusCachedPlugin_l458 = (dataCache_1_io_cpu_writeBack_isValid && dataCache_1_io_cpu_writeBack_haltIt);
  assign writeBack_DBusCachedPlugin_rspSplits_0 = dataCache_1_io_cpu_writeBack_data[7 : 0];
  assign writeBack_DBusCachedPlugin_rspSplits_1 = dataCache_1_io_cpu_writeBack_data[15 : 8];
  assign writeBack_DBusCachedPlugin_rspSplits_2 = dataCache_1_io_cpu_writeBack_data[23 : 16];
  assign writeBack_DBusCachedPlugin_rspSplits_3 = dataCache_1_io_cpu_writeBack_data[31 : 24];
  always @(*) begin
    writeBack_DBusCachedPlugin_rspShifted[7 : 0] = _zz_writeBack_DBusCachedPlugin_rspShifted;
    writeBack_DBusCachedPlugin_rspShifted[15 : 8] = _zz_writeBack_DBusCachedPlugin_rspShifted_2;
    writeBack_DBusCachedPlugin_rspShifted[23 : 16] = writeBack_DBusCachedPlugin_rspSplits_2;
    writeBack_DBusCachedPlugin_rspShifted[31 : 24] = writeBack_DBusCachedPlugin_rspSplits_3;
  end

  assign writeBack_DBusCachedPlugin_rspRf = writeBack_DBusCachedPlugin_rspShifted[31 : 0];
  assign switch_Misc_l200 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_writeBack_DBusCachedPlugin_rspFormated = (writeBack_DBusCachedPlugin_rspRf[7] && (! writeBack_INSTRUCTION[14]));
  always @(*) begin
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[31] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[30] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[29] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[28] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[27] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[26] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[25] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[24] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[23] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[22] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[21] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[20] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[19] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[18] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[17] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[16] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[15] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[14] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[13] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[12] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[11] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[10] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[9] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[8] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[7 : 0] = writeBack_DBusCachedPlugin_rspRf[7 : 0];
  end

  assign _zz_writeBack_DBusCachedPlugin_rspFormated_2 = (writeBack_DBusCachedPlugin_rspRf[15] && (! writeBack_INSTRUCTION[14]));
  always @(*) begin
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[31] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[30] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[29] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[28] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[27] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[26] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[25] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[24] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[23] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[22] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[21] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[20] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[19] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[18] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[17] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[16] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[15 : 0] = writeBack_DBusCachedPlugin_rspRf[15 : 0];
  end

  always @(*) begin
    case(switch_Misc_l200)
      2'b00 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_writeBack_DBusCachedPlugin_rspFormated_1;
      end
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_writeBack_DBusCachedPlugin_rspFormated_3;
      end
      default : begin
        writeBack_DBusCachedPlugin_rspFormated = writeBack_DBusCachedPlugin_rspRf;
      end
    endcase
  end

  assign when_DBusCachedPlugin_l484 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign IBusCachedPlugin_mmuBus_rsp_physicalAddress = IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  assign IBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_isIoAccess = (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31 : 28] == 4'b1111);
  assign IBusCachedPlugin_mmuBus_rsp_isPaging = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign IBusCachedPlugin_mmuBus_busy = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_physicalAddress = DBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  assign DBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_isIoAccess = (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31 : 28] == 4'b1111);
  assign DBusCachedPlugin_mmuBus_rsp_isPaging = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign DBusCachedPlugin_mmuBus_busy = 1'b0;
  assign _zz_decode_ENV_CTRL_3 = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_decode_ENV_CTRL_4 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_decode_ENV_CTRL_5 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_decode_ENV_CTRL_6 = ((decode_INSTRUCTION & 32'h00001000) == 32'h0);
  assign _zz_decode_ENV_CTRL_2 = {(((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2) == 32'h00000050) != 1'b0),{((_zz__zz_decode_ENV_CTRL_2_1 == _zz__zz_decode_ENV_CTRL_2_2) != 1'b0),{({_zz__zz_decode_ENV_CTRL_2_3,_zz__zz_decode_ENV_CTRL_2_5} != 2'b00),{(_zz__zz_decode_ENV_CTRL_2_7 != _zz__zz_decode_ENV_CTRL_2_10),{_zz__zz_decode_ENV_CTRL_2_11,{_zz__zz_decode_ENV_CTRL_2_14,_zz__zz_decode_ENV_CTRL_2_15}}}}}};
  assign _zz_decode_SRC1_CTRL_2 = _zz_decode_ENV_CTRL_2[2 : 1];
  assign _zz_decode_SRC1_CTRL_1 = _zz_decode_SRC1_CTRL_2;
  assign _zz_decode_ALU_CTRL_2 = _zz_decode_ENV_CTRL_2[7 : 6];
  assign _zz_decode_ALU_CTRL_1 = _zz_decode_ALU_CTRL_2;
  assign _zz_decode_SRC2_CTRL_2 = _zz_decode_ENV_CTRL_2[9 : 8];
  assign _zz_decode_SRC2_CTRL_1 = _zz_decode_SRC2_CTRL_2;
  assign _zz_decode_ALU_BITWISE_CTRL_2 = _zz_decode_ENV_CTRL_2[19 : 18];
  assign _zz_decode_ALU_BITWISE_CTRL_1 = _zz_decode_ALU_BITWISE_CTRL_2;
  assign _zz_decode_SHIFT_CTRL_2 = _zz_decode_ENV_CTRL_2[22 : 21];
  assign _zz_decode_SHIFT_CTRL_1 = _zz_decode_SHIFT_CTRL_2;
  assign _zz_decode_BRANCH_CTRL_2 = _zz_decode_ENV_CTRL_2[28 : 27];
  assign _zz_decode_BRANCH_CTRL = _zz_decode_BRANCH_CTRL_2;
  assign _zz_decode_ENV_CTRL_7 = _zz_decode_ENV_CTRL_2[30 : 30];
  assign _zz_decode_ENV_CTRL_1 = _zz_decode_ENV_CTRL_7;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign when_RegFilePlugin_l63 = (decode_INSTRUCTION[11 : 7] == 5'h0);
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign decode_RegFilePlugin_rs1Data = _zz_RegFilePlugin_regFile_port0;
  assign decode_RegFilePlugin_rs2Data = _zz_RegFilePlugin_regFile_port1;
  always @(*) begin
    lastStageRegFileWrite_valid = (_zz_lastStageRegFileWrite_valid && writeBack_arbitration_isFiring);
    if(_zz_7) begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  always @(*) begin
    lastStageRegFileWrite_payload_address = _zz_lastStageRegFileWrite_payload_address[11 : 7];
    if(_zz_7) begin
      lastStageRegFileWrite_payload_address = 5'h0;
    end
  end

  always @(*) begin
    lastStageRegFileWrite_payload_data = _zz_decode_RS2_2;
    if(_zz_7) begin
      lastStageRegFileWrite_payload_data = 32'h0;
    end
  end

  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_binary_sequential_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      `AluBitwiseCtrlEnum_binary_sequential_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
    endcase
  end

  always @(*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_binary_sequential_BITWISE : begin
        _zz_execute_REGFILE_WRITE_DATA = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_binary_sequential_SLT_SLTU : begin
        _zz_execute_REGFILE_WRITE_DATA = {31'd0, _zz__zz_execute_REGFILE_WRITE_DATA};
      end
      default : begin
        _zz_execute_REGFILE_WRITE_DATA = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @(*) begin
    case(execute_SRC1_CTRL)
      `Src1CtrlEnum_binary_sequential_RS : begin
        _zz_execute_SRC1 = execute_RS1;
      end
      `Src1CtrlEnum_binary_sequential_PC_INCREMENT : begin
        _zz_execute_SRC1 = {29'd0, _zz__zz_execute_SRC1};
      end
      `Src1CtrlEnum_binary_sequential_IMU : begin
        _zz_execute_SRC1 = {execute_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_execute_SRC1 = {27'd0, _zz__zz_execute_SRC1_1};
      end
    endcase
  end

  assign _zz_execute_SRC2_1 = execute_INSTRUCTION[31];
  always @(*) begin
    _zz_execute_SRC2_2[19] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[18] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[17] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[16] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[15] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[14] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[13] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[12] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[11] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[10] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[9] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[8] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[7] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[6] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[5] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[4] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[3] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[2] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[1] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[0] = _zz_execute_SRC2_1;
  end

  assign _zz_execute_SRC2_3 = _zz__zz_execute_SRC2_3[11];
  always @(*) begin
    _zz_execute_SRC2_4[19] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[18] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[17] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[16] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[15] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[14] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[13] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[12] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[11] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[10] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[9] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[8] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[7] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[6] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[5] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[4] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[3] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[2] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[1] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[0] = _zz_execute_SRC2_3;
  end

  always @(*) begin
    case(execute_SRC2_CTRL)
      `Src2CtrlEnum_binary_sequential_RS : begin
        _zz_execute_SRC2_5 = execute_RS2;
      end
      `Src2CtrlEnum_binary_sequential_IMI : begin
        _zz_execute_SRC2_5 = {_zz_execute_SRC2_2,execute_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_binary_sequential_IMS : begin
        _zz_execute_SRC2_5 = {_zz_execute_SRC2_4,{execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_execute_SRC2_5 = _zz_execute_SRC2;
      end
    endcase
  end

  always @(*) begin
    execute_SrcPlugin_addSub = _zz_execute_SrcPlugin_addSub;
    if(execute_SRC2_FORCE_ZERO) begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @(*) begin
    _zz_execute_FullBarrelShifterPlugin_reversed[0] = execute_SRC1[31];
    _zz_execute_FullBarrelShifterPlugin_reversed[1] = execute_SRC1[30];
    _zz_execute_FullBarrelShifterPlugin_reversed[2] = execute_SRC1[29];
    _zz_execute_FullBarrelShifterPlugin_reversed[3] = execute_SRC1[28];
    _zz_execute_FullBarrelShifterPlugin_reversed[4] = execute_SRC1[27];
    _zz_execute_FullBarrelShifterPlugin_reversed[5] = execute_SRC1[26];
    _zz_execute_FullBarrelShifterPlugin_reversed[6] = execute_SRC1[25];
    _zz_execute_FullBarrelShifterPlugin_reversed[7] = execute_SRC1[24];
    _zz_execute_FullBarrelShifterPlugin_reversed[8] = execute_SRC1[23];
    _zz_execute_FullBarrelShifterPlugin_reversed[9] = execute_SRC1[22];
    _zz_execute_FullBarrelShifterPlugin_reversed[10] = execute_SRC1[21];
    _zz_execute_FullBarrelShifterPlugin_reversed[11] = execute_SRC1[20];
    _zz_execute_FullBarrelShifterPlugin_reversed[12] = execute_SRC1[19];
    _zz_execute_FullBarrelShifterPlugin_reversed[13] = execute_SRC1[18];
    _zz_execute_FullBarrelShifterPlugin_reversed[14] = execute_SRC1[17];
    _zz_execute_FullBarrelShifterPlugin_reversed[15] = execute_SRC1[16];
    _zz_execute_FullBarrelShifterPlugin_reversed[16] = execute_SRC1[15];
    _zz_execute_FullBarrelShifterPlugin_reversed[17] = execute_SRC1[14];
    _zz_execute_FullBarrelShifterPlugin_reversed[18] = execute_SRC1[13];
    _zz_execute_FullBarrelShifterPlugin_reversed[19] = execute_SRC1[12];
    _zz_execute_FullBarrelShifterPlugin_reversed[20] = execute_SRC1[11];
    _zz_execute_FullBarrelShifterPlugin_reversed[21] = execute_SRC1[10];
    _zz_execute_FullBarrelShifterPlugin_reversed[22] = execute_SRC1[9];
    _zz_execute_FullBarrelShifterPlugin_reversed[23] = execute_SRC1[8];
    _zz_execute_FullBarrelShifterPlugin_reversed[24] = execute_SRC1[7];
    _zz_execute_FullBarrelShifterPlugin_reversed[25] = execute_SRC1[6];
    _zz_execute_FullBarrelShifterPlugin_reversed[26] = execute_SRC1[5];
    _zz_execute_FullBarrelShifterPlugin_reversed[27] = execute_SRC1[4];
    _zz_execute_FullBarrelShifterPlugin_reversed[28] = execute_SRC1[3];
    _zz_execute_FullBarrelShifterPlugin_reversed[29] = execute_SRC1[2];
    _zz_execute_FullBarrelShifterPlugin_reversed[30] = execute_SRC1[1];
    _zz_execute_FullBarrelShifterPlugin_reversed[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == `ShiftCtrlEnum_binary_sequential_SLL_1) ? _zz_execute_FullBarrelShifterPlugin_reversed : execute_SRC1);
  always @(*) begin
    _zz_decode_RS2_3[0] = memory_SHIFT_RIGHT[31];
    _zz_decode_RS2_3[1] = memory_SHIFT_RIGHT[30];
    _zz_decode_RS2_3[2] = memory_SHIFT_RIGHT[29];
    _zz_decode_RS2_3[3] = memory_SHIFT_RIGHT[28];
    _zz_decode_RS2_3[4] = memory_SHIFT_RIGHT[27];
    _zz_decode_RS2_3[5] = memory_SHIFT_RIGHT[26];
    _zz_decode_RS2_3[6] = memory_SHIFT_RIGHT[25];
    _zz_decode_RS2_3[7] = memory_SHIFT_RIGHT[24];
    _zz_decode_RS2_3[8] = memory_SHIFT_RIGHT[23];
    _zz_decode_RS2_3[9] = memory_SHIFT_RIGHT[22];
    _zz_decode_RS2_3[10] = memory_SHIFT_RIGHT[21];
    _zz_decode_RS2_3[11] = memory_SHIFT_RIGHT[20];
    _zz_decode_RS2_3[12] = memory_SHIFT_RIGHT[19];
    _zz_decode_RS2_3[13] = memory_SHIFT_RIGHT[18];
    _zz_decode_RS2_3[14] = memory_SHIFT_RIGHT[17];
    _zz_decode_RS2_3[15] = memory_SHIFT_RIGHT[16];
    _zz_decode_RS2_3[16] = memory_SHIFT_RIGHT[15];
    _zz_decode_RS2_3[17] = memory_SHIFT_RIGHT[14];
    _zz_decode_RS2_3[18] = memory_SHIFT_RIGHT[13];
    _zz_decode_RS2_3[19] = memory_SHIFT_RIGHT[12];
    _zz_decode_RS2_3[20] = memory_SHIFT_RIGHT[11];
    _zz_decode_RS2_3[21] = memory_SHIFT_RIGHT[10];
    _zz_decode_RS2_3[22] = memory_SHIFT_RIGHT[9];
    _zz_decode_RS2_3[23] = memory_SHIFT_RIGHT[8];
    _zz_decode_RS2_3[24] = memory_SHIFT_RIGHT[7];
    _zz_decode_RS2_3[25] = memory_SHIFT_RIGHT[6];
    _zz_decode_RS2_3[26] = memory_SHIFT_RIGHT[5];
    _zz_decode_RS2_3[27] = memory_SHIFT_RIGHT[4];
    _zz_decode_RS2_3[28] = memory_SHIFT_RIGHT[3];
    _zz_decode_RS2_3[29] = memory_SHIFT_RIGHT[2];
    _zz_decode_RS2_3[30] = memory_SHIFT_RIGHT[1];
    _zz_decode_RS2_3[31] = memory_SHIFT_RIGHT[0];
  end

  assign execute_MulPlugin_a = execute_RS1;
  assign execute_MulPlugin_b = execute_RS2;
  assign switch_MulPlugin_l87 = execute_INSTRUCTION[13 : 12];
  always @(*) begin
    case(switch_MulPlugin_l87)
      2'b01 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      default : begin
        execute_MulPlugin_aSigned = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(switch_MulPlugin_l87)
      2'b01 : begin
        execute_MulPlugin_bSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
      default : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
    endcase
  end

  assign execute_MulPlugin_aULow = execute_MulPlugin_a[15 : 0];
  assign execute_MulPlugin_bULow = execute_MulPlugin_b[15 : 0];
  assign execute_MulPlugin_aSLow = {1'b0,execute_MulPlugin_a[15 : 0]};
  assign execute_MulPlugin_bSLow = {1'b0,execute_MulPlugin_b[15 : 0]};
  assign execute_MulPlugin_aHigh = {(execute_MulPlugin_aSigned && execute_MulPlugin_a[31]),execute_MulPlugin_a[31 : 16]};
  assign execute_MulPlugin_bHigh = {(execute_MulPlugin_bSigned && execute_MulPlugin_b[31]),execute_MulPlugin_b[31 : 16]};
  assign writeBack_MulPlugin_result = ($signed(_zz_writeBack_MulPlugin_result) + $signed(_zz_writeBack_MulPlugin_result_1));
  assign when_MulPlugin_l147 = (writeBack_arbitration_isValid && writeBack_IS_MUL);
  assign switch_MulPlugin_l148 = writeBack_INSTRUCTION[13 : 12];
  assign memory_DivPlugin_frontendOk = 1'b1;
  always @(*) begin
    memory_DivPlugin_div_counter_willIncrement = 1'b0;
    if(when_MulDivIterativePlugin_l128) begin
      if(when_MulDivIterativePlugin_l132) begin
        memory_DivPlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @(*) begin
    memory_DivPlugin_div_counter_willClear = 1'b0;
    if(when_MulDivIterativePlugin_l162) begin
      memory_DivPlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_DivPlugin_div_counter_willOverflowIfInc = (memory_DivPlugin_div_counter_value == 6'h21);
  assign memory_DivPlugin_div_counter_willOverflow = (memory_DivPlugin_div_counter_willOverflowIfInc && memory_DivPlugin_div_counter_willIncrement);
  always @(*) begin
    if(memory_DivPlugin_div_counter_willOverflow) begin
      memory_DivPlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_DivPlugin_div_counter_valueNext = (memory_DivPlugin_div_counter_value + _zz_memory_DivPlugin_div_counter_valueNext);
    end
    if(memory_DivPlugin_div_counter_willClear) begin
      memory_DivPlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign when_MulDivIterativePlugin_l126 = (memory_DivPlugin_div_counter_value == 6'h20);
  assign when_MulDivIterativePlugin_l126_1 = (! memory_arbitration_isStuck);
  assign when_MulDivIterativePlugin_l128 = (memory_arbitration_isValid && memory_IS_DIV);
  assign when_MulDivIterativePlugin_l129 = ((! memory_DivPlugin_frontendOk) || (! memory_DivPlugin_div_done));
  assign when_MulDivIterativePlugin_l132 = (memory_DivPlugin_frontendOk && (! memory_DivPlugin_div_done));
  assign _zz_memory_DivPlugin_div_stage_0_remainderShifted = memory_DivPlugin_rs1[31 : 0];
  assign memory_DivPlugin_div_stage_0_remainderShifted = {memory_DivPlugin_accumulator[31 : 0],_zz_memory_DivPlugin_div_stage_0_remainderShifted[31]};
  assign memory_DivPlugin_div_stage_0_remainderMinusDenominator = (memory_DivPlugin_div_stage_0_remainderShifted - _zz_memory_DivPlugin_div_stage_0_remainderMinusDenominator);
  assign memory_DivPlugin_div_stage_0_outRemainder = ((! memory_DivPlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_memory_DivPlugin_div_stage_0_outRemainder : _zz_memory_DivPlugin_div_stage_0_outRemainder_1);
  assign memory_DivPlugin_div_stage_0_outNumerator = _zz_memory_DivPlugin_div_stage_0_outNumerator[31:0];
  assign when_MulDivIterativePlugin_l151 = (memory_DivPlugin_div_counter_value == 6'h20);
  assign _zz_memory_DivPlugin_div_result = (memory_INSTRUCTION[13] ? memory_DivPlugin_accumulator[31 : 0] : memory_DivPlugin_rs1[31 : 0]);
  assign when_MulDivIterativePlugin_l162 = (! memory_arbitration_isStuck);
  assign _zz_memory_DivPlugin_rs2 = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_memory_DivPlugin_rs1 = (1'b0 || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @(*) begin
    _zz_memory_DivPlugin_rs1_1[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_memory_DivPlugin_rs1_1[31 : 0] = execute_RS1;
  end

  always @(*) begin
    HazardSimplePlugin_src0Hazard = 1'b0;
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
        if(when_HazardSimplePlugin_l48) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_1) begin
      if(when_HazardSimplePlugin_l58_1) begin
        if(when_HazardSimplePlugin_l48_1) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_2) begin
      if(when_HazardSimplePlugin_l58_2) begin
        if(when_HazardSimplePlugin_l48_2) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l105) begin
      HazardSimplePlugin_src0Hazard = 1'b0;
    end
  end

  always @(*) begin
    HazardSimplePlugin_src1Hazard = 1'b0;
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
        if(when_HazardSimplePlugin_l51) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_1) begin
      if(when_HazardSimplePlugin_l58_1) begin
        if(when_HazardSimplePlugin_l51_1) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_2) begin
      if(when_HazardSimplePlugin_l58_2) begin
        if(when_HazardSimplePlugin_l51_2) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l108) begin
      HazardSimplePlugin_src1Hazard = 1'b0;
    end
  end

  assign HazardSimplePlugin_writeBackWrites_valid = (_zz_lastStageRegFileWrite_valid && writeBack_arbitration_isFiring);
  assign HazardSimplePlugin_writeBackWrites_payload_address = _zz_lastStageRegFileWrite_payload_address[11 : 7];
  assign HazardSimplePlugin_writeBackWrites_payload_data = _zz_decode_RS2_2;
  assign HazardSimplePlugin_addr0Match = (HazardSimplePlugin_writeBackBuffer_payload_address == decode_INSTRUCTION[19 : 15]);
  assign HazardSimplePlugin_addr1Match = (HazardSimplePlugin_writeBackBuffer_payload_address == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l47 = 1'b1;
  assign when_HazardSimplePlugin_l48 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l51 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l45 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l57 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58 = (1'b0 || (! when_HazardSimplePlugin_l47));
  assign when_HazardSimplePlugin_l48_1 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l51_1 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l45_1 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l57_1 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58_1 = (1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign when_HazardSimplePlugin_l48_2 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l51_2 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l45_2 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l57_2 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58_2 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign when_HazardSimplePlugin_l105 = (! decode_RS1_USE);
  assign when_HazardSimplePlugin_l108 = (! decode_RS2_USE);
  assign when_HazardSimplePlugin_l113 = (decode_arbitration_isValid && (HazardSimplePlugin_src0Hazard || HazardSimplePlugin_src1Hazard));
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign switch_Misc_l200_1 = execute_INSTRUCTION[14 : 12];
  always @(*) begin
    casez(switch_Misc_l200_1)
      3'b000 : begin
        _zz_execute_BRANCH_COND_RESULT = execute_BranchPlugin_eq;
      end
      3'b001 : begin
        _zz_execute_BRANCH_COND_RESULT = (! execute_BranchPlugin_eq);
      end
      3'b1?1 : begin
        _zz_execute_BRANCH_COND_RESULT = (! execute_SRC_LESS);
      end
      default : begin
        _zz_execute_BRANCH_COND_RESULT = execute_SRC_LESS;
      end
    endcase
  end

  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_INC : begin
        _zz_execute_BRANCH_COND_RESULT_1 = 1'b0;
      end
      `BranchCtrlEnum_binary_sequential_JAL : begin
        _zz_execute_BRANCH_COND_RESULT_1 = 1'b1;
      end
      `BranchCtrlEnum_binary_sequential_JALR : begin
        _zz_execute_BRANCH_COND_RESULT_1 = 1'b1;
      end
      default : begin
        _zz_execute_BRANCH_COND_RESULT_1 = _zz_execute_BRANCH_COND_RESULT;
      end
    endcase
  end

  assign _zz_execute_BranchPlugin_missAlignedTarget = execute_INSTRUCTION[31];
  always @(*) begin
    _zz_execute_BranchPlugin_missAlignedTarget_1[19] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[18] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[17] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[16] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[15] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[14] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[13] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[12] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[11] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[10] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[9] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[8] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[7] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[6] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[5] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[4] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[3] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[2] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[1] = _zz_execute_BranchPlugin_missAlignedTarget;
    _zz_execute_BranchPlugin_missAlignedTarget_1[0] = _zz_execute_BranchPlugin_missAlignedTarget;
  end

  assign _zz_execute_BranchPlugin_missAlignedTarget_2 = _zz__zz_execute_BranchPlugin_missAlignedTarget_2[19];
  always @(*) begin
    _zz_execute_BranchPlugin_missAlignedTarget_3[10] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[9] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[8] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[7] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[6] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[5] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[4] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[3] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[2] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[1] = _zz_execute_BranchPlugin_missAlignedTarget_2;
    _zz_execute_BranchPlugin_missAlignedTarget_3[0] = _zz_execute_BranchPlugin_missAlignedTarget_2;
  end

  assign _zz_execute_BranchPlugin_missAlignedTarget_4 = _zz__zz_execute_BranchPlugin_missAlignedTarget_4[11];
  always @(*) begin
    _zz_execute_BranchPlugin_missAlignedTarget_5[18] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[17] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[16] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[15] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[14] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[13] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[12] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[11] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[10] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[9] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[8] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[7] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[6] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[5] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[4] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[3] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[2] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[1] = _zz_execute_BranchPlugin_missAlignedTarget_4;
    _zz_execute_BranchPlugin_missAlignedTarget_5[0] = _zz_execute_BranchPlugin_missAlignedTarget_4;
  end

  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_JALR : begin
        _zz_execute_BranchPlugin_missAlignedTarget_6 = (_zz__zz_execute_BranchPlugin_missAlignedTarget_6[1] ^ execute_RS1[1]);
      end
      `BranchCtrlEnum_binary_sequential_JAL : begin
        _zz_execute_BranchPlugin_missAlignedTarget_6 = _zz__zz_execute_BranchPlugin_missAlignedTarget_6_1[1];
      end
      default : begin
        _zz_execute_BranchPlugin_missAlignedTarget_6 = _zz__zz_execute_BranchPlugin_missAlignedTarget_6_2[1];
      end
    endcase
  end

  assign execute_BranchPlugin_missAlignedTarget = (execute_BRANCH_COND_RESULT && _zz_execute_BranchPlugin_missAlignedTarget_6);
  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_JALR : begin
        execute_BranchPlugin_branch_src1 = execute_RS1;
      end
      default : begin
        execute_BranchPlugin_branch_src1 = execute_PC;
      end
    endcase
  end

  assign _zz_execute_BranchPlugin_branch_src2 = execute_INSTRUCTION[31];
  always @(*) begin
    _zz_execute_BranchPlugin_branch_src2_1[19] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[18] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[17] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[16] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[15] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[14] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[13] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[12] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[11] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[10] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[9] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[8] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[7] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[6] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[5] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[4] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[3] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[2] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[1] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[0] = _zz_execute_BranchPlugin_branch_src2;
  end

  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequential_JALR : begin
        execute_BranchPlugin_branch_src2 = {_zz_execute_BranchPlugin_branch_src2_1,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        execute_BranchPlugin_branch_src2 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_binary_sequential_JAL) ? {{_zz_execute_BranchPlugin_branch_src2_3,{{{_zz_execute_BranchPlugin_branch_src2_6,execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_execute_BranchPlugin_branch_src2_5,{{{_zz_execute_BranchPlugin_branch_src2_7,_zz_execute_BranchPlugin_branch_src2_8},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0});
        if(execute_PREDICTION_HAD_BRANCHED2) begin
          execute_BranchPlugin_branch_src2 = {29'd0, _zz_execute_BranchPlugin_branch_src2_9};
        end
      end
    endcase
  end

  assign _zz_execute_BranchPlugin_branch_src2_2 = _zz__zz_execute_BranchPlugin_branch_src2_2[19];
  always @(*) begin
    _zz_execute_BranchPlugin_branch_src2_3[10] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[9] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[8] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[7] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[6] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[5] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[4] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[3] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[2] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[1] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[0] = _zz_execute_BranchPlugin_branch_src2_2;
  end

  assign _zz_execute_BranchPlugin_branch_src2_4 = _zz__zz_execute_BranchPlugin_branch_src2_4[11];
  always @(*) begin
    _zz_execute_BranchPlugin_branch_src2_5[18] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[17] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[16] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[15] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[14] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[13] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[12] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[11] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[10] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[9] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[8] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[7] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[6] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[5] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[4] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[3] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[2] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[1] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[0] = _zz_execute_BranchPlugin_branch_src2_4;
  end

  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign BranchPlugin_jumpInterface_valid = ((memory_arbitration_isValid && memory_BRANCH_DO) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = memory_BRANCH_CALC;
  assign BranchPlugin_branchExceptionPort_valid = (memory_arbitration_isValid && (memory_BRANCH_DO && memory_BRANCH_CALC[1]));
  assign BranchPlugin_branchExceptionPort_payload_code = 4'b0000;
  assign BranchPlugin_branchExceptionPort_payload_badAddr = memory_BRANCH_CALC;
  assign IBusCachedPlugin_decodePrediction_rsp_wasWrong = BranchPlugin_jumpInterface_valid;
  always @(*) begin
    CsrPlugin_privilege = 2'b11;
    if(CsrPlugin_forceMachineWire) begin
      CsrPlugin_privilege = 2'b11;
    end
  end

  assign CsrPlugin_misa_base = 2'b01;
  assign CsrPlugin_misa_extensions = 26'h0000042;
  assign CsrPlugin_mtvec_mode = 2'b00;
  assign CsrPlugin_mtvec_base = 30'h20000008;
  assign _zz_when_CsrPlugin_l952 = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_when_CsrPlugin_l952_1 = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_when_CsrPlugin_l952_2 = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b11;
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = ((CsrPlugin_privilege < CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped) ? CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped : CsrPlugin_privilege);
  assign _zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1 = _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1[0];
  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_when) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(execute_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(BranchPlugin_branchExceptionPort_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b1;
    end
    if(memory_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(DBusCachedPlugin_exceptionBus_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b1;
    end
    if(writeBack_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b0;
    end
  end

  assign when_CsrPlugin_l909 = (! decode_arbitration_isStuck);
  assign when_CsrPlugin_l909_1 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l909_2 = (! memory_arbitration_isStuck);
  assign when_CsrPlugin_l909_3 = (! writeBack_arbitration_isStuck);
  assign when_CsrPlugin_l922 = ({CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}}} != 4'b0000);
  assign CsrPlugin_exceptionPendings_0 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign CsrPlugin_exceptionPendings_1 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign CsrPlugin_exceptionPendings_2 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign CsrPlugin_exceptionPendings_3 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  assign when_CsrPlugin_l946 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign when_CsrPlugin_l952 = ((_zz_when_CsrPlugin_l952 && 1'b1) && (! 1'b0));
  assign when_CsrPlugin_l952_1 = ((_zz_when_CsrPlugin_l952_1 && 1'b1) && (! 1'b0));
  assign when_CsrPlugin_l952_2 = ((_zz_when_CsrPlugin_l952_2 && 1'b1) && (! 1'b0));
  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack && CsrPlugin_allowException);
  assign CsrPlugin_lastStageWasWfi = 1'b0;
  assign CsrPlugin_pipelineLiberator_active = ((CsrPlugin_interrupt_valid && CsrPlugin_allowInterrupts) && decode_arbitration_isValid);
  assign when_CsrPlugin_l980 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l980_1 = (! memory_arbitration_isStuck);
  assign when_CsrPlugin_l980_2 = (! writeBack_arbitration_isStuck);
  assign when_CsrPlugin_l985 = ((! CsrPlugin_pipelineLiberator_active) || decode_arbitration_removeIt);
  always @(*) begin
    CsrPlugin_pipelineLiberator_done = CsrPlugin_pipelineLiberator_pcValids_2;
    if(when_CsrPlugin_l991) begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
    if(CsrPlugin_hadException) begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign when_CsrPlugin_l991 = ({CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute}} != 3'b000);
  assign CsrPlugin_interruptJump = ((CsrPlugin_interrupt_valid && CsrPlugin_pipelineLiberator_done) && CsrPlugin_allowInterrupts);
  always @(*) begin
    CsrPlugin_targetPrivilege = CsrPlugin_interrupt_targetPrivilege;
    if(CsrPlugin_hadException) begin
      CsrPlugin_targetPrivilege = CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
    end
  end

  always @(*) begin
    CsrPlugin_trapCause = CsrPlugin_interrupt_code;
    if(CsrPlugin_hadException) begin
      CsrPlugin_trapCause = CsrPlugin_exceptionPortCtrl_exceptionContext_code;
    end
  end

  always @(*) begin
    CsrPlugin_xtvec_mode = 2'bxx;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_mtvec_mode;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    CsrPlugin_xtvec_base = 30'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_base = CsrPlugin_mtvec_base;
      end
      default : begin
      end
    endcase
  end

  assign when_CsrPlugin_l1019 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign when_CsrPlugin_l1064 = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_binary_sequential_XRET));
  assign switch_CsrPlugin_l1068 = writeBack_INSTRUCTION[29 : 28];
  assign contextSwitching = CsrPlugin_jumpInterface_valid;
  assign when_CsrPlugin_l1116 = ({(writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_binary_sequential_XRET)),{(memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_binary_sequential_XRET)),(execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_binary_sequential_XRET))}} != 3'b000);
  assign execute_CsrPlugin_blockedBySideEffects = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00) || 1'b0);
  always @(*) begin
    execute_CsrPlugin_illegalAccess = 1'b1;
    if(execute_CsrPlugin_csr_768) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_836) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_772) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_833) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_834) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_835) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2816) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2944) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(CsrPlugin_csrMapping_allowCsrSignal) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(when_CsrPlugin_l1297) begin
      execute_CsrPlugin_illegalAccess = 1'b1;
    end
    if(when_CsrPlugin_l1302) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
  end

  always @(*) begin
    execute_CsrPlugin_illegalInstruction = 1'b0;
    if(when_CsrPlugin_l1136) begin
      if(when_CsrPlugin_l1137) begin
        execute_CsrPlugin_illegalInstruction = 1'b1;
      end
    end
  end

  assign when_CsrPlugin_l1136 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_binary_sequential_XRET));
  assign when_CsrPlugin_l1137 = (CsrPlugin_privilege < execute_INSTRUCTION[29 : 28]);
  always @(*) begin
    execute_CsrPlugin_writeInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_WRITE_OPCODE);
    if(when_CsrPlugin_l1297) begin
      execute_CsrPlugin_writeInstruction = 1'b0;
    end
  end

  always @(*) begin
    execute_CsrPlugin_readInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_READ_OPCODE);
    if(when_CsrPlugin_l1297) begin
      execute_CsrPlugin_readInstruction = 1'b0;
    end
  end

  assign execute_CsrPlugin_writeEnable = (execute_CsrPlugin_writeInstruction && (! execute_arbitration_isStuck));
  assign execute_CsrPlugin_readEnable = (execute_CsrPlugin_readInstruction && (! execute_arbitration_isStuck));
  assign CsrPlugin_csrMapping_hazardFree = (! execute_CsrPlugin_blockedBySideEffects);
  assign execute_CsrPlugin_readToWriteData = CsrPlugin_csrMapping_readDataSignal;
  assign switch_Misc_l200_2 = execute_INSTRUCTION[13];
  always @(*) begin
    case(switch_Misc_l200_2)
      1'b0 : begin
        _zz_CsrPlugin_csrMapping_writeDataSignal = execute_SRC1;
      end
      default : begin
        _zz_CsrPlugin_csrMapping_writeDataSignal = (execute_INSTRUCTION[12] ? (execute_CsrPlugin_readToWriteData & (~ execute_SRC1)) : (execute_CsrPlugin_readToWriteData | execute_SRC1));
      end
    endcase
  end

  assign CsrPlugin_csrMapping_writeDataSignal = _zz_CsrPlugin_csrMapping_writeDataSignal;
  assign when_CsrPlugin_l1176 = (execute_arbitration_isValid && execute_IS_CSR);
  assign when_CsrPlugin_l1180 = (execute_arbitration_isValid && (execute_IS_CSR || 1'b0));
  assign execute_CsrPlugin_csrAddress = execute_INSTRUCTION[31 : 20];
  assign when_DebugPlugin_l225 = (DebugPlugin_haltIt && (! DebugPlugin_isPipBusy));
  assign DebugPlugin_allowEBreak = (DebugPlugin_debugUsed && (! DebugPlugin_disableEbreak));
  always @(*) begin
    debug_bus_cmd_ready = 1'b1;
    if(debug_bus_cmd_valid) begin
      case(switch_DebugPlugin_l256)
        6'h01 : begin
          if(debug_bus_cmd_payload_wr) begin
            debug_bus_cmd_ready = IBusCachedPlugin_injectionPort_ready;
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(*) begin
    debug_bus_rsp_data = DebugPlugin_busReadDataReg;
    if(when_DebugPlugin_l244) begin
      debug_bus_rsp_data[0] = DebugPlugin_resetIt;
      debug_bus_rsp_data[1] = DebugPlugin_haltIt;
      debug_bus_rsp_data[2] = DebugPlugin_isPipBusy;
      debug_bus_rsp_data[3] = DebugPlugin_haltedByBreak;
      debug_bus_rsp_data[4] = DebugPlugin_stepIt;
    end
  end

  assign when_DebugPlugin_l244 = (! _zz_when_DebugPlugin_l244);
  always @(*) begin
    IBusCachedPlugin_injectionPort_valid = 1'b0;
    if(debug_bus_cmd_valid) begin
      case(switch_DebugPlugin_l256)
        6'h01 : begin
          if(debug_bus_cmd_payload_wr) begin
            IBusCachedPlugin_injectionPort_valid = 1'b1;
          end
        end
        default : begin
        end
      endcase
    end
  end

  assign IBusCachedPlugin_injectionPort_payload = debug_bus_cmd_payload_data;
  assign switch_DebugPlugin_l256 = debug_bus_cmd_payload_address[7 : 2];
  assign when_DebugPlugin_l260 = debug_bus_cmd_payload_data[16];
  assign when_DebugPlugin_l260_1 = debug_bus_cmd_payload_data[24];
  assign when_DebugPlugin_l261 = debug_bus_cmd_payload_data[17];
  assign when_DebugPlugin_l261_1 = debug_bus_cmd_payload_data[25];
  assign when_DebugPlugin_l262 = debug_bus_cmd_payload_data[25];
  assign when_DebugPlugin_l263 = debug_bus_cmd_payload_data[25];
  assign when_DebugPlugin_l264 = debug_bus_cmd_payload_data[18];
  assign when_DebugPlugin_l264_1 = debug_bus_cmd_payload_data[26];
  assign when_DebugPlugin_l284 = (execute_arbitration_isValid && execute_DO_EBREAK);
  assign when_DebugPlugin_l287 = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00) == 1'b0);
  assign when_DebugPlugin_l300 = (DebugPlugin_stepIt && IBusCachedPlugin_incomingInstruction);
  assign debug_resetOut = DebugPlugin_resetIt_regNext;
  assign when_DebugPlugin_l316 = (DebugPlugin_haltIt || DebugPlugin_stepIt);
  assign when_Pipeline_l124 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_1 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_2 = ((! writeBack_arbitration_isStuck) && (! CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack));
  assign when_Pipeline_l124_3 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_4 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_5 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_6 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_7 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_8 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_9 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_SRC1_CTRL_1 = decode_SRC1_CTRL;
  assign _zz_decode_SRC1_CTRL = _zz_decode_SRC1_CTRL_1;
  assign when_Pipeline_l124_10 = (! execute_arbitration_isStuck);
  assign _zz_execute_SRC1_CTRL = decode_to_execute_SRC1_CTRL;
  assign when_Pipeline_l124_11 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_12 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_13 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_14 = (! writeBack_arbitration_isStuck);
  assign _zz_decode_to_execute_ALU_CTRL_1 = decode_ALU_CTRL;
  assign _zz_decode_ALU_CTRL = _zz_decode_ALU_CTRL_1;
  assign when_Pipeline_l124_15 = (! execute_arbitration_isStuck);
  assign _zz_execute_ALU_CTRL = decode_to_execute_ALU_CTRL;
  assign _zz_decode_to_execute_SRC2_CTRL_1 = decode_SRC2_CTRL;
  assign _zz_decode_SRC2_CTRL = _zz_decode_SRC2_CTRL_1;
  assign when_Pipeline_l124_16 = (! execute_arbitration_isStuck);
  assign _zz_execute_SRC2_CTRL = decode_to_execute_SRC2_CTRL;
  assign when_Pipeline_l124_17 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_18 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_19 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_20 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_21 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_22 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_23 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_24 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_25 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_26 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_27 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_ALU_BITWISE_CTRL_1 = decode_ALU_BITWISE_CTRL;
  assign _zz_decode_ALU_BITWISE_CTRL = _zz_decode_ALU_BITWISE_CTRL_1;
  assign when_Pipeline_l124_28 = (! execute_arbitration_isStuck);
  assign _zz_execute_ALU_BITWISE_CTRL = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_decode_to_execute_SHIFT_CTRL_1 = decode_SHIFT_CTRL;
  assign _zz_execute_to_memory_SHIFT_CTRL_1 = execute_SHIFT_CTRL;
  assign _zz_decode_SHIFT_CTRL = _zz_decode_SHIFT_CTRL_1;
  assign when_Pipeline_l124_29 = (! execute_arbitration_isStuck);
  assign _zz_execute_SHIFT_CTRL = decode_to_execute_SHIFT_CTRL;
  assign when_Pipeline_l124_30 = (! memory_arbitration_isStuck);
  assign _zz_memory_SHIFT_CTRL = execute_to_memory_SHIFT_CTRL;
  assign when_Pipeline_l124_31 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_32 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_33 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_34 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_35 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_36 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_37 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_BRANCH_CTRL_1 = decode_BRANCH_CTRL;
  assign _zz_decode_BRANCH_CTRL_1 = _zz_decode_BRANCH_CTRL;
  assign when_Pipeline_l124_38 = (! execute_arbitration_isStuck);
  assign _zz_execute_BRANCH_CTRL = decode_to_execute_BRANCH_CTRL;
  assign when_Pipeline_l124_39 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_ENV_CTRL_1 = decode_ENV_CTRL;
  assign _zz_execute_to_memory_ENV_CTRL_1 = execute_ENV_CTRL;
  assign _zz_memory_to_writeBack_ENV_CTRL_1 = memory_ENV_CTRL;
  assign _zz_decode_ENV_CTRL = _zz_decode_ENV_CTRL_1;
  assign when_Pipeline_l124_40 = (! execute_arbitration_isStuck);
  assign _zz_execute_ENV_CTRL = decode_to_execute_ENV_CTRL;
  assign when_Pipeline_l124_41 = (! memory_arbitration_isStuck);
  assign _zz_memory_ENV_CTRL = execute_to_memory_ENV_CTRL;
  assign when_Pipeline_l124_42 = (! writeBack_arbitration_isStuck);
  assign _zz_writeBack_ENV_CTRL = memory_to_writeBack_ENV_CTRL;
  assign when_Pipeline_l124_43 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_44 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_45 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_46 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_47 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_48 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_49 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_50 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_51 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_52 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_53 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_54 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_55 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_56 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_57 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_58 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_59 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_60 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_61 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_62 = (! writeBack_arbitration_isStuck);
  assign decode_arbitration_isFlushed = (({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}} != 3'b000) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}} != 4'b0000));
  assign execute_arbitration_isFlushed = (({writeBack_arbitration_flushNext,memory_arbitration_flushNext} != 2'b00) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}} != 3'b000));
  assign memory_arbitration_isFlushed = ((writeBack_arbitration_flushNext != 1'b0) || ({writeBack_arbitration_flushIt,memory_arbitration_flushIt} != 2'b00));
  assign writeBack_arbitration_isFlushed = (1'b0 || (writeBack_arbitration_flushIt != 1'b0));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  assign when_Pipeline_l151 = ((! execute_arbitration_isStuck) || execute_arbitration_removeIt);
  assign when_Pipeline_l154 = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign when_Pipeline_l151_1 = ((! memory_arbitration_isStuck) || memory_arbitration_removeIt);
  assign when_Pipeline_l154_1 = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign when_Pipeline_l151_2 = ((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt);
  assign when_Pipeline_l154_2 = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  always @(*) begin
    IBusCachedPlugin_injectionPort_ready = 1'b0;
    case(switch_Fetcher_l362)
      3'b100 : begin
        IBusCachedPlugin_injectionPort_ready = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign when_Fetcher_l378 = (! decode_arbitration_isStuck);
  assign when_CsrPlugin_l1264 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_1 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_2 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_3 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_4 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_5 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_6 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_7 = (! execute_arbitration_isStuck);
  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit = 32'h0;
    if(execute_CsrPlugin_csr_768) begin
      _zz_CsrPlugin_csrMapping_readDataInit[12 : 11] = CsrPlugin_mstatus_MPP;
      _zz_CsrPlugin_csrMapping_readDataInit[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_CsrPlugin_csrMapping_readDataInit[3 : 3] = CsrPlugin_mstatus_MIE;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_1 = 32'h0;
    if(execute_CsrPlugin_csr_836) begin
      _zz_CsrPlugin_csrMapping_readDataInit_1[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_CsrPlugin_csrMapping_readDataInit_1[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_CsrPlugin_csrMapping_readDataInit_1[3 : 3] = CsrPlugin_mip_MSIP;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_2 = 32'h0;
    if(execute_CsrPlugin_csr_772) begin
      _zz_CsrPlugin_csrMapping_readDataInit_2[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_CsrPlugin_csrMapping_readDataInit_2[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_CsrPlugin_csrMapping_readDataInit_2[3 : 3] = CsrPlugin_mie_MSIE;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_3 = 32'h0;
    if(execute_CsrPlugin_csr_833) begin
      _zz_CsrPlugin_csrMapping_readDataInit_3[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_4 = 32'h0;
    if(execute_CsrPlugin_csr_834) begin
      _zz_CsrPlugin_csrMapping_readDataInit_4[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_CsrPlugin_csrMapping_readDataInit_4[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_5 = 32'h0;
    if(execute_CsrPlugin_csr_835) begin
      _zz_CsrPlugin_csrMapping_readDataInit_5[31 : 0] = CsrPlugin_mtval;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_6 = 32'h0;
    if(execute_CsrPlugin_csr_2816) begin
      _zz_CsrPlugin_csrMapping_readDataInit_6[31 : 0] = CsrPlugin_mcycle[31 : 0];
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_7 = 32'h0;
    if(execute_CsrPlugin_csr_2944) begin
      _zz_CsrPlugin_csrMapping_readDataInit_7[31 : 0] = CsrPlugin_mcycle[63 : 32];
    end
  end

  assign CsrPlugin_csrMapping_readDataInit = (((_zz_CsrPlugin_csrMapping_readDataInit | _zz_CsrPlugin_csrMapping_readDataInit_1) | (_zz_CsrPlugin_csrMapping_readDataInit_2 | _zz_CsrPlugin_csrMapping_readDataInit_3)) | ((_zz_CsrPlugin_csrMapping_readDataInit_4 | _zz_CsrPlugin_csrMapping_readDataInit_5) | (_zz_CsrPlugin_csrMapping_readDataInit_6 | _zz_CsrPlugin_csrMapping_readDataInit_7)));
  assign when_CsrPlugin_l1297 = (CsrPlugin_privilege < execute_CsrPlugin_csrAddress[9 : 8]);
  assign when_CsrPlugin_l1302 = ((! execute_arbitration_isValid) || (! execute_IS_CSR));
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      IBusCachedPlugin_fetchPc_pcReg <= 32'h80000000;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2 <= 1'b0;
      _zz_IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_valid <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_IBusCachedPlugin_rspCounter;
      IBusCachedPlugin_rspCounter <= 32'h0;
      DBusCachedPlugin_rspCounter <= _zz_DBusCachedPlugin_rspCounter;
      DBusCachedPlugin_rspCounter <= 32'h0;
      _zz_7 <= 1'b1;
      memory_DivPlugin_div_counter_value <= 6'h0;
      HazardSimplePlugin_writeBackBuffer_valid <= 1'b0;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= 2'b11;
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      CsrPlugin_interrupt_valid <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      execute_CsrPlugin_wfiWake <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      switch_Fetcher_l362 <= 3'b000;
    end else begin
      if(IBusCachedPlugin_fetchPc_correction) begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_output_fire) begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusCachedPlugin_fetchPc_booted <= 1'b1;
      if(when_Fetcher_l131) begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_output_fire_1) begin
        IBusCachedPlugin_fetchPc_inc <= 1'b1;
      end
      if(when_Fetcher_l131_1) begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if(when_Fetcher_l158) begin
        IBusCachedPlugin_fetchPc_pcReg <= IBusCachedPlugin_fetchPc_pc;
      end
      if(IBusCachedPlugin_iBusRsp_flush) begin
        _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2 <= 1'b0;
      end
      if(_zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready) begin
        _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2 <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusCachedPlugin_iBusRsp_flush) begin
        _zz_IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_valid <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_1_output_ready) begin
        _zz_IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_valid <= (IBusCachedPlugin_iBusRsp_stages_1_output_valid && (! IBusCachedPlugin_iBusRsp_flush));
      end
      if(IBusCachedPlugin_fetchPc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if(when_Fetcher_l329) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(when_Fetcher_l329_1) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= IBusCachedPlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusCachedPlugin_fetchPc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(when_Fetcher_l329_2) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= IBusCachedPlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusCachedPlugin_fetchPc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(when_Fetcher_l329_3) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= IBusCachedPlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusCachedPlugin_fetchPc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if(when_Fetcher_l329_4) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= IBusCachedPlugin_injector_nextPcCalc_valids_3;
      end
      if(IBusCachedPlugin_fetchPc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if(iBus_rsp_valid) begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
      end
      if(dBus_rsp_valid) begin
        DBusCachedPlugin_rspCounter <= (DBusCachedPlugin_rspCounter + 32'h00000001);
      end
      _zz_7 <= 1'b0;
      memory_DivPlugin_div_counter_value <= memory_DivPlugin_div_counter_valueNext;
      HazardSimplePlugin_writeBackBuffer_valid <= HazardSimplePlugin_writeBackWrites_valid;
      if(when_CsrPlugin_l909) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if(when_CsrPlugin_l909_1) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (CsrPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if(when_CsrPlugin_l909_2) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (CsrPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if(when_CsrPlugin_l909_3) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      CsrPlugin_interrupt_valid <= 1'b0;
      if(when_CsrPlugin_l946) begin
        if(when_CsrPlugin_l952) begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(when_CsrPlugin_l952_1) begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(when_CsrPlugin_l952_2) begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      if(CsrPlugin_pipelineLiberator_active) begin
        if(when_CsrPlugin_l980) begin
          CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if(when_CsrPlugin_l980_1) begin
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end
        if(when_CsrPlugin_l980_2) begin
          CsrPlugin_pipelineLiberator_pcValids_2 <= CsrPlugin_pipelineLiberator_pcValids_1;
        end
      end
      if(when_CsrPlugin_l985) begin
        CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      end
      if(CsrPlugin_interruptJump) begin
        CsrPlugin_interrupt_valid <= 1'b0;
      end
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(when_CsrPlugin_l1019) begin
        case(CsrPlugin_targetPrivilege)
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= 1'b0;
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          end
          default : begin
          end
        endcase
      end
      if(when_CsrPlugin_l1064) begin
        case(switch_CsrPlugin_l1068)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= 2'b00;
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= (({_zz_when_CsrPlugin_l952_2,{_zz_when_CsrPlugin_l952_1,_zz_when_CsrPlugin_l952}} != 3'b000) || CsrPlugin_thirdPartyWake);
      if(when_Pipeline_l151) begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154) begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(when_Pipeline_l151_1) begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154_1) begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(when_Pipeline_l151_2) begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154_2) begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      case(switch_Fetcher_l362)
        3'b000 : begin
          if(IBusCachedPlugin_injectionPort_valid) begin
            switch_Fetcher_l362 <= 3'b001;
          end
        end
        3'b001 : begin
          switch_Fetcher_l362 <= 3'b010;
        end
        3'b010 : begin
          switch_Fetcher_l362 <= 3'b011;
        end
        3'b011 : begin
          if(when_Fetcher_l378) begin
            switch_Fetcher_l362 <= 3'b100;
          end
        end
        3'b100 : begin
          switch_Fetcher_l362 <= 3'b000;
        end
        default : begin
        end
      endcase
      if(execute_CsrPlugin_csr_768) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_mstatus_MPP <= CsrPlugin_csrMapping_writeDataSignal[12 : 11];
          CsrPlugin_mstatus_MPIE <= CsrPlugin_csrMapping_writeDataSignal[7];
          CsrPlugin_mstatus_MIE <= CsrPlugin_csrMapping_writeDataSignal[3];
        end
      end
      if(execute_CsrPlugin_csr_772) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_mie_MEIE <= CsrPlugin_csrMapping_writeDataSignal[11];
          CsrPlugin_mie_MTIE <= CsrPlugin_csrMapping_writeDataSignal[7];
          CsrPlugin_mie_MSIE <= CsrPlugin_csrMapping_writeDataSignal[3];
        end
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(IBusCachedPlugin_iBusRsp_stages_1_output_ready) begin
      _zz_IBusCachedPlugin_iBusRsp_stages_1_output_m2sPipe_payload <= IBusCachedPlugin_iBusRsp_stages_1_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready) begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(IBusCachedPlugin_iBusRsp_stages_2_input_ready) begin
      IBusCachedPlugin_s2_tightlyCoupledHit <= IBusCachedPlugin_s1_tightlyCoupledHit;
    end
    if(when_MulDivIterativePlugin_l126) begin
      memory_DivPlugin_div_done <= 1'b1;
    end
    if(when_MulDivIterativePlugin_l126_1) begin
      memory_DivPlugin_div_done <= 1'b0;
    end
    if(when_MulDivIterativePlugin_l128) begin
      if(when_MulDivIterativePlugin_l132) begin
        memory_DivPlugin_rs1[31 : 0] <= memory_DivPlugin_div_stage_0_outNumerator;
        memory_DivPlugin_accumulator[31 : 0] <= memory_DivPlugin_div_stage_0_outRemainder;
        if(when_MulDivIterativePlugin_l151) begin
          memory_DivPlugin_div_result <= _zz_memory_DivPlugin_div_result_1[31:0];
        end
      end
    end
    if(when_MulDivIterativePlugin_l162) begin
      memory_DivPlugin_accumulator <= 65'h0;
      memory_DivPlugin_rs1 <= ((_zz_memory_DivPlugin_rs1 ? (~ _zz_memory_DivPlugin_rs1_1) : _zz_memory_DivPlugin_rs1_1) + _zz_memory_DivPlugin_rs1_2);
      memory_DivPlugin_rs2 <= ((_zz_memory_DivPlugin_rs2 ? (~ execute_RS2) : execute_RS2) + _zz_memory_DivPlugin_rs2_1);
      memory_DivPlugin_div_needRevert <= ((_zz_memory_DivPlugin_rs1 ^ (_zz_memory_DivPlugin_rs2 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    HazardSimplePlugin_writeBackBuffer_payload_address <= HazardSimplePlugin_writeBackWrites_payload_address;
    HazardSimplePlugin_writeBackBuffer_payload_data <= HazardSimplePlugin_writeBackWrites_payload_data;
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(writeBack_arbitration_isFiring) begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_when) begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1 ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1 ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(BranchPlugin_branchExceptionPort_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= BranchPlugin_branchExceptionPort_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= BranchPlugin_branchExceptionPort_payload_badAddr;
    end
    if(DBusCachedPlugin_exceptionBus_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= DBusCachedPlugin_exceptionBus_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusCachedPlugin_exceptionBus_payload_badAddr;
    end
    if(when_CsrPlugin_l946) begin
      if(when_CsrPlugin_l952) begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(when_CsrPlugin_l952_1) begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(when_CsrPlugin_l952_2) begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(when_CsrPlugin_l1019) begin
      case(CsrPlugin_targetPrivilege)
        2'b11 : begin
          CsrPlugin_mcause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_mepc <= writeBack_PC;
          if(CsrPlugin_hadException) begin
            CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        default : begin
        end
      endcase
    end
    if(when_Pipeline_l124) begin
      decode_to_execute_PC <= decode_PC;
    end
    if(when_Pipeline_l124_1) begin
      execute_to_memory_PC <= _zz_execute_SRC2;
    end
    if(when_Pipeline_l124_2) begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if(when_Pipeline_l124_3) begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if(when_Pipeline_l124_4) begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if(when_Pipeline_l124_5) begin
      memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
    end
    if(when_Pipeline_l124_6) begin
      decode_to_execute_FORMAL_PC_NEXT <= _zz_decode_to_execute_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_7) begin
      execute_to_memory_FORMAL_PC_NEXT <= execute_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_8) begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_memory_to_writeBack_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_9) begin
      decode_to_execute_MEMORY_FORCE_CONSTISTENCY <= decode_MEMORY_FORCE_CONSTISTENCY;
    end
    if(when_Pipeline_l124_10) begin
      decode_to_execute_SRC1_CTRL <= _zz_decode_to_execute_SRC1_CTRL;
    end
    if(when_Pipeline_l124_11) begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if(when_Pipeline_l124_12) begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_13) begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_14) begin
      memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_15) begin
      decode_to_execute_ALU_CTRL <= _zz_decode_to_execute_ALU_CTRL;
    end
    if(when_Pipeline_l124_16) begin
      decode_to_execute_SRC2_CTRL <= _zz_decode_to_execute_SRC2_CTRL;
    end
    if(when_Pipeline_l124_17) begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_18) begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_19) begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_20) begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if(when_Pipeline_l124_21) begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if(when_Pipeline_l124_22) begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if(when_Pipeline_l124_23) begin
      decode_to_execute_MEMORY_WR <= decode_MEMORY_WR;
    end
    if(when_Pipeline_l124_24) begin
      execute_to_memory_MEMORY_WR <= execute_MEMORY_WR;
    end
    if(when_Pipeline_l124_25) begin
      memory_to_writeBack_MEMORY_WR <= memory_MEMORY_WR;
    end
    if(when_Pipeline_l124_26) begin
      decode_to_execute_MEMORY_MANAGMENT <= decode_MEMORY_MANAGMENT;
    end
    if(when_Pipeline_l124_27) begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if(when_Pipeline_l124_28) begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_decode_to_execute_ALU_BITWISE_CTRL;
    end
    if(when_Pipeline_l124_29) begin
      decode_to_execute_SHIFT_CTRL <= _zz_decode_to_execute_SHIFT_CTRL;
    end
    if(when_Pipeline_l124_30) begin
      execute_to_memory_SHIFT_CTRL <= _zz_execute_to_memory_SHIFT_CTRL;
    end
    if(when_Pipeline_l124_31) begin
      decode_to_execute_IS_MUL <= decode_IS_MUL;
    end
    if(when_Pipeline_l124_32) begin
      execute_to_memory_IS_MUL <= execute_IS_MUL;
    end
    if(when_Pipeline_l124_33) begin
      memory_to_writeBack_IS_MUL <= memory_IS_MUL;
    end
    if(when_Pipeline_l124_34) begin
      decode_to_execute_IS_DIV <= decode_IS_DIV;
    end
    if(when_Pipeline_l124_35) begin
      execute_to_memory_IS_DIV <= execute_IS_DIV;
    end
    if(when_Pipeline_l124_36) begin
      decode_to_execute_IS_RS1_SIGNED <= decode_IS_RS1_SIGNED;
    end
    if(when_Pipeline_l124_37) begin
      decode_to_execute_IS_RS2_SIGNED <= decode_IS_RS2_SIGNED;
    end
    if(when_Pipeline_l124_38) begin
      decode_to_execute_BRANCH_CTRL <= _zz_decode_to_execute_BRANCH_CTRL;
    end
    if(when_Pipeline_l124_39) begin
      decode_to_execute_IS_CSR <= decode_IS_CSR;
    end
    if(when_Pipeline_l124_40) begin
      decode_to_execute_ENV_CTRL <= _zz_decode_to_execute_ENV_CTRL;
    end
    if(when_Pipeline_l124_41) begin
      execute_to_memory_ENV_CTRL <= _zz_execute_to_memory_ENV_CTRL;
    end
    if(when_Pipeline_l124_42) begin
      memory_to_writeBack_ENV_CTRL <= _zz_memory_to_writeBack_ENV_CTRL;
    end
    if(when_Pipeline_l124_43) begin
      decode_to_execute_RS1 <= decode_RS1;
    end
    if(when_Pipeline_l124_44) begin
      decode_to_execute_RS2 <= decode_RS2;
    end
    if(when_Pipeline_l124_45) begin
      decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
    end
    if(when_Pipeline_l124_46) begin
      decode_to_execute_PREDICTION_HAD_BRANCHED2 <= decode_PREDICTION_HAD_BRANCHED2;
    end
    if(when_Pipeline_l124_47) begin
      decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
    end
    if(when_Pipeline_l124_48) begin
      decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
    end
    if(when_Pipeline_l124_49) begin
      decode_to_execute_DO_EBREAK <= decode_DO_EBREAK;
    end
    if(when_Pipeline_l124_50) begin
      execute_to_memory_MEMORY_STORE_DATA_RF <= execute_MEMORY_STORE_DATA_RF;
    end
    if(when_Pipeline_l124_51) begin
      memory_to_writeBack_MEMORY_STORE_DATA_RF <= memory_MEMORY_STORE_DATA_RF;
    end
    if(when_Pipeline_l124_52) begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_decode_RS2;
    end
    if(when_Pipeline_l124_53) begin
      memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_decode_RS2_1;
    end
    if(when_Pipeline_l124_54) begin
      execute_to_memory_SHIFT_RIGHT <= execute_SHIFT_RIGHT;
    end
    if(when_Pipeline_l124_55) begin
      execute_to_memory_MUL_LL <= execute_MUL_LL;
    end
    if(when_Pipeline_l124_56) begin
      execute_to_memory_MUL_LH <= execute_MUL_LH;
    end
    if(when_Pipeline_l124_57) begin
      execute_to_memory_MUL_HL <= execute_MUL_HL;
    end
    if(when_Pipeline_l124_58) begin
      execute_to_memory_MUL_HH <= execute_MUL_HH;
    end
    if(when_Pipeline_l124_59) begin
      memory_to_writeBack_MUL_HH <= memory_MUL_HH;
    end
    if(when_Pipeline_l124_60) begin
      execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
    end
    if(when_Pipeline_l124_61) begin
      execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
    end
    if(when_Pipeline_l124_62) begin
      memory_to_writeBack_MUL_LOW <= memory_MUL_LOW;
    end
    if(when_CsrPlugin_l1264) begin
      execute_CsrPlugin_csr_768 <= (decode_INSTRUCTION[31 : 20] == 12'h300);
    end
    if(when_CsrPlugin_l1264_1) begin
      execute_CsrPlugin_csr_836 <= (decode_INSTRUCTION[31 : 20] == 12'h344);
    end
    if(when_CsrPlugin_l1264_2) begin
      execute_CsrPlugin_csr_772 <= (decode_INSTRUCTION[31 : 20] == 12'h304);
    end
    if(when_CsrPlugin_l1264_3) begin
      execute_CsrPlugin_csr_833 <= (decode_INSTRUCTION[31 : 20] == 12'h341);
    end
    if(when_CsrPlugin_l1264_4) begin
      execute_CsrPlugin_csr_834 <= (decode_INSTRUCTION[31 : 20] == 12'h342);
    end
    if(when_CsrPlugin_l1264_5) begin
      execute_CsrPlugin_csr_835 <= (decode_INSTRUCTION[31 : 20] == 12'h343);
    end
    if(when_CsrPlugin_l1264_6) begin
      execute_CsrPlugin_csr_2816 <= (decode_INSTRUCTION[31 : 20] == 12'hb00);
    end
    if(when_CsrPlugin_l1264_7) begin
      execute_CsrPlugin_csr_2944 <= (decode_INSTRUCTION[31 : 20] == 12'hb80);
    end
    if(execute_CsrPlugin_csr_836) begin
      if(execute_CsrPlugin_writeEnable) begin
        CsrPlugin_mip_MSIP <= CsrPlugin_csrMapping_writeDataSignal[3];
      end
    end
    if(execute_CsrPlugin_csr_833) begin
      if(execute_CsrPlugin_writeEnable) begin
        CsrPlugin_mepc <= CsrPlugin_csrMapping_writeDataSignal[31 : 0];
      end
    end
  end

  always @(posedge io_axiClk) begin
    DebugPlugin_firstCycle <= 1'b0;
    if(debug_bus_cmd_ready) begin
      DebugPlugin_firstCycle <= 1'b1;
    end
    DebugPlugin_secondCycle <= DebugPlugin_firstCycle;
    DebugPlugin_isPipBusy <= (({writeBack_arbitration_isValid,{memory_arbitration_isValid,{execute_arbitration_isValid,decode_arbitration_isValid}}} != 4'b0000) || IBusCachedPlugin_incomingInstruction);
    if(writeBack_arbitration_isValid) begin
      DebugPlugin_busReadDataReg <= _zz_decode_RS2_2;
    end
    _zz_when_DebugPlugin_l244 <= debug_bus_cmd_payload_address[2];
    if(when_DebugPlugin_l284) begin
      DebugPlugin_busReadDataReg <= execute_PC;
    end
    DebugPlugin_resetIt_regNext <= DebugPlugin_resetIt;
  end

  always @(posedge io_axiClk or posedge resetCtrl_systemReset) begin
    if(resetCtrl_systemReset) begin
      DebugPlugin_resetIt <= 1'b0;
      DebugPlugin_haltIt <= 1'b0;
      DebugPlugin_stepIt <= 1'b0;
      DebugPlugin_godmode <= 1'b0;
      DebugPlugin_haltedByBreak <= 1'b0;
      DebugPlugin_debugUsed <= 1'b0;
      DebugPlugin_disableEbreak <= 1'b0;
    end else begin
      if(when_DebugPlugin_l225) begin
        DebugPlugin_godmode <= 1'b1;
      end
      if(debug_bus_cmd_valid) begin
        DebugPlugin_debugUsed <= 1'b1;
      end
      if(debug_bus_cmd_valid) begin
        case(switch_DebugPlugin_l256)
          6'h0 : begin
            if(debug_bus_cmd_payload_wr) begin
              DebugPlugin_stepIt <= debug_bus_cmd_payload_data[4];
              if(when_DebugPlugin_l260) begin
                DebugPlugin_resetIt <= 1'b1;
              end
              if(when_DebugPlugin_l260_1) begin
                DebugPlugin_resetIt <= 1'b0;
              end
              if(when_DebugPlugin_l261) begin
                DebugPlugin_haltIt <= 1'b1;
              end
              if(when_DebugPlugin_l261_1) begin
                DebugPlugin_haltIt <= 1'b0;
              end
              if(when_DebugPlugin_l262) begin
                DebugPlugin_haltedByBreak <= 1'b0;
              end
              if(when_DebugPlugin_l263) begin
                DebugPlugin_godmode <= 1'b0;
              end
              if(when_DebugPlugin_l264) begin
                DebugPlugin_disableEbreak <= 1'b1;
              end
              if(when_DebugPlugin_l264_1) begin
                DebugPlugin_disableEbreak <= 1'b0;
              end
            end
          end
          default : begin
          end
        endcase
      end
      if(when_DebugPlugin_l284) begin
        if(when_DebugPlugin_l287) begin
          DebugPlugin_haltIt <= 1'b1;
          DebugPlugin_haltedByBreak <= 1'b1;
        end
      end
      if(when_DebugPlugin_l300) begin
        if(decode_arbitration_isValid) begin
          DebugPlugin_haltIt <= 1'b1;
        end
      end
    end
  end


endmodule

//Apb3SpiMasterCtrl replaced by Apb3SpiMasterCtrl

module Apb3SpiMasterCtrl (
  input      [7:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output     [3:0]    io_spi_ss,
  output              io_spi_sclk,
  output              io_spi_mosi,
  input               io_spi_miso,
  output              io_interrupt,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 spiCtrl_io_rsp_queueWithOccupancy_io_pop_ready;
  wire                spiCtrl_io_cmd_ready;
  wire                spiCtrl_io_rsp_valid;
  wire       [7:0]    spiCtrl_io_rsp_payload;
  wire                spiCtrl_io_spi_sclk;
  wire                spiCtrl_io_spi_mosi;
  wire       [3:0]    spiCtrl_io_spi_ss;
  wire                bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_push_ready;
  wire                bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_mode;
  wire       [8:0]    bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_args;
  wire       [9:0]    bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_occupancy;
  wire       [9:0]    bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability;
  wire                spiCtrl_io_rsp_queueWithOccupancy_io_push_ready;
  wire                spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload;
  wire       [9:0]    spiCtrl_io_rsp_queueWithOccupancy_io_occupancy;
  wire       [9:0]    spiCtrl_io_rsp_queueWithOccupancy_io_availability;
  wire       [2:0]    _zz_bridge_cmdLogic_streamUnbuffered_payload_args;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  wire                bridge_cmdLogic_streamUnbuffered_valid;
  wire                bridge_cmdLogic_streamUnbuffered_ready;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type bridge_cmdLogic_streamUnbuffered_payload_mode;
  reg        [8:0]    bridge_cmdLogic_streamUnbuffered_payload_args;
  reg                 _zz_bridge_cmdLogic_streamUnbuffered_valid;
  wire       [7:0]    bridge_cmdLogic_dataCmd_data;
  wire                bridge_cmdLogic_dataCmd_read;
  reg                 bridge_interruptCtrl_cmdIntEnable;
  reg                 bridge_interruptCtrl_rspIntEnable;
  wire                bridge_interruptCtrl_cmdInt;
  wire                bridge_interruptCtrl_rspInt;
  wire                bridge_interruptCtrl_interrupt;
  reg                 _zz_io_config_kind_cpol;
  reg                 _zz_io_config_kind_cpha;
  reg        [15:0]   _zz_io_config_sclkToogle;
  reg        [3:0]    _zz_io_config_ss_activeHigh;
  reg        [15:0]   _zz_io_config_ss_setup;
  reg        [15:0]   _zz_io_config_ss_hold;
  reg        [15:0]   _zz_io_config_ss_disable;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type _zz_bridge_cmdLogic_streamUnbuffered_payload_mode;
  wire       [1:0]    _zz_io_config_kind_cpol_1;
  `ifndef SYNTHESIS
  reg [31:0] bridge_cmdLogic_streamUnbuffered_payload_mode_string;
  reg [31:0] _zz_bridge_cmdLogic_streamUnbuffered_payload_mode_string;
  `endif


  assign _zz_bridge_cmdLogic_streamUnbuffered_payload_args = {io_apb_PWDATA[1 : 0],io_apb_PWDATA[24]};
  SpiMasterCtrl spiCtrl (
    .io_config_kind_cpol        (_zz_io_config_kind_cpol                                                     ), //i
    .io_config_kind_cpha        (_zz_io_config_kind_cpha                                                     ), //i
    .io_config_sclkToogle       (_zz_io_config_sclkToogle                                                    ), //i
    .io_config_ss_activeHigh    (_zz_io_config_ss_activeHigh                                                 ), //i
    .io_config_ss_setup         (_zz_io_config_ss_setup                                                      ), //i
    .io_config_ss_hold          (_zz_io_config_ss_hold                                                       ), //i
    .io_config_ss_disable       (_zz_io_config_ss_disable                                                    ), //i
    .io_cmd_valid               (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid         ), //i
    .io_cmd_ready               (spiCtrl_io_cmd_ready                                                        ), //o
    .io_cmd_payload_mode        (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_mode  ), //i
    .io_cmd_payload_args        (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_args  ), //i
    .io_rsp_valid               (spiCtrl_io_rsp_valid                                                        ), //o
    .io_rsp_payload             (spiCtrl_io_rsp_payload                                                      ), //o
    .io_spi_ss                  (spiCtrl_io_spi_ss                                                           ), //o
    .io_spi_sclk                (spiCtrl_io_spi_sclk                                                         ), //o
    .io_spi_mosi                (spiCtrl_io_spi_mosi                                                         ), //o
    .io_spi_miso                (io_spi_miso                                                                 ), //i
    .io_axiClk                  (io_axiClk                                                                   ), //i
    .resetCtrl_axiReset         (resetCtrl_axiReset                                                          )  //i
  );
  StreamFifo_4 bridge_cmdLogic_streamUnbuffered_queueWithAvailability (
    .io_push_valid           (bridge_cmdLogic_streamUnbuffered_valid                                      ), //i
    .io_push_ready           (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_push_ready        ), //o
    .io_push_payload_mode    (bridge_cmdLogic_streamUnbuffered_payload_mode                               ), //i
    .io_push_payload_args    (bridge_cmdLogic_streamUnbuffered_payload_args                               ), //i
    .io_pop_valid            (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid         ), //o
    .io_pop_ready            (spiCtrl_io_cmd_ready                                                        ), //i
    .io_pop_payload_mode     (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_mode  ), //o
    .io_pop_payload_args     (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_args  ), //o
    .io_flush                (1'b0                                                                        ), //i
    .io_occupancy            (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_occupancy         ), //o
    .io_availability         (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability      ), //o
    .io_axiClk               (io_axiClk                                                                   ), //i
    .resetCtrl_axiReset      (resetCtrl_axiReset                                                          )  //i
  );
  StreamFifo_5 spiCtrl_io_rsp_queueWithOccupancy (
    .io_push_valid         (spiCtrl_io_rsp_valid                               ), //i
    .io_push_ready         (spiCtrl_io_rsp_queueWithOccupancy_io_push_ready    ), //o
    .io_push_payload       (spiCtrl_io_rsp_payload                             ), //i
    .io_pop_valid          (spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid     ), //o
    .io_pop_ready          (spiCtrl_io_rsp_queueWithOccupancy_io_pop_ready     ), //i
    .io_pop_payload        (spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload   ), //o
    .io_flush              (1'b0                                               ), //i
    .io_occupancy          (spiCtrl_io_rsp_queueWithOccupancy_io_occupancy     ), //o
    .io_availability       (spiCtrl_io_rsp_queueWithOccupancy_io_availability  ), //o
    .io_axiClk             (io_axiClk                                          ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                 )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(bridge_cmdLogic_streamUnbuffered_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : bridge_cmdLogic_streamUnbuffered_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : bridge_cmdLogic_streamUnbuffered_payload_mode_string = "SS  ";
      default : bridge_cmdLogic_streamUnbuffered_payload_mode_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_bridge_cmdLogic_streamUnbuffered_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : _zz_bridge_cmdLogic_streamUnbuffered_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : _zz_bridge_cmdLogic_streamUnbuffered_payload_mode_string = "SS  ";
      default : _zz_bridge_cmdLogic_streamUnbuffered_payload_mode_string = "????";
    endcase
  end
  `endif

  assign io_spi_ss = spiCtrl_io_spi_ss;
  assign io_spi_sclk = spiCtrl_io_spi_sclk;
  assign io_spi_mosi = spiCtrl_io_spi_mosi;
  assign io_apb_PREADY = 1'b1;
  always @(*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      8'h0 : begin
        io_apb_PRDATA[31 : 31] = (spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid ^ 1'b0);
        io_apb_PRDATA[7 : 0] = spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload;
        io_apb_PRDATA[25 : 16] = spiCtrl_io_rsp_queueWithOccupancy_io_occupancy;
      end
      8'h04 : begin
        io_apb_PRDATA[25 : 16] = bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability;
        io_apb_PRDATA[0 : 0] = bridge_interruptCtrl_cmdIntEnable;
        io_apb_PRDATA[1 : 1] = bridge_interruptCtrl_rspIntEnable;
        io_apb_PRDATA[8 : 8] = bridge_interruptCtrl_cmdInt;
        io_apb_PRDATA[9 : 9] = bridge_interruptCtrl_rspInt;
      end
      default : begin
      end
    endcase
  end

  assign busCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign busCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign busCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign busCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  always @(*) begin
    _zz_bridge_cmdLogic_streamUnbuffered_valid = 1'b0;
    case(io_apb_PADDR)
      8'h0 : begin
        if(busCtrl_doWrite) begin
          _zz_bridge_cmdLogic_streamUnbuffered_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_cmdLogic_streamUnbuffered_valid = _zz_bridge_cmdLogic_streamUnbuffered_valid;
  always @(*) begin
    case(bridge_cmdLogic_streamUnbuffered_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : begin
        bridge_cmdLogic_streamUnbuffered_payload_args = {bridge_cmdLogic_dataCmd_read,bridge_cmdLogic_dataCmd_data};
      end
      default : begin
        bridge_cmdLogic_streamUnbuffered_payload_args = {6'd0, _zz_bridge_cmdLogic_streamUnbuffered_payload_args};
      end
    endcase
  end

  assign bridge_cmdLogic_streamUnbuffered_ready = bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_push_ready;
  always @(*) begin
    spiCtrl_io_rsp_queueWithOccupancy_io_pop_ready = 1'b0;
    case(io_apb_PADDR)
      8'h0 : begin
        if(busCtrl_doRead) begin
          spiCtrl_io_rsp_queueWithOccupancy_io_pop_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_interruptCtrl_cmdInt = (bridge_interruptCtrl_cmdIntEnable && (! bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid));
  assign bridge_interruptCtrl_rspInt = (bridge_interruptCtrl_rspIntEnable && spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid);
  assign bridge_interruptCtrl_interrupt = (bridge_interruptCtrl_rspInt || bridge_interruptCtrl_cmdInt);
  assign io_interrupt = bridge_interruptCtrl_interrupt;
  assign bridge_cmdLogic_dataCmd_data = io_apb_PWDATA[7 : 0];
  assign bridge_cmdLogic_dataCmd_read = io_apb_PWDATA[24];
  assign _zz_bridge_cmdLogic_streamUnbuffered_payload_mode = io_apb_PWDATA[28 : 28];
  assign bridge_cmdLogic_streamUnbuffered_payload_mode = _zz_bridge_cmdLogic_streamUnbuffered_payload_mode;
  assign _zz_io_config_kind_cpol_1 = io_apb_PWDATA[1 : 0];
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      bridge_interruptCtrl_cmdIntEnable <= 1'b0;
      bridge_interruptCtrl_rspIntEnable <= 1'b0;
      _zz_io_config_ss_activeHigh <= 4'b0000;
    end else begin
      case(io_apb_PADDR)
        8'h04 : begin
          if(busCtrl_doWrite) begin
            bridge_interruptCtrl_cmdIntEnable <= io_apb_PWDATA[0];
            bridge_interruptCtrl_rspIntEnable <= io_apb_PWDATA[1];
          end
        end
        8'h08 : begin
          if(busCtrl_doWrite) begin
            _zz_io_config_ss_activeHigh <= io_apb_PWDATA[7 : 4];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge io_axiClk) begin
    case(io_apb_PADDR)
      8'h08 : begin
        if(busCtrl_doWrite) begin
          _zz_io_config_kind_cpol <= _zz_io_config_kind_cpol_1[0];
          _zz_io_config_kind_cpha <= _zz_io_config_kind_cpol_1[1];
        end
      end
      8'h0c : begin
        if(busCtrl_doWrite) begin
          _zz_io_config_sclkToogle <= io_apb_PWDATA[15 : 0];
        end
      end
      8'h10 : begin
        if(busCtrl_doWrite) begin
          _zz_io_config_ss_setup <= io_apb_PWDATA[15 : 0];
        end
      end
      8'h14 : begin
        if(busCtrl_doWrite) begin
          _zz_io_config_ss_hold <= io_apb_PWDATA[15 : 0];
        end
      end
      8'h18 : begin
        if(busCtrl_doWrite) begin
          _zz_io_config_ss_disable <= io_apb_PWDATA[15 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

//Apb3UartCtrl replaced by Apb3UartCtrl

module Apb3UartCtrl (
  input      [4:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_interrupt,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 uartCtrl_2_io_read_queueWithOccupancy_io_pop_ready;
  wire                uartCtrl_2_io_write_ready;
  wire                uartCtrl_2_io_read_valid;
  wire       [7:0]    uartCtrl_2_io_read_payload;
  wire                uartCtrl_2_io_uart_txd;
  wire                uartCtrl_2_io_readError;
  wire                uartCtrl_2_io_readBreak;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload;
  wire       [10:0]   bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy;
  wire       [10:0]   bridge_write_streamUnbuffered_queueWithOccupancy_io_availability;
  wire                uartCtrl_2_io_read_queueWithOccupancy_io_push_ready;
  wire                uartCtrl_2_io_read_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    uartCtrl_2_io_read_queueWithOccupancy_io_pop_payload;
  wire       [10:0]   uartCtrl_2_io_read_queueWithOccupancy_io_occupancy;
  wire       [10:0]   uartCtrl_2_io_read_queueWithOccupancy_io_availability;
  wire       [0:0]    _zz_bridge_misc_readError;
  wire       [0:0]    _zz_bridge_misc_readOverflowError;
  wire       [0:0]    _zz_bridge_misc_breakDetected;
  wire       [0:0]    _zz_bridge_misc_doBreak;
  wire       [0:0]    _zz_bridge_misc_doBreak_1;
  wire       [7:0]    _zz_io_apb_PRDATA_3;
  wire       [10:0]   _zz_io_apb_PRDATA_4;
  wire       [10:0]   _zz_io_apb_PRDATA_5;
  wire       [10:0]   _zz_io_apb_PRDATA_6;
  wire       [7:0]    _zz_io_apb_PRDATA_7;
  wire       [10:0]   _zz_io_apb_PRDATA_8;
  wire       [10:0]   _zz_io_apb_PRDATA_9;
  wire       [10:0]   _zz_io_apb_PRDATA_10;
  wire       [19:0]   _zz_bridge_uartConfigReg_clockDivider;
  wire       [19:0]   _zz_bridge_uartConfigReg_clockDivider_1;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  reg        [2:0]    bridge_uartConfigReg_frame_dataLength;
  reg        `UartStopType_binary_sequential_type bridge_uartConfigReg_frame_stop;
  reg        `UartParityType_binary_sequential_type bridge_uartConfigReg_frame_parity;
  reg        [19:0]   bridge_uartConfigReg_clockDivider;
  reg                 _zz_bridge_write_streamUnbuffered_valid;
  wire                bridge_write_streamUnbuffered_valid;
  wire                bridge_write_streamUnbuffered_ready;
  wire       [7:0]    bridge_write_streamUnbuffered_payload;
  wire       [10:0]   _zz_io_apb_PRDATA;
  wire       [7:0]    _zz_io_apb_PRDATA_1;
  reg                 bridge_read_streamBreaked_valid;
  reg                 bridge_read_streamBreaked_ready;
  wire       [7:0]    bridge_read_streamBreaked_payload;
  wire       [7:0]    _zz_io_apb_PRDATA_2;
  reg                 bridge_interruptCtrl_writeIntEnable;
  reg                 bridge_interruptCtrl_readIntEnable;
  wire                bridge_interruptCtrl_readInt;
  wire                bridge_interruptCtrl_writeInt;
  wire                bridge_interruptCtrl_interrupt;
  reg                 bridge_misc_readError;
  reg                 when_BusSlaveFactory_l335;
  wire                when_BusSlaveFactory_l337;
  reg                 bridge_misc_readOverflowError;
  reg                 when_BusSlaveFactory_l335_1;
  wire                when_BusSlaveFactory_l337_1;
  wire                uartCtrl_2_io_read_isStall;
  reg                 bridge_misc_breakDetected;
  reg                 uartCtrl_2_io_readBreak_regNext;
  wire                when_UartCtrl_l154;
  reg                 when_BusSlaveFactory_l335_2;
  wire                when_BusSlaveFactory_l337_2;
  reg                 bridge_misc_doBreak;
  reg                 when_BusSlaveFactory_l366;
  wire                when_BusSlaveFactory_l368;
  reg                 when_BusSlaveFactory_l335_3;
  wire                when_BusSlaveFactory_l337_3;
  wire       `UartParityType_binary_sequential_type _zz_bridge_uartConfigReg_frame_parity;
  wire       `UartStopType_binary_sequential_type _zz_bridge_uartConfigReg_frame_stop;
  wire                when_Apb3SlaveFactory_l82;
  `ifndef SYNTHESIS
  reg [23:0] bridge_uartConfigReg_frame_stop_string;
  reg [31:0] bridge_uartConfigReg_frame_parity_string;
  reg [31:0] _zz_bridge_uartConfigReg_frame_parity_string;
  reg [23:0] _zz_bridge_uartConfigReg_frame_stop_string;
  `endif


  assign _zz_bridge_misc_readError = 1'b0;
  assign _zz_bridge_misc_readOverflowError = 1'b0;
  assign _zz_bridge_misc_breakDetected = 1'b0;
  assign _zz_bridge_misc_doBreak = 1'b1;
  assign _zz_bridge_misc_doBreak_1 = 1'b0;
  assign _zz_io_apb_PRDATA_4 = ((_zz_io_apb_PRDATA < _zz_io_apb_PRDATA_5) ? _zz_io_apb_PRDATA : _zz_io_apb_PRDATA_6);
  assign _zz_io_apb_PRDATA_3 = _zz_io_apb_PRDATA_4[7:0];
  assign _zz_io_apb_PRDATA_5 = {3'd0, _zz_io_apb_PRDATA_1};
  assign _zz_io_apb_PRDATA_6 = {3'd0, _zz_io_apb_PRDATA_1};
  assign _zz_io_apb_PRDATA_8 = ((uartCtrl_2_io_read_queueWithOccupancy_io_occupancy < _zz_io_apb_PRDATA_9) ? uartCtrl_2_io_read_queueWithOccupancy_io_occupancy : _zz_io_apb_PRDATA_10);
  assign _zz_io_apb_PRDATA_7 = _zz_io_apb_PRDATA_8[7:0];
  assign _zz_io_apb_PRDATA_9 = {3'd0, _zz_io_apb_PRDATA_2};
  assign _zz_io_apb_PRDATA_10 = {3'd0, _zz_io_apb_PRDATA_2};
  assign _zz_bridge_uartConfigReg_clockDivider_1 = io_apb_PWDATA[19 : 0];
  assign _zz_bridge_uartConfigReg_clockDivider = _zz_bridge_uartConfigReg_clockDivider_1;
  UartCtrl uartCtrl_2 (
    .io_config_frame_dataLength    (bridge_uartConfigReg_frame_dataLength                            ), //i
    .io_config_frame_stop          (bridge_uartConfigReg_frame_stop                                  ), //i
    .io_config_frame_parity        (bridge_uartConfigReg_frame_parity                                ), //i
    .io_config_clockDivider        (bridge_uartConfigReg_clockDivider                                ), //i
    .io_write_valid                (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid    ), //i
    .io_write_ready                (uartCtrl_2_io_write_ready                                        ), //o
    .io_write_payload              (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload  ), //i
    .io_read_valid                 (uartCtrl_2_io_read_valid                                         ), //o
    .io_read_ready                 (uartCtrl_2_io_read_queueWithOccupancy_io_push_ready              ), //i
    .io_read_payload               (uartCtrl_2_io_read_payload                                       ), //o
    .io_uart_txd                   (uartCtrl_2_io_uart_txd                                           ), //o
    .io_uart_rxd                   (io_uart_rxd                                                      ), //i
    .io_readError                  (uartCtrl_2_io_readError                                          ), //o
    .io_writeBreak                 (bridge_misc_doBreak                                              ), //i
    .io_readBreak                  (uartCtrl_2_io_readBreak                                          ), //o
    .io_axiClk                     (io_axiClk                                                        ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                                               )  //i
  );
  StreamFifo bridge_write_streamUnbuffered_queueWithOccupancy (
    .io_push_valid         (bridge_write_streamUnbuffered_valid                               ), //i
    .io_push_ready         (bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready    ), //o
    .io_push_payload       (bridge_write_streamUnbuffered_payload                             ), //i
    .io_pop_valid          (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid     ), //o
    .io_pop_ready          (uartCtrl_2_io_write_ready                                         ), //i
    .io_pop_payload        (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload   ), //o
    .io_flush              (1'b0                                                              ), //i
    .io_occupancy          (bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy     ), //o
    .io_availability       (bridge_write_streamUnbuffered_queueWithOccupancy_io_availability  ), //o
    .io_axiClk             (io_axiClk                                                         ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                )  //i
  );
  StreamFifo uartCtrl_2_io_read_queueWithOccupancy (
    .io_push_valid         (uartCtrl_2_io_read_valid                               ), //i
    .io_push_ready         (uartCtrl_2_io_read_queueWithOccupancy_io_push_ready    ), //o
    .io_push_payload       (uartCtrl_2_io_read_payload                             ), //i
    .io_pop_valid          (uartCtrl_2_io_read_queueWithOccupancy_io_pop_valid     ), //o
    .io_pop_ready          (uartCtrl_2_io_read_queueWithOccupancy_io_pop_ready     ), //i
    .io_pop_payload        (uartCtrl_2_io_read_queueWithOccupancy_io_pop_payload   ), //o
    .io_flush              (1'b0                                                   ), //i
    .io_occupancy          (uartCtrl_2_io_read_queueWithOccupancy_io_occupancy     ), //o
    .io_availability       (uartCtrl_2_io_read_queueWithOccupancy_io_availability  ), //o
    .io_axiClk             (io_axiClk                                              ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                     )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(bridge_uartConfigReg_frame_stop)
      `UartStopType_binary_sequential_ONE : bridge_uartConfigReg_frame_stop_string = "ONE";
      `UartStopType_binary_sequential_TWO : bridge_uartConfigReg_frame_stop_string = "TWO";
      default : bridge_uartConfigReg_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(bridge_uartConfigReg_frame_parity)
      `UartParityType_binary_sequential_NONE : bridge_uartConfigReg_frame_parity_string = "NONE";
      `UartParityType_binary_sequential_EVEN : bridge_uartConfigReg_frame_parity_string = "EVEN";
      `UartParityType_binary_sequential_ODD : bridge_uartConfigReg_frame_parity_string = "ODD ";
      default : bridge_uartConfigReg_frame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_bridge_uartConfigReg_frame_parity)
      `UartParityType_binary_sequential_NONE : _zz_bridge_uartConfigReg_frame_parity_string = "NONE";
      `UartParityType_binary_sequential_EVEN : _zz_bridge_uartConfigReg_frame_parity_string = "EVEN";
      `UartParityType_binary_sequential_ODD : _zz_bridge_uartConfigReg_frame_parity_string = "ODD ";
      default : _zz_bridge_uartConfigReg_frame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_bridge_uartConfigReg_frame_stop)
      `UartStopType_binary_sequential_ONE : _zz_bridge_uartConfigReg_frame_stop_string = "ONE";
      `UartStopType_binary_sequential_TWO : _zz_bridge_uartConfigReg_frame_stop_string = "TWO";
      default : _zz_bridge_uartConfigReg_frame_stop_string = "???";
    endcase
  end
  `endif

  assign io_uart_txd = uartCtrl_2_io_uart_txd;
  assign io_apb_PREADY = 1'b1;
  always @(*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      5'h0 : begin
        io_apb_PRDATA[16 : 16] = (bridge_read_streamBreaked_valid ^ 1'b0);
        io_apb_PRDATA[7 : 0] = bridge_read_streamBreaked_payload;
      end
      5'h04 : begin
        io_apb_PRDATA[23 : 16] = _zz_io_apb_PRDATA_3;
        io_apb_PRDATA[15 : 15] = bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
        io_apb_PRDATA[31 : 24] = _zz_io_apb_PRDATA_7;
        io_apb_PRDATA[0 : 0] = bridge_interruptCtrl_writeIntEnable;
        io_apb_PRDATA[1 : 1] = bridge_interruptCtrl_readIntEnable;
        io_apb_PRDATA[8 : 8] = bridge_interruptCtrl_writeInt;
        io_apb_PRDATA[9 : 9] = bridge_interruptCtrl_readInt;
      end
      5'h10 : begin
        io_apb_PRDATA[0 : 0] = bridge_misc_readError;
        io_apb_PRDATA[1 : 1] = bridge_misc_readOverflowError;
        io_apb_PRDATA[8 : 8] = uartCtrl_2_io_readBreak;
        io_apb_PRDATA[9 : 9] = bridge_misc_breakDetected;
      end
      default : begin
      end
    endcase
  end

  assign busCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign busCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign busCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign busCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  always @(*) begin
    _zz_bridge_write_streamUnbuffered_valid = 1'b0;
    case(io_apb_PADDR)
      5'h0 : begin
        if(busCtrl_doWrite) begin
          _zz_bridge_write_streamUnbuffered_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_write_streamUnbuffered_valid = _zz_bridge_write_streamUnbuffered_valid;
  assign bridge_write_streamUnbuffered_payload = io_apb_PWDATA[7 : 0];
  assign bridge_write_streamUnbuffered_ready = bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  assign _zz_io_apb_PRDATA = (11'h400 - bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy);
  assign _zz_io_apb_PRDATA_1 = 8'hff;
  always @(*) begin
    bridge_read_streamBreaked_valid = uartCtrl_2_io_read_queueWithOccupancy_io_pop_valid;
    if(uartCtrl_2_io_readBreak) begin
      bridge_read_streamBreaked_valid = 1'b0;
    end
  end

  always @(*) begin
    uartCtrl_2_io_read_queueWithOccupancy_io_pop_ready = bridge_read_streamBreaked_ready;
    if(uartCtrl_2_io_readBreak) begin
      uartCtrl_2_io_read_queueWithOccupancy_io_pop_ready = 1'b1;
    end
  end

  assign bridge_read_streamBreaked_payload = uartCtrl_2_io_read_queueWithOccupancy_io_pop_payload;
  always @(*) begin
    bridge_read_streamBreaked_ready = 1'b0;
    case(io_apb_PADDR)
      5'h0 : begin
        if(busCtrl_doRead) begin
          bridge_read_streamBreaked_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign _zz_io_apb_PRDATA_2 = 8'hff;
  assign bridge_interruptCtrl_readInt = (bridge_interruptCtrl_readIntEnable && bridge_read_streamBreaked_valid);
  assign bridge_interruptCtrl_writeInt = (bridge_interruptCtrl_writeIntEnable && (! bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid));
  assign bridge_interruptCtrl_interrupt = (bridge_interruptCtrl_readInt || bridge_interruptCtrl_writeInt);
  always @(*) begin
    when_BusSlaveFactory_l335 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l335 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337 = io_apb_PWDATA[0];
  always @(*) begin
    when_BusSlaveFactory_l335_1 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l335_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337_1 = io_apb_PWDATA[1];
  assign uartCtrl_2_io_read_isStall = (uartCtrl_2_io_read_valid && (! uartCtrl_2_io_read_queueWithOccupancy_io_push_ready));
  assign when_UartCtrl_l154 = (uartCtrl_2_io_readBreak && (! uartCtrl_2_io_readBreak_regNext));
  always @(*) begin
    when_BusSlaveFactory_l335_2 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l335_2 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337_2 = io_apb_PWDATA[9];
  always @(*) begin
    when_BusSlaveFactory_l366 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l366 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l368 = io_apb_PWDATA[10];
  always @(*) begin
    when_BusSlaveFactory_l335_3 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l335_3 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337_3 = io_apb_PWDATA[11];
  assign io_interrupt = bridge_interruptCtrl_interrupt;
  assign _zz_bridge_uartConfigReg_frame_parity = io_apb_PWDATA[9 : 8];
  assign _zz_bridge_uartConfigReg_frame_stop = io_apb_PWDATA[16 : 16];
  assign when_Apb3SlaveFactory_l82 = ((io_apb_PADDR & (~ 5'h03)) == 5'h08);
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      bridge_uartConfigReg_clockDivider <= 20'h0;
      bridge_interruptCtrl_writeIntEnable <= 1'b0;
      bridge_interruptCtrl_readIntEnable <= 1'b0;
      bridge_misc_readError <= 1'b0;
      bridge_misc_readOverflowError <= 1'b0;
      bridge_misc_breakDetected <= 1'b0;
      bridge_misc_doBreak <= 1'b0;
    end else begin
      if(when_BusSlaveFactory_l335) begin
        if(when_BusSlaveFactory_l337) begin
          bridge_misc_readError <= _zz_bridge_misc_readError[0];
        end
      end
      if(uartCtrl_2_io_readError) begin
        bridge_misc_readError <= 1'b1;
      end
      if(when_BusSlaveFactory_l335_1) begin
        if(when_BusSlaveFactory_l337_1) begin
          bridge_misc_readOverflowError <= _zz_bridge_misc_readOverflowError[0];
        end
      end
      if(uartCtrl_2_io_read_isStall) begin
        bridge_misc_readOverflowError <= 1'b1;
      end
      if(when_UartCtrl_l154) begin
        bridge_misc_breakDetected <= 1'b1;
      end
      if(when_BusSlaveFactory_l335_2) begin
        if(when_BusSlaveFactory_l337_2) begin
          bridge_misc_breakDetected <= _zz_bridge_misc_breakDetected[0];
        end
      end
      if(when_BusSlaveFactory_l366) begin
        if(when_BusSlaveFactory_l368) begin
          bridge_misc_doBreak <= _zz_bridge_misc_doBreak[0];
        end
      end
      if(when_BusSlaveFactory_l335_3) begin
        if(when_BusSlaveFactory_l337_3) begin
          bridge_misc_doBreak <= _zz_bridge_misc_doBreak_1[0];
        end
      end
      case(io_apb_PADDR)
        5'h04 : begin
          if(busCtrl_doWrite) begin
            bridge_interruptCtrl_writeIntEnable <= io_apb_PWDATA[0];
            bridge_interruptCtrl_readIntEnable <= io_apb_PWDATA[1];
          end
        end
        default : begin
        end
      endcase
      if(when_Apb3SlaveFactory_l82) begin
        if(busCtrl_doWrite) begin
          bridge_uartConfigReg_clockDivider[19 : 0] <= _zz_bridge_uartConfigReg_clockDivider;
        end
      end
    end
  end

  always @(posedge io_axiClk) begin
    uartCtrl_2_io_readBreak_regNext <= uartCtrl_2_io_readBreak;
    case(io_apb_PADDR)
      5'h0c : begin
        if(busCtrl_doWrite) begin
          bridge_uartConfigReg_frame_dataLength <= io_apb_PWDATA[2 : 0];
          bridge_uartConfigReg_frame_parity <= _zz_bridge_uartConfigReg_frame_parity;
          bridge_uartConfigReg_frame_stop <= _zz_bridge_uartConfigReg_frame_stop;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module PinsecTimerCtrl (
  input      [7:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_apb_PSLVERROR,
  input               io_external_clear,
  input               io_external_tick,
  output              io_interrupt,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                timerA_io_tick;
  wire                timerA_io_clear;
  wire                timerB_io_tick;
  wire                timerB_io_clear;
  wire                timerC_io_tick;
  wire                timerC_io_clear;
  wire                timerD_io_tick;
  wire                timerD_io_clear;
  reg        [3:0]    interruptCtrl_1_io_inputs;
  reg        [3:0]    interruptCtrl_1_io_clears;
  wire                io_external_buffercc_io_dataOut_clear;
  wire                io_external_buffercc_io_dataOut_tick;
  wire                prescaler_1_io_overflow;
  wire                timerA_io_full;
  wire       [31:0]   timerA_io_value;
  wire                timerB_io_full;
  wire       [15:0]   timerB_io_value;
  wire                timerC_io_full;
  wire       [15:0]   timerC_io_value;
  wire                timerD_io_full;
  wire       [15:0]   timerD_io_value;
  wire       [3:0]    interruptCtrl_1_io_pendings;
  wire                external_clear;
  wire                external_tick;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  reg        [15:0]   _zz_io_limit;
  reg                 _zz_io_clear;
  reg        [1:0]    timerABridge_ticksEnable;
  reg        [0:0]    timerABridge_clearsEnable;
  reg                 timerABridge_busClearing;
  reg        [31:0]   timerA_io_limit_driver;
  reg                 when_Timer_l40;
  reg                 when_Timer_l44;
  reg        [2:0]    timerBBridge_ticksEnable;
  reg        [1:0]    timerBBridge_clearsEnable;
  reg                 timerBBridge_busClearing;
  reg        [15:0]   timerB_io_limit_driver;
  reg                 when_Timer_l40_1;
  reg                 when_Timer_l44_1;
  reg        [2:0]    timerCBridge_ticksEnable;
  reg        [1:0]    timerCBridge_clearsEnable;
  reg                 timerCBridge_busClearing;
  reg        [15:0]   timerC_io_limit_driver;
  reg                 when_Timer_l40_2;
  reg                 when_Timer_l44_2;
  reg        [2:0]    timerDBridge_ticksEnable;
  reg        [1:0]    timerDBridge_clearsEnable;
  reg                 timerDBridge_busClearing;
  reg        [15:0]   timerD_io_limit_driver;
  reg                 when_Timer_l40_3;
  reg                 when_Timer_l44_3;
  reg        [3:0]    interruptCtrl_1_io_masks_driver;

  BufferCC_3 io_external_buffercc (
    .io_dataIn_clear       (io_external_clear                      ), //i
    .io_dataIn_tick        (io_external_tick                       ), //i
    .io_dataOut_clear      (io_external_buffercc_io_dataOut_clear  ), //o
    .io_dataOut_tick       (io_external_buffercc_io_dataOut_tick   ), //o
    .io_axiClk             (io_axiClk                              ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                     )  //i
  );
  Prescaler prescaler_1 (
    .io_clear              (_zz_io_clear             ), //i
    .io_limit              (_zz_io_limit             ), //i
    .io_overflow           (prescaler_1_io_overflow  ), //o
    .io_axiClk             (io_axiClk                ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset       )  //i
  );
  Timer timerA (
    .io_tick               (timerA_io_tick          ), //i
    .io_clear              (timerA_io_clear         ), //i
    .io_limit              (timerA_io_limit_driver  ), //i
    .io_full               (timerA_io_full          ), //o
    .io_value              (timerA_io_value         ), //o
    .io_axiClk             (io_axiClk               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset      )  //i
  );
  Timer_1 timerB (
    .io_tick               (timerB_io_tick          ), //i
    .io_clear              (timerB_io_clear         ), //i
    .io_limit              (timerB_io_limit_driver  ), //i
    .io_full               (timerB_io_full          ), //o
    .io_value              (timerB_io_value         ), //o
    .io_axiClk             (io_axiClk               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset      )  //i
  );
  Timer_1 timerC (
    .io_tick               (timerC_io_tick          ), //i
    .io_clear              (timerC_io_clear         ), //i
    .io_limit              (timerC_io_limit_driver  ), //i
    .io_full               (timerC_io_full          ), //o
    .io_value              (timerC_io_value         ), //o
    .io_axiClk             (io_axiClk               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset      )  //i
  );
  Timer_1 timerD (
    .io_tick               (timerD_io_tick          ), //i
    .io_clear              (timerD_io_clear         ), //i
    .io_limit              (timerD_io_limit_driver  ), //i
    .io_full               (timerD_io_full          ), //o
    .io_value              (timerD_io_value         ), //o
    .io_axiClk             (io_axiClk               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset      )  //i
  );
  InterruptCtrl interruptCtrl_1 (
    .io_inputs             (interruptCtrl_1_io_inputs        ), //i
    .io_clears             (interruptCtrl_1_io_clears        ), //i
    .io_masks              (interruptCtrl_1_io_masks_driver  ), //i
    .io_pendings           (interruptCtrl_1_io_pendings      ), //o
    .io_axiClk             (io_axiClk                        ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset               )  //i
  );
  assign external_clear = io_external_buffercc_io_dataOut_clear;
  assign external_tick = io_external_buffercc_io_dataOut_tick;
  assign io_apb_PREADY = 1'b1;
  always @(*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      8'h0 : begin
        io_apb_PRDATA[15 : 0] = _zz_io_limit;
      end
      8'h40 : begin
        io_apb_PRDATA[1 : 0] = timerABridge_ticksEnable;
        io_apb_PRDATA[16 : 16] = timerABridge_clearsEnable;
      end
      8'h44 : begin
        io_apb_PRDATA[31 : 0] = timerA_io_limit_driver;
      end
      8'h48 : begin
        io_apb_PRDATA[31 : 0] = timerA_io_value;
      end
      8'h50 : begin
        io_apb_PRDATA[2 : 0] = timerBBridge_ticksEnable;
        io_apb_PRDATA[17 : 16] = timerBBridge_clearsEnable;
      end
      8'h54 : begin
        io_apb_PRDATA[15 : 0] = timerB_io_limit_driver;
      end
      8'h58 : begin
        io_apb_PRDATA[15 : 0] = timerB_io_value;
      end
      8'h60 : begin
        io_apb_PRDATA[2 : 0] = timerCBridge_ticksEnable;
        io_apb_PRDATA[17 : 16] = timerCBridge_clearsEnable;
      end
      8'h64 : begin
        io_apb_PRDATA[15 : 0] = timerC_io_limit_driver;
      end
      8'h68 : begin
        io_apb_PRDATA[15 : 0] = timerC_io_value;
      end
      8'h70 : begin
        io_apb_PRDATA[2 : 0] = timerDBridge_ticksEnable;
        io_apb_PRDATA[17 : 16] = timerDBridge_clearsEnable;
      end
      8'h74 : begin
        io_apb_PRDATA[15 : 0] = timerD_io_limit_driver;
      end
      8'h78 : begin
        io_apb_PRDATA[15 : 0] = timerD_io_value;
      end
      8'h10 : begin
        io_apb_PRDATA[3 : 0] = interruptCtrl_1_io_pendings;
      end
      8'h14 : begin
        io_apb_PRDATA[3 : 0] = interruptCtrl_1_io_masks_driver;
      end
      default : begin
      end
    endcase
  end

  assign io_apb_PSLVERROR = 1'b0;
  assign busCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign busCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign busCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign busCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  always @(*) begin
    _zz_io_clear = 1'b0;
    case(io_apb_PADDR)
      8'h0 : begin
        if(busCtrl_doWrite) begin
          _zz_io_clear = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    timerABridge_busClearing = 1'b0;
    if(when_Timer_l40) begin
      timerABridge_busClearing = 1'b1;
    end
    if(when_Timer_l44) begin
      timerABridge_busClearing = 1'b1;
    end
  end

  always @(*) begin
    when_Timer_l40 = 1'b0;
    case(io_apb_PADDR)
      8'h44 : begin
        if(busCtrl_doWrite) begin
          when_Timer_l40 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    when_Timer_l44 = 1'b0;
    case(io_apb_PADDR)
      8'h48 : begin
        if(busCtrl_doWrite) begin
          when_Timer_l44 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign timerA_io_clear = (((timerABridge_clearsEnable & timerA_io_full) != 1'b0) || timerABridge_busClearing);
  assign timerA_io_tick = ((timerABridge_ticksEnable & {prescaler_1_io_overflow,1'b1}) != 2'b00);
  always @(*) begin
    timerBBridge_busClearing = 1'b0;
    if(when_Timer_l40_1) begin
      timerBBridge_busClearing = 1'b1;
    end
    if(when_Timer_l44_1) begin
      timerBBridge_busClearing = 1'b1;
    end
  end

  always @(*) begin
    when_Timer_l40_1 = 1'b0;
    case(io_apb_PADDR)
      8'h54 : begin
        if(busCtrl_doWrite) begin
          when_Timer_l40_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    when_Timer_l44_1 = 1'b0;
    case(io_apb_PADDR)
      8'h58 : begin
        if(busCtrl_doWrite) begin
          when_Timer_l44_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign timerB_io_clear = (((timerBBridge_clearsEnable & {external_clear,timerB_io_full}) != 2'b00) || timerBBridge_busClearing);
  assign timerB_io_tick = ((timerBBridge_ticksEnable & {external_tick,{prescaler_1_io_overflow,1'b1}}) != 3'b000);
  always @(*) begin
    timerCBridge_busClearing = 1'b0;
    if(when_Timer_l40_2) begin
      timerCBridge_busClearing = 1'b1;
    end
    if(when_Timer_l44_2) begin
      timerCBridge_busClearing = 1'b1;
    end
  end

  always @(*) begin
    when_Timer_l40_2 = 1'b0;
    case(io_apb_PADDR)
      8'h64 : begin
        if(busCtrl_doWrite) begin
          when_Timer_l40_2 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    when_Timer_l44_2 = 1'b0;
    case(io_apb_PADDR)
      8'h68 : begin
        if(busCtrl_doWrite) begin
          when_Timer_l44_2 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign timerC_io_clear = (((timerCBridge_clearsEnable & {external_clear,timerC_io_full}) != 2'b00) || timerCBridge_busClearing);
  assign timerC_io_tick = ((timerCBridge_ticksEnable & {external_tick,{prescaler_1_io_overflow,1'b1}}) != 3'b000);
  always @(*) begin
    timerDBridge_busClearing = 1'b0;
    if(when_Timer_l40_3) begin
      timerDBridge_busClearing = 1'b1;
    end
    if(when_Timer_l44_3) begin
      timerDBridge_busClearing = 1'b1;
    end
  end

  always @(*) begin
    when_Timer_l40_3 = 1'b0;
    case(io_apb_PADDR)
      8'h74 : begin
        if(busCtrl_doWrite) begin
          when_Timer_l40_3 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    when_Timer_l44_3 = 1'b0;
    case(io_apb_PADDR)
      8'h78 : begin
        if(busCtrl_doWrite) begin
          when_Timer_l44_3 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign timerD_io_clear = (((timerDBridge_clearsEnable & {external_clear,timerD_io_full}) != 2'b00) || timerDBridge_busClearing);
  assign timerD_io_tick = ((timerDBridge_ticksEnable & {external_tick,{prescaler_1_io_overflow,1'b1}}) != 3'b000);
  always @(*) begin
    interruptCtrl_1_io_clears = 4'b0000;
    case(io_apb_PADDR)
      8'h10 : begin
        if(busCtrl_doWrite) begin
          interruptCtrl_1_io_clears = io_apb_PWDATA[3 : 0];
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    interruptCtrl_1_io_inputs[0] = timerA_io_full;
    interruptCtrl_1_io_inputs[1] = timerB_io_full;
    interruptCtrl_1_io_inputs[2] = timerC_io_full;
    interruptCtrl_1_io_inputs[3] = timerD_io_full;
  end

  assign io_interrupt = (interruptCtrl_1_io_pendings != 4'b0000);
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      timerABridge_ticksEnable <= 2'b00;
      timerABridge_clearsEnable <= 1'b0;
      timerBBridge_ticksEnable <= 3'b000;
      timerBBridge_clearsEnable <= 2'b00;
      timerCBridge_ticksEnable <= 3'b000;
      timerCBridge_clearsEnable <= 2'b00;
      timerDBridge_ticksEnable <= 3'b000;
      timerDBridge_clearsEnable <= 2'b00;
      interruptCtrl_1_io_masks_driver <= 4'b0000;
    end else begin
      case(io_apb_PADDR)
        8'h40 : begin
          if(busCtrl_doWrite) begin
            timerABridge_ticksEnable <= io_apb_PWDATA[1 : 0];
            timerABridge_clearsEnable <= io_apb_PWDATA[16 : 16];
          end
        end
        8'h50 : begin
          if(busCtrl_doWrite) begin
            timerBBridge_ticksEnable <= io_apb_PWDATA[2 : 0];
            timerBBridge_clearsEnable <= io_apb_PWDATA[17 : 16];
          end
        end
        8'h60 : begin
          if(busCtrl_doWrite) begin
            timerCBridge_ticksEnable <= io_apb_PWDATA[2 : 0];
            timerCBridge_clearsEnable <= io_apb_PWDATA[17 : 16];
          end
        end
        8'h70 : begin
          if(busCtrl_doWrite) begin
            timerDBridge_ticksEnable <= io_apb_PWDATA[2 : 0];
            timerDBridge_clearsEnable <= io_apb_PWDATA[17 : 16];
          end
        end
        8'h14 : begin
          if(busCtrl_doWrite) begin
            interruptCtrl_1_io_masks_driver <= io_apb_PWDATA[3 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge io_axiClk) begin
    case(io_apb_PADDR)
      8'h0 : begin
        if(busCtrl_doWrite) begin
          _zz_io_limit <= io_apb_PWDATA[15 : 0];
        end
      end
      8'h44 : begin
        if(busCtrl_doWrite) begin
          timerA_io_limit_driver <= io_apb_PWDATA[31 : 0];
        end
      end
      8'h54 : begin
        if(busCtrl_doWrite) begin
          timerB_io_limit_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      8'h64 : begin
        if(busCtrl_doWrite) begin
          timerC_io_limit_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      8'h74 : begin
        if(busCtrl_doWrite) begin
          timerD_io_limit_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

//Apb3GpioSetClear replaced by Apb3GpioSetClear

module Apb3GpioSetClear (
  input      [4:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_apb_PSLVERROR,
  input      [31:0]   io_gpio_read,
  output     [31:0]   io_gpio_write,
  output     [31:0]   io_gpio_writeEnable,
  output     [31:0]   io_value,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                ctrl_askWrite;
  wire                ctrl_askRead;
  wire                ctrl_doWrite;
  wire                ctrl_doRead;
  reg        [31:0]   io_gpio_write_driver;
  reg        [31:0]   io_gpio_writeEnable_driver;
  wire       [31:0]   _zz_when_BusSlaveFactory_l368;
  reg                 when_BusSlaveFactory_l366;
  wire                when_BusSlaveFactory_l368;
  wire                when_BusSlaveFactory_l368_1;
  wire                when_BusSlaveFactory_l368_2;
  wire                when_BusSlaveFactory_l368_3;
  wire                when_BusSlaveFactory_l368_4;
  wire                when_BusSlaveFactory_l368_5;
  wire                when_BusSlaveFactory_l368_6;
  wire                when_BusSlaveFactory_l368_7;
  wire                when_BusSlaveFactory_l368_8;
  wire                when_BusSlaveFactory_l368_9;
  wire                when_BusSlaveFactory_l368_10;
  wire                when_BusSlaveFactory_l368_11;
  wire                when_BusSlaveFactory_l368_12;
  wire                when_BusSlaveFactory_l368_13;
  wire                when_BusSlaveFactory_l368_14;
  wire                when_BusSlaveFactory_l368_15;
  wire                when_BusSlaveFactory_l368_16;
  wire                when_BusSlaveFactory_l368_17;
  wire                when_BusSlaveFactory_l368_18;
  wire                when_BusSlaveFactory_l368_19;
  wire                when_BusSlaveFactory_l368_20;
  wire                when_BusSlaveFactory_l368_21;
  wire                when_BusSlaveFactory_l368_22;
  wire                when_BusSlaveFactory_l368_23;
  wire                when_BusSlaveFactory_l368_24;
  wire                when_BusSlaveFactory_l368_25;
  wire                when_BusSlaveFactory_l368_26;
  wire                when_BusSlaveFactory_l368_27;
  wire                when_BusSlaveFactory_l368_28;
  wire                when_BusSlaveFactory_l368_29;
  wire                when_BusSlaveFactory_l368_30;
  wire                when_BusSlaveFactory_l368_31;
  wire       [31:0]   _zz_when_BusSlaveFactory_l337;
  reg                 when_BusSlaveFactory_l335;
  wire                when_BusSlaveFactory_l337;
  wire                when_BusSlaveFactory_l337_1;
  wire                when_BusSlaveFactory_l337_2;
  wire                when_BusSlaveFactory_l337_3;
  wire                when_BusSlaveFactory_l337_4;
  wire                when_BusSlaveFactory_l337_5;
  wire                when_BusSlaveFactory_l337_6;
  wire                when_BusSlaveFactory_l337_7;
  wire                when_BusSlaveFactory_l337_8;
  wire                when_BusSlaveFactory_l337_9;
  wire                when_BusSlaveFactory_l337_10;
  wire                when_BusSlaveFactory_l337_11;
  wire                when_BusSlaveFactory_l337_12;
  wire                when_BusSlaveFactory_l337_13;
  wire                when_BusSlaveFactory_l337_14;
  wire                when_BusSlaveFactory_l337_15;
  wire                when_BusSlaveFactory_l337_16;
  wire                when_BusSlaveFactory_l337_17;
  wire                when_BusSlaveFactory_l337_18;
  wire                when_BusSlaveFactory_l337_19;
  wire                when_BusSlaveFactory_l337_20;
  wire                when_BusSlaveFactory_l337_21;
  wire                when_BusSlaveFactory_l337_22;
  wire                when_BusSlaveFactory_l337_23;
  wire                when_BusSlaveFactory_l337_24;
  wire                when_BusSlaveFactory_l337_25;
  wire                when_BusSlaveFactory_l337_26;
  wire                when_BusSlaveFactory_l337_27;
  wire                when_BusSlaveFactory_l337_28;
  wire                when_BusSlaveFactory_l337_29;
  wire                when_BusSlaveFactory_l337_30;
  wire                when_BusSlaveFactory_l337_31;
  wire       [31:0]   _zz_when_BusSlaveFactory_l368_1;
  reg                 when_BusSlaveFactory_l366_1;
  wire                when_BusSlaveFactory_l368_32;
  wire                when_BusSlaveFactory_l368_33;
  wire                when_BusSlaveFactory_l368_34;
  wire                when_BusSlaveFactory_l368_35;
  wire                when_BusSlaveFactory_l368_36;
  wire                when_BusSlaveFactory_l368_37;
  wire                when_BusSlaveFactory_l368_38;
  wire                when_BusSlaveFactory_l368_39;
  wire                when_BusSlaveFactory_l368_40;
  wire                when_BusSlaveFactory_l368_41;
  wire                when_BusSlaveFactory_l368_42;
  wire                when_BusSlaveFactory_l368_43;
  wire                when_BusSlaveFactory_l368_44;
  wire                when_BusSlaveFactory_l368_45;
  wire                when_BusSlaveFactory_l368_46;
  wire                when_BusSlaveFactory_l368_47;
  wire                when_BusSlaveFactory_l368_48;
  wire                when_BusSlaveFactory_l368_49;
  wire                when_BusSlaveFactory_l368_50;
  wire                when_BusSlaveFactory_l368_51;
  wire                when_BusSlaveFactory_l368_52;
  wire                when_BusSlaveFactory_l368_53;
  wire                when_BusSlaveFactory_l368_54;
  wire                when_BusSlaveFactory_l368_55;
  wire                when_BusSlaveFactory_l368_56;
  wire                when_BusSlaveFactory_l368_57;
  wire                when_BusSlaveFactory_l368_58;
  wire                when_BusSlaveFactory_l368_59;
  wire                when_BusSlaveFactory_l368_60;
  wire                when_BusSlaveFactory_l368_61;
  wire                when_BusSlaveFactory_l368_62;
  wire                when_BusSlaveFactory_l368_63;
  wire       [31:0]   _zz_when_BusSlaveFactory_l337_1;
  reg                 when_BusSlaveFactory_l335_1;
  wire                when_BusSlaveFactory_l337_32;
  wire                when_BusSlaveFactory_l337_33;
  wire                when_BusSlaveFactory_l337_34;
  wire                when_BusSlaveFactory_l337_35;
  wire                when_BusSlaveFactory_l337_36;
  wire                when_BusSlaveFactory_l337_37;
  wire                when_BusSlaveFactory_l337_38;
  wire                when_BusSlaveFactory_l337_39;
  wire                when_BusSlaveFactory_l337_40;
  wire                when_BusSlaveFactory_l337_41;
  wire                when_BusSlaveFactory_l337_42;
  wire                when_BusSlaveFactory_l337_43;
  wire                when_BusSlaveFactory_l337_44;
  wire                when_BusSlaveFactory_l337_45;
  wire                when_BusSlaveFactory_l337_46;
  wire                when_BusSlaveFactory_l337_47;
  wire                when_BusSlaveFactory_l337_48;
  wire                when_BusSlaveFactory_l337_49;
  wire                when_BusSlaveFactory_l337_50;
  wire                when_BusSlaveFactory_l337_51;
  wire                when_BusSlaveFactory_l337_52;
  wire                when_BusSlaveFactory_l337_53;
  wire                when_BusSlaveFactory_l337_54;
  wire                when_BusSlaveFactory_l337_55;
  wire                when_BusSlaveFactory_l337_56;
  wire                when_BusSlaveFactory_l337_57;
  wire                when_BusSlaveFactory_l337_58;
  wire                when_BusSlaveFactory_l337_59;
  wire                when_BusSlaveFactory_l337_60;
  wire                when_BusSlaveFactory_l337_61;
  wire                when_BusSlaveFactory_l337_62;
  wire                when_BusSlaveFactory_l337_63;

  assign io_value = io_gpio_read;
  assign io_apb_PREADY = 1'b1;
  always @(*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      5'h0 : begin
        io_apb_PRDATA[31 : 0] = io_value;
      end
      5'h04 : begin
        io_apb_PRDATA[31 : 0] = io_gpio_write_driver;
      end
      5'h08 : begin
        io_apb_PRDATA[31 : 0] = io_gpio_writeEnable_driver;
      end
      default : begin
      end
    endcase
  end

  assign io_apb_PSLVERROR = 1'b0;
  assign ctrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign ctrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign ctrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign ctrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  assign io_gpio_write = io_gpio_write_driver;
  assign io_gpio_writeEnable = io_gpio_writeEnable_driver;
  always @(*) begin
    when_BusSlaveFactory_l366 = 1'b0;
    case(io_apb_PADDR)
      5'h0c : begin
        if(ctrl_doWrite) begin
          when_BusSlaveFactory_l366 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l368 = _zz_when_BusSlaveFactory_l368[0];
  assign when_BusSlaveFactory_l368_1 = _zz_when_BusSlaveFactory_l368[1];
  assign when_BusSlaveFactory_l368_2 = _zz_when_BusSlaveFactory_l368[2];
  assign when_BusSlaveFactory_l368_3 = _zz_when_BusSlaveFactory_l368[3];
  assign when_BusSlaveFactory_l368_4 = _zz_when_BusSlaveFactory_l368[4];
  assign when_BusSlaveFactory_l368_5 = _zz_when_BusSlaveFactory_l368[5];
  assign when_BusSlaveFactory_l368_6 = _zz_when_BusSlaveFactory_l368[6];
  assign when_BusSlaveFactory_l368_7 = _zz_when_BusSlaveFactory_l368[7];
  assign when_BusSlaveFactory_l368_8 = _zz_when_BusSlaveFactory_l368[8];
  assign when_BusSlaveFactory_l368_9 = _zz_when_BusSlaveFactory_l368[9];
  assign when_BusSlaveFactory_l368_10 = _zz_when_BusSlaveFactory_l368[10];
  assign when_BusSlaveFactory_l368_11 = _zz_when_BusSlaveFactory_l368[11];
  assign when_BusSlaveFactory_l368_12 = _zz_when_BusSlaveFactory_l368[12];
  assign when_BusSlaveFactory_l368_13 = _zz_when_BusSlaveFactory_l368[13];
  assign when_BusSlaveFactory_l368_14 = _zz_when_BusSlaveFactory_l368[14];
  assign when_BusSlaveFactory_l368_15 = _zz_when_BusSlaveFactory_l368[15];
  assign when_BusSlaveFactory_l368_16 = _zz_when_BusSlaveFactory_l368[16];
  assign when_BusSlaveFactory_l368_17 = _zz_when_BusSlaveFactory_l368[17];
  assign when_BusSlaveFactory_l368_18 = _zz_when_BusSlaveFactory_l368[18];
  assign when_BusSlaveFactory_l368_19 = _zz_when_BusSlaveFactory_l368[19];
  assign when_BusSlaveFactory_l368_20 = _zz_when_BusSlaveFactory_l368[20];
  assign when_BusSlaveFactory_l368_21 = _zz_when_BusSlaveFactory_l368[21];
  assign when_BusSlaveFactory_l368_22 = _zz_when_BusSlaveFactory_l368[22];
  assign when_BusSlaveFactory_l368_23 = _zz_when_BusSlaveFactory_l368[23];
  assign when_BusSlaveFactory_l368_24 = _zz_when_BusSlaveFactory_l368[24];
  assign when_BusSlaveFactory_l368_25 = _zz_when_BusSlaveFactory_l368[25];
  assign when_BusSlaveFactory_l368_26 = _zz_when_BusSlaveFactory_l368[26];
  assign when_BusSlaveFactory_l368_27 = _zz_when_BusSlaveFactory_l368[27];
  assign when_BusSlaveFactory_l368_28 = _zz_when_BusSlaveFactory_l368[28];
  assign when_BusSlaveFactory_l368_29 = _zz_when_BusSlaveFactory_l368[29];
  assign when_BusSlaveFactory_l368_30 = _zz_when_BusSlaveFactory_l368[30];
  assign when_BusSlaveFactory_l368_31 = _zz_when_BusSlaveFactory_l368[31];
  always @(*) begin
    when_BusSlaveFactory_l335 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(ctrl_doWrite) begin
          when_BusSlaveFactory_l335 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337 = _zz_when_BusSlaveFactory_l337[0];
  assign when_BusSlaveFactory_l337_1 = _zz_when_BusSlaveFactory_l337[1];
  assign when_BusSlaveFactory_l337_2 = _zz_when_BusSlaveFactory_l337[2];
  assign when_BusSlaveFactory_l337_3 = _zz_when_BusSlaveFactory_l337[3];
  assign when_BusSlaveFactory_l337_4 = _zz_when_BusSlaveFactory_l337[4];
  assign when_BusSlaveFactory_l337_5 = _zz_when_BusSlaveFactory_l337[5];
  assign when_BusSlaveFactory_l337_6 = _zz_when_BusSlaveFactory_l337[6];
  assign when_BusSlaveFactory_l337_7 = _zz_when_BusSlaveFactory_l337[7];
  assign when_BusSlaveFactory_l337_8 = _zz_when_BusSlaveFactory_l337[8];
  assign when_BusSlaveFactory_l337_9 = _zz_when_BusSlaveFactory_l337[9];
  assign when_BusSlaveFactory_l337_10 = _zz_when_BusSlaveFactory_l337[10];
  assign when_BusSlaveFactory_l337_11 = _zz_when_BusSlaveFactory_l337[11];
  assign when_BusSlaveFactory_l337_12 = _zz_when_BusSlaveFactory_l337[12];
  assign when_BusSlaveFactory_l337_13 = _zz_when_BusSlaveFactory_l337[13];
  assign when_BusSlaveFactory_l337_14 = _zz_when_BusSlaveFactory_l337[14];
  assign when_BusSlaveFactory_l337_15 = _zz_when_BusSlaveFactory_l337[15];
  assign when_BusSlaveFactory_l337_16 = _zz_when_BusSlaveFactory_l337[16];
  assign when_BusSlaveFactory_l337_17 = _zz_when_BusSlaveFactory_l337[17];
  assign when_BusSlaveFactory_l337_18 = _zz_when_BusSlaveFactory_l337[18];
  assign when_BusSlaveFactory_l337_19 = _zz_when_BusSlaveFactory_l337[19];
  assign when_BusSlaveFactory_l337_20 = _zz_when_BusSlaveFactory_l337[20];
  assign when_BusSlaveFactory_l337_21 = _zz_when_BusSlaveFactory_l337[21];
  assign when_BusSlaveFactory_l337_22 = _zz_when_BusSlaveFactory_l337[22];
  assign when_BusSlaveFactory_l337_23 = _zz_when_BusSlaveFactory_l337[23];
  assign when_BusSlaveFactory_l337_24 = _zz_when_BusSlaveFactory_l337[24];
  assign when_BusSlaveFactory_l337_25 = _zz_when_BusSlaveFactory_l337[25];
  assign when_BusSlaveFactory_l337_26 = _zz_when_BusSlaveFactory_l337[26];
  assign when_BusSlaveFactory_l337_27 = _zz_when_BusSlaveFactory_l337[27];
  assign when_BusSlaveFactory_l337_28 = _zz_when_BusSlaveFactory_l337[28];
  assign when_BusSlaveFactory_l337_29 = _zz_when_BusSlaveFactory_l337[29];
  assign when_BusSlaveFactory_l337_30 = _zz_when_BusSlaveFactory_l337[30];
  assign when_BusSlaveFactory_l337_31 = _zz_when_BusSlaveFactory_l337[31];
  always @(*) begin
    when_BusSlaveFactory_l366_1 = 1'b0;
    case(io_apb_PADDR)
      5'h14 : begin
        if(ctrl_doWrite) begin
          when_BusSlaveFactory_l366_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l368_32 = _zz_when_BusSlaveFactory_l368_1[0];
  assign when_BusSlaveFactory_l368_33 = _zz_when_BusSlaveFactory_l368_1[1];
  assign when_BusSlaveFactory_l368_34 = _zz_when_BusSlaveFactory_l368_1[2];
  assign when_BusSlaveFactory_l368_35 = _zz_when_BusSlaveFactory_l368_1[3];
  assign when_BusSlaveFactory_l368_36 = _zz_when_BusSlaveFactory_l368_1[4];
  assign when_BusSlaveFactory_l368_37 = _zz_when_BusSlaveFactory_l368_1[5];
  assign when_BusSlaveFactory_l368_38 = _zz_when_BusSlaveFactory_l368_1[6];
  assign when_BusSlaveFactory_l368_39 = _zz_when_BusSlaveFactory_l368_1[7];
  assign when_BusSlaveFactory_l368_40 = _zz_when_BusSlaveFactory_l368_1[8];
  assign when_BusSlaveFactory_l368_41 = _zz_when_BusSlaveFactory_l368_1[9];
  assign when_BusSlaveFactory_l368_42 = _zz_when_BusSlaveFactory_l368_1[10];
  assign when_BusSlaveFactory_l368_43 = _zz_when_BusSlaveFactory_l368_1[11];
  assign when_BusSlaveFactory_l368_44 = _zz_when_BusSlaveFactory_l368_1[12];
  assign when_BusSlaveFactory_l368_45 = _zz_when_BusSlaveFactory_l368_1[13];
  assign when_BusSlaveFactory_l368_46 = _zz_when_BusSlaveFactory_l368_1[14];
  assign when_BusSlaveFactory_l368_47 = _zz_when_BusSlaveFactory_l368_1[15];
  assign when_BusSlaveFactory_l368_48 = _zz_when_BusSlaveFactory_l368_1[16];
  assign when_BusSlaveFactory_l368_49 = _zz_when_BusSlaveFactory_l368_1[17];
  assign when_BusSlaveFactory_l368_50 = _zz_when_BusSlaveFactory_l368_1[18];
  assign when_BusSlaveFactory_l368_51 = _zz_when_BusSlaveFactory_l368_1[19];
  assign when_BusSlaveFactory_l368_52 = _zz_when_BusSlaveFactory_l368_1[20];
  assign when_BusSlaveFactory_l368_53 = _zz_when_BusSlaveFactory_l368_1[21];
  assign when_BusSlaveFactory_l368_54 = _zz_when_BusSlaveFactory_l368_1[22];
  assign when_BusSlaveFactory_l368_55 = _zz_when_BusSlaveFactory_l368_1[23];
  assign when_BusSlaveFactory_l368_56 = _zz_when_BusSlaveFactory_l368_1[24];
  assign when_BusSlaveFactory_l368_57 = _zz_when_BusSlaveFactory_l368_1[25];
  assign when_BusSlaveFactory_l368_58 = _zz_when_BusSlaveFactory_l368_1[26];
  assign when_BusSlaveFactory_l368_59 = _zz_when_BusSlaveFactory_l368_1[27];
  assign when_BusSlaveFactory_l368_60 = _zz_when_BusSlaveFactory_l368_1[28];
  assign when_BusSlaveFactory_l368_61 = _zz_when_BusSlaveFactory_l368_1[29];
  assign when_BusSlaveFactory_l368_62 = _zz_when_BusSlaveFactory_l368_1[30];
  assign when_BusSlaveFactory_l368_63 = _zz_when_BusSlaveFactory_l368_1[31];
  always @(*) begin
    when_BusSlaveFactory_l335_1 = 1'b0;
    case(io_apb_PADDR)
      5'h18 : begin
        if(ctrl_doWrite) begin
          when_BusSlaveFactory_l335_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337_32 = _zz_when_BusSlaveFactory_l337_1[0];
  assign when_BusSlaveFactory_l337_33 = _zz_when_BusSlaveFactory_l337_1[1];
  assign when_BusSlaveFactory_l337_34 = _zz_when_BusSlaveFactory_l337_1[2];
  assign when_BusSlaveFactory_l337_35 = _zz_when_BusSlaveFactory_l337_1[3];
  assign when_BusSlaveFactory_l337_36 = _zz_when_BusSlaveFactory_l337_1[4];
  assign when_BusSlaveFactory_l337_37 = _zz_when_BusSlaveFactory_l337_1[5];
  assign when_BusSlaveFactory_l337_38 = _zz_when_BusSlaveFactory_l337_1[6];
  assign when_BusSlaveFactory_l337_39 = _zz_when_BusSlaveFactory_l337_1[7];
  assign when_BusSlaveFactory_l337_40 = _zz_when_BusSlaveFactory_l337_1[8];
  assign when_BusSlaveFactory_l337_41 = _zz_when_BusSlaveFactory_l337_1[9];
  assign when_BusSlaveFactory_l337_42 = _zz_when_BusSlaveFactory_l337_1[10];
  assign when_BusSlaveFactory_l337_43 = _zz_when_BusSlaveFactory_l337_1[11];
  assign when_BusSlaveFactory_l337_44 = _zz_when_BusSlaveFactory_l337_1[12];
  assign when_BusSlaveFactory_l337_45 = _zz_when_BusSlaveFactory_l337_1[13];
  assign when_BusSlaveFactory_l337_46 = _zz_when_BusSlaveFactory_l337_1[14];
  assign when_BusSlaveFactory_l337_47 = _zz_when_BusSlaveFactory_l337_1[15];
  assign when_BusSlaveFactory_l337_48 = _zz_when_BusSlaveFactory_l337_1[16];
  assign when_BusSlaveFactory_l337_49 = _zz_when_BusSlaveFactory_l337_1[17];
  assign when_BusSlaveFactory_l337_50 = _zz_when_BusSlaveFactory_l337_1[18];
  assign when_BusSlaveFactory_l337_51 = _zz_when_BusSlaveFactory_l337_1[19];
  assign when_BusSlaveFactory_l337_52 = _zz_when_BusSlaveFactory_l337_1[20];
  assign when_BusSlaveFactory_l337_53 = _zz_when_BusSlaveFactory_l337_1[21];
  assign when_BusSlaveFactory_l337_54 = _zz_when_BusSlaveFactory_l337_1[22];
  assign when_BusSlaveFactory_l337_55 = _zz_when_BusSlaveFactory_l337_1[23];
  assign when_BusSlaveFactory_l337_56 = _zz_when_BusSlaveFactory_l337_1[24];
  assign when_BusSlaveFactory_l337_57 = _zz_when_BusSlaveFactory_l337_1[25];
  assign when_BusSlaveFactory_l337_58 = _zz_when_BusSlaveFactory_l337_1[26];
  assign when_BusSlaveFactory_l337_59 = _zz_when_BusSlaveFactory_l337_1[27];
  assign when_BusSlaveFactory_l337_60 = _zz_when_BusSlaveFactory_l337_1[28];
  assign when_BusSlaveFactory_l337_61 = _zz_when_BusSlaveFactory_l337_1[29];
  assign when_BusSlaveFactory_l337_62 = _zz_when_BusSlaveFactory_l337_1[30];
  assign when_BusSlaveFactory_l337_63 = _zz_when_BusSlaveFactory_l337_1[31];
  assign _zz_when_BusSlaveFactory_l368 = io_apb_PWDATA[31 : 0];
  assign _zz_when_BusSlaveFactory_l337 = io_apb_PWDATA[31 : 0];
  assign _zz_when_BusSlaveFactory_l368_1 = io_apb_PWDATA[31 : 0];
  assign _zz_when_BusSlaveFactory_l337_1 = io_apb_PWDATA[31 : 0];
  always @(posedge io_axiClk) begin
    if(when_BusSlaveFactory_l366) begin
      if(when_BusSlaveFactory_l368) begin
        io_gpio_write_driver[0 : 0] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_1) begin
        io_gpio_write_driver[1 : 1] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_2) begin
        io_gpio_write_driver[2 : 2] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_3) begin
        io_gpio_write_driver[3 : 3] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_4) begin
        io_gpio_write_driver[4 : 4] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_5) begin
        io_gpio_write_driver[5 : 5] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_6) begin
        io_gpio_write_driver[6 : 6] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_7) begin
        io_gpio_write_driver[7 : 7] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_8) begin
        io_gpio_write_driver[8 : 8] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_9) begin
        io_gpio_write_driver[9 : 9] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_10) begin
        io_gpio_write_driver[10 : 10] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_11) begin
        io_gpio_write_driver[11 : 11] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_12) begin
        io_gpio_write_driver[12 : 12] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_13) begin
        io_gpio_write_driver[13 : 13] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_14) begin
        io_gpio_write_driver[14 : 14] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_15) begin
        io_gpio_write_driver[15 : 15] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_16) begin
        io_gpio_write_driver[16 : 16] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_17) begin
        io_gpio_write_driver[17 : 17] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_18) begin
        io_gpio_write_driver[18 : 18] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_19) begin
        io_gpio_write_driver[19 : 19] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_20) begin
        io_gpio_write_driver[20 : 20] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_21) begin
        io_gpio_write_driver[21 : 21] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_22) begin
        io_gpio_write_driver[22 : 22] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_23) begin
        io_gpio_write_driver[23 : 23] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_24) begin
        io_gpio_write_driver[24 : 24] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_25) begin
        io_gpio_write_driver[25 : 25] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_26) begin
        io_gpio_write_driver[26 : 26] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_27) begin
        io_gpio_write_driver[27 : 27] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_28) begin
        io_gpio_write_driver[28 : 28] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_29) begin
        io_gpio_write_driver[29 : 29] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_30) begin
        io_gpio_write_driver[30 : 30] <= 1'b1;
      end
      if(when_BusSlaveFactory_l368_31) begin
        io_gpio_write_driver[31 : 31] <= 1'b1;
      end
    end
    if(when_BusSlaveFactory_l335) begin
      if(when_BusSlaveFactory_l337) begin
        io_gpio_write_driver[0 : 0] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_1) begin
        io_gpio_write_driver[1 : 1] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_2) begin
        io_gpio_write_driver[2 : 2] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_3) begin
        io_gpio_write_driver[3 : 3] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_4) begin
        io_gpio_write_driver[4 : 4] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_5) begin
        io_gpio_write_driver[5 : 5] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_6) begin
        io_gpio_write_driver[6 : 6] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_7) begin
        io_gpio_write_driver[7 : 7] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_8) begin
        io_gpio_write_driver[8 : 8] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_9) begin
        io_gpio_write_driver[9 : 9] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_10) begin
        io_gpio_write_driver[10 : 10] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_11) begin
        io_gpio_write_driver[11 : 11] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_12) begin
        io_gpio_write_driver[12 : 12] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_13) begin
        io_gpio_write_driver[13 : 13] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_14) begin
        io_gpio_write_driver[14 : 14] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_15) begin
        io_gpio_write_driver[15 : 15] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_16) begin
        io_gpio_write_driver[16 : 16] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_17) begin
        io_gpio_write_driver[17 : 17] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_18) begin
        io_gpio_write_driver[18 : 18] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_19) begin
        io_gpio_write_driver[19 : 19] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_20) begin
        io_gpio_write_driver[20 : 20] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_21) begin
        io_gpio_write_driver[21 : 21] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_22) begin
        io_gpio_write_driver[22 : 22] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_23) begin
        io_gpio_write_driver[23 : 23] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_24) begin
        io_gpio_write_driver[24 : 24] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_25) begin
        io_gpio_write_driver[25 : 25] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_26) begin
        io_gpio_write_driver[26 : 26] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_27) begin
        io_gpio_write_driver[27 : 27] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_28) begin
        io_gpio_write_driver[28 : 28] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_29) begin
        io_gpio_write_driver[29 : 29] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_30) begin
        io_gpio_write_driver[30 : 30] <= 1'b0;
      end
      if(when_BusSlaveFactory_l337_31) begin
        io_gpio_write_driver[31 : 31] <= 1'b0;
      end
    end
    case(io_apb_PADDR)
      5'h04 : begin
        if(ctrl_doWrite) begin
          io_gpio_write_driver <= io_apb_PWDATA[31 : 0];
        end
      end
      default : begin
      end
    endcase
  end

  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      io_gpio_writeEnable_driver <= 32'h0;
    end else begin
      if(when_BusSlaveFactory_l366_1) begin
        if(when_BusSlaveFactory_l368_32) begin
          io_gpio_writeEnable_driver[0 : 0] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_33) begin
          io_gpio_writeEnable_driver[1 : 1] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_34) begin
          io_gpio_writeEnable_driver[2 : 2] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_35) begin
          io_gpio_writeEnable_driver[3 : 3] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_36) begin
          io_gpio_writeEnable_driver[4 : 4] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_37) begin
          io_gpio_writeEnable_driver[5 : 5] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_38) begin
          io_gpio_writeEnable_driver[6 : 6] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_39) begin
          io_gpio_writeEnable_driver[7 : 7] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_40) begin
          io_gpio_writeEnable_driver[8 : 8] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_41) begin
          io_gpio_writeEnable_driver[9 : 9] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_42) begin
          io_gpio_writeEnable_driver[10 : 10] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_43) begin
          io_gpio_writeEnable_driver[11 : 11] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_44) begin
          io_gpio_writeEnable_driver[12 : 12] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_45) begin
          io_gpio_writeEnable_driver[13 : 13] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_46) begin
          io_gpio_writeEnable_driver[14 : 14] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_47) begin
          io_gpio_writeEnable_driver[15 : 15] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_48) begin
          io_gpio_writeEnable_driver[16 : 16] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_49) begin
          io_gpio_writeEnable_driver[17 : 17] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_50) begin
          io_gpio_writeEnable_driver[18 : 18] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_51) begin
          io_gpio_writeEnable_driver[19 : 19] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_52) begin
          io_gpio_writeEnable_driver[20 : 20] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_53) begin
          io_gpio_writeEnable_driver[21 : 21] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_54) begin
          io_gpio_writeEnable_driver[22 : 22] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_55) begin
          io_gpio_writeEnable_driver[23 : 23] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_56) begin
          io_gpio_writeEnable_driver[24 : 24] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_57) begin
          io_gpio_writeEnable_driver[25 : 25] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_58) begin
          io_gpio_writeEnable_driver[26 : 26] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_59) begin
          io_gpio_writeEnable_driver[27 : 27] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_60) begin
          io_gpio_writeEnable_driver[28 : 28] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_61) begin
          io_gpio_writeEnable_driver[29 : 29] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_62) begin
          io_gpio_writeEnable_driver[30 : 30] <= 1'b1;
        end
        if(when_BusSlaveFactory_l368_63) begin
          io_gpio_writeEnable_driver[31 : 31] <= 1'b1;
        end
      end
      if(when_BusSlaveFactory_l335_1) begin
        if(when_BusSlaveFactory_l337_32) begin
          io_gpio_writeEnable_driver[0 : 0] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_33) begin
          io_gpio_writeEnable_driver[1 : 1] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_34) begin
          io_gpio_writeEnable_driver[2 : 2] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_35) begin
          io_gpio_writeEnable_driver[3 : 3] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_36) begin
          io_gpio_writeEnable_driver[4 : 4] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_37) begin
          io_gpio_writeEnable_driver[5 : 5] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_38) begin
          io_gpio_writeEnable_driver[6 : 6] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_39) begin
          io_gpio_writeEnable_driver[7 : 7] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_40) begin
          io_gpio_writeEnable_driver[8 : 8] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_41) begin
          io_gpio_writeEnable_driver[9 : 9] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_42) begin
          io_gpio_writeEnable_driver[10 : 10] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_43) begin
          io_gpio_writeEnable_driver[11 : 11] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_44) begin
          io_gpio_writeEnable_driver[12 : 12] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_45) begin
          io_gpio_writeEnable_driver[13 : 13] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_46) begin
          io_gpio_writeEnable_driver[14 : 14] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_47) begin
          io_gpio_writeEnable_driver[15 : 15] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_48) begin
          io_gpio_writeEnable_driver[16 : 16] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_49) begin
          io_gpio_writeEnable_driver[17 : 17] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_50) begin
          io_gpio_writeEnable_driver[18 : 18] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_51) begin
          io_gpio_writeEnable_driver[19 : 19] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_52) begin
          io_gpio_writeEnable_driver[20 : 20] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_53) begin
          io_gpio_writeEnable_driver[21 : 21] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_54) begin
          io_gpio_writeEnable_driver[22 : 22] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_55) begin
          io_gpio_writeEnable_driver[23 : 23] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_56) begin
          io_gpio_writeEnable_driver[24 : 24] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_57) begin
          io_gpio_writeEnable_driver[25 : 25] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_58) begin
          io_gpio_writeEnable_driver[26 : 26] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_59) begin
          io_gpio_writeEnable_driver[27 : 27] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_60) begin
          io_gpio_writeEnable_driver[28 : 28] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_61) begin
          io_gpio_writeEnable_driver[29 : 29] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_62) begin
          io_gpio_writeEnable_driver[30 : 30] <= 1'b0;
        end
        if(when_BusSlaveFactory_l337_63) begin
          io_gpio_writeEnable_driver[31 : 31] <= 1'b0;
        end
      end
      case(io_apb_PADDR)
        5'h08 : begin
          if(ctrl_doWrite) begin
            io_gpio_writeEnable_driver <= io_apb_PWDATA[31 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end


endmodule

//Axi4SharedToApb3Bridge replaced by Axi4SharedToApb3Bridge

module Axi4SharedToApb3Bridge (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [19:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output reg          io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output reg          io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output reg          io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  output     [19:0]   io_apb_PADDR,
  output reg [0:0]    io_apb_PSEL,
  output reg          io_apb_PENABLE,
  input               io_apb_PREADY,
  output              io_apb_PWRITE,
  output     [31:0]   io_apb_PWDATA,
  input      [31:0]   io_apb_PRDATA,
  input               io_apb_PSLVERROR,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        `Axi4ToApb3BridgePhase_binary_sequential_type phase;
  reg                 write;
  reg        [31:0]   readedData;
  reg        [3:0]    id;
  wire                when_Axi4SharedToApb3Bridge_l91;
  `ifndef SYNTHESIS
  reg [63:0] phase_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : phase_string = "SETUP   ";
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : phase_string = "ACCESS_1";
      `Axi4ToApb3BridgePhase_binary_sequential_RESPONSE : phase_string = "RESPONSE";
      default : phase_string = "????????";
    endcase
  end
  `endif

  always @(*) begin
    io_axi_arw_ready = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          io_axi_arw_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axi_w_ready = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          io_axi_w_ready = write;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axi_b_valid = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
      end
      default : begin
        if(write) begin
          io_axi_b_valid = 1'b1;
        end
      end
    endcase
  end

  always @(*) begin
    io_axi_r_valid = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
      end
      default : begin
        if(!write) begin
          io_axi_r_valid = 1'b1;
        end
      end
    endcase
  end

  always @(*) begin
    io_apb_PSEL[0] = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
        if(when_Axi4SharedToApb3Bridge_l91) begin
          io_apb_PSEL[0] = 1'b1;
        end
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        io_apb_PSEL[0] = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_apb_PENABLE = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        io_apb_PENABLE = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign when_Axi4SharedToApb3Bridge_l91 = (io_axi_arw_valid && ((! io_axi_arw_payload_write) || io_axi_w_valid));
  assign io_apb_PADDR = io_axi_arw_payload_addr;
  assign io_apb_PWDATA = io_axi_w_payload_data;
  assign io_apb_PWRITE = io_axi_arw_payload_write;
  assign io_axi_r_payload_resp = {io_apb_PSLVERROR,1'b0};
  assign io_axi_b_payload_resp = {io_apb_PSLVERROR,1'b0};
  assign io_axi_r_payload_id = id;
  assign io_axi_b_payload_id = id;
  assign io_axi_r_payload_data = readedData;
  assign io_axi_r_payload_last = 1'b1;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      phase <= `Axi4ToApb3BridgePhase_binary_sequential_SETUP;
    end else begin
      case(phase)
        `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
          if(when_Axi4SharedToApb3Bridge_l91) begin
            phase <= `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1;
          end
        end
        `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
          if(io_apb_PREADY) begin
            phase <= `Axi4ToApb3BridgePhase_binary_sequential_RESPONSE;
          end
        end
        default : begin
          if(write) begin
            if(io_axi_b_ready) begin
              phase <= `Axi4ToApb3BridgePhase_binary_sequential_SETUP;
            end
          end else begin
            if(io_axi_r_ready) begin
              phase <= `Axi4ToApb3BridgePhase_binary_sequential_SETUP;
            end
          end
        end
      endcase
    end
  end

  always @(posedge io_axiClk) begin
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
        write <= io_axi_arw_payload_write;
        id <= io_axi_arw_payload_id;
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          readedData <= io_apb_PRDATA;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module Axi4SharedSdramCtrl (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [24:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [23:0]   ctrl_io_bus_cmd_payload_address;
  wire       [15:0]   ctrl_io_bus_cmd_payload_data;
  wire       [1:0]    ctrl_io_bus_cmd_payload_mask;
  wire                ctrl_io_bus_rsp_ready;
  wire                ctrl_io_bus_cmd_ready;
  wire                ctrl_io_bus_rsp_valid;
  wire       [15:0]   ctrl_io_bus_rsp_payload_data;
  wire       [3:0]    ctrl_io_bus_rsp_payload_context_id;
  wire                ctrl_io_bus_rsp_payload_context_last;
  wire       [12:0]   ctrl_io_sdram_ADDR;
  wire       [1:0]    ctrl_io_sdram_BA;
  wire                ctrl_io_sdram_CASn;
  wire                ctrl_io_sdram_CKE;
  wire                ctrl_io_sdram_CSn;
  wire       [1:0]    ctrl_io_sdram_DQM;
  wire                ctrl_io_sdram_RASn;
  wire                ctrl_io_sdram_WEn;
  wire       [15:0]   ctrl_io_sdram_DQ_write;
  wire       [15:0]   ctrl_io_sdram_DQ_writeEnable;
  reg        [15:0]   _zz_io_bus_cmd_payload_data;
  reg        [1:0]    _zz_io_bus_cmd_payload_mask;
  wire       [1:0]    _zz_Axi4Incr_alignMask;
  wire       [11:0]   _zz_Axi4Incr_base;
  wire       [11:0]   _zz_Axi4Incr_base_1;
  wire       [11:0]   _zz_Axi4Incr_baseIncr;
  wire       [2:0]    _zz_Axi4Incr_wrapCase_1;
  wire       [2:0]    _zz_Axi4Incr_wrapCase_2;
  reg        [11:0]   _zz_Axi4Incr_result;
  wire       [10:0]   _zz_Axi4Incr_result_1;
  wire       [0:0]    _zz_Axi4Incr_result_2;
  wire       [9:0]    _zz_Axi4Incr_result_3;
  wire       [1:0]    _zz_Axi4Incr_result_4;
  wire       [8:0]    _zz_Axi4Incr_result_5;
  wire       [2:0]    _zz_Axi4Incr_result_6;
  wire       [7:0]    _zz_Axi4Incr_result_7;
  wire       [3:0]    _zz_Axi4Incr_result_8;
  wire       [6:0]    _zz_Axi4Incr_result_9;
  wire       [4:0]    _zz_Axi4Incr_result_10;
  wire       [5:0]    _zz_Axi4Incr_result_11;
  wire       [5:0]    _zz_Axi4Incr_result_12;
  wire                ctrlBusAdapted_cmd_valid;
  wire                ctrlBusAdapted_cmd_ready;
  wire       [22:0]   ctrlBusAdapted_cmd_payload_address;
  wire                ctrlBusAdapted_cmd_payload_write;
  wire       [31:0]   ctrlBusAdapted_cmd_payload_data;
  wire       [3:0]    ctrlBusAdapted_cmd_payload_mask;
  wire       [3:0]    ctrlBusAdapted_cmd_payload_context_id;
  wire                ctrlBusAdapted_cmd_payload_context_last;
  wire                ctrlBusAdapted_rsp_valid;
  wire                ctrlBusAdapted_rsp_ready;
  wire       [31:0]   ctrlBusAdapted_rsp_payload_data;
  wire       [3:0]    ctrlBusAdapted_rsp_payload_context_id;
  wire                ctrlBusAdapted_rsp_payload_context_last;
  wire                ctrl_io_bus_cmd_fire;
  reg                 _zz_ctrlBusAdapted_cmd_ready;
  reg        [0:0]    _zz_ctrlBusAdapted_cmd_ready_1;
  reg        [0:0]    _zz_ctrlBusAdapted_cmd_ready_2;
  wire                _zz_ctrlBusAdapted_cmd_ready_3;
  wire                ctrl_io_bus_rsp_fire;
  reg                 _zz_ctrlBusAdapted_rsp_valid;
  reg        [0:0]    _zz_ctrlBusAdapted_rsp_valid_1;
  reg        [0:0]    _zz_ctrlBusAdapted_rsp_valid_2;
  wire                _zz_ctrlBusAdapted_rsp_valid_3;
  wire                ctrl_io_bus_rsp_fire_1;
  reg        [15:0]   ctrl_io_bus_rsp_payload_data_regNextWhen;
  reg                 unburstify_result_valid;
  wire                unburstify_result_ready;
  reg                 unburstify_result_payload_last;
  reg        [24:0]   unburstify_result_payload_fragment_addr;
  reg        [3:0]    unburstify_result_payload_fragment_id;
  reg        [2:0]    unburstify_result_payload_fragment_size;
  reg        [1:0]    unburstify_result_payload_fragment_burst;
  reg                 unburstify_result_payload_fragment_write;
  wire                unburstify_doResult;
  reg                 unburstify_buffer_valid;
  reg        [7:0]    unburstify_buffer_len;
  reg        [7:0]    unburstify_buffer_beat;
  reg        [24:0]   unburstify_buffer_transaction_addr;
  reg        [3:0]    unburstify_buffer_transaction_id;
  reg        [2:0]    unburstify_buffer_transaction_size;
  reg        [1:0]    unburstify_buffer_transaction_burst;
  reg                 unburstify_buffer_transaction_write;
  wire                unburstify_buffer_last;
  wire       [1:0]    Axi4Incr_validSize;
  reg        [24:0]   Axi4Incr_result;
  wire       [12:0]   Axi4Incr_highCat;
  wire       [2:0]    Axi4Incr_sizeValue;
  wire       [11:0]   Axi4Incr_alignMask;
  wire       [11:0]   Axi4Incr_base;
  wire       [11:0]   Axi4Incr_baseIncr;
  reg        [1:0]    _zz_Axi4Incr_wrapCase;
  wire       [2:0]    Axi4Incr_wrapCase;
  wire                when_Axi4Channel_l181;
  wire                _zz_unburstify_result_ready;
  wire                bridge_axiCmd_valid;
  wire                bridge_axiCmd_ready;
  wire                bridge_axiCmd_payload_last;
  wire       [24:0]   bridge_axiCmd_payload_fragment_addr;
  wire       [3:0]    bridge_axiCmd_payload_fragment_id;
  wire       [2:0]    bridge_axiCmd_payload_fragment_size;
  wire       [1:0]    bridge_axiCmd_payload_fragment_burst;
  wire                bridge_axiCmd_payload_fragment_write;
  wire                bridge_writeRsp_valid;
  reg                 bridge_writeRsp_ready;
  wire       [3:0]    bridge_writeRsp_payload_id;
  wire       [1:0]    bridge_writeRsp_payload_resp;
  wire                bridge_axiCmd_fire;
  wire                bridge_writeRsp_m2sPipe_valid;
  wire                bridge_writeRsp_m2sPipe_ready;
  wire       [3:0]    bridge_writeRsp_m2sPipe_payload_id;
  wire       [1:0]    bridge_writeRsp_m2sPipe_payload_resp;
  reg                 bridge_writeRsp_rValid;
  reg        [3:0]    bridge_writeRsp_rData_id;
  reg        [1:0]    bridge_writeRsp_rData_resp;
  wire                when_Stream_l342;

  assign _zz_Axi4Incr_alignMask = {(2'b01 < Axi4Incr_validSize),(2'b00 < Axi4Incr_validSize)};
  assign _zz_Axi4Incr_base_1 = unburstify_buffer_transaction_addr[11 : 0];
  assign _zz_Axi4Incr_base = _zz_Axi4Incr_base_1;
  assign _zz_Axi4Incr_baseIncr = {9'd0, Axi4Incr_sizeValue};
  assign _zz_Axi4Incr_wrapCase_1 = {1'd0, Axi4Incr_validSize};
  assign _zz_Axi4Incr_wrapCase_2 = {1'd0, _zz_Axi4Incr_wrapCase};
  assign _zz_Axi4Incr_result_1 = Axi4Incr_base[11 : 1];
  assign _zz_Axi4Incr_result_2 = Axi4Incr_baseIncr[0 : 0];
  assign _zz_Axi4Incr_result_3 = Axi4Incr_base[11 : 2];
  assign _zz_Axi4Incr_result_4 = Axi4Incr_baseIncr[1 : 0];
  assign _zz_Axi4Incr_result_5 = Axi4Incr_base[11 : 3];
  assign _zz_Axi4Incr_result_6 = Axi4Incr_baseIncr[2 : 0];
  assign _zz_Axi4Incr_result_7 = Axi4Incr_base[11 : 4];
  assign _zz_Axi4Incr_result_8 = Axi4Incr_baseIncr[3 : 0];
  assign _zz_Axi4Incr_result_9 = Axi4Incr_base[11 : 5];
  assign _zz_Axi4Incr_result_10 = Axi4Incr_baseIncr[4 : 0];
  assign _zz_Axi4Incr_result_11 = Axi4Incr_base[11 : 6];
  assign _zz_Axi4Incr_result_12 = Axi4Incr_baseIncr[5 : 0];
  SdramCtrl ctrl (
    .io_bus_cmd_valid                   (ctrlBusAdapted_cmd_valid                 ), //i
    .io_bus_cmd_ready                   (ctrl_io_bus_cmd_ready                    ), //o
    .io_bus_cmd_payload_address         (ctrl_io_bus_cmd_payload_address          ), //i
    .io_bus_cmd_payload_write           (ctrlBusAdapted_cmd_payload_write         ), //i
    .io_bus_cmd_payload_data            (ctrl_io_bus_cmd_payload_data             ), //i
    .io_bus_cmd_payload_mask            (ctrl_io_bus_cmd_payload_mask             ), //i
    .io_bus_cmd_payload_context_id      (ctrlBusAdapted_cmd_payload_context_id    ), //i
    .io_bus_cmd_payload_context_last    (ctrlBusAdapted_cmd_payload_context_last  ), //i
    .io_bus_rsp_valid                   (ctrl_io_bus_rsp_valid                    ), //o
    .io_bus_rsp_ready                   (ctrl_io_bus_rsp_ready                    ), //i
    .io_bus_rsp_payload_data            (ctrl_io_bus_rsp_payload_data             ), //o
    .io_bus_rsp_payload_context_id      (ctrl_io_bus_rsp_payload_context_id       ), //o
    .io_bus_rsp_payload_context_last    (ctrl_io_bus_rsp_payload_context_last     ), //o
    .io_sdram_ADDR                      (ctrl_io_sdram_ADDR                       ), //o
    .io_sdram_BA                        (ctrl_io_sdram_BA                         ), //o
    .io_sdram_DQ_read                   (io_sdram_DQ_read                         ), //i
    .io_sdram_DQ_write                  (ctrl_io_sdram_DQ_write                   ), //o
    .io_sdram_DQ_writeEnable            (ctrl_io_sdram_DQ_writeEnable             ), //o
    .io_sdram_DQM                       (ctrl_io_sdram_DQM                        ), //o
    .io_sdram_CASn                      (ctrl_io_sdram_CASn                       ), //o
    .io_sdram_CKE                       (ctrl_io_sdram_CKE                        ), //o
    .io_sdram_CSn                       (ctrl_io_sdram_CSn                        ), //o
    .io_sdram_RASn                      (ctrl_io_sdram_RASn                       ), //o
    .io_sdram_WEn                       (ctrl_io_sdram_WEn                        ), //o
    .io_axiClk                          (io_axiClk                                ), //i
    .resetCtrl_axiReset                 (resetCtrl_axiReset                       )  //i
  );
  always @(*) begin
    case(_zz_ctrlBusAdapted_cmd_ready_2)
      1'b0 : begin
        _zz_io_bus_cmd_payload_data = ctrlBusAdapted_cmd_payload_data[15 : 0];
        _zz_io_bus_cmd_payload_mask = ctrlBusAdapted_cmd_payload_mask[1 : 0];
      end
      default : begin
        _zz_io_bus_cmd_payload_data = ctrlBusAdapted_cmd_payload_data[31 : 16];
        _zz_io_bus_cmd_payload_mask = ctrlBusAdapted_cmd_payload_mask[3 : 2];
      end
    endcase
  end

  always @(*) begin
    case(Axi4Incr_wrapCase)
      3'b000 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_1,_zz_Axi4Incr_result_2};
      end
      3'b001 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_3,_zz_Axi4Incr_result_4};
      end
      3'b010 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_5,_zz_Axi4Incr_result_6};
      end
      3'b011 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_7,_zz_Axi4Incr_result_8};
      end
      3'b100 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_9,_zz_Axi4Incr_result_10};
      end
      default : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_11,_zz_Axi4Incr_result_12};
      end
    endcase
  end

  assign ctrl_io_bus_cmd_fire = (ctrlBusAdapted_cmd_valid && ctrl_io_bus_cmd_ready);
  always @(*) begin
    _zz_ctrlBusAdapted_cmd_ready = 1'b0;
    if(ctrl_io_bus_cmd_fire) begin
      _zz_ctrlBusAdapted_cmd_ready = 1'b1;
    end
  end

  assign _zz_ctrlBusAdapted_cmd_ready_3 = (_zz_ctrlBusAdapted_cmd_ready_2 == 1'b1);
  always @(*) begin
    _zz_ctrlBusAdapted_cmd_ready_1 = (_zz_ctrlBusAdapted_cmd_ready_2 + _zz_ctrlBusAdapted_cmd_ready);
    if(1'b0) begin
      _zz_ctrlBusAdapted_cmd_ready_1 = 1'b0;
    end
  end

  assign ctrl_io_bus_cmd_payload_address = {ctrlBusAdapted_cmd_payload_address,_zz_ctrlBusAdapted_cmd_ready_2};
  assign ctrl_io_bus_cmd_payload_data = _zz_io_bus_cmd_payload_data;
  assign ctrl_io_bus_cmd_payload_mask = _zz_io_bus_cmd_payload_mask;
  assign ctrlBusAdapted_cmd_ready = (ctrl_io_bus_cmd_ready && _zz_ctrlBusAdapted_cmd_ready_3);
  assign ctrl_io_bus_rsp_fire = (ctrl_io_bus_rsp_valid && ctrl_io_bus_rsp_ready);
  always @(*) begin
    _zz_ctrlBusAdapted_rsp_valid = 1'b0;
    if(ctrl_io_bus_rsp_fire) begin
      _zz_ctrlBusAdapted_rsp_valid = 1'b1;
    end
  end

  assign _zz_ctrlBusAdapted_rsp_valid_3 = (_zz_ctrlBusAdapted_rsp_valid_2 == 1'b1);
  always @(*) begin
    _zz_ctrlBusAdapted_rsp_valid_1 = (_zz_ctrlBusAdapted_rsp_valid_2 + _zz_ctrlBusAdapted_rsp_valid);
    if(1'b0) begin
      _zz_ctrlBusAdapted_rsp_valid_1 = 1'b0;
    end
  end

  assign ctrlBusAdapted_rsp_valid = (ctrl_io_bus_rsp_valid && _zz_ctrlBusAdapted_rsp_valid_3);
  assign ctrl_io_bus_rsp_fire_1 = (ctrl_io_bus_rsp_valid && ctrl_io_bus_rsp_ready);
  assign ctrlBusAdapted_rsp_payload_data = {ctrl_io_bus_rsp_payload_data,ctrl_io_bus_rsp_payload_data_regNextWhen};
  assign ctrlBusAdapted_rsp_payload_context_id = ctrl_io_bus_rsp_payload_context_id;
  assign ctrlBusAdapted_rsp_payload_context_last = ctrl_io_bus_rsp_payload_context_last;
  assign ctrl_io_bus_rsp_ready = (ctrlBusAdapted_rsp_ready || (! _zz_ctrlBusAdapted_rsp_valid_3));
  assign unburstify_buffer_last = (unburstify_buffer_beat == 8'h01);
  assign Axi4Incr_validSize = unburstify_buffer_transaction_size[1 : 0];
  assign Axi4Incr_highCat = unburstify_buffer_transaction_addr[24 : 12];
  assign Axi4Incr_sizeValue = {(2'b10 == Axi4Incr_validSize),{(2'b01 == Axi4Incr_validSize),(2'b00 == Axi4Incr_validSize)}};
  assign Axi4Incr_alignMask = {10'd0, _zz_Axi4Incr_alignMask};
  assign Axi4Incr_base = (_zz_Axi4Incr_base & (~ Axi4Incr_alignMask));
  assign Axi4Incr_baseIncr = (Axi4Incr_base + _zz_Axi4Incr_baseIncr);
  always @(*) begin
    casez(unburstify_buffer_len)
      8'b????1??? : begin
        _zz_Axi4Incr_wrapCase = 2'b11;
      end
      8'b????01?? : begin
        _zz_Axi4Incr_wrapCase = 2'b10;
      end
      8'b????001? : begin
        _zz_Axi4Incr_wrapCase = 2'b01;
      end
      default : begin
        _zz_Axi4Incr_wrapCase = 2'b00;
      end
    endcase
  end

  assign Axi4Incr_wrapCase = (_zz_Axi4Incr_wrapCase_1 + _zz_Axi4Incr_wrapCase_2);
  always @(*) begin
    case(unburstify_buffer_transaction_burst)
      2'b00 : begin
        Axi4Incr_result = unburstify_buffer_transaction_addr;
      end
      2'b10 : begin
        Axi4Incr_result = {Axi4Incr_highCat,_zz_Axi4Incr_result};
      end
      default : begin
        Axi4Incr_result = {Axi4Incr_highCat,Axi4Incr_baseIncr};
      end
    endcase
  end

  always @(*) begin
    io_axi_arw_ready = 1'b0;
    if(!unburstify_buffer_valid) begin
      io_axi_arw_ready = unburstify_result_ready;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_valid = 1'b1;
    end else begin
      unburstify_result_valid = io_axi_arw_valid;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_last = unburstify_buffer_last;
    end else begin
      if(when_Axi4Channel_l181) begin
        unburstify_result_payload_last = 1'b1;
      end else begin
        unburstify_result_payload_last = 1'b0;
      end
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_id = unburstify_buffer_transaction_id;
    end else begin
      unburstify_result_payload_fragment_id = io_axi_arw_payload_id;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_size = unburstify_buffer_transaction_size;
    end else begin
      unburstify_result_payload_fragment_size = io_axi_arw_payload_size;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_burst = unburstify_buffer_transaction_burst;
    end else begin
      unburstify_result_payload_fragment_burst = io_axi_arw_payload_burst;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_write = unburstify_buffer_transaction_write;
    end else begin
      unburstify_result_payload_fragment_write = io_axi_arw_payload_write;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_addr = Axi4Incr_result;
    end else begin
      unburstify_result_payload_fragment_addr = io_axi_arw_payload_addr;
    end
  end

  assign when_Axi4Channel_l181 = (io_axi_arw_payload_len == 8'h0);
  assign _zz_unburstify_result_ready = (! (unburstify_result_payload_fragment_write && (! io_axi_w_valid)));
  assign bridge_axiCmd_valid = (unburstify_result_valid && _zz_unburstify_result_ready);
  assign unburstify_result_ready = (bridge_axiCmd_ready && _zz_unburstify_result_ready);
  assign bridge_axiCmd_payload_last = unburstify_result_payload_last;
  assign bridge_axiCmd_payload_fragment_addr = unburstify_result_payload_fragment_addr;
  assign bridge_axiCmd_payload_fragment_id = unburstify_result_payload_fragment_id;
  assign bridge_axiCmd_payload_fragment_size = unburstify_result_payload_fragment_size;
  assign bridge_axiCmd_payload_fragment_burst = unburstify_result_payload_fragment_burst;
  assign bridge_axiCmd_payload_fragment_write = unburstify_result_payload_fragment_write;
  assign ctrlBusAdapted_cmd_valid = bridge_axiCmd_valid;
  assign ctrlBusAdapted_cmd_payload_address = bridge_axiCmd_payload_fragment_addr[24 : 2];
  assign ctrlBusAdapted_cmd_payload_write = bridge_axiCmd_payload_fragment_write;
  assign ctrlBusAdapted_cmd_payload_data = io_axi_w_payload_data;
  assign ctrlBusAdapted_cmd_payload_mask = io_axi_w_payload_strb;
  assign ctrlBusAdapted_cmd_payload_context_id = bridge_axiCmd_payload_fragment_id;
  assign ctrlBusAdapted_cmd_payload_context_last = bridge_axiCmd_payload_last;
  assign bridge_axiCmd_fire = (bridge_axiCmd_valid && bridge_axiCmd_ready);
  assign bridge_writeRsp_valid = ((bridge_axiCmd_fire && bridge_axiCmd_payload_fragment_write) && bridge_axiCmd_payload_last);
  assign bridge_writeRsp_payload_resp = 2'b00;
  assign bridge_writeRsp_payload_id = bridge_axiCmd_payload_fragment_id;
  always @(*) begin
    bridge_writeRsp_ready = bridge_writeRsp_m2sPipe_ready;
    if(when_Stream_l342) begin
      bridge_writeRsp_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! bridge_writeRsp_m2sPipe_valid);
  assign bridge_writeRsp_m2sPipe_valid = bridge_writeRsp_rValid;
  assign bridge_writeRsp_m2sPipe_payload_id = bridge_writeRsp_rData_id;
  assign bridge_writeRsp_m2sPipe_payload_resp = bridge_writeRsp_rData_resp;
  assign io_axi_b_valid = bridge_writeRsp_m2sPipe_valid;
  assign bridge_writeRsp_m2sPipe_ready = io_axi_b_ready;
  assign io_axi_b_payload_id = bridge_writeRsp_m2sPipe_payload_id;
  assign io_axi_b_payload_resp = bridge_writeRsp_m2sPipe_payload_resp;
  assign io_axi_r_valid = ctrlBusAdapted_rsp_valid;
  assign io_axi_r_payload_id = ctrlBusAdapted_rsp_payload_context_id;
  assign io_axi_r_payload_data = ctrlBusAdapted_rsp_payload_data;
  assign io_axi_r_payload_last = ctrlBusAdapted_rsp_payload_context_last;
  assign io_axi_r_payload_resp = 2'b00;
  assign io_axi_w_ready = ((unburstify_result_valid && unburstify_result_payload_fragment_write) && bridge_axiCmd_ready);
  assign ctrlBusAdapted_rsp_ready = io_axi_r_ready;
  assign bridge_axiCmd_ready = (ctrlBusAdapted_cmd_ready && (! (bridge_axiCmd_payload_fragment_write && (! bridge_writeRsp_ready))));
  assign io_sdram_ADDR = ctrl_io_sdram_ADDR;
  assign io_sdram_BA = ctrl_io_sdram_BA;
  assign io_sdram_DQ_write = ctrl_io_sdram_DQ_write;
  assign io_sdram_DQ_writeEnable = ctrl_io_sdram_DQ_writeEnable;
  assign io_sdram_DQM = ctrl_io_sdram_DQM;
  assign io_sdram_CASn = ctrl_io_sdram_CASn;
  assign io_sdram_CKE = ctrl_io_sdram_CKE;
  assign io_sdram_CSn = ctrl_io_sdram_CSn;
  assign io_sdram_RASn = ctrl_io_sdram_RASn;
  assign io_sdram_WEn = ctrl_io_sdram_WEn;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      _zz_ctrlBusAdapted_cmd_ready_2 <= 1'b0;
      _zz_ctrlBusAdapted_rsp_valid_2 <= 1'b0;
      unburstify_buffer_valid <= 1'b0;
      bridge_writeRsp_rValid <= 1'b0;
    end else begin
      _zz_ctrlBusAdapted_cmd_ready_2 <= _zz_ctrlBusAdapted_cmd_ready_1;
      _zz_ctrlBusAdapted_rsp_valid_2 <= _zz_ctrlBusAdapted_rsp_valid_1;
      if(unburstify_result_ready) begin
        if(unburstify_buffer_last) begin
          unburstify_buffer_valid <= 1'b0;
        end
      end
      if(!unburstify_buffer_valid) begin
        if(!when_Axi4Channel_l181) begin
          if(unburstify_result_ready) begin
            unburstify_buffer_valid <= io_axi_arw_valid;
          end
        end
      end
      if(bridge_writeRsp_ready) begin
        bridge_writeRsp_rValid <= bridge_writeRsp_valid;
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(ctrl_io_bus_rsp_fire_1) begin
      ctrl_io_bus_rsp_payload_data_regNextWhen <= ctrl_io_bus_rsp_payload_data;
    end
    if(unburstify_result_ready) begin
      unburstify_buffer_beat <= (unburstify_buffer_beat - 8'h01);
      unburstify_buffer_transaction_addr[11 : 0] <= Axi4Incr_result[11 : 0];
    end
    if(!unburstify_buffer_valid) begin
      if(!when_Axi4Channel_l181) begin
        if(unburstify_result_ready) begin
          unburstify_buffer_transaction_addr <= io_axi_arw_payload_addr;
          unburstify_buffer_transaction_id <= io_axi_arw_payload_id;
          unburstify_buffer_transaction_size <= io_axi_arw_payload_size;
          unburstify_buffer_transaction_burst <= io_axi_arw_payload_burst;
          unburstify_buffer_transaction_write <= io_axi_arw_payload_write;
          unburstify_buffer_beat <= io_axi_arw_payload_len;
          unburstify_buffer_len <= io_axi_arw_payload_len;
        end
      end
    end
    if(bridge_writeRsp_ready) begin
      bridge_writeRsp_rData_id <= bridge_writeRsp_payload_id;
      bridge_writeRsp_rData_resp <= bridge_writeRsp_payload_resp;
    end
  end


endmodule

module Axi4SharedOnChipRam (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [11:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [31:0]   _zz_ram_port0;
  wire       [1:0]    _zz_Axi4Incr_alignMask;
  wire       [11:0]   _zz_Axi4Incr_base;
  wire       [11:0]   _zz_Axi4Incr_base_1;
  wire       [11:0]   _zz_Axi4Incr_baseIncr;
  wire       [2:0]    _zz_Axi4Incr_wrapCase_1;
  wire       [2:0]    _zz_Axi4Incr_wrapCase_2;
  reg        [11:0]   _zz_Axi4Incr_result;
  wire       [10:0]   _zz_Axi4Incr_result_1;
  wire       [0:0]    _zz_Axi4Incr_result_2;
  wire       [9:0]    _zz_Axi4Incr_result_3;
  wire       [1:0]    _zz_Axi4Incr_result_4;
  wire       [8:0]    _zz_Axi4Incr_result_5;
  wire       [2:0]    _zz_Axi4Incr_result_6;
  wire       [7:0]    _zz_Axi4Incr_result_7;
  wire       [3:0]    _zz_Axi4Incr_result_8;
  wire       [6:0]    _zz_Axi4Incr_result_9;
  wire       [4:0]    _zz_Axi4Incr_result_10;
  wire       [5:0]    _zz_Axi4Incr_result_11;
  wire       [5:0]    _zz_Axi4Incr_result_12;
  reg                 unburstify_result_valid;
  wire                unburstify_result_ready;
  reg                 unburstify_result_payload_last;
  reg        [11:0]   unburstify_result_payload_fragment_addr;
  reg        [3:0]    unburstify_result_payload_fragment_id;
  reg        [2:0]    unburstify_result_payload_fragment_size;
  reg        [1:0]    unburstify_result_payload_fragment_burst;
  reg                 unburstify_result_payload_fragment_write;
  wire                unburstify_doResult;
  reg                 unburstify_buffer_valid;
  reg        [7:0]    unburstify_buffer_len;
  reg        [7:0]    unburstify_buffer_beat;
  reg        [11:0]   unburstify_buffer_transaction_addr;
  reg        [3:0]    unburstify_buffer_transaction_id;
  reg        [2:0]    unburstify_buffer_transaction_size;
  reg        [1:0]    unburstify_buffer_transaction_burst;
  reg                 unburstify_buffer_transaction_write;
  wire                unburstify_buffer_last;
  wire       [1:0]    Axi4Incr_validSize;
  reg        [11:0]   Axi4Incr_result;
  wire       [2:0]    Axi4Incr_sizeValue;
  wire       [11:0]   Axi4Incr_alignMask;
  wire       [11:0]   Axi4Incr_base;
  wire       [11:0]   Axi4Incr_baseIncr;
  reg        [1:0]    _zz_Axi4Incr_wrapCase;
  wire       [2:0]    Axi4Incr_wrapCase;
  wire                when_Axi4Channel_l181;
  wire                _zz_unburstify_result_ready;
  wire                stage0_valid;
  reg                 stage0_ready;
  wire                stage0_payload_last;
  wire       [11:0]   stage0_payload_fragment_addr;
  wire       [3:0]    stage0_payload_fragment_id;
  wire       [2:0]    stage0_payload_fragment_size;
  wire       [1:0]    stage0_payload_fragment_burst;
  wire                stage0_payload_fragment_write;
  wire       [9:0]    _zz_io_axi_r_payload_data;
  wire                stage0_fire;
  wire       [31:0]   _zz_io_axi_r_payload_data_1;
  wire                stage1_valid;
  wire                stage1_ready;
  wire                stage1_payload_last;
  wire       [11:0]   stage1_payload_fragment_addr;
  wire       [3:0]    stage1_payload_fragment_id;
  wire       [2:0]    stage1_payload_fragment_size;
  wire       [1:0]    stage1_payload_fragment_burst;
  wire                stage1_payload_fragment_write;
  reg                 stage0_rValid;
  reg                 stage0_rData_last;
  reg        [11:0]   stage0_rData_fragment_addr;
  reg        [3:0]    stage0_rData_fragment_id;
  reg        [2:0]    stage0_rData_fragment_size;
  reg        [1:0]    stage0_rData_fragment_burst;
  reg                 stage0_rData_fragment_write;
  wire                when_Stream_l342;
  reg [7:0] ram_symbol0 [0:1023];
  reg [7:0] ram_symbol1 [0:1023];
  reg [7:0] ram_symbol2 [0:1023];
  reg [7:0] ram_symbol3 [0:1023];
  reg [7:0] _zz_ramsymbol_read;
  reg [7:0] _zz_ramsymbol_read_1;
  reg [7:0] _zz_ramsymbol_read_2;
  reg [7:0] _zz_ramsymbol_read_3;

  assign _zz_Axi4Incr_alignMask = {(2'b01 < Axi4Incr_validSize),(2'b00 < Axi4Incr_validSize)};
  assign _zz_Axi4Incr_base_1 = unburstify_buffer_transaction_addr[11 : 0];
  assign _zz_Axi4Incr_base = _zz_Axi4Incr_base_1;
  assign _zz_Axi4Incr_baseIncr = {9'd0, Axi4Incr_sizeValue};
  assign _zz_Axi4Incr_wrapCase_1 = {1'd0, Axi4Incr_validSize};
  assign _zz_Axi4Incr_wrapCase_2 = {1'd0, _zz_Axi4Incr_wrapCase};
  assign _zz_Axi4Incr_result_1 = Axi4Incr_base[11 : 1];
  assign _zz_Axi4Incr_result_2 = Axi4Incr_baseIncr[0 : 0];
  assign _zz_Axi4Incr_result_3 = Axi4Incr_base[11 : 2];
  assign _zz_Axi4Incr_result_4 = Axi4Incr_baseIncr[1 : 0];
  assign _zz_Axi4Incr_result_5 = Axi4Incr_base[11 : 3];
  assign _zz_Axi4Incr_result_6 = Axi4Incr_baseIncr[2 : 0];
  assign _zz_Axi4Incr_result_7 = Axi4Incr_base[11 : 4];
  assign _zz_Axi4Incr_result_8 = Axi4Incr_baseIncr[3 : 0];
  assign _zz_Axi4Incr_result_9 = Axi4Incr_base[11 : 5];
  assign _zz_Axi4Incr_result_10 = Axi4Incr_baseIncr[4 : 0];
  assign _zz_Axi4Incr_result_11 = Axi4Incr_base[11 : 6];
  assign _zz_Axi4Incr_result_12 = Axi4Incr_baseIncr[5 : 0];
  initial begin
    $readmemb("VRV1_441.v_toplevel_axi_ocram_ram_symbol0.bin",ram_symbol0);
    $readmemb("VRV1_441.v_toplevel_axi_ocram_ram_symbol1.bin",ram_symbol1);
    $readmemb("VRV1_441.v_toplevel_axi_ocram_ram_symbol2.bin",ram_symbol2);
    $readmemb("VRV1_441.v_toplevel_axi_ocram_ram_symbol3.bin",ram_symbol3);
  end
  always @(*) begin
    _zz_ram_port0 = {_zz_ramsymbol_read_3, _zz_ramsymbol_read_2, _zz_ramsymbol_read_1, _zz_ramsymbol_read};
  end
  always @(posedge io_axiClk) begin
    if(stage0_fire) begin
      _zz_ramsymbol_read <= ram_symbol0[_zz_io_axi_r_payload_data];
      _zz_ramsymbol_read_1 <= ram_symbol1[_zz_io_axi_r_payload_data];
      _zz_ramsymbol_read_2 <= ram_symbol2[_zz_io_axi_r_payload_data];
      _zz_ramsymbol_read_3 <= ram_symbol3[_zz_io_axi_r_payload_data];
    end
  end

  always @(posedge io_axiClk) begin
    if(io_axi_w_payload_strb[0] && stage0_fire && stage0_payload_fragment_write ) begin
      ram_symbol0[_zz_io_axi_r_payload_data] <= _zz_io_axi_r_payload_data_1[7 : 0];
    end
    if(io_axi_w_payload_strb[1] && stage0_fire && stage0_payload_fragment_write ) begin
      ram_symbol1[_zz_io_axi_r_payload_data] <= _zz_io_axi_r_payload_data_1[15 : 8];
    end
    if(io_axi_w_payload_strb[2] && stage0_fire && stage0_payload_fragment_write ) begin
      ram_symbol2[_zz_io_axi_r_payload_data] <= _zz_io_axi_r_payload_data_1[23 : 16];
    end
    if(io_axi_w_payload_strb[3] && stage0_fire && stage0_payload_fragment_write ) begin
      ram_symbol3[_zz_io_axi_r_payload_data] <= _zz_io_axi_r_payload_data_1[31 : 24];
    end
  end

  always @(*) begin
    case(Axi4Incr_wrapCase)
      3'b000 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_1,_zz_Axi4Incr_result_2};
      end
      3'b001 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_3,_zz_Axi4Incr_result_4};
      end
      3'b010 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_5,_zz_Axi4Incr_result_6};
      end
      3'b011 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_7,_zz_Axi4Incr_result_8};
      end
      3'b100 : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_9,_zz_Axi4Incr_result_10};
      end
      default : begin
        _zz_Axi4Incr_result = {_zz_Axi4Incr_result_11,_zz_Axi4Incr_result_12};
      end
    endcase
  end

  assign unburstify_buffer_last = (unburstify_buffer_beat == 8'h01);
  assign Axi4Incr_validSize = unburstify_buffer_transaction_size[1 : 0];
  assign Axi4Incr_sizeValue = {(2'b10 == Axi4Incr_validSize),{(2'b01 == Axi4Incr_validSize),(2'b00 == Axi4Incr_validSize)}};
  assign Axi4Incr_alignMask = {10'd0, _zz_Axi4Incr_alignMask};
  assign Axi4Incr_base = (_zz_Axi4Incr_base & (~ Axi4Incr_alignMask));
  assign Axi4Incr_baseIncr = (Axi4Incr_base + _zz_Axi4Incr_baseIncr);
  always @(*) begin
    casez(unburstify_buffer_len)
      8'b????1??? : begin
        _zz_Axi4Incr_wrapCase = 2'b11;
      end
      8'b????01?? : begin
        _zz_Axi4Incr_wrapCase = 2'b10;
      end
      8'b????001? : begin
        _zz_Axi4Incr_wrapCase = 2'b01;
      end
      default : begin
        _zz_Axi4Incr_wrapCase = 2'b00;
      end
    endcase
  end

  assign Axi4Incr_wrapCase = (_zz_Axi4Incr_wrapCase_1 + _zz_Axi4Incr_wrapCase_2);
  always @(*) begin
    case(unburstify_buffer_transaction_burst)
      2'b00 : begin
        Axi4Incr_result = unburstify_buffer_transaction_addr;
      end
      2'b10 : begin
        Axi4Incr_result = _zz_Axi4Incr_result;
      end
      default : begin
        Axi4Incr_result = Axi4Incr_baseIncr;
      end
    endcase
  end

  always @(*) begin
    io_axi_arw_ready = 1'b0;
    if(!unburstify_buffer_valid) begin
      io_axi_arw_ready = unburstify_result_ready;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_valid = 1'b1;
    end else begin
      unburstify_result_valid = io_axi_arw_valid;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_last = unburstify_buffer_last;
    end else begin
      if(when_Axi4Channel_l181) begin
        unburstify_result_payload_last = 1'b1;
      end else begin
        unburstify_result_payload_last = 1'b0;
      end
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_id = unburstify_buffer_transaction_id;
    end else begin
      unburstify_result_payload_fragment_id = io_axi_arw_payload_id;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_size = unburstify_buffer_transaction_size;
    end else begin
      unburstify_result_payload_fragment_size = io_axi_arw_payload_size;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_burst = unburstify_buffer_transaction_burst;
    end else begin
      unburstify_result_payload_fragment_burst = io_axi_arw_payload_burst;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_write = unburstify_buffer_transaction_write;
    end else begin
      unburstify_result_payload_fragment_write = io_axi_arw_payload_write;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_addr = Axi4Incr_result;
    end else begin
      unburstify_result_payload_fragment_addr = io_axi_arw_payload_addr;
    end
  end

  assign when_Axi4Channel_l181 = (io_axi_arw_payload_len == 8'h0);
  assign _zz_unburstify_result_ready = (! (unburstify_result_payload_fragment_write && (! io_axi_w_valid)));
  assign stage0_valid = (unburstify_result_valid && _zz_unburstify_result_ready);
  assign unburstify_result_ready = (stage0_ready && _zz_unburstify_result_ready);
  assign stage0_payload_last = unburstify_result_payload_last;
  assign stage0_payload_fragment_addr = unburstify_result_payload_fragment_addr;
  assign stage0_payload_fragment_id = unburstify_result_payload_fragment_id;
  assign stage0_payload_fragment_size = unburstify_result_payload_fragment_size;
  assign stage0_payload_fragment_burst = unburstify_result_payload_fragment_burst;
  assign stage0_payload_fragment_write = unburstify_result_payload_fragment_write;
  assign _zz_io_axi_r_payload_data = stage0_payload_fragment_addr[11 : 2];
  assign stage0_fire = (stage0_valid && stage0_ready);
  assign _zz_io_axi_r_payload_data_1 = io_axi_w_payload_data;
  assign io_axi_r_payload_data = _zz_ram_port0;
  assign io_axi_w_ready = ((unburstify_result_valid && unburstify_result_payload_fragment_write) && stage0_ready);
  always @(*) begin
    stage0_ready = stage1_ready;
    if(when_Stream_l342) begin
      stage0_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! stage1_valid);
  assign stage1_valid = stage0_rValid;
  assign stage1_payload_last = stage0_rData_last;
  assign stage1_payload_fragment_addr = stage0_rData_fragment_addr;
  assign stage1_payload_fragment_id = stage0_rData_fragment_id;
  assign stage1_payload_fragment_size = stage0_rData_fragment_size;
  assign stage1_payload_fragment_burst = stage0_rData_fragment_burst;
  assign stage1_payload_fragment_write = stage0_rData_fragment_write;
  assign stage1_ready = ((io_axi_r_ready && (! stage1_payload_fragment_write)) || ((io_axi_b_ready || (! stage1_payload_last)) && stage1_payload_fragment_write));
  assign io_axi_r_valid = (stage1_valid && (! stage1_payload_fragment_write));
  assign io_axi_r_payload_id = stage1_payload_fragment_id;
  assign io_axi_r_payload_last = stage1_payload_last;
  assign io_axi_r_payload_resp = 2'b00;
  assign io_axi_b_valid = ((stage1_valid && stage1_payload_fragment_write) && stage1_payload_last);
  assign io_axi_b_payload_resp = 2'b00;
  assign io_axi_b_payload_id = stage1_payload_fragment_id;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      unburstify_buffer_valid <= 1'b0;
      stage0_rValid <= 1'b0;
    end else begin
      if(unburstify_result_ready) begin
        if(unburstify_buffer_last) begin
          unburstify_buffer_valid <= 1'b0;
        end
      end
      if(!unburstify_buffer_valid) begin
        if(!when_Axi4Channel_l181) begin
          if(unburstify_result_ready) begin
            unburstify_buffer_valid <= io_axi_arw_valid;
          end
        end
      end
      if(stage0_ready) begin
        stage0_rValid <= stage0_valid;
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(unburstify_result_ready) begin
      unburstify_buffer_beat <= (unburstify_buffer_beat - 8'h01);
      unburstify_buffer_transaction_addr[11 : 0] <= Axi4Incr_result[11 : 0];
    end
    if(!unburstify_buffer_valid) begin
      if(!when_Axi4Channel_l181) begin
        if(unburstify_result_ready) begin
          unburstify_buffer_transaction_addr <= io_axi_arw_payload_addr;
          unburstify_buffer_transaction_id <= io_axi_arw_payload_id;
          unburstify_buffer_transaction_size <= io_axi_arw_payload_size;
          unburstify_buffer_transaction_burst <= io_axi_arw_payload_burst;
          unburstify_buffer_transaction_write <= io_axi_arw_payload_write;
          unburstify_buffer_beat <= io_axi_arw_payload_len;
          unburstify_buffer_len <= io_axi_arw_payload_len;
        end
      end
    end
    if(stage0_ready) begin
      stage0_rData_last <= stage0_payload_last;
      stage0_rData_fragment_addr <= stage0_payload_fragment_addr;
      stage0_rData_fragment_id <= stage0_payload_fragment_id;
      stage0_rData_fragment_size <= stage0_payload_fragment_size;
      stage0_rData_fragment_burst <= stage0_payload_fragment_burst;
      stage0_rData_fragment_write <= stage0_payload_fragment_write;
    end
  end


endmodule

module BufferCC_4 (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

//StreamFifoLowLatency_1 replaced by StreamFifoLowLatency_1

//StreamFork_2 replaced by StreamFork_2

//StreamArbiter_2 replaced by StreamArbiter_2

//StreamFifoLowLatency_1 replaced by StreamFifoLowLatency_1

module StreamFork_2 (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [19:0]   io_input_payload_addr,
  input      [3:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [19:0]   io_outputs_0_payload_addr,
  output     [3:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [19:0]   io_outputs_1_payload_addr,
  output     [3:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_io_outputs_0_valid;
  reg                 _zz_io_outputs_1_valid;
  wire                when_Stream_l806;
  wire                when_Stream_l806_1;
  wire                io_outputs_0_fire;
  wire                io_outputs_1_fire;

  always @(*) begin
    io_input_ready = 1'b1;
    if(when_Stream_l806) begin
      io_input_ready = 1'b0;
    end
    if(when_Stream_l806_1) begin
      io_input_ready = 1'b0;
    end
  end

  assign when_Stream_l806 = ((! io_outputs_0_ready) && _zz_io_outputs_0_valid);
  assign when_Stream_l806_1 = ((! io_outputs_1_ready) && _zz_io_outputs_1_valid);
  assign io_outputs_0_valid = (io_input_valid && _zz_io_outputs_0_valid);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_0_fire = (io_outputs_0_valid && io_outputs_0_ready);
  assign io_outputs_1_valid = (io_input_valid && _zz_io_outputs_1_valid);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  assign io_outputs_1_fire = (io_outputs_1_valid && io_outputs_1_ready);
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      _zz_io_outputs_0_valid <= 1'b1;
      _zz_io_outputs_1_valid <= 1'b1;
    end else begin
      if(io_outputs_0_fire) begin
        _zz_io_outputs_0_valid <= 1'b0;
      end
      if(io_outputs_1_fire) begin
        _zz_io_outputs_1_valid <= 1'b0;
      end
      if(io_input_ready) begin
        _zz_io_outputs_0_valid <= 1'b1;
        _zz_io_outputs_1_valid <= 1'b1;
      end
    end
  end


endmodule

module StreamArbiter_2 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [19:0]   io_inputs_0_payload_addr,
  input      [3:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [19:0]   io_output_payload_addr,
  output     [3:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [0:0]    io_chosenOH,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [1:0]    _zz__zz_maskProposal_0_2;
  wire       [1:0]    _zz__zz_maskProposal_0_2_1;
  wire       [0:0]    _zz__zz_maskProposal_0_2_2;
  wire       [0:0]    _zz_maskProposal_0_3;
  reg                 locked;
  wire                maskProposal_0;
  reg                 maskLocked_0;
  wire                maskRouted_0;
  wire       [0:0]    _zz_maskProposal_0;
  wire       [1:0]    _zz_maskProposal_0_1;
  wire       [1:0]    _zz_maskProposal_0_2;
  wire                io_output_fire;

  assign _zz__zz_maskProposal_0_2 = (_zz_maskProposal_0_1 - _zz__zz_maskProposal_0_2_1);
  assign _zz__zz_maskProposal_0_2_2 = maskLocked_0;
  assign _zz__zz_maskProposal_0_2_1 = {1'd0, _zz__zz_maskProposal_0_2_2};
  assign _zz_maskProposal_0_3 = (_zz_maskProposal_0_2[1 : 1] | _zz_maskProposal_0_2[0 : 0]);
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign _zz_maskProposal_0 = io_inputs_0_valid;
  assign _zz_maskProposal_0_1 = {_zz_maskProposal_0,_zz_maskProposal_0};
  assign _zz_maskProposal_0_2 = (_zz_maskProposal_0_1 & (~ _zz__zz_maskProposal_0_2));
  assign maskProposal_0 = _zz_maskProposal_0_3[0];
  assign io_output_fire = (io_output_valid && io_output_ready);
  assign io_output_valid = (io_inputs_0_valid && maskRouted_0);
  assign io_output_payload_addr = io_inputs_0_payload_addr;
  assign io_output_payload_id = io_inputs_0_payload_id;
  assign io_output_payload_len = io_inputs_0_payload_len;
  assign io_output_payload_size = io_inputs_0_payload_size;
  assign io_output_payload_burst = io_inputs_0_payload_burst;
  assign io_output_payload_write = io_inputs_0_payload_write;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_chosenOH = maskRouted_0;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b1;
    end else begin
      if(io_output_valid) begin
        maskLocked_0 <= maskRouted_0;
      end
      if(io_output_valid) begin
        locked <= 1'b1;
      end
      if(io_output_fire) begin
        locked <= 1'b0;
      end
    end
  end


endmodule

//StreamFifoLowLatency_1 replaced by StreamFifoLowLatency_1

module StreamFork_1 (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [24:0]   io_input_payload_addr,
  input      [2:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [24:0]   io_outputs_0_payload_addr,
  output     [2:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [24:0]   io_outputs_1_payload_addr,
  output     [2:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_io_outputs_0_valid;
  reg                 _zz_io_outputs_1_valid;
  wire                when_Stream_l806;
  wire                when_Stream_l806_1;
  wire                io_outputs_0_fire;
  wire                io_outputs_1_fire;

  always @(*) begin
    io_input_ready = 1'b1;
    if(when_Stream_l806) begin
      io_input_ready = 1'b0;
    end
    if(when_Stream_l806_1) begin
      io_input_ready = 1'b0;
    end
  end

  assign when_Stream_l806 = ((! io_outputs_0_ready) && _zz_io_outputs_0_valid);
  assign when_Stream_l806_1 = ((! io_outputs_1_ready) && _zz_io_outputs_1_valid);
  assign io_outputs_0_valid = (io_input_valid && _zz_io_outputs_0_valid);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_0_fire = (io_outputs_0_valid && io_outputs_0_ready);
  assign io_outputs_1_valid = (io_input_valid && _zz_io_outputs_1_valid);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  assign io_outputs_1_fire = (io_outputs_1_valid && io_outputs_1_ready);
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      _zz_io_outputs_0_valid <= 1'b1;
      _zz_io_outputs_1_valid <= 1'b1;
    end else begin
      if(io_outputs_0_fire) begin
        _zz_io_outputs_0_valid <= 1'b0;
      end
      if(io_outputs_1_fire) begin
        _zz_io_outputs_1_valid <= 1'b0;
      end
      if(io_input_ready) begin
        _zz_io_outputs_0_valid <= 1'b1;
        _zz_io_outputs_1_valid <= 1'b1;
      end
    end
  end


endmodule

module StreamArbiter_1 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [24:0]   io_inputs_0_payload_addr,
  input      [2:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [24:0]   io_inputs_1_payload_addr,
  input      [2:0]    io_inputs_1_payload_id,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input               io_inputs_1_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [24:0]   io_output_payload_addr,
  output     [2:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [3:0]    _zz__zz_maskProposal_0_2;
  wire       [3:0]    _zz__zz_maskProposal_0_2_1;
  wire       [1:0]    _zz__zz_maskProposal_0_2_2;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_maskProposal_0;
  wire       [3:0]    _zz_maskProposal_0_1;
  wire       [3:0]    _zz_maskProposal_0_2;
  wire       [1:0]    _zz_maskProposal_0_3;
  wire                io_output_fire;
  wire                _zz_io_chosen;

  assign _zz__zz_maskProposal_0_2 = (_zz_maskProposal_0_1 - _zz__zz_maskProposal_0_2_1);
  assign _zz__zz_maskProposal_0_2_2 = {maskLocked_0,maskLocked_1};
  assign _zz__zz_maskProposal_0_2_1 = {2'd0, _zz__zz_maskProposal_0_2_2};
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_maskProposal_0 = {io_inputs_1_valid,io_inputs_0_valid};
  assign _zz_maskProposal_0_1 = {_zz_maskProposal_0,_zz_maskProposal_0};
  assign _zz_maskProposal_0_2 = (_zz_maskProposal_0_1 & (~ _zz__zz_maskProposal_0_2));
  assign _zz_maskProposal_0_3 = (_zz_maskProposal_0_2[3 : 2] | _zz_maskProposal_0_2[1 : 0]);
  assign maskProposal_0 = _zz_maskProposal_0_3[0];
  assign maskProposal_1 = _zz_maskProposal_0_3[1];
  assign io_output_fire = (io_output_valid && io_output_ready);
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_addr = (maskRouted_0 ? io_inputs_0_payload_addr : io_inputs_1_payload_addr);
  assign io_output_payload_id = (maskRouted_0 ? io_inputs_0_payload_id : io_inputs_1_payload_id);
  assign io_output_payload_len = (maskRouted_0 ? io_inputs_0_payload_len : io_inputs_1_payload_len);
  assign io_output_payload_size = (maskRouted_0 ? io_inputs_0_payload_size : io_inputs_1_payload_size);
  assign io_output_payload_burst = (maskRouted_0 ? io_inputs_0_payload_burst : io_inputs_1_payload_burst);
  assign io_output_payload_write = (maskRouted_0 ? io_inputs_0_payload_write : io_inputs_1_payload_write);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_io_chosen = io_chosenOH[1];
  assign io_chosen = _zz_io_chosen;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b1;
    end else begin
      if(io_output_valid) begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
      end
      if(io_output_valid) begin
        locked <= 1'b1;
      end
      if(io_output_fire) begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module StreamFifoLowLatency_1 (
  input               io_push_valid,
  output              io_push_ready,
  output reg          io_pop_valid,
  input               io_pop_ready,
  input               io_flush,
  output     [2:0]    io_occupancy,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [1:0]    _zz_pushPtr_valueNext;
  wire       [0:0]    _zz_pushPtr_valueNext_1;
  wire       [1:0]    _zz_popPtr_valueNext;
  wire       [0:0]    _zz_popPtr_valueNext_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [1:0]    pushPtr_valueNext;
  reg        [1:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [1:0]    popPtr_valueNext;
  reg        [1:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire                when_Stream_l995;
  wire                when_Stream_l1008;
  wire       [1:0]    ptrDif;

  assign _zz_pushPtr_valueNext_1 = pushPtr_willIncrement;
  assign _zz_pushPtr_valueNext = {1'd0, _zz_pushPtr_valueNext_1};
  assign _zz_popPtr_valueNext_1 = popPtr_willIncrement;
  assign _zz_popPtr_valueNext = {1'd0, _zz_popPtr_valueNext_1};
  always @(*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing) begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush) begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 2'b11);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @(*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_pushPtr_valueNext);
    if(pushPtr_willClear) begin
      pushPtr_valueNext = 2'b00;
    end
  end

  always @(*) begin
    popPtr_willIncrement = 1'b0;
    if(popping) begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    popPtr_willClear = 1'b0;
    if(io_flush) begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 2'b11);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @(*) begin
    popPtr_valueNext = (popPtr_value + _zz_popPtr_valueNext);
    if(popPtr_willClear) begin
      popPtr_valueNext = 2'b00;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign when_Stream_l995 = (! empty);
  always @(*) begin
    if(when_Stream_l995) begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  assign when_Stream_l1008 = (pushing != popping);
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      pushPtr_value <= 2'b00;
      popPtr_value <= 2'b00;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if(when_Stream_l1008) begin
        risingOccupancy <= pushing;
      end
      if(io_flush) begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFork (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [11:0]   io_input_payload_addr,
  input      [2:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [11:0]   io_outputs_0_payload_addr,
  output     [2:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [11:0]   io_outputs_1_payload_addr,
  output     [2:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_io_outputs_0_valid;
  reg                 _zz_io_outputs_1_valid;
  wire                when_Stream_l806;
  wire                when_Stream_l806_1;
  wire                io_outputs_0_fire;
  wire                io_outputs_1_fire;

  always @(*) begin
    io_input_ready = 1'b1;
    if(when_Stream_l806) begin
      io_input_ready = 1'b0;
    end
    if(when_Stream_l806_1) begin
      io_input_ready = 1'b0;
    end
  end

  assign when_Stream_l806 = ((! io_outputs_0_ready) && _zz_io_outputs_0_valid);
  assign when_Stream_l806_1 = ((! io_outputs_1_ready) && _zz_io_outputs_1_valid);
  assign io_outputs_0_valid = (io_input_valid && _zz_io_outputs_0_valid);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_0_fire = (io_outputs_0_valid && io_outputs_0_ready);
  assign io_outputs_1_valid = (io_input_valid && _zz_io_outputs_1_valid);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  assign io_outputs_1_fire = (io_outputs_1_valid && io_outputs_1_ready);
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      _zz_io_outputs_0_valid <= 1'b1;
      _zz_io_outputs_1_valid <= 1'b1;
    end else begin
      if(io_outputs_0_fire) begin
        _zz_io_outputs_0_valid <= 1'b0;
      end
      if(io_outputs_1_fire) begin
        _zz_io_outputs_1_valid <= 1'b0;
      end
      if(io_input_ready) begin
        _zz_io_outputs_0_valid <= 1'b1;
        _zz_io_outputs_1_valid <= 1'b1;
      end
    end
  end


endmodule

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [11:0]   io_inputs_0_payload_addr,
  input      [2:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [11:0]   io_inputs_1_payload_addr,
  input      [2:0]    io_inputs_1_payload_id,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input               io_inputs_1_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [11:0]   io_output_payload_addr,
  output     [2:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [3:0]    _zz__zz_maskProposal_0_2;
  wire       [3:0]    _zz__zz_maskProposal_0_2_1;
  wire       [1:0]    _zz__zz_maskProposal_0_2_2;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_maskProposal_0;
  wire       [3:0]    _zz_maskProposal_0_1;
  wire       [3:0]    _zz_maskProposal_0_2;
  wire       [1:0]    _zz_maskProposal_0_3;
  wire                io_output_fire;
  wire                _zz_io_chosen;

  assign _zz__zz_maskProposal_0_2 = (_zz_maskProposal_0_1 - _zz__zz_maskProposal_0_2_1);
  assign _zz__zz_maskProposal_0_2_2 = {maskLocked_0,maskLocked_1};
  assign _zz__zz_maskProposal_0_2_1 = {2'd0, _zz__zz_maskProposal_0_2_2};
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_maskProposal_0 = {io_inputs_1_valid,io_inputs_0_valid};
  assign _zz_maskProposal_0_1 = {_zz_maskProposal_0,_zz_maskProposal_0};
  assign _zz_maskProposal_0_2 = (_zz_maskProposal_0_1 & (~ _zz__zz_maskProposal_0_2));
  assign _zz_maskProposal_0_3 = (_zz_maskProposal_0_2[3 : 2] | _zz_maskProposal_0_2[1 : 0]);
  assign maskProposal_0 = _zz_maskProposal_0_3[0];
  assign maskProposal_1 = _zz_maskProposal_0_3[1];
  assign io_output_fire = (io_output_valid && io_output_ready);
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_addr = (maskRouted_0 ? io_inputs_0_payload_addr : io_inputs_1_payload_addr);
  assign io_output_payload_id = (maskRouted_0 ? io_inputs_0_payload_id : io_inputs_1_payload_id);
  assign io_output_payload_len = (maskRouted_0 ? io_inputs_0_payload_len : io_inputs_1_payload_len);
  assign io_output_payload_size = (maskRouted_0 ? io_inputs_0_payload_size : io_inputs_1_payload_size);
  assign io_output_payload_burst = (maskRouted_0 ? io_inputs_0_payload_burst : io_inputs_1_payload_burst);
  assign io_output_payload_write = (maskRouted_0 ? io_inputs_0_payload_write : io_inputs_1_payload_write);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_io_chosen = io_chosenOH[1];
  assign io_chosen = _zz_io_chosen;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b1;
    end else begin
      if(io_output_valid) begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
      end
      if(io_output_valid) begin
        locked <= 1'b1;
      end
      if(io_output_fire) begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module Axi4SharedErrorSlave (
  input               io_axi_arw_valid,
  output              io_axi_arw_ready,
  input      [31:0]   io_axi_arw_payload_addr,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [3:0]    io_axi_arw_payload_cache,
  input      [2:0]    io_axi_arw_payload_prot,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 consumeData;
  reg                 sendReadRsp;
  reg                 sendWriteRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;
  wire                io_axi_arw_fire;
  wire                io_axi_w_fire;
  wire                when_Axi4ErrorSlave_l92;
  wire                io_axi_b_fire;

  assign remainingZero = (remaining == 8'h0);
  assign io_axi_arw_ready = (! ((consumeData || sendWriteRsp) || sendReadRsp));
  assign io_axi_arw_fire = (io_axi_arw_valid && io_axi_arw_ready);
  assign io_axi_w_ready = consumeData;
  assign io_axi_w_fire = (io_axi_w_valid && io_axi_w_ready);
  assign when_Axi4ErrorSlave_l92 = (io_axi_w_fire && io_axi_w_payload_last);
  assign io_axi_b_valid = sendWriteRsp;
  assign io_axi_b_payload_resp = 2'b11;
  assign io_axi_b_fire = (io_axi_b_valid && io_axi_b_ready);
  assign io_axi_r_valid = sendReadRsp;
  assign io_axi_r_payload_resp = 2'b11;
  assign io_axi_r_payload_last = remainingZero;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      consumeData <= 1'b0;
      sendReadRsp <= 1'b0;
      sendWriteRsp <= 1'b0;
    end else begin
      if(io_axi_arw_fire) begin
        consumeData <= io_axi_arw_payload_write;
        sendReadRsp <= (! io_axi_arw_payload_write);
      end
      if(when_Axi4ErrorSlave_l92) begin
        consumeData <= 1'b0;
        sendWriteRsp <= 1'b1;
      end
      if(io_axi_b_fire) begin
        sendWriteRsp <= 1'b0;
      end
      if(sendReadRsp) begin
        if(io_axi_r_ready) begin
          if(remainingZero) begin
            sendReadRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(io_axi_arw_fire) begin
      remaining <= io_axi_arw_payload_len;
    end
    if(sendReadRsp) begin
      if(io_axi_r_ready) begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module Axi4ReadOnlyErrorSlave (
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [31:0]   io_axi_ar_payload_addr,
  input      [7:0]    io_axi_ar_payload_len,
  input      [1:0]    io_axi_ar_payload_burst,
  input      [3:0]    io_axi_ar_payload_cache,
  input      [2:0]    io_axi_ar_payload_prot,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 sendRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;
  wire                io_axi_ar_fire;

  assign remainingZero = (remaining == 8'h0);
  assign io_axi_ar_ready = (! sendRsp);
  assign io_axi_ar_fire = (io_axi_ar_valid && io_axi_ar_ready);
  assign io_axi_r_valid = sendRsp;
  assign io_axi_r_payload_resp = 2'b11;
  assign io_axi_r_payload_last = remainingZero;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      sendRsp <= 1'b0;
    end else begin
      if(io_axi_ar_fire) begin
        sendRsp <= 1'b1;
      end
      if(sendRsp) begin
        if(io_axi_r_ready) begin
          if(remainingZero) begin
            sendRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(io_axi_ar_fire) begin
      remaining <= io_axi_ar_payload_len;
    end
    if(sendRsp) begin
      if(io_axi_r_ready) begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module FlowCCByToggle (
  input               io_input_valid,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment,
  output              io_output_valid,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment,
  input               io_jtag_tck,
  input               io_axiClk,
  input               resetCtrl_systemReset
);
  wire                inputArea_target_buffercc_io_dataOut;
  wire                outHitSignal;
  reg                 inputArea_target = 0;
  reg                 inputArea_data_last;
  reg        [0:0]    inputArea_data_fragment;
  wire                outputArea_target;
  reg                 outputArea_hit;
  wire                outputArea_flow_valid;
  wire                outputArea_flow_payload_last;
  wire       [0:0]    outputArea_flow_payload_fragment;
  reg                 outputArea_flow_m2sPipe_valid;
  reg                 outputArea_flow_m2sPipe_payload_last;
  reg        [0:0]    outputArea_flow_m2sPipe_payload_fragment;

  BufferCC_2 inputArea_target_buffercc (
    .io_dataIn                (inputArea_target                      ), //i
    .io_dataOut               (inputArea_target_buffercc_io_dataOut  ), //o
    .io_axiClk                (io_axiClk                             ), //i
    .resetCtrl_systemReset    (resetCtrl_systemReset                 )  //i
  );
  assign outputArea_target = inputArea_target_buffercc_io_dataOut;
  assign outputArea_flow_valid = (outputArea_target != outputArea_hit);
  assign outputArea_flow_payload_last = inputArea_data_last;
  assign outputArea_flow_payload_fragment = inputArea_data_fragment;
  assign io_output_valid = outputArea_flow_m2sPipe_valid;
  assign io_output_payload_last = outputArea_flow_m2sPipe_payload_last;
  assign io_output_payload_fragment = outputArea_flow_m2sPipe_payload_fragment;
  always @(posedge io_jtag_tck) begin
    if(io_input_valid) begin
      inputArea_target <= (! inputArea_target);
      inputArea_data_last <= io_input_payload_last;
      inputArea_data_fragment <= io_input_payload_fragment;
    end
  end

  always @(posedge io_axiClk) begin
    outputArea_hit <= outputArea_target;
    if(outputArea_flow_valid) begin
      outputArea_flow_m2sPipe_payload_last <= outputArea_flow_payload_last;
      outputArea_flow_m2sPipe_payload_fragment <= outputArea_flow_payload_fragment;
    end
  end

  always @(posedge io_axiClk or posedge resetCtrl_systemReset) begin
    if(resetCtrl_systemReset) begin
      outputArea_flow_m2sPipe_valid <= 1'b0;
    end else begin
      outputArea_flow_m2sPipe_valid <= outputArea_flow_valid;
    end
  end


endmodule

module DataCache (
  input               io_cpu_execute_isValid,
  input      [31:0]   io_cpu_execute_address,
  output reg          io_cpu_execute_haltIt,
  input               io_cpu_execute_args_wr,
  input      [1:0]    io_cpu_execute_args_size,
  input               io_cpu_execute_args_totalyConsistent,
  output              io_cpu_execute_refilling,
  input               io_cpu_memory_isValid,
  input               io_cpu_memory_isStuck,
  output              io_cpu_memory_isWrite,
  input      [31:0]   io_cpu_memory_address,
  input      [31:0]   io_cpu_memory_mmuRsp_physicalAddress,
  input               io_cpu_memory_mmuRsp_isIoAccess,
  input               io_cpu_memory_mmuRsp_isPaging,
  input               io_cpu_memory_mmuRsp_allowRead,
  input               io_cpu_memory_mmuRsp_allowWrite,
  input               io_cpu_memory_mmuRsp_allowExecute,
  input               io_cpu_memory_mmuRsp_exception,
  input               io_cpu_memory_mmuRsp_refilling,
  input               io_cpu_memory_mmuRsp_bypassTranslation,
  input               io_cpu_writeBack_isValid,
  input               io_cpu_writeBack_isStuck,
  input               io_cpu_writeBack_isUser,
  output reg          io_cpu_writeBack_haltIt,
  output              io_cpu_writeBack_isWrite,
  input      [31:0]   io_cpu_writeBack_storeData,
  output reg [31:0]   io_cpu_writeBack_data,
  input      [31:0]   io_cpu_writeBack_address,
  output              io_cpu_writeBack_mmuException,
  output              io_cpu_writeBack_unalignedAccess,
  output reg          io_cpu_writeBack_accessError,
  output              io_cpu_writeBack_keepMemRspData,
  input               io_cpu_writeBack_fence_SW,
  input               io_cpu_writeBack_fence_SR,
  input               io_cpu_writeBack_fence_SO,
  input               io_cpu_writeBack_fence_SI,
  input               io_cpu_writeBack_fence_PW,
  input               io_cpu_writeBack_fence_PR,
  input               io_cpu_writeBack_fence_PO,
  input               io_cpu_writeBack_fence_PI,
  input      [3:0]    io_cpu_writeBack_fence_FM,
  output              io_cpu_writeBack_exclusiveOk,
  output reg          io_cpu_redo,
  input               io_cpu_flush_valid,
  output              io_cpu_flush_ready,
  output reg          io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output reg          io_mem_cmd_payload_wr,
  output              io_mem_cmd_payload_uncached,
  output reg [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output     [3:0]    io_mem_cmd_payload_mask,
  output reg [2:0]    io_mem_cmd_payload_size,
  output              io_mem_cmd_payload_last,
  input               io_mem_rsp_valid,
  input               io_mem_rsp_payload_last,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [21:0]   _zz_ways_0_tags_port0;
  reg        [31:0]   _zz_ways_0_data_port0;
  wire       [21:0]   _zz_ways_0_tags_port;
  wire       [9:0]    _zz_stage0_dataColisions;
  wire       [9:0]    _zz__zz_stageA_dataColisions;
  wire       [0:0]    _zz_when;
  wire       [2:0]    _zz_loader_counter_valueNext;
  wire       [0:0]    _zz_loader_counter_valueNext_1;
  wire       [1:0]    _zz_loader_waysAllocator;
  reg                 _zz_1;
  reg                 _zz_2;
  wire                haltCpu;
  reg                 tagsReadCmd_valid;
  reg        [6:0]    tagsReadCmd_payload;
  reg                 tagsWriteCmd_valid;
  reg        [0:0]    tagsWriteCmd_payload_way;
  reg        [6:0]    tagsWriteCmd_payload_address;
  reg                 tagsWriteCmd_payload_data_valid;
  reg                 tagsWriteCmd_payload_data_error;
  reg        [19:0]   tagsWriteCmd_payload_data_address;
  reg                 tagsWriteLastCmd_valid;
  reg        [0:0]    tagsWriteLastCmd_payload_way;
  reg        [6:0]    tagsWriteLastCmd_payload_address;
  reg                 tagsWriteLastCmd_payload_data_valid;
  reg                 tagsWriteLastCmd_payload_data_error;
  reg        [19:0]   tagsWriteLastCmd_payload_data_address;
  reg                 dataReadCmd_valid;
  reg        [9:0]    dataReadCmd_payload;
  reg                 dataWriteCmd_valid;
  reg        [0:0]    dataWriteCmd_payload_way;
  reg        [9:0]    dataWriteCmd_payload_address;
  reg        [31:0]   dataWriteCmd_payload_data;
  reg        [3:0]    dataWriteCmd_payload_mask;
  wire                _zz_ways_0_tagsReadRsp_valid;
  wire                ways_0_tagsReadRsp_valid;
  wire                ways_0_tagsReadRsp_error;
  wire       [19:0]   ways_0_tagsReadRsp_address;
  wire       [21:0]   _zz_ways_0_tagsReadRsp_valid_1;
  wire                _zz_ways_0_dataReadRspMem;
  wire       [31:0]   ways_0_dataReadRspMem;
  wire       [31:0]   ways_0_dataReadRsp;
  wire                when_DataCache_l634;
  wire                when_DataCache_l637;
  wire                when_DataCache_l656;
  wire                rspSync;
  wire                rspLast;
  reg                 memCmdSent;
  wire                io_mem_cmd_fire;
  wire                when_DataCache_l678;
  reg        [3:0]    _zz_stage0_mask;
  wire       [3:0]    stage0_mask;
  wire       [0:0]    stage0_dataColisions;
  wire       [0:0]    stage0_wayInvalidate;
  wire                stage0_isAmo;
  wire                when_DataCache_l763;
  reg                 stageA_request_wr;
  reg        [1:0]    stageA_request_size;
  reg                 stageA_request_totalyConsistent;
  wire                when_DataCache_l763_1;
  reg        [3:0]    stageA_mask;
  wire                stageA_isAmo;
  wire                stageA_isLrsc;
  wire       [0:0]    stageA_wayHits;
  wire                when_DataCache_l763_2;
  reg        [0:0]    stageA_wayInvalidate;
  wire                when_DataCache_l763_3;
  reg        [0:0]    stage0_dataColisions_regNextWhen;
  wire       [0:0]    _zz_stageA_dataColisions;
  wire       [0:0]    stageA_dataColisions;
  wire                when_DataCache_l814;
  reg                 stageB_request_wr;
  reg        [1:0]    stageB_request_size;
  reg                 stageB_request_totalyConsistent;
  reg                 stageB_mmuRspFreeze;
  wire                when_DataCache_l816;
  reg        [31:0]   stageB_mmuRsp_physicalAddress;
  reg                 stageB_mmuRsp_isIoAccess;
  reg                 stageB_mmuRsp_isPaging;
  reg                 stageB_mmuRsp_allowRead;
  reg                 stageB_mmuRsp_allowWrite;
  reg                 stageB_mmuRsp_allowExecute;
  reg                 stageB_mmuRsp_exception;
  reg                 stageB_mmuRsp_refilling;
  reg                 stageB_mmuRsp_bypassTranslation;
  wire                when_DataCache_l813;
  reg                 stageB_tagsReadRsp_0_valid;
  reg                 stageB_tagsReadRsp_0_error;
  reg        [19:0]   stageB_tagsReadRsp_0_address;
  wire                when_DataCache_l813_1;
  reg        [31:0]   stageB_dataReadRsp_0;
  wire                when_DataCache_l812;
  reg        [0:0]    stageB_wayInvalidate;
  wire                stageB_consistancyHazard;
  wire                when_DataCache_l812_1;
  reg        [0:0]    stageB_dataColisions;
  wire                when_DataCache_l812_2;
  reg                 stageB_unaligned;
  wire                when_DataCache_l812_3;
  reg        [0:0]    stageB_waysHitsBeforeInvalidate;
  wire       [0:0]    stageB_waysHits;
  wire                stageB_waysHit;
  wire       [31:0]   stageB_dataMux;
  wire                when_DataCache_l812_4;
  reg        [3:0]    stageB_mask;
  reg                 stageB_loaderValid;
  wire       [31:0]   stageB_ioMemRspMuxed;
  reg                 stageB_flusher_waitDone;
  wire                stageB_flusher_hold;
  reg        [7:0]    stageB_flusher_counter;
  wire                when_DataCache_l842;
  wire                when_DataCache_l848;
  reg                 stageB_flusher_start;
  wire                stageB_isAmo;
  wire                stageB_isAmoCached;
  wire                stageB_isExternalLsrc;
  wire                stageB_isExternalAmo;
  wire       [31:0]   stageB_requestDataBypass;
  reg                 stageB_cpuWriteToCache;
  wire                when_DataCache_l911;
  wire                stageB_badPermissions;
  wire                stageB_loadStoreFault;
  wire                stageB_bypassCache;
  wire                when_DataCache_l980;
  wire                when_DataCache_l989;
  wire                when_DataCache_l994;
  wire                when_DataCache_l1005;
  wire                when_DataCache_l1017;
  wire                when_DataCache_l976;
  wire                when_DataCache_l1051;
  wire                when_DataCache_l1060;
  reg                 loader_valid;
  reg                 loader_counter_willIncrement;
  wire                loader_counter_willClear;
  reg        [2:0]    loader_counter_valueNext;
  reg        [2:0]    loader_counter_value;
  wire                loader_counter_willOverflowIfInc;
  wire                loader_counter_willOverflow;
  reg        [0:0]    loader_waysAllocator;
  reg                 loader_error;
  wire                loader_kill;
  reg                 loader_killReg;
  wire                when_DataCache_l1075;
  wire                loader_done;
  wire                when_DataCache_l1103;
  reg                 loader_valid_regNext;
  wire                when_DataCache_l1107;
  wire                when_DataCache_l1110;
  reg [21:0] ways_0_tags [0:127];
  reg [7:0] ways_0_data_symbol0 [0:1023];
  reg [7:0] ways_0_data_symbol1 [0:1023];
  reg [7:0] ways_0_data_symbol2 [0:1023];
  reg [7:0] ways_0_data_symbol3 [0:1023];
  reg [7:0] _zz_ways_0_datasymbol_read;
  reg [7:0] _zz_ways_0_datasymbol_read_1;
  reg [7:0] _zz_ways_0_datasymbol_read_2;
  reg [7:0] _zz_ways_0_datasymbol_read_3;

  assign _zz_stage0_dataColisions = (io_cpu_execute_address[11 : 2] >>> 0);
  assign _zz__zz_stageA_dataColisions = (io_cpu_memory_address[11 : 2] >>> 0);
  assign _zz_when = 1'b1;
  assign _zz_loader_counter_valueNext_1 = loader_counter_willIncrement;
  assign _zz_loader_counter_valueNext = {2'd0, _zz_loader_counter_valueNext_1};
  assign _zz_loader_waysAllocator = {loader_waysAllocator,loader_waysAllocator[0]};
  assign _zz_ways_0_tags_port = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  always @(posedge io_axiClk) begin
    if(_zz_ways_0_tagsReadRsp_valid) begin
      _zz_ways_0_tags_port0 <= ways_0_tags[tagsReadCmd_payload];
    end
  end

  always @(posedge io_axiClk) begin
    if(_zz_2) begin
      ways_0_tags[tagsWriteCmd_payload_address] <= _zz_ways_0_tags_port;
    end
  end

  always @(*) begin
    _zz_ways_0_data_port0 = {_zz_ways_0_datasymbol_read_3, _zz_ways_0_datasymbol_read_2, _zz_ways_0_datasymbol_read_1, _zz_ways_0_datasymbol_read};
  end
  always @(posedge io_axiClk) begin
    if(_zz_ways_0_dataReadRspMem) begin
      _zz_ways_0_datasymbol_read <= ways_0_data_symbol0[dataReadCmd_payload];
      _zz_ways_0_datasymbol_read_1 <= ways_0_data_symbol1[dataReadCmd_payload];
      _zz_ways_0_datasymbol_read_2 <= ways_0_data_symbol2[dataReadCmd_payload];
      _zz_ways_0_datasymbol_read_3 <= ways_0_data_symbol3[dataReadCmd_payload];
    end
  end

  always @(posedge io_axiClk) begin
    if(dataWriteCmd_payload_mask[0] && _zz_1) begin
      ways_0_data_symbol0[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[7 : 0];
    end
    if(dataWriteCmd_payload_mask[1] && _zz_1) begin
      ways_0_data_symbol1[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[15 : 8];
    end
    if(dataWriteCmd_payload_mask[2] && _zz_1) begin
      ways_0_data_symbol2[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[23 : 16];
    end
    if(dataWriteCmd_payload_mask[3] && _zz_1) begin
      ways_0_data_symbol3[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[31 : 24];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(when_DataCache_l637) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    _zz_2 = 1'b0;
    if(when_DataCache_l634) begin
      _zz_2 = 1'b1;
    end
  end

  assign haltCpu = 1'b0;
  assign _zz_ways_0_tagsReadRsp_valid = (tagsReadCmd_valid && (! io_cpu_memory_isStuck));
  assign _zz_ways_0_tagsReadRsp_valid_1 = _zz_ways_0_tags_port0;
  assign ways_0_tagsReadRsp_valid = _zz_ways_0_tagsReadRsp_valid_1[0];
  assign ways_0_tagsReadRsp_error = _zz_ways_0_tagsReadRsp_valid_1[1];
  assign ways_0_tagsReadRsp_address = _zz_ways_0_tagsReadRsp_valid_1[21 : 2];
  assign _zz_ways_0_dataReadRspMem = (dataReadCmd_valid && (! io_cpu_memory_isStuck));
  assign ways_0_dataReadRspMem = _zz_ways_0_data_port0;
  assign ways_0_dataReadRsp = ways_0_dataReadRspMem[31 : 0];
  assign when_DataCache_l634 = (tagsWriteCmd_valid && tagsWriteCmd_payload_way[0]);
  assign when_DataCache_l637 = (dataWriteCmd_valid && dataWriteCmd_payload_way[0]);
  always @(*) begin
    tagsReadCmd_valid = 1'b0;
    if(when_DataCache_l656) begin
      tagsReadCmd_valid = 1'b1;
    end
  end

  always @(*) begin
    tagsReadCmd_payload = 7'bxxxxxxx;
    if(when_DataCache_l656) begin
      tagsReadCmd_payload = io_cpu_execute_address[11 : 5];
    end
  end

  always @(*) begin
    dataReadCmd_valid = 1'b0;
    if(when_DataCache_l656) begin
      dataReadCmd_valid = 1'b1;
    end
  end

  always @(*) begin
    dataReadCmd_payload = 10'bxxxxxxxxxx;
    if(when_DataCache_l656) begin
      dataReadCmd_payload = io_cpu_execute_address[11 : 2];
    end
  end

  always @(*) begin
    tagsWriteCmd_valid = 1'b0;
    if(when_DataCache_l842) begin
      tagsWriteCmd_valid = 1'b1;
    end
    if(when_DataCache_l1051) begin
      tagsWriteCmd_valid = 1'b0;
    end
    if(loader_done) begin
      tagsWriteCmd_valid = 1'b1;
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_way = 1'bx;
    if(when_DataCache_l842) begin
      tagsWriteCmd_payload_way = 1'b1;
    end
    if(loader_done) begin
      tagsWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_address = 7'bxxxxxxx;
    if(when_DataCache_l842) begin
      tagsWriteCmd_payload_address = stageB_flusher_counter[6:0];
    end
    if(loader_done) begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 5];
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_data_valid = 1'bx;
    if(when_DataCache_l842) begin
      tagsWriteCmd_payload_data_valid = 1'b0;
    end
    if(loader_done) begin
      tagsWriteCmd_payload_data_valid = (! (loader_kill || loader_killReg));
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_data_error = 1'bx;
    if(loader_done) begin
      tagsWriteCmd_payload_data_error = (loader_error || (io_mem_rsp_valid && io_mem_rsp_payload_error));
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_data_address = 20'bxxxxxxxxxxxxxxxxxxxx;
    if(loader_done) begin
      tagsWriteCmd_payload_data_address = stageB_mmuRsp_physicalAddress[31 : 12];
    end
  end

  always @(*) begin
    dataWriteCmd_valid = 1'b0;
    if(stageB_cpuWriteToCache) begin
      if(when_DataCache_l911) begin
        dataWriteCmd_valid = 1'b1;
      end
    end
    if(when_DataCache_l1051) begin
      dataWriteCmd_valid = 1'b0;
    end
    if(when_DataCache_l1075) begin
      dataWriteCmd_valid = 1'b1;
    end
  end

  always @(*) begin
    dataWriteCmd_payload_way = 1'bx;
    if(stageB_cpuWriteToCache) begin
      dataWriteCmd_payload_way = stageB_waysHits;
    end
    if(when_DataCache_l1075) begin
      dataWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @(*) begin
    dataWriteCmd_payload_address = 10'bxxxxxxxxxx;
    if(stageB_cpuWriteToCache) begin
      dataWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 2];
    end
    if(when_DataCache_l1075) begin
      dataWriteCmd_payload_address = {stageB_mmuRsp_physicalAddress[11 : 5],loader_counter_value};
    end
  end

  always @(*) begin
    dataWriteCmd_payload_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    if(stageB_cpuWriteToCache) begin
      dataWriteCmd_payload_data[31 : 0] = stageB_requestDataBypass;
    end
    if(when_DataCache_l1075) begin
      dataWriteCmd_payload_data = io_mem_rsp_payload_data;
    end
  end

  always @(*) begin
    dataWriteCmd_payload_mask = 4'bxxxx;
    if(stageB_cpuWriteToCache) begin
      dataWriteCmd_payload_mask = 4'b0000;
      if(_zz_when[0]) begin
        dataWriteCmd_payload_mask[3 : 0] = stageB_mask;
      end
    end
    if(when_DataCache_l1075) begin
      dataWriteCmd_payload_mask = 4'b1111;
    end
  end

  assign when_DataCache_l656 = (io_cpu_execute_isValid && (! io_cpu_memory_isStuck));
  always @(*) begin
    io_cpu_execute_haltIt = 1'b0;
    if(when_DataCache_l842) begin
      io_cpu_execute_haltIt = 1'b1;
    end
  end

  assign rspSync = 1'b1;
  assign rspLast = 1'b1;
  assign io_mem_cmd_fire = (io_mem_cmd_valid && io_mem_cmd_ready);
  assign when_DataCache_l678 = (! io_cpu_writeBack_isStuck);
  always @(*) begin
    _zz_stage0_mask = 4'bxxxx;
    case(io_cpu_execute_args_size)
      2'b00 : begin
        _zz_stage0_mask = 4'b0001;
      end
      2'b01 : begin
        _zz_stage0_mask = 4'b0011;
      end
      2'b10 : begin
        _zz_stage0_mask = 4'b1111;
      end
      default : begin
      end
    endcase
  end

  assign stage0_mask = (_zz_stage0_mask <<< io_cpu_execute_address[1 : 0]);
  assign stage0_dataColisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_stage0_dataColisions)) && ((stage0_mask & dataWriteCmd_payload_mask[3 : 0]) != 4'b0000));
  assign stage0_wayInvalidate = 1'b0;
  assign stage0_isAmo = 1'b0;
  assign when_DataCache_l763 = (! io_cpu_memory_isStuck);
  assign when_DataCache_l763_1 = (! io_cpu_memory_isStuck);
  assign io_cpu_memory_isWrite = stageA_request_wr;
  assign stageA_isAmo = 1'b0;
  assign stageA_isLrsc = 1'b0;
  assign stageA_wayHits = ((io_cpu_memory_mmuRsp_physicalAddress[31 : 12] == ways_0_tagsReadRsp_address) && ways_0_tagsReadRsp_valid);
  assign when_DataCache_l763_2 = (! io_cpu_memory_isStuck);
  assign when_DataCache_l763_3 = (! io_cpu_memory_isStuck);
  assign _zz_stageA_dataColisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz__zz_stageA_dataColisions)) && ((stageA_mask & dataWriteCmd_payload_mask[3 : 0]) != 4'b0000));
  assign stageA_dataColisions = (stage0_dataColisions_regNextWhen | _zz_stageA_dataColisions);
  assign when_DataCache_l814 = (! io_cpu_writeBack_isStuck);
  always @(*) begin
    stageB_mmuRspFreeze = 1'b0;
    if(when_DataCache_l1110) begin
      stageB_mmuRspFreeze = 1'b1;
    end
  end

  assign when_DataCache_l816 = ((! io_cpu_writeBack_isStuck) && (! stageB_mmuRspFreeze));
  assign when_DataCache_l813 = (! io_cpu_writeBack_isStuck);
  assign when_DataCache_l813_1 = (! io_cpu_writeBack_isStuck);
  assign when_DataCache_l812 = (! io_cpu_writeBack_isStuck);
  assign stageB_consistancyHazard = 1'b0;
  assign when_DataCache_l812_1 = (! io_cpu_writeBack_isStuck);
  assign when_DataCache_l812_2 = (! io_cpu_writeBack_isStuck);
  assign when_DataCache_l812_3 = (! io_cpu_writeBack_isStuck);
  assign stageB_waysHits = (stageB_waysHitsBeforeInvalidate & (~ stageB_wayInvalidate));
  assign stageB_waysHit = (stageB_waysHits != 1'b0);
  assign stageB_dataMux = stageB_dataReadRsp_0;
  assign when_DataCache_l812_4 = (! io_cpu_writeBack_isStuck);
  always @(*) begin
    stageB_loaderValid = 1'b0;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l976) begin
          if(!when_DataCache_l989) begin
            if(io_mem_cmd_ready) begin
              stageB_loaderValid = 1'b1;
            end
          end
        end
      end
    end
    if(when_DataCache_l1051) begin
      stageB_loaderValid = 1'b0;
    end
  end

  assign stageB_ioMemRspMuxed = io_mem_rsp_payload_data[31 : 0];
  always @(*) begin
    io_cpu_writeBack_haltIt = 1'b1;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(when_DataCache_l976) begin
          if(when_DataCache_l980) begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
        end else begin
          if(when_DataCache_l989) begin
            if(when_DataCache_l994) begin
              io_cpu_writeBack_haltIt = 1'b0;
            end
          end
        end
      end
    end
    if(when_DataCache_l1051) begin
      io_cpu_writeBack_haltIt = 1'b0;
    end
  end

  assign stageB_flusher_hold = 1'b0;
  assign when_DataCache_l842 = (! stageB_flusher_counter[7]);
  assign when_DataCache_l848 = (! stageB_flusher_hold);
  assign io_cpu_flush_ready = (stageB_flusher_waitDone && stageB_flusher_counter[7]);
  assign stageB_isAmo = 1'b0;
  assign stageB_isAmoCached = 1'b0;
  assign stageB_isExternalLsrc = 1'b0;
  assign stageB_isExternalAmo = 1'b0;
  assign stageB_requestDataBypass = io_cpu_writeBack_storeData;
  always @(*) begin
    stageB_cpuWriteToCache = 1'b0;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l976) begin
          if(when_DataCache_l989) begin
            stageB_cpuWriteToCache = 1'b1;
          end
        end
      end
    end
  end

  assign when_DataCache_l911 = (stageB_request_wr && stageB_waysHit);
  assign stageB_badPermissions = (((! stageB_mmuRsp_allowWrite) && stageB_request_wr) || ((! stageB_mmuRsp_allowRead) && ((! stageB_request_wr) || stageB_isAmo)));
  assign stageB_loadStoreFault = (io_cpu_writeBack_isValid && (stageB_mmuRsp_exception || stageB_badPermissions));
  always @(*) begin
    io_cpu_redo = 1'b0;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l976) begin
          if(when_DataCache_l989) begin
            if(when_DataCache_l1005) begin
              io_cpu_redo = 1'b1;
            end
          end
        end
      end
    end
    if(when_DataCache_l1060) begin
      io_cpu_redo = 1'b1;
    end
    if(when_DataCache_l1107) begin
      io_cpu_redo = 1'b1;
    end
  end

  always @(*) begin
    io_cpu_writeBack_accessError = 1'b0;
    if(stageB_bypassCache) begin
      io_cpu_writeBack_accessError = ((((! stageB_request_wr) && 1'b1) && io_mem_rsp_valid) && io_mem_rsp_payload_error);
    end else begin
      io_cpu_writeBack_accessError = (((stageB_waysHits & stageB_tagsReadRsp_0_error) != 1'b0) || (stageB_loadStoreFault && (! stageB_mmuRsp_isPaging)));
    end
  end

  assign io_cpu_writeBack_mmuException = (stageB_loadStoreFault && stageB_mmuRsp_isPaging);
  assign io_cpu_writeBack_unalignedAccess = (io_cpu_writeBack_isValid && stageB_unaligned);
  assign io_cpu_writeBack_isWrite = stageB_request_wr;
  always @(*) begin
    io_mem_cmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(when_DataCache_l976) begin
          io_mem_cmd_valid = (! memCmdSent);
        end else begin
          if(when_DataCache_l989) begin
            if(stageB_request_wr) begin
              io_mem_cmd_valid = 1'b1;
            end
          end else begin
            if(when_DataCache_l1017) begin
              io_mem_cmd_valid = 1'b1;
            end
          end
        end
      end
    end
    if(when_DataCache_l1051) begin
      io_mem_cmd_valid = 1'b0;
    end
  end

  always @(*) begin
    io_mem_cmd_payload_address = stageB_mmuRsp_physicalAddress;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l976) begin
          if(!when_DataCache_l989) begin
            io_mem_cmd_payload_address[4 : 0] = 5'h0;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_last = 1'b1;
  always @(*) begin
    io_mem_cmd_payload_wr = stageB_request_wr;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l976) begin
          if(!when_DataCache_l989) begin
            io_mem_cmd_payload_wr = 1'b0;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_mask = stageB_mask;
  assign io_mem_cmd_payload_data = stageB_requestDataBypass;
  assign io_mem_cmd_payload_uncached = stageB_mmuRsp_isIoAccess;
  always @(*) begin
    io_mem_cmd_payload_size = {1'd0, stageB_request_size};
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l976) begin
          if(!when_DataCache_l989) begin
            io_mem_cmd_payload_size = 3'b101;
          end
        end
      end
    end
  end

  assign stageB_bypassCache = ((stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc) || stageB_isExternalAmo);
  assign io_cpu_writeBack_keepMemRspData = 1'b0;
  assign when_DataCache_l980 = ((! stageB_request_wr) ? (io_mem_rsp_valid && rspSync) : io_mem_cmd_ready);
  assign when_DataCache_l989 = (stageB_waysHit || (stageB_request_wr && (! stageB_isAmoCached)));
  assign when_DataCache_l994 = ((! stageB_request_wr) || io_mem_cmd_ready);
  assign when_DataCache_l1005 = (((! stageB_request_wr) || stageB_isAmoCached) && ((stageB_dataColisions & stageB_waysHits) != 1'b0));
  assign when_DataCache_l1017 = (! memCmdSent);
  assign when_DataCache_l976 = (stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc);
  always @(*) begin
    if(stageB_bypassCache) begin
      io_cpu_writeBack_data = stageB_ioMemRspMuxed;
    end else begin
      io_cpu_writeBack_data = stageB_dataMux;
    end
  end

  assign when_DataCache_l1051 = ((((stageB_consistancyHazard || stageB_mmuRsp_refilling) || io_cpu_writeBack_accessError) || io_cpu_writeBack_mmuException) || io_cpu_writeBack_unalignedAccess);
  assign when_DataCache_l1060 = (io_cpu_writeBack_isValid && (stageB_mmuRsp_refilling || stageB_consistancyHazard));
  always @(*) begin
    loader_counter_willIncrement = 1'b0;
    if(when_DataCache_l1075) begin
      loader_counter_willIncrement = 1'b1;
    end
  end

  assign loader_counter_willClear = 1'b0;
  assign loader_counter_willOverflowIfInc = (loader_counter_value == 3'b111);
  assign loader_counter_willOverflow = (loader_counter_willOverflowIfInc && loader_counter_willIncrement);
  always @(*) begin
    loader_counter_valueNext = (loader_counter_value + _zz_loader_counter_valueNext);
    if(loader_counter_willClear) begin
      loader_counter_valueNext = 3'b000;
    end
  end

  assign loader_kill = 1'b0;
  assign when_DataCache_l1075 = ((loader_valid && io_mem_rsp_valid) && rspLast);
  assign loader_done = loader_counter_willOverflow;
  assign when_DataCache_l1103 = (! loader_valid);
  assign when_DataCache_l1107 = (loader_valid && (! loader_valid_regNext));
  assign io_cpu_execute_refilling = loader_valid;
  assign when_DataCache_l1110 = (stageB_loaderValid || loader_valid);
  always @(posedge io_axiClk) begin
    tagsWriteLastCmd_valid <= tagsWriteCmd_valid;
    tagsWriteLastCmd_payload_way <= tagsWriteCmd_payload_way;
    tagsWriteLastCmd_payload_address <= tagsWriteCmd_payload_address;
    tagsWriteLastCmd_payload_data_valid <= tagsWriteCmd_payload_data_valid;
    tagsWriteLastCmd_payload_data_error <= tagsWriteCmd_payload_data_error;
    tagsWriteLastCmd_payload_data_address <= tagsWriteCmd_payload_data_address;
    if(when_DataCache_l763) begin
      stageA_request_wr <= io_cpu_execute_args_wr;
      stageA_request_size <= io_cpu_execute_args_size;
      stageA_request_totalyConsistent <= io_cpu_execute_args_totalyConsistent;
    end
    if(when_DataCache_l763_1) begin
      stageA_mask <= stage0_mask;
    end
    if(when_DataCache_l763_2) begin
      stageA_wayInvalidate <= stage0_wayInvalidate;
    end
    if(when_DataCache_l763_3) begin
      stage0_dataColisions_regNextWhen <= stage0_dataColisions;
    end
    if(when_DataCache_l814) begin
      stageB_request_wr <= stageA_request_wr;
      stageB_request_size <= stageA_request_size;
      stageB_request_totalyConsistent <= stageA_request_totalyConsistent;
    end
    if(when_DataCache_l816) begin
      stageB_mmuRsp_physicalAddress <= io_cpu_memory_mmuRsp_physicalAddress;
      stageB_mmuRsp_isIoAccess <= io_cpu_memory_mmuRsp_isIoAccess;
      stageB_mmuRsp_isPaging <= io_cpu_memory_mmuRsp_isPaging;
      stageB_mmuRsp_allowRead <= io_cpu_memory_mmuRsp_allowRead;
      stageB_mmuRsp_allowWrite <= io_cpu_memory_mmuRsp_allowWrite;
      stageB_mmuRsp_allowExecute <= io_cpu_memory_mmuRsp_allowExecute;
      stageB_mmuRsp_exception <= io_cpu_memory_mmuRsp_exception;
      stageB_mmuRsp_refilling <= io_cpu_memory_mmuRsp_refilling;
      stageB_mmuRsp_bypassTranslation <= io_cpu_memory_mmuRsp_bypassTranslation;
    end
    if(when_DataCache_l813) begin
      stageB_tagsReadRsp_0_valid <= ways_0_tagsReadRsp_valid;
      stageB_tagsReadRsp_0_error <= ways_0_tagsReadRsp_error;
      stageB_tagsReadRsp_0_address <= ways_0_tagsReadRsp_address;
    end
    if(when_DataCache_l813_1) begin
      stageB_dataReadRsp_0 <= ways_0_dataReadRsp;
    end
    if(when_DataCache_l812) begin
      stageB_wayInvalidate <= stageA_wayInvalidate;
    end
    if(when_DataCache_l812_1) begin
      stageB_dataColisions <= stageA_dataColisions;
    end
    if(when_DataCache_l812_2) begin
      stageB_unaligned <= ({((stageA_request_size == 2'b10) && (io_cpu_memory_address[1 : 0] != 2'b00)),((stageA_request_size == 2'b01) && (io_cpu_memory_address[0 : 0] != 1'b0))} != 2'b00);
    end
    if(when_DataCache_l812_3) begin
      stageB_waysHitsBeforeInvalidate <= stageA_wayHits;
    end
    if(when_DataCache_l812_4) begin
      stageB_mask <= stageA_mask;
    end
    loader_valid_regNext <= loader_valid;
  end

  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      memCmdSent <= 1'b0;
      stageB_flusher_waitDone <= 1'b0;
      stageB_flusher_counter <= 8'h0;
      stageB_flusher_start <= 1'b1;
      loader_valid <= 1'b0;
      loader_counter_value <= 3'b000;
      loader_waysAllocator <= 1'b1;
      loader_error <= 1'b0;
      loader_killReg <= 1'b0;
    end else begin
      if(io_mem_cmd_fire) begin
        memCmdSent <= 1'b1;
      end
      if(when_DataCache_l678) begin
        memCmdSent <= 1'b0;
      end
      if(io_cpu_flush_ready) begin
        stageB_flusher_waitDone <= 1'b0;
      end
      if(when_DataCache_l842) begin
        if(when_DataCache_l848) begin
          stageB_flusher_counter <= (stageB_flusher_counter + 8'h01);
        end
      end
      stageB_flusher_start <= (((((((! stageB_flusher_waitDone) && (! stageB_flusher_start)) && io_cpu_flush_valid) && (! io_cpu_execute_isValid)) && (! io_cpu_memory_isValid)) && (! io_cpu_writeBack_isValid)) && (! io_cpu_redo));
      if(stageB_flusher_start) begin
        stageB_flusher_waitDone <= 1'b1;
        stageB_flusher_counter <= 8'h0;
      end
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck)));
        `else
          if(!(! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck))) begin
            $display("ERROR writeBack stuck by another plugin is not allowed");
          end
        `endif
      `endif
      if(stageB_loaderValid) begin
        loader_valid <= 1'b1;
      end
      loader_counter_value <= loader_counter_valueNext;
      if(loader_kill) begin
        loader_killReg <= 1'b1;
      end
      if(when_DataCache_l1075) begin
        loader_error <= (loader_error || io_mem_rsp_payload_error);
      end
      if(loader_done) begin
        loader_valid <= 1'b0;
        loader_error <= 1'b0;
        loader_killReg <= 1'b0;
      end
      if(when_DataCache_l1103) begin
        loader_waysAllocator <= _zz_loader_waysAllocator[0:0];
      end
    end
  end


endmodule

module InstructionCache (
  input               io_flush,
  input               io_cpu_prefetch_isValid,
  output reg          io_cpu_prefetch_haltIt,
  input      [31:0]   io_cpu_prefetch_pc,
  input               io_cpu_fetch_isValid,
  input               io_cpu_fetch_isStuck,
  input               io_cpu_fetch_isRemoved,
  input      [31:0]   io_cpu_fetch_pc,
  output     [31:0]   io_cpu_fetch_data,
  input      [31:0]   io_cpu_fetch_mmuRsp_physicalAddress,
  input               io_cpu_fetch_mmuRsp_isIoAccess,
  input               io_cpu_fetch_mmuRsp_isPaging,
  input               io_cpu_fetch_mmuRsp_allowRead,
  input               io_cpu_fetch_mmuRsp_allowWrite,
  input               io_cpu_fetch_mmuRsp_allowExecute,
  input               io_cpu_fetch_mmuRsp_exception,
  input               io_cpu_fetch_mmuRsp_refilling,
  input               io_cpu_fetch_mmuRsp_bypassTranslation,
  output     [31:0]   io_cpu_fetch_physicalAddress,
  input               io_cpu_decode_isValid,
  input               io_cpu_decode_isStuck,
  input      [31:0]   io_cpu_decode_pc,
  output     [31:0]   io_cpu_decode_physicalAddress,
  output     [31:0]   io_cpu_decode_data,
  output              io_cpu_decode_cacheMiss,
  output              io_cpu_decode_error,
  output              io_cpu_decode_mmuRefilling,
  output              io_cpu_decode_mmuException,
  input               io_cpu_decode_isUser,
  input               io_cpu_fill_valid,
  input      [31:0]   io_cpu_fill_payload,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [2:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input      [2:0]    _zz_when_Fetcher_l398,
  input      [31:0]   _zz_decodeStage_hit_data_1,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [31:0]   _zz_banks_0_port1;
  reg        [21:0]   _zz_ways_0_tags_port1;
  wire       [21:0]   _zz_ways_0_tags_port;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 lineLoader_fire;
  reg                 lineLoader_valid;
  (* keep , syn_keep *) reg        [31:0]   lineLoader_address /* synthesis syn_keep = 1 */ ;
  reg                 lineLoader_hadError;
  reg                 lineLoader_flushPending;
  reg        [7:0]    lineLoader_flushCounter;
  wire                when_InstructionCache_l338;
  reg                 _zz_when_InstructionCache_l342;
  wire                when_InstructionCache_l342;
  wire                when_InstructionCache_l351;
  reg                 lineLoader_cmdSent;
  wire                io_mem_cmd_fire;
  wire                when_Utils_l357;
  reg                 lineLoader_wayToAllocate_willIncrement;
  wire                lineLoader_wayToAllocate_willClear;
  wire                lineLoader_wayToAllocate_willOverflowIfInc;
  wire                lineLoader_wayToAllocate_willOverflow;
  (* keep , syn_keep *) reg        [2:0]    lineLoader_wordIndex /* synthesis syn_keep = 1 */ ;
  wire                lineLoader_write_tag_0_valid;
  wire       [6:0]    lineLoader_write_tag_0_payload_address;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [19:0]   lineLoader_write_tag_0_payload_data_address;
  wire                lineLoader_write_data_0_valid;
  wire       [9:0]    lineLoader_write_data_0_payload_address;
  wire       [31:0]   lineLoader_write_data_0_payload_data;
  wire                when_InstructionCache_l401;
  wire       [9:0]    _zz_fetchStage_read_banksValue_0_dataMem;
  wire                _zz_fetchStage_read_banksValue_0_dataMem_1;
  wire       [31:0]   fetchStage_read_banksValue_0_dataMem;
  wire       [31:0]   fetchStage_read_banksValue_0_data;
  wire       [6:0]    _zz_fetchStage_read_waysValues_0_tag_valid;
  wire                _zz_fetchStage_read_waysValues_0_tag_valid_1;
  wire                fetchStage_read_waysValues_0_tag_valid;
  wire                fetchStage_read_waysValues_0_tag_error;
  wire       [19:0]   fetchStage_read_waysValues_0_tag_address;
  wire       [21:0]   _zz_fetchStage_read_waysValues_0_tag_valid_2;
  wire                when_InstructionCache_l459;
  reg        [31:0]   decodeStage_mmuRsp_physicalAddress;
  reg                 decodeStage_mmuRsp_isIoAccess;
  reg                 decodeStage_mmuRsp_isPaging;
  reg                 decodeStage_mmuRsp_allowRead;
  reg                 decodeStage_mmuRsp_allowWrite;
  reg                 decodeStage_mmuRsp_allowExecute;
  reg                 decodeStage_mmuRsp_exception;
  reg                 decodeStage_mmuRsp_refilling;
  reg                 decodeStage_mmuRsp_bypassTranslation;
  wire                when_InstructionCache_l459_1;
  reg                 decodeStage_hit_tags_0_valid;
  reg                 decodeStage_hit_tags_0_error;
  reg        [19:0]   decodeStage_hit_tags_0_address;
  wire                decodeStage_hit_hits_0;
  wire                decodeStage_hit_valid;
  wire                when_InstructionCache_l459_2;
  reg        [31:0]   _zz_decodeStage_hit_data;
  wire       [31:0]   decodeStage_hit_data;
  wire                when_Fetcher_l398;
  reg [31:0] banks_0 [0:1023];
  reg [21:0] ways_0_tags [0:127];

  assign _zz_ways_0_tags_port = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  always @(posedge io_axiClk) begin
    if(_zz_1) begin
      banks_0[lineLoader_write_data_0_payload_address] <= lineLoader_write_data_0_payload_data;
    end
  end

  always @(posedge io_axiClk) begin
    if(_zz_fetchStage_read_banksValue_0_dataMem_1) begin
      _zz_banks_0_port1 <= banks_0[_zz_fetchStage_read_banksValue_0_dataMem];
    end
  end

  always @(posedge io_axiClk) begin
    if(_zz_2) begin
      ways_0_tags[lineLoader_write_tag_0_payload_address] <= _zz_ways_0_tags_port;
    end
  end

  always @(posedge io_axiClk) begin
    if(_zz_fetchStage_read_waysValues_0_tag_valid_1) begin
      _zz_ways_0_tags_port1 <= ways_0_tags[_zz_fetchStage_read_waysValues_0_tag_valid];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(lineLoader_write_data_0_valid) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    _zz_2 = 1'b0;
    if(lineLoader_write_tag_0_valid) begin
      _zz_2 = 1'b1;
    end
  end

  always @(*) begin
    lineLoader_fire = 1'b0;
    if(io_mem_rsp_valid) begin
      if(when_InstructionCache_l401) begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  always @(*) begin
    io_cpu_prefetch_haltIt = (lineLoader_valid || lineLoader_flushPending);
    if(when_InstructionCache_l338) begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(when_InstructionCache_l342) begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(io_flush) begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
  end

  assign when_InstructionCache_l338 = (! lineLoader_flushCounter[7]);
  assign when_InstructionCache_l342 = (! _zz_when_InstructionCache_l342);
  assign when_InstructionCache_l351 = (lineLoader_flushPending && (! (lineLoader_valid || io_cpu_fetch_isValid)));
  assign io_mem_cmd_fire = (io_mem_cmd_valid && io_mem_cmd_ready);
  assign io_mem_cmd_valid = (lineLoader_valid && (! lineLoader_cmdSent));
  assign io_mem_cmd_payload_address = {lineLoader_address[31 : 5],5'h0};
  assign io_mem_cmd_payload_size = 3'b101;
  assign when_Utils_l357 = (! lineLoader_valid);
  always @(*) begin
    lineLoader_wayToAllocate_willIncrement = 1'b0;
    if(when_Utils_l357) begin
      lineLoader_wayToAllocate_willIncrement = 1'b1;
    end
  end

  assign lineLoader_wayToAllocate_willClear = 1'b0;
  assign lineLoader_wayToAllocate_willOverflowIfInc = 1'b1;
  assign lineLoader_wayToAllocate_willOverflow = (lineLoader_wayToAllocate_willOverflowIfInc && lineLoader_wayToAllocate_willIncrement);
  assign lineLoader_write_tag_0_valid = ((1'b1 && lineLoader_fire) || (! lineLoader_flushCounter[7]));
  assign lineLoader_write_tag_0_payload_address = (lineLoader_flushCounter[7] ? lineLoader_address[11 : 5] : lineLoader_flushCounter[6 : 0]);
  assign lineLoader_write_tag_0_payload_data_valid = lineLoader_flushCounter[7];
  assign lineLoader_write_tag_0_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_0_payload_data_address = lineLoader_address[31 : 12];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && 1'b1);
  assign lineLoader_write_data_0_payload_address = {lineLoader_address[11 : 5],lineLoader_wordIndex};
  assign lineLoader_write_data_0_payload_data = io_mem_rsp_payload_data;
  assign when_InstructionCache_l401 = (lineLoader_wordIndex == 3'b111);
  assign _zz_fetchStage_read_banksValue_0_dataMem = io_cpu_prefetch_pc[11 : 2];
  assign _zz_fetchStage_read_banksValue_0_dataMem_1 = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_banksValue_0_dataMem = _zz_banks_0_port1;
  assign fetchStage_read_banksValue_0_data = fetchStage_read_banksValue_0_dataMem[31 : 0];
  assign _zz_fetchStage_read_waysValues_0_tag_valid = io_cpu_prefetch_pc[11 : 5];
  assign _zz_fetchStage_read_waysValues_0_tag_valid_1 = (! io_cpu_fetch_isStuck);
  assign _zz_fetchStage_read_waysValues_0_tag_valid_2 = _zz_ways_0_tags_port1;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_fetchStage_read_waysValues_0_tag_valid_2[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_fetchStage_read_waysValues_0_tag_valid_2[1];
  assign fetchStage_read_waysValues_0_tag_address = _zz_fetchStage_read_waysValues_0_tag_valid_2[21 : 2];
  assign io_cpu_fetch_data = fetchStage_read_banksValue_0_data;
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuRsp_physicalAddress;
  assign when_InstructionCache_l459 = (! io_cpu_decode_isStuck);
  assign when_InstructionCache_l459_1 = (! io_cpu_decode_isStuck);
  assign decodeStage_hit_hits_0 = (decodeStage_hit_tags_0_valid && (decodeStage_hit_tags_0_address == decodeStage_mmuRsp_physicalAddress[31 : 12]));
  assign decodeStage_hit_valid = (decodeStage_hit_hits_0 != 1'b0);
  assign when_InstructionCache_l459_2 = (! io_cpu_decode_isStuck);
  assign decodeStage_hit_data = _zz_decodeStage_hit_data;
  assign io_cpu_decode_data = decodeStage_hit_data;
  assign io_cpu_decode_cacheMiss = (! decodeStage_hit_valid);
  assign io_cpu_decode_error = (decodeStage_hit_tags_0_error || ((! decodeStage_mmuRsp_isPaging) && (decodeStage_mmuRsp_exception || (! decodeStage_mmuRsp_allowExecute))));
  assign io_cpu_decode_mmuRefilling = decodeStage_mmuRsp_refilling;
  assign io_cpu_decode_mmuException = (((! decodeStage_mmuRsp_refilling) && decodeStage_mmuRsp_isPaging) && (decodeStage_mmuRsp_exception || (! decodeStage_mmuRsp_allowExecute)));
  assign io_cpu_decode_physicalAddress = decodeStage_mmuRsp_physicalAddress;
  assign when_Fetcher_l398 = (_zz_when_Fetcher_l398 != 3'b000);
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushPending <= 1'b1;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wordIndex <= 3'b000;
    end else begin
      if(lineLoader_fire) begin
        lineLoader_valid <= 1'b0;
      end
      if(lineLoader_fire) begin
        lineLoader_hadError <= 1'b0;
      end
      if(io_cpu_fill_valid) begin
        lineLoader_valid <= 1'b1;
      end
      if(io_flush) begin
        lineLoader_flushPending <= 1'b1;
      end
      if(when_InstructionCache_l351) begin
        lineLoader_flushPending <= 1'b0;
      end
      if(io_mem_cmd_fire) begin
        lineLoader_cmdSent <= 1'b1;
      end
      if(lineLoader_fire) begin
        lineLoader_cmdSent <= 1'b0;
      end
      if(io_mem_rsp_valid) begin
        lineLoader_wordIndex <= (lineLoader_wordIndex + 3'b001);
        if(io_mem_rsp_payload_error) begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(io_cpu_fill_valid) begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    if(when_InstructionCache_l338) begin
      lineLoader_flushCounter <= (lineLoader_flushCounter + 8'h01);
    end
    _zz_when_InstructionCache_l342 <= lineLoader_flushCounter[7];
    if(when_InstructionCache_l351) begin
      lineLoader_flushCounter <= 8'h0;
    end
    if(when_InstructionCache_l459) begin
      decodeStage_mmuRsp_physicalAddress <= io_cpu_fetch_mmuRsp_physicalAddress;
      decodeStage_mmuRsp_isIoAccess <= io_cpu_fetch_mmuRsp_isIoAccess;
      decodeStage_mmuRsp_isPaging <= io_cpu_fetch_mmuRsp_isPaging;
      decodeStage_mmuRsp_allowRead <= io_cpu_fetch_mmuRsp_allowRead;
      decodeStage_mmuRsp_allowWrite <= io_cpu_fetch_mmuRsp_allowWrite;
      decodeStage_mmuRsp_allowExecute <= io_cpu_fetch_mmuRsp_allowExecute;
      decodeStage_mmuRsp_exception <= io_cpu_fetch_mmuRsp_exception;
      decodeStage_mmuRsp_refilling <= io_cpu_fetch_mmuRsp_refilling;
      decodeStage_mmuRsp_bypassTranslation <= io_cpu_fetch_mmuRsp_bypassTranslation;
    end
    if(when_InstructionCache_l459_1) begin
      decodeStage_hit_tags_0_valid <= fetchStage_read_waysValues_0_tag_valid;
      decodeStage_hit_tags_0_error <= fetchStage_read_waysValues_0_tag_error;
      decodeStage_hit_tags_0_address <= fetchStage_read_waysValues_0_tag_address;
    end
    if(when_InstructionCache_l459_2) begin
      _zz_decodeStage_hit_data <= fetchStage_read_banksValue_0_data;
    end
    if(when_Fetcher_l398) begin
      _zz_decodeStage_hit_data <= _zz_decodeStage_hit_data_1;
    end
  end


endmodule

//StreamFifo_5 replaced by StreamFifo_5

//StreamFifo_4 replaced by StreamFifo_4

//SpiMasterCtrl replaced by SpiMasterCtrl

module StreamFifo_5 (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload,
  input               io_flush,
  output     [9:0]    io_occupancy,
  output     [9:0]    io_availability,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [7:0]    _zz_logic_ram_port0;
  wire       [8:0]    _zz_logic_pushPtr_valueNext;
  wire       [0:0]    _zz_logic_pushPtr_valueNext_1;
  wire       [8:0]    _zz_logic_popPtr_valueNext;
  wire       [0:0]    _zz_logic_popPtr_valueNext_1;
  wire                _zz_logic_ram_port;
  wire                _zz_io_pop_payload;
  wire       [8:0]    _zz_io_availability;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [8:0]    logic_pushPtr_valueNext;
  reg        [8:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [8:0]    logic_popPtr_valueNext;
  reg        [8:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_io_pop_valid;
  wire                when_Stream_l933;
  wire       [8:0]    logic_ptrDif;
  reg [7:0] logic_ram [0:511];

  assign _zz_logic_pushPtr_valueNext_1 = logic_pushPtr_willIncrement;
  assign _zz_logic_pushPtr_valueNext = {8'd0, _zz_logic_pushPtr_valueNext_1};
  assign _zz_logic_popPtr_valueNext_1 = logic_popPtr_willIncrement;
  assign _zz_logic_popPtr_valueNext = {8'd0, _zz_logic_popPtr_valueNext_1};
  assign _zz_io_availability = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_io_pop_payload = 1'b1;
  always @(posedge io_axiClk) begin
    if(_zz_io_pop_payload) begin
      _zz_logic_ram_port0 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @(posedge io_axiClk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= io_push_payload;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing) begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 9'h1ff);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @(*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_logic_pushPtr_valueNext);
    if(logic_pushPtr_willClear) begin
      logic_pushPtr_valueNext = 9'h0;
    end
  end

  always @(*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping) begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 9'h1ff);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @(*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_logic_popPtr_valueNext);
    if(logic_popPtr_willClear) begin
      logic_popPtr_valueNext = 9'h0;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_io_pop_valid && (! logic_full))));
  assign io_pop_payload = _zz_logic_ram_port0;
  assign when_Stream_l933 = (logic_pushing != logic_popping);
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_io_availability};
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      logic_pushPtr_value <= 9'h0;
      logic_popPtr_value <= 9'h0;
      logic_risingOccupancy <= 1'b0;
      _zz_io_pop_valid <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_io_pop_valid <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if(when_Stream_l933) begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush) begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFifo_4 (
  input               io_push_valid,
  output              io_push_ready,
  input      `SpiMasterCtrlCmdMode_binary_sequential_type io_push_payload_mode,
  input      [8:0]    io_push_payload_args,
  output              io_pop_valid,
  input               io_pop_ready,
  output     `SpiMasterCtrlCmdMode_binary_sequential_type io_pop_payload_mode,
  output     [8:0]    io_pop_payload_args,
  input               io_flush,
  output     [9:0]    io_occupancy,
  output     [9:0]    io_availability,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [9:0]    _zz_logic_ram_port0;
  wire       [8:0]    _zz_logic_pushPtr_valueNext;
  wire       [0:0]    _zz_logic_pushPtr_valueNext_1;
  wire       [8:0]    _zz_logic_popPtr_valueNext;
  wire       [0:0]    _zz_logic_popPtr_valueNext_1;
  wire                _zz_logic_ram_port;
  wire                _zz__zz_io_pop_payload_mode_1;
  wire       [9:0]    _zz_logic_ram_port_1;
  wire       [8:0]    _zz_io_availability;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [8:0]    logic_pushPtr_valueNext;
  reg        [8:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [8:0]    logic_popPtr_valueNext;
  reg        [8:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_io_pop_valid;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type _zz_io_pop_payload_mode;
  wire       [9:0]    _zz_io_pop_payload_mode_1;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type _zz_io_pop_payload_mode_2;
  wire                when_Stream_l933;
  wire       [8:0]    logic_ptrDif;
  `ifndef SYNTHESIS
  reg [31:0] io_push_payload_mode_string;
  reg [31:0] io_pop_payload_mode_string;
  reg [31:0] _zz_io_pop_payload_mode_string;
  reg [31:0] _zz_io_pop_payload_mode_2_string;
  `endif

  reg [9:0] logic_ram [0:511];

  assign _zz_logic_pushPtr_valueNext_1 = logic_pushPtr_willIncrement;
  assign _zz_logic_pushPtr_valueNext = {8'd0, _zz_logic_pushPtr_valueNext_1};
  assign _zz_logic_popPtr_valueNext_1 = logic_popPtr_willIncrement;
  assign _zz_logic_popPtr_valueNext = {8'd0, _zz_logic_popPtr_valueNext_1};
  assign _zz_io_availability = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz__zz_io_pop_payload_mode_1 = 1'b1;
  assign _zz_logic_ram_port_1 = {io_push_payload_args,io_push_payload_mode};
  always @(posedge io_axiClk) begin
    if(_zz__zz_io_pop_payload_mode_1) begin
      _zz_logic_ram_port0 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @(posedge io_axiClk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= _zz_logic_ram_port_1;
    end
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(io_push_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : io_push_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : io_push_payload_mode_string = "SS  ";
      default : io_push_payload_mode_string = "????";
    endcase
  end
  always @(*) begin
    case(io_pop_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : io_pop_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : io_pop_payload_mode_string = "SS  ";
      default : io_pop_payload_mode_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_io_pop_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : _zz_io_pop_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : _zz_io_pop_payload_mode_string = "SS  ";
      default : _zz_io_pop_payload_mode_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_io_pop_payload_mode_2)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : _zz_io_pop_payload_mode_2_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : _zz_io_pop_payload_mode_2_string = "SS  ";
      default : _zz_io_pop_payload_mode_2_string = "????";
    endcase
  end
  `endif

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing) begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 9'h1ff);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @(*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_logic_pushPtr_valueNext);
    if(logic_pushPtr_willClear) begin
      logic_pushPtr_valueNext = 9'h0;
    end
  end

  always @(*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping) begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 9'h1ff);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @(*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_logic_popPtr_valueNext);
    if(logic_popPtr_willClear) begin
      logic_popPtr_valueNext = 9'h0;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_io_pop_valid && (! logic_full))));
  assign _zz_io_pop_payload_mode_1 = _zz_logic_ram_port0;
  assign _zz_io_pop_payload_mode_2 = _zz_io_pop_payload_mode_1[0 : 0];
  assign _zz_io_pop_payload_mode = _zz_io_pop_payload_mode_2;
  assign io_pop_payload_mode = _zz_io_pop_payload_mode;
  assign io_pop_payload_args = _zz_io_pop_payload_mode_1[9 : 1];
  assign when_Stream_l933 = (logic_pushing != logic_popping);
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_io_availability};
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      logic_pushPtr_value <= 9'h0;
      logic_popPtr_value <= 9'h0;
      logic_risingOccupancy <= 1'b0;
      _zz_io_pop_valid <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_io_pop_valid <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if(when_Stream_l933) begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush) begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module SpiMasterCtrl (
  input               io_config_kind_cpol,
  input               io_config_kind_cpha,
  input      [15:0]   io_config_sclkToogle,
  input      [3:0]    io_config_ss_activeHigh,
  input      [15:0]   io_config_ss_setup,
  input      [15:0]   io_config_ss_hold,
  input      [15:0]   io_config_ss_disable,
  input               io_cmd_valid,
  output reg          io_cmd_ready,
  input      `SpiMasterCtrlCmdMode_binary_sequential_type io_cmd_payload_mode,
  input      [8:0]    io_cmd_payload_args,
  output              io_rsp_valid,
  output     [7:0]    io_rsp_payload,
  output     [3:0]    io_spi_ss,
  output              io_spi_sclk,
  output              io_spi_mosi,
  input               io_spi_miso,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [3:0]    _zz_fsm_counter_valueNext;
  wire       [0:0]    _zz_fsm_counter_valueNext_1;
  wire       [8:0]    _zz_fsm_buffer;
  wire                _zz_when;
  wire       [7:0]    _zz__zz_io_spi_mosi;
  wire       [2:0]    _zz__zz_io_spi_mosi_1;
  wire       [2:0]    _zz__zz_io_spi_mosi_2;
  reg        [15:0]   timer_counter;
  reg                 timer_reset;
  wire                timer_ss_setupHit;
  wire                timer_ss_holdHit;
  wire                timer_ss_disableHit;
  wire                timer_sclkToogleHit;
  reg                 fsm_counter_willIncrement;
  wire                fsm_counter_willClear;
  reg        [3:0]    fsm_counter_valueNext;
  reg        [3:0]    fsm_counter_value;
  wire                fsm_counter_willOverflowIfInc;
  wire                fsm_counter_willOverflow;
  reg        [7:0]    fsm_buffer;
  reg        [3:0]    fsm_ss;
  wire                when_SpiMasterCtrl_l194;
  wire                when_SpiMasterCtrl_l199;
  wire                when_SpiMasterCtrl_l211;
  wire                io_cmd_fire;
  reg                 _zz_io_rsp_valid;
  wire                when_SpiMasterCtrl_l232;
  reg                 _zz_io_spi_sclk;
  reg                 _zz_io_spi_mosi;
  `ifndef SYNTHESIS
  reg [31:0] io_cmd_payload_mode_string;
  `endif


  assign _zz_when = io_cmd_payload_args[0];
  assign _zz_fsm_counter_valueNext_1 = fsm_counter_willIncrement;
  assign _zz_fsm_counter_valueNext = {3'd0, _zz_fsm_counter_valueNext_1};
  assign _zz_fsm_buffer = {fsm_buffer,io_spi_miso};
  assign _zz__zz_io_spi_mosi = io_cmd_payload_args[7 : 0];
  assign _zz__zz_io_spi_mosi_1 = (3'b111 - _zz__zz_io_spi_mosi_2);
  assign _zz__zz_io_spi_mosi_2 = (fsm_counter_value >>> 1);
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_cmd_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : io_cmd_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : io_cmd_payload_mode_string = "SS  ";
      default : io_cmd_payload_mode_string = "????";
    endcase
  end
  `endif

  always @(*) begin
    timer_reset = 1'b0;
    if(io_cmd_valid) begin
      if(when_SpiMasterCtrl_l194) begin
        if(timer_sclkToogleHit) begin
          timer_reset = 1'b1;
        end
      end else begin
        if(!_zz_when) begin
          if(when_SpiMasterCtrl_l211) begin
            if(timer_ss_holdHit) begin
              timer_reset = 1'b1;
            end
          end
        end
      end
    end
    if(when_SpiMasterCtrl_l232) begin
      timer_reset = 1'b1;
    end
  end

  assign timer_ss_setupHit = (timer_counter == io_config_ss_setup);
  assign timer_ss_holdHit = (timer_counter == io_config_ss_hold);
  assign timer_ss_disableHit = (timer_counter == io_config_ss_disable);
  assign timer_sclkToogleHit = (timer_counter == io_config_sclkToogle);
  always @(*) begin
    fsm_counter_willIncrement = 1'b0;
    if(io_cmd_valid) begin
      if(when_SpiMasterCtrl_l194) begin
        if(timer_sclkToogleHit) begin
          fsm_counter_willIncrement = 1'b1;
        end
      end else begin
        if(!_zz_when) begin
          if(when_SpiMasterCtrl_l211) begin
            if(timer_ss_holdHit) begin
              fsm_counter_willIncrement = 1'b1;
            end
          end
        end
      end
    end
  end

  assign fsm_counter_willClear = 1'b0;
  assign fsm_counter_willOverflowIfInc = (fsm_counter_value == 4'b1111);
  assign fsm_counter_willOverflow = (fsm_counter_willOverflowIfInc && fsm_counter_willIncrement);
  always @(*) begin
    fsm_counter_valueNext = (fsm_counter_value + _zz_fsm_counter_valueNext);
    if(fsm_counter_willClear) begin
      fsm_counter_valueNext = 4'b0000;
    end
  end

  always @(*) begin
    io_cmd_ready = 1'b0;
    if(io_cmd_valid) begin
      if(when_SpiMasterCtrl_l194) begin
        if(timer_sclkToogleHit) begin
          io_cmd_ready = fsm_counter_willOverflowIfInc;
        end
      end else begin
        if(_zz_when) begin
          if(timer_ss_setupHit) begin
            io_cmd_ready = 1'b1;
          end
        end else begin
          if(!when_SpiMasterCtrl_l211) begin
            if(timer_ss_disableHit) begin
              io_cmd_ready = 1'b1;
            end
          end
        end
      end
    end
  end

  assign when_SpiMasterCtrl_l194 = (io_cmd_payload_mode == `SpiMasterCtrlCmdMode_binary_sequential_DATA);
  assign when_SpiMasterCtrl_l199 = fsm_counter_value[0];
  assign when_SpiMasterCtrl_l211 = (! fsm_counter_value[0]);
  assign io_cmd_fire = (io_cmd_valid && io_cmd_ready);
  assign io_rsp_valid = _zz_io_rsp_valid;
  assign io_rsp_payload = fsm_buffer;
  assign when_SpiMasterCtrl_l232 = ((! io_cmd_valid) || io_cmd_ready);
  assign io_spi_ss = (fsm_ss ^ io_config_ss_activeHigh);
  assign io_spi_sclk = _zz_io_spi_sclk;
  assign io_spi_mosi = _zz_io_spi_mosi;
  always @(posedge io_axiClk) begin
    timer_counter <= (timer_counter + 16'h0001);
    if(timer_reset) begin
      timer_counter <= 16'h0;
    end
    if(io_cmd_valid) begin
      if(when_SpiMasterCtrl_l194) begin
        if(timer_sclkToogleHit) begin
          if(when_SpiMasterCtrl_l199) begin
            fsm_buffer <= _zz_fsm_buffer[7:0];
          end
        end
      end
    end
    _zz_io_spi_sclk <= (((io_cmd_valid && (io_cmd_payload_mode == `SpiMasterCtrlCmdMode_binary_sequential_DATA)) && (fsm_counter_value[0] ^ io_config_kind_cpha)) ^ io_config_kind_cpol);
    _zz_io_spi_mosi <= _zz__zz_io_spi_mosi[_zz__zz_io_spi_mosi_1];
  end

  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      fsm_counter_value <= 4'b0000;
      fsm_ss <= 4'b1111;
      _zz_io_rsp_valid <= 1'b0;
    end else begin
      fsm_counter_value <= fsm_counter_valueNext;
      if(io_cmd_valid) begin
        if(!when_SpiMasterCtrl_l194) begin
          if(_zz_when) begin
            fsm_ss[io_cmd_payload_args[2 : 1]] <= 1'b0;
          end else begin
            if(!when_SpiMasterCtrl_l211) begin
              fsm_ss[io_cmd_payload_args[2 : 1]] <= 1'b1;
            end
          end
        end
      end
      _zz_io_rsp_valid <= ((io_cmd_fire && (io_cmd_payload_mode == `SpiMasterCtrlCmdMode_binary_sequential_DATA)) && io_cmd_payload_args[8]);
      if(when_SpiMasterCtrl_l232) begin
        fsm_counter_value <= 4'b0000;
      end
    end
  end


endmodule

//StreamFifo replaced by StreamFifo

//StreamFifo replaced by StreamFifo

//UartCtrl replaced by UartCtrl

//StreamFifo replaced by StreamFifo

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload,
  input               io_flush,
  output     [10:0]   io_occupancy,
  output     [10:0]   io_availability,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [7:0]    _zz_logic_ram_port0;
  wire       [9:0]    _zz_logic_pushPtr_valueNext;
  wire       [0:0]    _zz_logic_pushPtr_valueNext_1;
  wire       [9:0]    _zz_logic_popPtr_valueNext;
  wire       [0:0]    _zz_logic_popPtr_valueNext_1;
  wire                _zz_logic_ram_port;
  wire                _zz_io_pop_payload;
  wire       [9:0]    _zz_io_availability;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [9:0]    logic_pushPtr_valueNext;
  reg        [9:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [9:0]    logic_popPtr_valueNext;
  reg        [9:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_io_pop_valid;
  wire                when_Stream_l933;
  wire       [9:0]    logic_ptrDif;
  reg [7:0] logic_ram [0:1023];

  assign _zz_logic_pushPtr_valueNext_1 = logic_pushPtr_willIncrement;
  assign _zz_logic_pushPtr_valueNext = {9'd0, _zz_logic_pushPtr_valueNext_1};
  assign _zz_logic_popPtr_valueNext_1 = logic_popPtr_willIncrement;
  assign _zz_logic_popPtr_valueNext = {9'd0, _zz_logic_popPtr_valueNext_1};
  assign _zz_io_availability = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_io_pop_payload = 1'b1;
  always @(posedge io_axiClk) begin
    if(_zz_io_pop_payload) begin
      _zz_logic_ram_port0 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @(posedge io_axiClk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= io_push_payload;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing) begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 10'h3ff);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @(*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_logic_pushPtr_valueNext);
    if(logic_pushPtr_willClear) begin
      logic_pushPtr_valueNext = 10'h0;
    end
  end

  always @(*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping) begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 10'h3ff);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @(*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_logic_popPtr_valueNext);
    if(logic_popPtr_willClear) begin
      logic_popPtr_valueNext = 10'h0;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_io_pop_valid && (! logic_full))));
  assign io_pop_payload = _zz_logic_ram_port0;
  assign when_Stream_l933 = (logic_pushing != logic_popping);
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_io_availability};
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      logic_pushPtr_value <= 10'h0;
      logic_popPtr_value <= 10'h0;
      logic_risingOccupancy <= 1'b0;
      _zz_io_pop_valid <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_io_pop_valid <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if(when_Stream_l933) begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush) begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module UartCtrl (
  input      [2:0]    io_config_frame_dataLength,
  input      `UartStopType_binary_sequential_type io_config_frame_stop,
  input      `UartParityType_binary_sequential_type io_config_frame_parity,
  input      [19:0]   io_config_clockDivider,
  input               io_write_valid,
  output reg          io_write_ready,
  input      [7:0]    io_write_payload,
  output              io_read_valid,
  input               io_read_ready,
  output     [7:0]    io_read_payload,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_readError,
  input               io_writeBreak,
  output              io_readBreak,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                tx_io_write_ready;
  wire                tx_io_txd;
  wire                rx_io_read_valid;
  wire       [7:0]    rx_io_read_payload;
  wire                rx_io_rts;
  wire                rx_io_error;
  wire                rx_io_break;
  reg        [19:0]   clockDivider_counter;
  wire                clockDivider_tick;
  reg                 io_write_thrown_valid;
  wire                io_write_thrown_ready;
  wire       [7:0]    io_write_thrown_payload;
  `ifndef SYNTHESIS
  reg [23:0] io_config_frame_stop_string;
  reg [31:0] io_config_frame_parity_string;
  `endif


  UartCtrlTx tx (
    .io_configFrame_dataLength    (io_config_frame_dataLength  ), //i
    .io_configFrame_stop          (io_config_frame_stop        ), //i
    .io_configFrame_parity        (io_config_frame_parity      ), //i
    .io_samplingTick              (clockDivider_tick           ), //i
    .io_write_valid               (io_write_thrown_valid       ), //i
    .io_write_ready               (tx_io_write_ready           ), //o
    .io_write_payload             (io_write_thrown_payload     ), //i
    .io_cts                       (1'b0                        ), //i
    .io_txd                       (tx_io_txd                   ), //o
    .io_break                     (io_writeBreak               ), //i
    .io_axiClk                    (io_axiClk                   ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset          )  //i
  );
  UartCtrlRx rx (
    .io_configFrame_dataLength    (io_config_frame_dataLength  ), //i
    .io_configFrame_stop          (io_config_frame_stop        ), //i
    .io_configFrame_parity        (io_config_frame_parity      ), //i
    .io_samplingTick              (clockDivider_tick           ), //i
    .io_read_valid                (rx_io_read_valid            ), //o
    .io_read_ready                (io_read_ready               ), //i
    .io_read_payload              (rx_io_read_payload          ), //o
    .io_rxd                       (io_uart_rxd                 ), //i
    .io_rts                       (rx_io_rts                   ), //o
    .io_error                     (rx_io_error                 ), //o
    .io_break                     (rx_io_break                 ), //o
    .io_axiClk                    (io_axiClk                   ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset          )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_config_frame_stop)
      `UartStopType_binary_sequential_ONE : io_config_frame_stop_string = "ONE";
      `UartStopType_binary_sequential_TWO : io_config_frame_stop_string = "TWO";
      default : io_config_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_config_frame_parity)
      `UartParityType_binary_sequential_NONE : io_config_frame_parity_string = "NONE";
      `UartParityType_binary_sequential_EVEN : io_config_frame_parity_string = "EVEN";
      `UartParityType_binary_sequential_ODD : io_config_frame_parity_string = "ODD ";
      default : io_config_frame_parity_string = "????";
    endcase
  end
  `endif

  assign clockDivider_tick = (clockDivider_counter == 20'h0);
  always @(*) begin
    io_write_thrown_valid = io_write_valid;
    if(rx_io_break) begin
      io_write_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    io_write_ready = io_write_thrown_ready;
    if(rx_io_break) begin
      io_write_ready = 1'b1;
    end
  end

  assign io_write_thrown_payload = io_write_payload;
  assign io_write_thrown_ready = tx_io_write_ready;
  assign io_read_valid = rx_io_read_valid;
  assign io_read_payload = rx_io_read_payload;
  assign io_uart_txd = tx_io_txd;
  assign io_readError = rx_io_error;
  assign io_readBreak = rx_io_break;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      clockDivider_counter <= 20'h0;
    end else begin
      clockDivider_counter <= (clockDivider_counter - 20'h00001);
      if(clockDivider_tick) begin
        clockDivider_counter <= io_config_clockDivider;
      end
    end
  end


endmodule

module InterruptCtrl (
  input      [3:0]    io_inputs,
  input      [3:0]    io_clears,
  input      [3:0]    io_masks,
  output     [3:0]    io_pendings,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [3:0]    pendings;

  assign io_pendings = (pendings & io_masks);
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      pendings <= 4'b0000;
    end else begin
      pendings <= ((pendings & (~ io_clears)) | io_inputs);
    end
  end


endmodule

//Timer_1 replaced by Timer_1

//Timer_1 replaced by Timer_1

module Timer_1 (
  input               io_tick,
  input               io_clear,
  input      [15:0]   io_limit,
  output              io_full,
  output     [15:0]   io_value,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [15:0]   _zz_counter;
  wire       [0:0]    _zz_counter_1;
  reg        [15:0]   counter;
  wire                limitHit;
  reg                 inhibitFull;

  assign _zz_counter_1 = (! limitHit);
  assign _zz_counter = {15'd0, _zz_counter_1};
  assign limitHit = (counter == io_limit);
  assign io_full = ((limitHit && io_tick) && (! inhibitFull));
  assign io_value = counter;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      inhibitFull <= 1'b0;
    end else begin
      if(io_tick) begin
        inhibitFull <= limitHit;
      end
      if(io_clear) begin
        inhibitFull <= 1'b0;
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(io_tick) begin
      counter <= (counter + _zz_counter);
    end
    if(io_clear) begin
      counter <= 16'h0;
    end
  end


endmodule

module Timer (
  input               io_tick,
  input               io_clear,
  input      [31:0]   io_limit,
  output              io_full,
  output     [31:0]   io_value,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [31:0]   _zz_counter;
  wire       [0:0]    _zz_counter_1;
  reg        [31:0]   counter;
  wire                limitHit;
  reg                 inhibitFull;

  assign _zz_counter_1 = (! limitHit);
  assign _zz_counter = {31'd0, _zz_counter_1};
  assign limitHit = (counter == io_limit);
  assign io_full = ((limitHit && io_tick) && (! inhibitFull));
  assign io_value = counter;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      inhibitFull <= 1'b0;
    end else begin
      if(io_tick) begin
        inhibitFull <= limitHit;
      end
      if(io_clear) begin
        inhibitFull <= 1'b0;
      end
    end
  end

  always @(posedge io_axiClk) begin
    if(io_tick) begin
      counter <= (counter + _zz_counter);
    end
    if(io_clear) begin
      counter <= 32'h0;
    end
  end


endmodule

module Prescaler (
  input               io_clear,
  input      [15:0]   io_limit,
  output              io_overflow,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [15:0]   counter;
  wire                when_Prescaler_l17;

  assign when_Prescaler_l17 = (io_clear || io_overflow);
  assign io_overflow = (counter == io_limit);
  always @(posedge io_axiClk) begin
    counter <= (counter + 16'h0001);
    if(when_Prescaler_l17) begin
      counter <= 16'h0;
    end
  end


endmodule

module BufferCC_3 (
  input               io_dataIn_clear,
  input               io_dataIn_tick,
  output              io_dataOut_clear,
  output              io_dataOut_tick,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  (* async_reg = "true" *) reg                 buffers_0_clear;
  (* async_reg = "true" *) reg                 buffers_0_tick;
  (* async_reg = "true" *) reg                 buffers_1_clear;
  (* async_reg = "true" *) reg                 buffers_1_tick;

  assign io_dataOut_clear = buffers_1_clear;
  assign io_dataOut_tick = buffers_1_tick;
  always @(posedge io_axiClk) begin
    buffers_0_clear <= io_dataIn_clear;
    buffers_0_tick <= io_dataIn_tick;
    buffers_1_clear <= buffers_0_clear;
    buffers_1_tick <= buffers_0_tick;
  end


endmodule

module SdramCtrl (
  input               io_bus_cmd_valid,
  output reg          io_bus_cmd_ready,
  input      [23:0]   io_bus_cmd_payload_address,
  input               io_bus_cmd_payload_write,
  input      [15:0]   io_bus_cmd_payload_data,
  input      [1:0]    io_bus_cmd_payload_mask,
  input      [3:0]    io_bus_cmd_payload_context_id,
  input               io_bus_cmd_payload_context_last,
  output              io_bus_rsp_valid,
  input               io_bus_rsp_ready,
  output     [15:0]   io_bus_rsp_payload_data,
  output     [3:0]    io_bus_rsp_payload_context_id,
  output              io_bus_rsp_payload_context_last,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                chip_backupIn_fifo_io_push_ready;
  wire                chip_backupIn_fifo_io_pop_valid;
  wire       [15:0]   chip_backupIn_fifo_io_pop_payload_data;
  wire       [3:0]    chip_backupIn_fifo_io_pop_payload_context_id;
  wire                chip_backupIn_fifo_io_pop_payload_context_last;
  wire       [1:0]    chip_backupIn_fifo_io_occupancy;
  wire       [9:0]    _zz_refresh_counter_valueNext;
  wire       [0:0]    _zz_refresh_counter_valueNext_1;
  wire       [2:0]    _zz_frontend_bootRefreshCounter_valueNext;
  wire       [0:0]    _zz_frontend_bootRefreshCounter_valueNext_1;
  reg                 _zz__zz_when_SdramCtrl_l224;
  reg        [12:0]   _zz_when_SdramCtrl_l224_1;
  reg                 _zz_bubbleInserter_insertBubble;
  reg                 _zz_bubbleInserter_insertBubble_1;
  wire                refresh_counter_willIncrement;
  wire                refresh_counter_willClear;
  reg        [9:0]    refresh_counter_valueNext;
  reg        [9:0]    refresh_counter_value;
  wire                refresh_counter_willOverflowIfInc;
  wire                refresh_counter_willOverflow;
  reg                 refresh_pending;
  reg        [14:0]   powerup_counter;
  reg                 powerup_done;
  wire                when_SdramCtrl_l146;
  wire       [14:0]   _zz_when_SdramCtrl_l148;
  wire                when_SdramCtrl_l148;
  reg                 frontend_banks_0_active;
  reg        [12:0]   frontend_banks_0_row;
  reg                 frontend_banks_1_active;
  reg        [12:0]   frontend_banks_1_row;
  reg                 frontend_banks_2_active;
  reg        [12:0]   frontend_banks_2_row;
  reg                 frontend_banks_3_active;
  reg        [12:0]   frontend_banks_3_row;
  wire       [8:0]    frontend_address_column;
  wire       [1:0]    frontend_address_bank;
  wire       [12:0]   frontend_address_row;
  wire       [23:0]   _zz_frontend_address_column;
  reg                 frontend_rsp_valid;
  reg                 frontend_rsp_ready;
  reg        `SdramCtrlBackendTask_binary_sequential_type frontend_rsp_payload_task;
  wire       [1:0]    frontend_rsp_payload_bank;
  reg        [12:0]   frontend_rsp_payload_rowColumn;
  wire       [15:0]   frontend_rsp_payload_data;
  wire       [1:0]    frontend_rsp_payload_mask;
  wire       [3:0]    frontend_rsp_payload_context_id;
  wire                frontend_rsp_payload_context_last;
  reg        `SdramCtrlFrontendState_binary_sequential_type frontend_state;
  reg                 frontend_bootRefreshCounter_willIncrement;
  wire                frontend_bootRefreshCounter_willClear;
  reg        [2:0]    frontend_bootRefreshCounter_valueNext;
  reg        [2:0]    frontend_bootRefreshCounter_value;
  wire                frontend_bootRefreshCounter_willOverflowIfInc;
  wire                frontend_bootRefreshCounter_willOverflow;
  wire                when_SdramCtrl_l210;
  wire                _zz_when_SdramCtrl_l224;
  wire       [3:0]    _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire                when_SdramCtrl_l224;
  wire                when_SdramCtrl_l229;
  wire                frontend_rsp_cmd_valid;
  wire                frontend_rsp_cmd_ready;
  wire       `SdramCtrlBackendTask_binary_sequential_type frontend_rsp_cmd_payload_task;
  wire       [1:0]    frontend_rsp_cmd_payload_bank;
  wire       [12:0]   frontend_rsp_cmd_payload_rowColumn;
  wire       [15:0]   frontend_rsp_cmd_payload_data;
  wire       [1:0]    frontend_rsp_cmd_payload_mask;
  wire       [3:0]    frontend_rsp_cmd_payload_context_id;
  wire                frontend_rsp_cmd_payload_context_last;
  reg                 frontend_rsp_rValid;
  reg        `SdramCtrlBackendTask_binary_sequential_type frontend_rsp_rData_task;
  reg        [1:0]    frontend_rsp_rData_bank;
  reg        [12:0]   frontend_rsp_rData_rowColumn;
  reg        [15:0]   frontend_rsp_rData_data;
  reg        [1:0]    frontend_rsp_rData_mask;
  reg        [3:0]    frontend_rsp_rData_context_id;
  reg                 frontend_rsp_rData_context_last;
  wire                when_Stream_l342;
  wire                bubbleInserter_rsp_valid;
  wire                bubbleInserter_rsp_ready;
  wire       `SdramCtrlBackendTask_binary_sequential_type bubbleInserter_rsp_payload_task;
  wire       [1:0]    bubbleInserter_rsp_payload_bank;
  wire       [12:0]   bubbleInserter_rsp_payload_rowColumn;
  wire       [15:0]   bubbleInserter_rsp_payload_data;
  wire       [1:0]    bubbleInserter_rsp_payload_mask;
  wire       [3:0]    bubbleInserter_rsp_payload_context_id;
  wire                bubbleInserter_rsp_payload_context_last;
  reg                 bubbleInserter_insertBubble;
  wire                _zz_frontend_rsp_cmd_ready;
  wire       `SdramCtrlBackendTask_binary_sequential_type _zz_bubbleInserter_rsp_payload_task;
  reg        [0:0]    bubbleInserter_timings_read_counter;
  wire                bubbleInserter_timings_read_busy;
  wire                when_SdramCtrl_l256;
  reg        [2:0]    bubbleInserter_timings_write_counter;
  wire                bubbleInserter_timings_write_busy;
  wire                when_SdramCtrl_l256_1;
  reg        [2:0]    bubbleInserter_timings_banks_0_precharge_counter;
  wire                bubbleInserter_timings_banks_0_precharge_busy;
  wire                when_SdramCtrl_l256_2;
  reg        [2:0]    bubbleInserter_timings_banks_0_active_counter;
  wire                bubbleInserter_timings_banks_0_active_busy;
  wire                when_SdramCtrl_l256_3;
  reg        [2:0]    bubbleInserter_timings_banks_1_precharge_counter;
  wire                bubbleInserter_timings_banks_1_precharge_busy;
  wire                when_SdramCtrl_l256_4;
  reg        [2:0]    bubbleInserter_timings_banks_1_active_counter;
  wire                bubbleInserter_timings_banks_1_active_busy;
  wire                when_SdramCtrl_l256_5;
  reg        [2:0]    bubbleInserter_timings_banks_2_precharge_counter;
  wire                bubbleInserter_timings_banks_2_precharge_busy;
  wire                when_SdramCtrl_l256_6;
  reg        [2:0]    bubbleInserter_timings_banks_2_active_counter;
  wire                bubbleInserter_timings_banks_2_active_busy;
  wire                when_SdramCtrl_l256_7;
  reg        [2:0]    bubbleInserter_timings_banks_3_precharge_counter;
  wire                bubbleInserter_timings_banks_3_precharge_busy;
  wire                when_SdramCtrl_l256_8;
  reg        [2:0]    bubbleInserter_timings_banks_3_active_counter;
  wire                bubbleInserter_timings_banks_3_active_busy;
  wire                when_SdramCtrl_l256_9;
  wire                when_SdramCtrl_l265;
  wire                when_SdramCtrl_l265_1;
  wire                when_SdramCtrl_l265_2;
  wire                when_SdramCtrl_l265_3;
  wire                when_SdramCtrl_l265_4;
  wire                when_Utils_l762;
  wire                when_SdramCtrl_l265_5;
  wire                when_Utils_l762_1;
  wire                when_SdramCtrl_l265_6;
  wire                when_Utils_l762_2;
  wire                when_SdramCtrl_l265_7;
  wire                when_Utils_l762_3;
  wire                when_SdramCtrl_l265_8;
  wire                when_SdramCtrl_l265_9;
  wire                when_SdramCtrl_l265_10;
  wire                when_SdramCtrl_l265_11;
  wire                when_SdramCtrl_l265_12;
  wire                when_SdramCtrl_l265_13;
  wire                when_Utils_l762_4;
  wire                when_SdramCtrl_l265_14;
  wire                when_Utils_l762_5;
  wire                when_SdramCtrl_l265_15;
  wire                when_Utils_l762_6;
  wire                when_SdramCtrl_l265_16;
  wire                when_Utils_l762_7;
  wire                when_SdramCtrl_l265_17;
  wire                when_Utils_l762_8;
  wire                when_SdramCtrl_l265_18;
  wire                when_Utils_l762_9;
  wire                when_SdramCtrl_l265_19;
  wire                when_Utils_l762_10;
  wire                when_SdramCtrl_l265_20;
  wire                when_Utils_l762_11;
  wire                when_SdramCtrl_l265_21;
  wire                when_SdramCtrl_l265_22;
  wire                when_Utils_l762_12;
  wire                when_SdramCtrl_l265_23;
  wire                when_Utils_l762_13;
  wire                when_SdramCtrl_l265_24;
  wire                when_Utils_l762_14;
  wire                when_SdramCtrl_l265_25;
  wire                when_Utils_l762_15;
  wire                when_SdramCtrl_l265_26;
  wire                chip_cmd_valid;
  wire                chip_cmd_ready;
  wire       `SdramCtrlBackendTask_binary_sequential_type chip_cmd_payload_task;
  wire       [1:0]    chip_cmd_payload_bank;
  wire       [12:0]   chip_cmd_payload_rowColumn;
  wire       [15:0]   chip_cmd_payload_data;
  wire       [1:0]    chip_cmd_payload_mask;
  wire       [3:0]    chip_cmd_payload_context_id;
  wire                chip_cmd_payload_context_last;
  reg        [12:0]   chip_sdram_ADDR;
  reg        [1:0]    chip_sdram_BA;
  reg        [15:0]   chip_sdram_DQ_read;
  reg        [15:0]   chip_sdram_DQ_write;
  reg        [15:0]   chip_sdram_DQ_writeEnable;
  reg        [1:0]    chip_sdram_DQM;
  reg                 chip_sdram_CASn;
  reg                 chip_sdram_CKE;
  reg                 chip_sdram_CSn;
  reg                 chip_sdram_RASn;
  reg                 chip_sdram_WEn;
  wire                chip_remoteCke;
  wire                chip_readHistory_0;
  wire                chip_readHistory_1;
  wire                chip_readHistory_2;
  wire                chip_readHistory_3;
  wire                chip_readHistory_4;
  wire                chip_readHistory_5;
  wire                _zz_chip_readHistory_0;
  reg                 _zz_chip_readHistory_1;
  reg                 _zz_chip_readHistory_2;
  reg                 _zz_chip_readHistory_3;
  reg                 _zz_chip_readHistory_4;
  reg                 _zz_chip_readHistory_5;
  reg        [3:0]    chip_cmd_payload_context_delay_1_id;
  reg                 chip_cmd_payload_context_delay_1_last;
  reg        [3:0]    chip_cmd_payload_context_delay_2_id;
  reg                 chip_cmd_payload_context_delay_2_last;
  reg        [3:0]    chip_cmd_payload_context_delay_3_id;
  reg                 chip_cmd_payload_context_delay_3_last;
  reg        [3:0]    chip_cmd_payload_context_delay_4_id;
  reg                 chip_cmd_payload_context_delay_4_last;
  reg        [3:0]    chip_contextDelayed_id;
  reg                 chip_contextDelayed_last;
  wire                chip_sdramCkeNext;
  reg                 chip_sdramCkeInternal;
  reg                 chip_sdramCkeInternal_regNext;
  wire                _zz_chip_sdram_DQM;
  wire                chip_backupIn_valid;
  wire                chip_backupIn_ready;
  wire       [15:0]   chip_backupIn_payload_data;
  wire       [3:0]    chip_backupIn_payload_context_id;
  wire                chip_backupIn_payload_context_last;
  `ifndef SYNTHESIS
  reg [127:0] frontend_rsp_payload_task_string;
  reg [111:0] frontend_state_string;
  reg [127:0] frontend_rsp_cmd_payload_task_string;
  reg [127:0] frontend_rsp_rData_task_string;
  reg [127:0] bubbleInserter_rsp_payload_task_string;
  reg [127:0] _zz_bubbleInserter_rsp_payload_task_string;
  reg [127:0] chip_cmd_payload_task_string;
  `endif


  assign _zz_refresh_counter_valueNext_1 = refresh_counter_willIncrement;
  assign _zz_refresh_counter_valueNext = {9'd0, _zz_refresh_counter_valueNext_1};
  assign _zz_frontend_bootRefreshCounter_valueNext_1 = frontend_bootRefreshCounter_willIncrement;
  assign _zz_frontend_bootRefreshCounter_valueNext = {2'd0, _zz_frontend_bootRefreshCounter_valueNext_1};
  StreamFifoLowLatency chip_backupIn_fifo (
    .io_push_valid                   (chip_backupIn_valid                             ), //i
    .io_push_ready                   (chip_backupIn_fifo_io_push_ready                ), //o
    .io_push_payload_data            (chip_backupIn_payload_data                      ), //i
    .io_push_payload_context_id      (chip_backupIn_payload_context_id                ), //i
    .io_push_payload_context_last    (chip_backupIn_payload_context_last              ), //i
    .io_pop_valid                    (chip_backupIn_fifo_io_pop_valid                 ), //o
    .io_pop_ready                    (io_bus_rsp_ready                                ), //i
    .io_pop_payload_data             (chip_backupIn_fifo_io_pop_payload_data          ), //o
    .io_pop_payload_context_id       (chip_backupIn_fifo_io_pop_payload_context_id    ), //o
    .io_pop_payload_context_last     (chip_backupIn_fifo_io_pop_payload_context_last  ), //o
    .io_flush                        (1'b0                                            ), //i
    .io_occupancy                    (chip_backupIn_fifo_io_occupancy                 ), //o
    .io_axiClk                       (io_axiClk                                       ), //i
    .resetCtrl_axiReset              (resetCtrl_axiReset                              )  //i
  );
  always @(*) begin
    case(frontend_address_bank)
      2'b00 : begin
        _zz__zz_when_SdramCtrl_l224 = frontend_banks_0_active;
        _zz_when_SdramCtrl_l224_1 = frontend_banks_0_row;
      end
      2'b01 : begin
        _zz__zz_when_SdramCtrl_l224 = frontend_banks_1_active;
        _zz_when_SdramCtrl_l224_1 = frontend_banks_1_row;
      end
      2'b10 : begin
        _zz__zz_when_SdramCtrl_l224 = frontend_banks_2_active;
        _zz_when_SdramCtrl_l224_1 = frontend_banks_2_row;
      end
      default : begin
        _zz__zz_when_SdramCtrl_l224 = frontend_banks_3_active;
        _zz_when_SdramCtrl_l224_1 = frontend_banks_3_row;
      end
    endcase
  end

  always @(*) begin
    case(frontend_rsp_cmd_payload_bank)
      2'b00 : begin
        _zz_bubbleInserter_insertBubble = bubbleInserter_timings_banks_0_precharge_busy;
        _zz_bubbleInserter_insertBubble_1 = bubbleInserter_timings_banks_0_active_busy;
      end
      2'b01 : begin
        _zz_bubbleInserter_insertBubble = bubbleInserter_timings_banks_1_precharge_busy;
        _zz_bubbleInserter_insertBubble_1 = bubbleInserter_timings_banks_1_active_busy;
      end
      2'b10 : begin
        _zz_bubbleInserter_insertBubble = bubbleInserter_timings_banks_2_precharge_busy;
        _zz_bubbleInserter_insertBubble_1 = bubbleInserter_timings_banks_2_active_busy;
      end
      default : begin
        _zz_bubbleInserter_insertBubble = bubbleInserter_timings_banks_3_precharge_busy;
        _zz_bubbleInserter_insertBubble_1 = bubbleInserter_timings_banks_3_active_busy;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(frontend_rsp_payload_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : frontend_rsp_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : frontend_rsp_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : frontend_rsp_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : frontend_rsp_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : frontend_rsp_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : frontend_rsp_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : frontend_rsp_payload_task_string = "WRITE           ";
      default : frontend_rsp_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : frontend_state_string = "BOOT_PRECHARGE";
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : frontend_state_string = "BOOT_REFRESH  ";
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : frontend_state_string = "BOOT_MODE     ";
      `SdramCtrlFrontendState_binary_sequential_RUN : frontend_state_string = "RUN           ";
      default : frontend_state_string = "??????????????";
    endcase
  end
  always @(*) begin
    case(frontend_rsp_cmd_payload_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : frontend_rsp_cmd_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : frontend_rsp_cmd_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : frontend_rsp_cmd_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : frontend_rsp_cmd_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : frontend_rsp_cmd_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : frontend_rsp_cmd_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : frontend_rsp_cmd_payload_task_string = "WRITE           ";
      default : frontend_rsp_cmd_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(frontend_rsp_rData_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : frontend_rsp_rData_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : frontend_rsp_rData_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : frontend_rsp_rData_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : frontend_rsp_rData_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : frontend_rsp_rData_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : frontend_rsp_rData_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : frontend_rsp_rData_task_string = "WRITE           ";
      default : frontend_rsp_rData_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(bubbleInserter_rsp_payload_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : bubbleInserter_rsp_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : bubbleInserter_rsp_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : bubbleInserter_rsp_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : bubbleInserter_rsp_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : bubbleInserter_rsp_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : bubbleInserter_rsp_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : bubbleInserter_rsp_payload_task_string = "WRITE           ";
      default : bubbleInserter_rsp_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(_zz_bubbleInserter_rsp_payload_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : _zz_bubbleInserter_rsp_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : _zz_bubbleInserter_rsp_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : _zz_bubbleInserter_rsp_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : _zz_bubbleInserter_rsp_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : _zz_bubbleInserter_rsp_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : _zz_bubbleInserter_rsp_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : _zz_bubbleInserter_rsp_payload_task_string = "WRITE           ";
      default : _zz_bubbleInserter_rsp_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(chip_cmd_payload_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : chip_cmd_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : chip_cmd_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : chip_cmd_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : chip_cmd_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : chip_cmd_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : chip_cmd_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : chip_cmd_payload_task_string = "WRITE           ";
      default : chip_cmd_payload_task_string = "????????????????";
    endcase
  end
  `endif

  assign refresh_counter_willClear = 1'b0;
  assign refresh_counter_willOverflowIfInc = (refresh_counter_value == 10'h30d);
  assign refresh_counter_willOverflow = (refresh_counter_willOverflowIfInc && refresh_counter_willIncrement);
  always @(*) begin
    if(refresh_counter_willOverflow) begin
      refresh_counter_valueNext = 10'h0;
    end else begin
      refresh_counter_valueNext = (refresh_counter_value + _zz_refresh_counter_valueNext);
    end
    if(refresh_counter_willClear) begin
      refresh_counter_valueNext = 10'h0;
    end
  end

  assign refresh_counter_willIncrement = 1'b1;
  assign when_SdramCtrl_l146 = (! powerup_done);
  assign _zz_when_SdramCtrl_l148[14 : 0] = 15'h7fff;
  assign when_SdramCtrl_l148 = (powerup_counter == _zz_when_SdramCtrl_l148);
  assign _zz_frontend_address_column = io_bus_cmd_payload_address;
  assign frontend_address_column = _zz_frontend_address_column[8 : 0];
  assign frontend_address_bank = _zz_frontend_address_column[10 : 9];
  assign frontend_address_row = _zz_frontend_address_column[23 : 11];
  always @(*) begin
    frontend_rsp_valid = 1'b0;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
        if(powerup_done) begin
          frontend_rsp_valid = 1'b1;
        end
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
        frontend_rsp_valid = 1'b1;
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
        frontend_rsp_valid = 1'b1;
      end
      default : begin
        if(refresh_pending) begin
          frontend_rsp_valid = 1'b1;
        end else begin
          if(io_bus_cmd_valid) begin
            frontend_rsp_valid = 1'b1;
          end
        end
      end
    endcase
  end

  always @(*) begin
    frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_REFRESH;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
        frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL;
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
        frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_REFRESH;
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
        frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_MODE;
      end
      default : begin
        if(refresh_pending) begin
          if(when_SdramCtrl_l210) begin
            frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL;
          end else begin
            frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_REFRESH;
          end
        end else begin
          if(io_bus_cmd_valid) begin
            if(when_SdramCtrl_l224) begin
              frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE;
            end else begin
              if(when_SdramCtrl_l229) begin
                frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_ACTIVE;
              end else begin
                frontend_rsp_payload_task = (io_bus_cmd_payload_write ? `SdramCtrlBackendTask_binary_sequential_WRITE : `SdramCtrlBackendTask_binary_sequential_READ);
              end
            end
          end
        end
      end
    endcase
  end

  assign frontend_rsp_payload_bank = frontend_address_bank;
  always @(*) begin
    frontend_rsp_payload_rowColumn = frontend_address_row;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
      end
      default : begin
        if(!refresh_pending) begin
          if(io_bus_cmd_valid) begin
            if(!when_SdramCtrl_l224) begin
              if(!when_SdramCtrl_l229) begin
                frontend_rsp_payload_rowColumn = {4'd0, frontend_address_column};
              end
            end
          end
        end
      end
    endcase
  end

  assign frontend_rsp_payload_data = io_bus_cmd_payload_data;
  assign frontend_rsp_payload_mask = io_bus_cmd_payload_mask;
  assign frontend_rsp_payload_context_id = io_bus_cmd_payload_context_id;
  assign frontend_rsp_payload_context_last = io_bus_cmd_payload_context_last;
  always @(*) begin
    io_bus_cmd_ready = 1'b0;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
      end
      default : begin
        if(!refresh_pending) begin
          if(io_bus_cmd_valid) begin
            if(!when_SdramCtrl_l224) begin
              if(!when_SdramCtrl_l229) begin
                io_bus_cmd_ready = frontend_rsp_ready;
              end
            end
          end
        end
      end
    endcase
  end

  always @(*) begin
    frontend_bootRefreshCounter_willIncrement = 1'b0;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
        if(frontend_rsp_ready) begin
          frontend_bootRefreshCounter_willIncrement = 1'b1;
        end
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
      end
      default : begin
      end
    endcase
  end

  assign frontend_bootRefreshCounter_willClear = 1'b0;
  assign frontend_bootRefreshCounter_willOverflowIfInc = (frontend_bootRefreshCounter_value == 3'b111);
  assign frontend_bootRefreshCounter_willOverflow = (frontend_bootRefreshCounter_willOverflowIfInc && frontend_bootRefreshCounter_willIncrement);
  always @(*) begin
    frontend_bootRefreshCounter_valueNext = (frontend_bootRefreshCounter_value + _zz_frontend_bootRefreshCounter_valueNext);
    if(frontend_bootRefreshCounter_willClear) begin
      frontend_bootRefreshCounter_valueNext = 3'b000;
    end
  end

  assign when_SdramCtrl_l210 = (((frontend_banks_0_active || frontend_banks_1_active) || frontend_banks_2_active) || frontend_banks_3_active);
  assign _zz_when_SdramCtrl_l224 = _zz__zz_when_SdramCtrl_l224;
  assign _zz_1 = ({3'd0,1'b1} <<< frontend_address_bank);
  assign _zz_2 = _zz_1[0];
  assign _zz_3 = _zz_1[1];
  assign _zz_4 = _zz_1[2];
  assign _zz_5 = _zz_1[3];
  assign when_SdramCtrl_l224 = (_zz_when_SdramCtrl_l224 && (_zz_when_SdramCtrl_l224_1 != frontend_address_row));
  assign when_SdramCtrl_l229 = (! _zz_when_SdramCtrl_l224);
  always @(*) begin
    frontend_rsp_ready = frontend_rsp_cmd_ready;
    if(when_Stream_l342) begin
      frontend_rsp_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! frontend_rsp_cmd_valid);
  assign frontend_rsp_cmd_valid = frontend_rsp_rValid;
  assign frontend_rsp_cmd_payload_task = frontend_rsp_rData_task;
  assign frontend_rsp_cmd_payload_bank = frontend_rsp_rData_bank;
  assign frontend_rsp_cmd_payload_rowColumn = frontend_rsp_rData_rowColumn;
  assign frontend_rsp_cmd_payload_data = frontend_rsp_rData_data;
  assign frontend_rsp_cmd_payload_mask = frontend_rsp_rData_mask;
  assign frontend_rsp_cmd_payload_context_id = frontend_rsp_rData_context_id;
  assign frontend_rsp_cmd_payload_context_last = frontend_rsp_rData_context_last;
  always @(*) begin
    bubbleInserter_insertBubble = 1'b0;
    if(frontend_rsp_cmd_valid) begin
      case(frontend_rsp_cmd_payload_task)
        `SdramCtrlBackendTask_binary_sequential_MODE : begin
          bubbleInserter_insertBubble = bubbleInserter_timings_banks_0_active_busy;
        end
        `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : begin
          bubbleInserter_insertBubble = ({bubbleInserter_timings_banks_3_precharge_busy,{bubbleInserter_timings_banks_2_precharge_busy,{bubbleInserter_timings_banks_1_precharge_busy,bubbleInserter_timings_banks_0_precharge_busy}}} != 4'b0000);
        end
        `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : begin
          bubbleInserter_insertBubble = _zz_bubbleInserter_insertBubble;
        end
        `SdramCtrlBackendTask_binary_sequential_REFRESH : begin
          bubbleInserter_insertBubble = ({bubbleInserter_timings_banks_3_active_busy,{bubbleInserter_timings_banks_2_active_busy,{bubbleInserter_timings_banks_1_active_busy,bubbleInserter_timings_banks_0_active_busy}}} != 4'b0000);
        end
        `SdramCtrlBackendTask_binary_sequential_ACTIVE : begin
          bubbleInserter_insertBubble = _zz_bubbleInserter_insertBubble_1;
        end
        `SdramCtrlBackendTask_binary_sequential_READ : begin
          bubbleInserter_insertBubble = bubbleInserter_timings_read_busy;
        end
        default : begin
          bubbleInserter_insertBubble = bubbleInserter_timings_write_busy;
        end
      endcase
    end
  end

  assign _zz_frontend_rsp_cmd_ready = (! bubbleInserter_insertBubble);
  assign frontend_rsp_cmd_ready = (bubbleInserter_rsp_ready && _zz_frontend_rsp_cmd_ready);
  assign _zz_bubbleInserter_rsp_payload_task = frontend_rsp_cmd_payload_task;
  assign bubbleInserter_rsp_valid = (frontend_rsp_cmd_valid && _zz_frontend_rsp_cmd_ready);
  assign bubbleInserter_rsp_payload_task = _zz_bubbleInserter_rsp_payload_task;
  assign bubbleInserter_rsp_payload_bank = frontend_rsp_cmd_payload_bank;
  assign bubbleInserter_rsp_payload_rowColumn = frontend_rsp_cmd_payload_rowColumn;
  assign bubbleInserter_rsp_payload_data = frontend_rsp_cmd_payload_data;
  assign bubbleInserter_rsp_payload_mask = frontend_rsp_cmd_payload_mask;
  assign bubbleInserter_rsp_payload_context_id = frontend_rsp_cmd_payload_context_id;
  assign bubbleInserter_rsp_payload_context_last = frontend_rsp_cmd_payload_context_last;
  assign bubbleInserter_timings_read_busy = (bubbleInserter_timings_read_counter != 1'b0);
  assign when_SdramCtrl_l256 = (bubbleInserter_timings_read_busy && bubbleInserter_rsp_ready);
  assign bubbleInserter_timings_write_busy = (bubbleInserter_timings_write_counter != 3'b000);
  assign when_SdramCtrl_l256_1 = (bubbleInserter_timings_write_busy && bubbleInserter_rsp_ready);
  assign bubbleInserter_timings_banks_0_precharge_busy = (bubbleInserter_timings_banks_0_precharge_counter != 3'b000);
  assign when_SdramCtrl_l256_2 = (bubbleInserter_timings_banks_0_precharge_busy && bubbleInserter_rsp_ready);
  assign bubbleInserter_timings_banks_0_active_busy = (bubbleInserter_timings_banks_0_active_counter != 3'b000);
  assign when_SdramCtrl_l256_3 = (bubbleInserter_timings_banks_0_active_busy && bubbleInserter_rsp_ready);
  assign bubbleInserter_timings_banks_1_precharge_busy = (bubbleInserter_timings_banks_1_precharge_counter != 3'b000);
  assign when_SdramCtrl_l256_4 = (bubbleInserter_timings_banks_1_precharge_busy && bubbleInserter_rsp_ready);
  assign bubbleInserter_timings_banks_1_active_busy = (bubbleInserter_timings_banks_1_active_counter != 3'b000);
  assign when_SdramCtrl_l256_5 = (bubbleInserter_timings_banks_1_active_busy && bubbleInserter_rsp_ready);
  assign bubbleInserter_timings_banks_2_precharge_busy = (bubbleInserter_timings_banks_2_precharge_counter != 3'b000);
  assign when_SdramCtrl_l256_6 = (bubbleInserter_timings_banks_2_precharge_busy && bubbleInserter_rsp_ready);
  assign bubbleInserter_timings_banks_2_active_busy = (bubbleInserter_timings_banks_2_active_counter != 3'b000);
  assign when_SdramCtrl_l256_7 = (bubbleInserter_timings_banks_2_active_busy && bubbleInserter_rsp_ready);
  assign bubbleInserter_timings_banks_3_precharge_busy = (bubbleInserter_timings_banks_3_precharge_counter != 3'b000);
  assign when_SdramCtrl_l256_8 = (bubbleInserter_timings_banks_3_precharge_busy && bubbleInserter_rsp_ready);
  assign bubbleInserter_timings_banks_3_active_busy = (bubbleInserter_timings_banks_3_active_counter != 3'b000);
  assign when_SdramCtrl_l256_9 = (bubbleInserter_timings_banks_3_active_busy && bubbleInserter_rsp_ready);
  assign when_SdramCtrl_l265 = (bubbleInserter_timings_banks_0_active_counter <= 3'b001);
  assign when_SdramCtrl_l265_1 = (bubbleInserter_timings_banks_1_active_counter <= 3'b001);
  assign when_SdramCtrl_l265_2 = (bubbleInserter_timings_banks_2_active_counter <= 3'b001);
  assign when_SdramCtrl_l265_3 = (bubbleInserter_timings_banks_3_active_counter <= 3'b001);
  assign when_SdramCtrl_l265_4 = (bubbleInserter_timings_banks_0_active_counter <= 3'b001);
  assign when_Utils_l762 = (frontend_rsp_cmd_payload_bank == 2'b00);
  assign when_SdramCtrl_l265_5 = (bubbleInserter_timings_banks_0_active_counter <= 3'b001);
  assign when_Utils_l762_1 = (frontend_rsp_cmd_payload_bank == 2'b01);
  assign when_SdramCtrl_l265_6 = (bubbleInserter_timings_banks_1_active_counter <= 3'b001);
  assign when_Utils_l762_2 = (frontend_rsp_cmd_payload_bank == 2'b10);
  assign when_SdramCtrl_l265_7 = (bubbleInserter_timings_banks_2_active_counter <= 3'b001);
  assign when_Utils_l762_3 = (frontend_rsp_cmd_payload_bank == 2'b11);
  assign when_SdramCtrl_l265_8 = (bubbleInserter_timings_banks_3_active_counter <= 3'b001);
  assign when_SdramCtrl_l265_9 = (bubbleInserter_timings_banks_0_active_counter <= 3'b101);
  assign when_SdramCtrl_l265_10 = (bubbleInserter_timings_banks_1_active_counter <= 3'b101);
  assign when_SdramCtrl_l265_11 = (bubbleInserter_timings_banks_2_active_counter <= 3'b101);
  assign when_SdramCtrl_l265_12 = (bubbleInserter_timings_banks_3_active_counter <= 3'b101);
  assign when_SdramCtrl_l265_13 = (bubbleInserter_timings_write_counter <= 3'b001);
  assign when_Utils_l762_4 = (frontend_rsp_cmd_payload_bank == 2'b00);
  assign when_SdramCtrl_l265_14 = (bubbleInserter_timings_banks_0_precharge_counter <= 3'b100);
  assign when_Utils_l762_5 = (frontend_rsp_cmd_payload_bank == 2'b01);
  assign when_SdramCtrl_l265_15 = (bubbleInserter_timings_banks_1_precharge_counter <= 3'b100);
  assign when_Utils_l762_6 = (frontend_rsp_cmd_payload_bank == 2'b10);
  assign when_SdramCtrl_l265_16 = (bubbleInserter_timings_banks_2_precharge_counter <= 3'b100);
  assign when_Utils_l762_7 = (frontend_rsp_cmd_payload_bank == 2'b11);
  assign when_SdramCtrl_l265_17 = (bubbleInserter_timings_banks_3_precharge_counter <= 3'b100);
  assign when_Utils_l762_8 = (frontend_rsp_cmd_payload_bank == 2'b00);
  assign when_SdramCtrl_l265_18 = (bubbleInserter_timings_banks_0_active_counter <= 3'b101);
  assign when_Utils_l762_9 = (frontend_rsp_cmd_payload_bank == 2'b01);
  assign when_SdramCtrl_l265_19 = (bubbleInserter_timings_banks_1_active_counter <= 3'b101);
  assign when_Utils_l762_10 = (frontend_rsp_cmd_payload_bank == 2'b10);
  assign when_SdramCtrl_l265_20 = (bubbleInserter_timings_banks_2_active_counter <= 3'b101);
  assign when_Utils_l762_11 = (frontend_rsp_cmd_payload_bank == 2'b11);
  assign when_SdramCtrl_l265_21 = (bubbleInserter_timings_banks_3_active_counter <= 3'b101);
  assign when_SdramCtrl_l265_22 = (bubbleInserter_timings_write_counter <= 3'b100);
  assign when_Utils_l762_12 = (frontend_rsp_cmd_payload_bank == 2'b00);
  assign when_SdramCtrl_l265_23 = (bubbleInserter_timings_banks_0_precharge_counter <= 3'b001);
  assign when_Utils_l762_13 = (frontend_rsp_cmd_payload_bank == 2'b01);
  assign when_SdramCtrl_l265_24 = (bubbleInserter_timings_banks_1_precharge_counter <= 3'b001);
  assign when_Utils_l762_14 = (frontend_rsp_cmd_payload_bank == 2'b10);
  assign when_SdramCtrl_l265_25 = (bubbleInserter_timings_banks_2_precharge_counter <= 3'b001);
  assign when_Utils_l762_15 = (frontend_rsp_cmd_payload_bank == 2'b11);
  assign when_SdramCtrl_l265_26 = (bubbleInserter_timings_banks_3_precharge_counter <= 3'b001);
  assign chip_cmd_valid = bubbleInserter_rsp_valid;
  assign bubbleInserter_rsp_ready = chip_cmd_ready;
  assign chip_cmd_payload_task = bubbleInserter_rsp_payload_task;
  assign chip_cmd_payload_bank = bubbleInserter_rsp_payload_bank;
  assign chip_cmd_payload_rowColumn = bubbleInserter_rsp_payload_rowColumn;
  assign chip_cmd_payload_data = bubbleInserter_rsp_payload_data;
  assign chip_cmd_payload_mask = bubbleInserter_rsp_payload_mask;
  assign chip_cmd_payload_context_id = bubbleInserter_rsp_payload_context_id;
  assign chip_cmd_payload_context_last = bubbleInserter_rsp_payload_context_last;
  assign io_sdram_ADDR = chip_sdram_ADDR;
  assign io_sdram_BA = chip_sdram_BA;
  assign io_sdram_DQ_write = chip_sdram_DQ_write;
  assign io_sdram_DQ_writeEnable = chip_sdram_DQ_writeEnable;
  assign io_sdram_DQM = chip_sdram_DQM;
  assign io_sdram_CASn = chip_sdram_CASn;
  assign io_sdram_CKE = chip_sdram_CKE;
  assign io_sdram_CSn = chip_sdram_CSn;
  assign io_sdram_RASn = chip_sdram_RASn;
  assign io_sdram_WEn = chip_sdram_WEn;
  assign _zz_chip_readHistory_0 = (chip_cmd_valid && ((chip_cmd_payload_task == `SdramCtrlBackendTask_binary_sequential_READ) || 1'b0));
  assign chip_readHistory_0 = _zz_chip_readHistory_0;
  assign chip_readHistory_1 = _zz_chip_readHistory_1;
  assign chip_readHistory_2 = _zz_chip_readHistory_2;
  assign chip_readHistory_3 = _zz_chip_readHistory_3;
  assign chip_readHistory_4 = _zz_chip_readHistory_4;
  assign chip_readHistory_5 = _zz_chip_readHistory_5;
  assign chip_sdramCkeNext = (! (({chip_readHistory_5,{chip_readHistory_4,{chip_readHistory_3,{chip_readHistory_2,{chip_readHistory_1,chip_readHistory_0}}}}} != 6'h0) && (! io_bus_rsp_ready)));
  assign chip_remoteCke = chip_sdramCkeInternal_regNext;
  assign _zz_chip_sdram_DQM = (! chip_readHistory_1);
  assign chip_backupIn_valid = (chip_readHistory_5 && chip_remoteCke);
  assign chip_backupIn_payload_data = chip_sdram_DQ_read;
  assign chip_backupIn_payload_context_id = chip_contextDelayed_id;
  assign chip_backupIn_payload_context_last = chip_contextDelayed_last;
  assign chip_backupIn_ready = chip_backupIn_fifo_io_push_ready;
  assign io_bus_rsp_valid = chip_backupIn_fifo_io_pop_valid;
  assign io_bus_rsp_payload_data = chip_backupIn_fifo_io_pop_payload_data;
  assign io_bus_rsp_payload_context_id = chip_backupIn_fifo_io_pop_payload_context_id;
  assign io_bus_rsp_payload_context_last = chip_backupIn_fifo_io_pop_payload_context_last;
  assign chip_cmd_ready = chip_remoteCke;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      refresh_counter_value <= 10'h0;
      refresh_pending <= 1'b0;
      powerup_counter <= 15'h0;
      powerup_done <= 1'b0;
      frontend_banks_0_active <= 1'b0;
      frontend_banks_1_active <= 1'b0;
      frontend_banks_2_active <= 1'b0;
      frontend_banks_3_active <= 1'b0;
      frontend_state <= `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE;
      frontend_bootRefreshCounter_value <= 3'b000;
      frontend_rsp_rValid <= 1'b0;
      bubbleInserter_timings_read_counter <= 1'b0;
      bubbleInserter_timings_write_counter <= 3'b000;
      bubbleInserter_timings_banks_0_precharge_counter <= 3'b000;
      bubbleInserter_timings_banks_0_active_counter <= 3'b000;
      bubbleInserter_timings_banks_1_precharge_counter <= 3'b000;
      bubbleInserter_timings_banks_1_active_counter <= 3'b000;
      bubbleInserter_timings_banks_2_precharge_counter <= 3'b000;
      bubbleInserter_timings_banks_2_active_counter <= 3'b000;
      bubbleInserter_timings_banks_3_precharge_counter <= 3'b000;
      bubbleInserter_timings_banks_3_active_counter <= 3'b000;
      _zz_chip_readHistory_1 <= 1'b0;
      _zz_chip_readHistory_2 <= 1'b0;
      _zz_chip_readHistory_3 <= 1'b0;
      _zz_chip_readHistory_4 <= 1'b0;
      _zz_chip_readHistory_5 <= 1'b0;
      chip_sdramCkeInternal <= 1'b1;
      chip_sdramCkeInternal_regNext <= 1'b1;
    end else begin
      refresh_counter_value <= refresh_counter_valueNext;
      if(refresh_counter_willOverflow) begin
        refresh_pending <= 1'b1;
      end
      if(when_SdramCtrl_l146) begin
        powerup_counter <= (powerup_counter + 15'h0001);
        if(when_SdramCtrl_l148) begin
          powerup_done <= 1'b1;
        end
      end
      frontend_bootRefreshCounter_value <= frontend_bootRefreshCounter_valueNext;
      case(frontend_state)
        `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
          if(powerup_done) begin
            if(frontend_rsp_ready) begin
              frontend_state <= `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH;
            end
          end
        end
        `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
          if(frontend_rsp_ready) begin
            if(frontend_bootRefreshCounter_willOverflowIfInc) begin
              frontend_state <= `SdramCtrlFrontendState_binary_sequential_BOOT_MODE;
            end
          end
        end
        `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
          if(frontend_rsp_ready) begin
            frontend_state <= `SdramCtrlFrontendState_binary_sequential_RUN;
          end
        end
        default : begin
          if(refresh_pending) begin
            if(when_SdramCtrl_l210) begin
              if(frontend_rsp_ready) begin
                frontend_banks_0_active <= 1'b0;
                frontend_banks_1_active <= 1'b0;
                frontend_banks_2_active <= 1'b0;
                frontend_banks_3_active <= 1'b0;
              end
            end else begin
              if(frontend_rsp_ready) begin
                refresh_pending <= 1'b0;
              end
            end
          end else begin
            if(io_bus_cmd_valid) begin
              if(when_SdramCtrl_l224) begin
                if(frontend_rsp_ready) begin
                  if(_zz_2) begin
                    frontend_banks_0_active <= 1'b0;
                  end
                  if(_zz_3) begin
                    frontend_banks_1_active <= 1'b0;
                  end
                  if(_zz_4) begin
                    frontend_banks_2_active <= 1'b0;
                  end
                  if(_zz_5) begin
                    frontend_banks_3_active <= 1'b0;
                  end
                end
              end else begin
                if(when_SdramCtrl_l229) begin
                  if(frontend_rsp_ready) begin
                    if(_zz_2) begin
                      frontend_banks_0_active <= 1'b1;
                    end
                    if(_zz_3) begin
                      frontend_banks_1_active <= 1'b1;
                    end
                    if(_zz_4) begin
                      frontend_banks_2_active <= 1'b1;
                    end
                    if(_zz_5) begin
                      frontend_banks_3_active <= 1'b1;
                    end
                  end
                end
              end
            end
          end
        end
      endcase
      if(frontend_rsp_ready) begin
        frontend_rsp_rValid <= frontend_rsp_valid;
      end
      if(when_SdramCtrl_l256) begin
        bubbleInserter_timings_read_counter <= (bubbleInserter_timings_read_counter - 1'b1);
      end
      if(when_SdramCtrl_l256_1) begin
        bubbleInserter_timings_write_counter <= (bubbleInserter_timings_write_counter - 3'b001);
      end
      if(when_SdramCtrl_l256_2) begin
        bubbleInserter_timings_banks_0_precharge_counter <= (bubbleInserter_timings_banks_0_precharge_counter - 3'b001);
      end
      if(when_SdramCtrl_l256_3) begin
        bubbleInserter_timings_banks_0_active_counter <= (bubbleInserter_timings_banks_0_active_counter - 3'b001);
      end
      if(when_SdramCtrl_l256_4) begin
        bubbleInserter_timings_banks_1_precharge_counter <= (bubbleInserter_timings_banks_1_precharge_counter - 3'b001);
      end
      if(when_SdramCtrl_l256_5) begin
        bubbleInserter_timings_banks_1_active_counter <= (bubbleInserter_timings_banks_1_active_counter - 3'b001);
      end
      if(when_SdramCtrl_l256_6) begin
        bubbleInserter_timings_banks_2_precharge_counter <= (bubbleInserter_timings_banks_2_precharge_counter - 3'b001);
      end
      if(when_SdramCtrl_l256_7) begin
        bubbleInserter_timings_banks_2_active_counter <= (bubbleInserter_timings_banks_2_active_counter - 3'b001);
      end
      if(when_SdramCtrl_l256_8) begin
        bubbleInserter_timings_banks_3_precharge_counter <= (bubbleInserter_timings_banks_3_precharge_counter - 3'b001);
      end
      if(when_SdramCtrl_l256_9) begin
        bubbleInserter_timings_banks_3_active_counter <= (bubbleInserter_timings_banks_3_active_counter - 3'b001);
      end
      if(frontend_rsp_cmd_valid) begin
        case(frontend_rsp_cmd_payload_task)
          `SdramCtrlBackendTask_binary_sequential_MODE : begin
            if(frontend_rsp_cmd_ready) begin
              if(when_SdramCtrl_l265) begin
                bubbleInserter_timings_banks_0_active_counter <= 3'b001;
              end
              if(when_SdramCtrl_l265_1) begin
                bubbleInserter_timings_banks_1_active_counter <= 3'b001;
              end
              if(when_SdramCtrl_l265_2) begin
                bubbleInserter_timings_banks_2_active_counter <= 3'b001;
              end
              if(when_SdramCtrl_l265_3) begin
                bubbleInserter_timings_banks_3_active_counter <= 3'b001;
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : begin
            if(frontend_rsp_cmd_ready) begin
              if(when_SdramCtrl_l265_4) begin
                bubbleInserter_timings_banks_0_active_counter <= 3'b001;
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : begin
            if(frontend_rsp_cmd_ready) begin
              if(when_Utils_l762) begin
                if(when_SdramCtrl_l265_5) begin
                  bubbleInserter_timings_banks_0_active_counter <= 3'b001;
                end
              end
              if(when_Utils_l762_1) begin
                if(when_SdramCtrl_l265_6) begin
                  bubbleInserter_timings_banks_1_active_counter <= 3'b001;
                end
              end
              if(when_Utils_l762_2) begin
                if(when_SdramCtrl_l265_7) begin
                  bubbleInserter_timings_banks_2_active_counter <= 3'b001;
                end
              end
              if(when_Utils_l762_3) begin
                if(when_SdramCtrl_l265_8) begin
                  bubbleInserter_timings_banks_3_active_counter <= 3'b001;
                end
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_REFRESH : begin
            if(frontend_rsp_cmd_ready) begin
              if(when_SdramCtrl_l265_9) begin
                bubbleInserter_timings_banks_0_active_counter <= 3'b101;
              end
              if(when_SdramCtrl_l265_10) begin
                bubbleInserter_timings_banks_1_active_counter <= 3'b101;
              end
              if(when_SdramCtrl_l265_11) begin
                bubbleInserter_timings_banks_2_active_counter <= 3'b101;
              end
              if(when_SdramCtrl_l265_12) begin
                bubbleInserter_timings_banks_3_active_counter <= 3'b101;
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_ACTIVE : begin
            if(frontend_rsp_cmd_ready) begin
              if(when_SdramCtrl_l265_13) begin
                bubbleInserter_timings_write_counter <= 3'b001;
              end
              bubbleInserter_timings_read_counter <= 1'b1;
              if(when_Utils_l762_4) begin
                if(when_SdramCtrl_l265_14) begin
                  bubbleInserter_timings_banks_0_precharge_counter <= 3'b100;
                end
              end
              if(when_Utils_l762_5) begin
                if(when_SdramCtrl_l265_15) begin
                  bubbleInserter_timings_banks_1_precharge_counter <= 3'b100;
                end
              end
              if(when_Utils_l762_6) begin
                if(when_SdramCtrl_l265_16) begin
                  bubbleInserter_timings_banks_2_precharge_counter <= 3'b100;
                end
              end
              if(when_Utils_l762_7) begin
                if(when_SdramCtrl_l265_17) begin
                  bubbleInserter_timings_banks_3_precharge_counter <= 3'b100;
                end
              end
              if(when_Utils_l762_8) begin
                if(when_SdramCtrl_l265_18) begin
                  bubbleInserter_timings_banks_0_active_counter <= 3'b101;
                end
              end
              if(when_Utils_l762_9) begin
                if(when_SdramCtrl_l265_19) begin
                  bubbleInserter_timings_banks_1_active_counter <= 3'b101;
                end
              end
              if(when_Utils_l762_10) begin
                if(when_SdramCtrl_l265_20) begin
                  bubbleInserter_timings_banks_2_active_counter <= 3'b101;
                end
              end
              if(when_Utils_l762_11) begin
                if(when_SdramCtrl_l265_21) begin
                  bubbleInserter_timings_banks_3_active_counter <= 3'b101;
                end
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_READ : begin
            if(frontend_rsp_cmd_ready) begin
              if(when_SdramCtrl_l265_22) begin
                bubbleInserter_timings_write_counter <= 3'b100;
              end
            end
          end
          default : begin
            if(frontend_rsp_cmd_ready) begin
              if(when_Utils_l762_12) begin
                if(when_SdramCtrl_l265_23) begin
                  bubbleInserter_timings_banks_0_precharge_counter <= 3'b001;
                end
              end
              if(when_Utils_l762_13) begin
                if(when_SdramCtrl_l265_24) begin
                  bubbleInserter_timings_banks_1_precharge_counter <= 3'b001;
                end
              end
              if(when_Utils_l762_14) begin
                if(when_SdramCtrl_l265_25) begin
                  bubbleInserter_timings_banks_2_precharge_counter <= 3'b001;
                end
              end
              if(when_Utils_l762_15) begin
                if(when_SdramCtrl_l265_26) begin
                  bubbleInserter_timings_banks_3_precharge_counter <= 3'b001;
                end
              end
            end
          end
        endcase
      end
      if(chip_remoteCke) begin
        _zz_chip_readHistory_1 <= _zz_chip_readHistory_0;
      end
      if(chip_remoteCke) begin
        _zz_chip_readHistory_2 <= _zz_chip_readHistory_1;
      end
      if(chip_remoteCke) begin
        _zz_chip_readHistory_3 <= _zz_chip_readHistory_2;
      end
      if(chip_remoteCke) begin
        _zz_chip_readHistory_4 <= _zz_chip_readHistory_3;
      end
      if(chip_remoteCke) begin
        _zz_chip_readHistory_5 <= _zz_chip_readHistory_4;
      end
      chip_sdramCkeInternal <= chip_sdramCkeNext;
      chip_sdramCkeInternal_regNext <= chip_sdramCkeInternal;
    end
  end

  always @(posedge io_axiClk) begin
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
      end
      default : begin
        if(!refresh_pending) begin
          if(io_bus_cmd_valid) begin
            if(!when_SdramCtrl_l224) begin
              if(when_SdramCtrl_l229) begin
                if(_zz_2) begin
                  frontend_banks_0_row <= frontend_address_row;
                end
                if(_zz_3) begin
                  frontend_banks_1_row <= frontend_address_row;
                end
                if(_zz_4) begin
                  frontend_banks_2_row <= frontend_address_row;
                end
                if(_zz_5) begin
                  frontend_banks_3_row <= frontend_address_row;
                end
              end
            end
          end
        end
      end
    endcase
    if(frontend_rsp_ready) begin
      frontend_rsp_rData_task <= frontend_rsp_payload_task;
      frontend_rsp_rData_bank <= frontend_rsp_payload_bank;
      frontend_rsp_rData_rowColumn <= frontend_rsp_payload_rowColumn;
      frontend_rsp_rData_data <= frontend_rsp_payload_data;
      frontend_rsp_rData_mask <= frontend_rsp_payload_mask;
      frontend_rsp_rData_context_id <= frontend_rsp_payload_context_id;
      frontend_rsp_rData_context_last <= frontend_rsp_payload_context_last;
    end
    if(chip_remoteCke) begin
      chip_cmd_payload_context_delay_1_id <= chip_cmd_payload_context_id;
      chip_cmd_payload_context_delay_1_last <= chip_cmd_payload_context_last;
    end
    if(chip_remoteCke) begin
      chip_cmd_payload_context_delay_2_id <= chip_cmd_payload_context_delay_1_id;
      chip_cmd_payload_context_delay_2_last <= chip_cmd_payload_context_delay_1_last;
    end
    if(chip_remoteCke) begin
      chip_cmd_payload_context_delay_3_id <= chip_cmd_payload_context_delay_2_id;
      chip_cmd_payload_context_delay_3_last <= chip_cmd_payload_context_delay_2_last;
    end
    if(chip_remoteCke) begin
      chip_cmd_payload_context_delay_4_id <= chip_cmd_payload_context_delay_3_id;
      chip_cmd_payload_context_delay_4_last <= chip_cmd_payload_context_delay_3_last;
    end
    if(chip_remoteCke) begin
      chip_contextDelayed_id <= chip_cmd_payload_context_delay_4_id;
      chip_contextDelayed_last <= chip_cmd_payload_context_delay_4_last;
    end
    chip_sdram_CKE <= chip_sdramCkeNext;
    if(chip_remoteCke) begin
      chip_sdram_DQ_read <= io_sdram_DQ_read;
      chip_sdram_CSn <= 1'b0;
      chip_sdram_RASn <= 1'b1;
      chip_sdram_CASn <= 1'b1;
      chip_sdram_WEn <= 1'b1;
      chip_sdram_DQ_write <= chip_cmd_payload_data;
      chip_sdram_DQ_writeEnable <= 16'h0;
      chip_sdram_DQM[0] <= _zz_chip_sdram_DQM;
      chip_sdram_DQM[1] <= _zz_chip_sdram_DQM;
      if(chip_cmd_valid) begin
        case(chip_cmd_payload_task)
          `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : begin
            chip_sdram_ADDR[10] <= 1'b1;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b1;
            chip_sdram_WEn <= 1'b0;
          end
          `SdramCtrlBackendTask_binary_sequential_REFRESH : begin
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b1;
          end
          `SdramCtrlBackendTask_binary_sequential_MODE : begin
            chip_sdram_ADDR <= 13'h0;
            chip_sdram_ADDR[2 : 0] <= 3'b000;
            chip_sdram_ADDR[3] <= 1'b0;
            chip_sdram_ADDR[6 : 4] <= 3'b011;
            chip_sdram_ADDR[8 : 7] <= 2'b00;
            chip_sdram_ADDR[9] <= 1'b0;
            chip_sdram_BA <= 2'b00;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b0;
          end
          `SdramCtrlBackendTask_binary_sequential_ACTIVE : begin
            chip_sdram_ADDR <= chip_cmd_payload_rowColumn;
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b1;
            chip_sdram_WEn <= 1'b1;
          end
          `SdramCtrlBackendTask_binary_sequential_WRITE : begin
            chip_sdram_ADDR <= chip_cmd_payload_rowColumn;
            chip_sdram_ADDR[10] <= 1'b0;
            chip_sdram_DQ_writeEnable <= 16'hffff;
            chip_sdram_DQ_write <= chip_cmd_payload_data;
            chip_sdram_DQM <= (~ chip_cmd_payload_mask);
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b1;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b0;
          end
          `SdramCtrlBackendTask_binary_sequential_READ : begin
            chip_sdram_ADDR <= chip_cmd_payload_rowColumn;
            chip_sdram_ADDR[10] <= 1'b0;
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b1;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b1;
          end
          default : begin
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_ADDR[10] <= 1'b0;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b1;
            chip_sdram_WEn <= 1'b0;
          end
        endcase
      end
    end
  end


endmodule

module BufferCC_2 (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk,
  input               resetCtrl_systemReset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

//UartCtrlRx replaced by UartCtrlRx

//UartCtrlTx replaced by UartCtrlTx

module UartCtrlRx (
  input      [2:0]    io_configFrame_dataLength,
  input      `UartStopType_binary_sequential_type io_configFrame_stop,
  input      `UartParityType_binary_sequential_type io_configFrame_parity,
  input               io_samplingTick,
  output              io_read_valid,
  input               io_read_ready,
  output     [7:0]    io_read_payload,
  input               io_rxd,
  output              io_rts,
  output reg          io_error,
  output              io_break,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                io_rxd_buffercc_io_dataOut;
  wire                _zz_sampler_value;
  wire                _zz_sampler_value_1;
  wire                _zz_sampler_value_2;
  wire                _zz_sampler_value_3;
  wire                _zz_sampler_value_4;
  wire                _zz_sampler_value_5;
  wire                _zz_sampler_value_6;
  wire       [2:0]    _zz_when_UartCtrlRx_l139;
  wire       [0:0]    _zz_when_UartCtrlRx_l139_1;
  reg                 _zz_io_rts;
  wire                sampler_synchroniser;
  wire                sampler_samples_0;
  reg                 sampler_samples_1;
  reg                 sampler_samples_2;
  reg                 sampler_samples_3;
  reg                 sampler_samples_4;
  reg                 sampler_value;
  reg                 sampler_tick;
  reg        [2:0]    bitTimer_counter;
  reg                 bitTimer_tick;
  wire                when_UartCtrlRx_l43;
  reg        [2:0]    bitCounter_value;
  reg        [6:0]    break_counter;
  wire                break_valid;
  wire                when_UartCtrlRx_l69;
  reg        `UartCtrlRxState_binary_sequential_type stateMachine_state;
  reg                 stateMachine_parity;
  reg        [7:0]    stateMachine_shifter;
  reg                 stateMachine_validReg;
  wire                when_UartCtrlRx_l93;
  wire                when_UartCtrlRx_l103;
  wire                when_UartCtrlRx_l111;
  wire                when_UartCtrlRx_l113;
  wire                when_UartCtrlRx_l125;
  wire                when_UartCtrlRx_l136;
  wire                when_UartCtrlRx_l139;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  `endif


  assign _zz_when_UartCtrlRx_l139_1 = ((io_configFrame_stop == `UartStopType_binary_sequential_ONE) ? 1'b0 : 1'b1);
  assign _zz_when_UartCtrlRx_l139 = {2'd0, _zz_when_UartCtrlRx_l139_1};
  assign _zz_sampler_value = ((((1'b0 || ((_zz_sampler_value_1 && sampler_samples_1) && sampler_samples_2)) || (((_zz_sampler_value_2 && sampler_samples_0) && sampler_samples_1) && sampler_samples_3)) || (((1'b1 && sampler_samples_0) && sampler_samples_2) && sampler_samples_3)) || (((1'b1 && sampler_samples_1) && sampler_samples_2) && sampler_samples_3));
  assign _zz_sampler_value_3 = (((1'b1 && sampler_samples_0) && sampler_samples_1) && sampler_samples_4);
  assign _zz_sampler_value_4 = ((1'b1 && sampler_samples_0) && sampler_samples_2);
  assign _zz_sampler_value_5 = (1'b1 && sampler_samples_1);
  assign _zz_sampler_value_6 = 1'b1;
  assign _zz_sampler_value_1 = (1'b1 && sampler_samples_0);
  assign _zz_sampler_value_2 = 1'b1;
  BufferCC io_rxd_buffercc (
    .io_dataIn             (io_rxd                      ), //i
    .io_dataOut            (io_rxd_buffercc_io_dataOut  ), //o
    .io_axiClk             (io_axiClk                   ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset          )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      `UartStopType_binary_sequential_ONE : io_configFrame_stop_string = "ONE";
      `UartStopType_binary_sequential_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      `UartParityType_binary_sequential_NONE : io_configFrame_parity_string = "NONE";
      `UartParityType_binary_sequential_EVEN : io_configFrame_parity_string = "EVEN";
      `UartParityType_binary_sequential_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      `UartCtrlRxState_binary_sequential_IDLE : stateMachine_state_string = "IDLE  ";
      `UartCtrlRxState_binary_sequential_START : stateMachine_state_string = "START ";
      `UartCtrlRxState_binary_sequential_DATA : stateMachine_state_string = "DATA  ";
      `UartCtrlRxState_binary_sequential_PARITY : stateMachine_state_string = "PARITY";
      `UartCtrlRxState_binary_sequential_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @(*) begin
    io_error = 1'b0;
    case(stateMachine_state)
      `UartCtrlRxState_binary_sequential_IDLE : begin
      end
      `UartCtrlRxState_binary_sequential_START : begin
      end
      `UartCtrlRxState_binary_sequential_DATA : begin
      end
      `UartCtrlRxState_binary_sequential_PARITY : begin
        if(bitTimer_tick) begin
          if(!when_UartCtrlRx_l125) begin
            io_error = 1'b1;
          end
        end
      end
      default : begin
        if(bitTimer_tick) begin
          if(when_UartCtrlRx_l136) begin
            io_error = 1'b1;
          end
        end
      end
    endcase
  end

  assign io_rts = _zz_io_rts;
  assign sampler_synchroniser = io_rxd_buffercc_io_dataOut;
  assign sampler_samples_0 = sampler_synchroniser;
  always @(*) begin
    bitTimer_tick = 1'b0;
    if(sampler_tick) begin
      if(when_UartCtrlRx_l43) begin
        bitTimer_tick = 1'b1;
      end
    end
  end

  assign when_UartCtrlRx_l43 = (bitTimer_counter == 3'b000);
  assign break_valid = (break_counter == 7'h68);
  assign when_UartCtrlRx_l69 = (io_samplingTick && (! break_valid));
  assign io_break = break_valid;
  assign io_read_valid = stateMachine_validReg;
  assign when_UartCtrlRx_l93 = ((sampler_tick && (! sampler_value)) && (! break_valid));
  assign when_UartCtrlRx_l103 = (sampler_value == 1'b1);
  assign when_UartCtrlRx_l111 = (bitCounter_value == io_configFrame_dataLength);
  assign when_UartCtrlRx_l113 = (io_configFrame_parity == `UartParityType_binary_sequential_NONE);
  assign when_UartCtrlRx_l125 = (stateMachine_parity == sampler_value);
  assign when_UartCtrlRx_l136 = (! sampler_value);
  assign when_UartCtrlRx_l139 = (bitCounter_value == _zz_when_UartCtrlRx_l139);
  assign io_read_payload = stateMachine_shifter;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      _zz_io_rts <= 1'b0;
      sampler_samples_1 <= 1'b1;
      sampler_samples_2 <= 1'b1;
      sampler_samples_3 <= 1'b1;
      sampler_samples_4 <= 1'b1;
      sampler_value <= 1'b1;
      sampler_tick <= 1'b0;
      break_counter <= 7'h0;
      stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
      stateMachine_validReg <= 1'b0;
    end else begin
      _zz_io_rts <= (! io_read_ready);
      if(io_samplingTick) begin
        sampler_samples_1 <= sampler_samples_0;
      end
      if(io_samplingTick) begin
        sampler_samples_2 <= sampler_samples_1;
      end
      if(io_samplingTick) begin
        sampler_samples_3 <= sampler_samples_2;
      end
      if(io_samplingTick) begin
        sampler_samples_4 <= sampler_samples_3;
      end
      sampler_value <= ((((((_zz_sampler_value || _zz_sampler_value_3) || (_zz_sampler_value_4 && sampler_samples_4)) || ((_zz_sampler_value_5 && sampler_samples_2) && sampler_samples_4)) || (((_zz_sampler_value_6 && sampler_samples_0) && sampler_samples_3) && sampler_samples_4)) || (((1'b1 && sampler_samples_1) && sampler_samples_3) && sampler_samples_4)) || (((1'b1 && sampler_samples_2) && sampler_samples_3) && sampler_samples_4));
      sampler_tick <= io_samplingTick;
      if(sampler_value) begin
        break_counter <= 7'h0;
      end else begin
        if(when_UartCtrlRx_l69) begin
          break_counter <= (break_counter + 7'h01);
        end
      end
      stateMachine_validReg <= 1'b0;
      case(stateMachine_state)
        `UartCtrlRxState_binary_sequential_IDLE : begin
          if(when_UartCtrlRx_l93) begin
            stateMachine_state <= `UartCtrlRxState_binary_sequential_START;
          end
        end
        `UartCtrlRxState_binary_sequential_START : begin
          if(bitTimer_tick) begin
            stateMachine_state <= `UartCtrlRxState_binary_sequential_DATA;
            if(when_UartCtrlRx_l103) begin
              stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
            end
          end
        end
        `UartCtrlRxState_binary_sequential_DATA : begin
          if(bitTimer_tick) begin
            if(when_UartCtrlRx_l111) begin
              if(when_UartCtrlRx_l113) begin
                stateMachine_state <= `UartCtrlRxState_binary_sequential_STOP;
                stateMachine_validReg <= 1'b1;
              end else begin
                stateMachine_state <= `UartCtrlRxState_binary_sequential_PARITY;
              end
            end
          end
        end
        `UartCtrlRxState_binary_sequential_PARITY : begin
          if(bitTimer_tick) begin
            if(when_UartCtrlRx_l125) begin
              stateMachine_state <= `UartCtrlRxState_binary_sequential_STOP;
              stateMachine_validReg <= 1'b1;
            end else begin
              stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
            end
          end
        end
        default : begin
          if(bitTimer_tick) begin
            if(when_UartCtrlRx_l136) begin
              stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
            end else begin
              if(when_UartCtrlRx_l139) begin
                stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
              end
            end
          end
        end
      endcase
    end
  end

  always @(posedge io_axiClk) begin
    if(sampler_tick) begin
      bitTimer_counter <= (bitTimer_counter - 3'b001);
    end
    if(bitTimer_tick) begin
      bitCounter_value <= (bitCounter_value + 3'b001);
    end
    if(bitTimer_tick) begin
      stateMachine_parity <= (stateMachine_parity ^ sampler_value);
    end
    case(stateMachine_state)
      `UartCtrlRxState_binary_sequential_IDLE : begin
        if(when_UartCtrlRx_l93) begin
          bitTimer_counter <= 3'b010;
        end
      end
      `UartCtrlRxState_binary_sequential_START : begin
        if(bitTimer_tick) begin
          bitCounter_value <= 3'b000;
          stateMachine_parity <= (io_configFrame_parity == `UartParityType_binary_sequential_ODD);
        end
      end
      `UartCtrlRxState_binary_sequential_DATA : begin
        if(bitTimer_tick) begin
          stateMachine_shifter[bitCounter_value] <= sampler_value;
          if(when_UartCtrlRx_l111) begin
            bitCounter_value <= 3'b000;
          end
        end
      end
      `UartCtrlRxState_binary_sequential_PARITY : begin
        if(bitTimer_tick) begin
          bitCounter_value <= 3'b000;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module UartCtrlTx (
  input      [2:0]    io_configFrame_dataLength,
  input      `UartStopType_binary_sequential_type io_configFrame_stop,
  input      `UartParityType_binary_sequential_type io_configFrame_parity,
  input               io_samplingTick,
  input               io_write_valid,
  output reg          io_write_ready,
  input      [7:0]    io_write_payload,
  input               io_cts,
  output              io_txd,
  input               io_break,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [2:0]    _zz_clockDivider_counter_valueNext;
  wire       [0:0]    _zz_clockDivider_counter_valueNext_1;
  wire       [2:0]    _zz_when_UartCtrlTx_l93;
  wire       [0:0]    _zz_when_UartCtrlTx_l93_1;
  reg                 clockDivider_counter_willIncrement;
  wire                clockDivider_counter_willClear;
  reg        [2:0]    clockDivider_counter_valueNext;
  reg        [2:0]    clockDivider_counter_value;
  wire                clockDivider_counter_willOverflowIfInc;
  wire                clockDivider_counter_willOverflow;
  reg        [2:0]    tickCounter_value;
  reg        `UartCtrlTxState_binary_sequential_type stateMachine_state;
  reg                 stateMachine_parity;
  reg                 stateMachine_txd;
  wire                when_UartCtrlTx_l58;
  wire                when_UartCtrlTx_l73;
  wire                when_UartCtrlTx_l76;
  wire                when_UartCtrlTx_l93;
  reg                 _zz_io_txd;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  `endif


  assign _zz_clockDivider_counter_valueNext_1 = clockDivider_counter_willIncrement;
  assign _zz_clockDivider_counter_valueNext = {2'd0, _zz_clockDivider_counter_valueNext_1};
  assign _zz_when_UartCtrlTx_l93_1 = ((io_configFrame_stop == `UartStopType_binary_sequential_ONE) ? 1'b0 : 1'b1);
  assign _zz_when_UartCtrlTx_l93 = {2'd0, _zz_when_UartCtrlTx_l93_1};
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      `UartStopType_binary_sequential_ONE : io_configFrame_stop_string = "ONE";
      `UartStopType_binary_sequential_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      `UartParityType_binary_sequential_NONE : io_configFrame_parity_string = "NONE";
      `UartParityType_binary_sequential_EVEN : io_configFrame_parity_string = "EVEN";
      `UartParityType_binary_sequential_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      `UartCtrlTxState_binary_sequential_IDLE : stateMachine_state_string = "IDLE  ";
      `UartCtrlTxState_binary_sequential_START : stateMachine_state_string = "START ";
      `UartCtrlTxState_binary_sequential_DATA : stateMachine_state_string = "DATA  ";
      `UartCtrlTxState_binary_sequential_PARITY : stateMachine_state_string = "PARITY";
      `UartCtrlTxState_binary_sequential_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @(*) begin
    clockDivider_counter_willIncrement = 1'b0;
    if(io_samplingTick) begin
      clockDivider_counter_willIncrement = 1'b1;
    end
  end

  assign clockDivider_counter_willClear = 1'b0;
  assign clockDivider_counter_willOverflowIfInc = (clockDivider_counter_value == 3'b111);
  assign clockDivider_counter_willOverflow = (clockDivider_counter_willOverflowIfInc && clockDivider_counter_willIncrement);
  always @(*) begin
    clockDivider_counter_valueNext = (clockDivider_counter_value + _zz_clockDivider_counter_valueNext);
    if(clockDivider_counter_willClear) begin
      clockDivider_counter_valueNext = 3'b000;
    end
  end

  always @(*) begin
    stateMachine_txd = 1'b1;
    case(stateMachine_state)
      `UartCtrlTxState_binary_sequential_IDLE : begin
      end
      `UartCtrlTxState_binary_sequential_START : begin
        stateMachine_txd = 1'b0;
      end
      `UartCtrlTxState_binary_sequential_DATA : begin
        stateMachine_txd = io_write_payload[tickCounter_value];
      end
      `UartCtrlTxState_binary_sequential_PARITY : begin
        stateMachine_txd = stateMachine_parity;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_write_ready = io_break;
    case(stateMachine_state)
      `UartCtrlTxState_binary_sequential_IDLE : begin
      end
      `UartCtrlTxState_binary_sequential_START : begin
      end
      `UartCtrlTxState_binary_sequential_DATA : begin
        if(clockDivider_counter_willOverflow) begin
          if(when_UartCtrlTx_l73) begin
            io_write_ready = 1'b1;
          end
        end
      end
      `UartCtrlTxState_binary_sequential_PARITY : begin
      end
      default : begin
      end
    endcase
  end

  assign when_UartCtrlTx_l58 = ((io_write_valid && (! io_cts)) && clockDivider_counter_willOverflow);
  assign when_UartCtrlTx_l73 = (tickCounter_value == io_configFrame_dataLength);
  assign when_UartCtrlTx_l76 = (io_configFrame_parity == `UartParityType_binary_sequential_NONE);
  assign when_UartCtrlTx_l93 = (tickCounter_value == _zz_when_UartCtrlTx_l93);
  assign io_txd = _zz_io_txd;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      clockDivider_counter_value <= 3'b000;
      stateMachine_state <= `UartCtrlTxState_binary_sequential_IDLE;
      _zz_io_txd <= 1'b1;
    end else begin
      clockDivider_counter_value <= clockDivider_counter_valueNext;
      case(stateMachine_state)
        `UartCtrlTxState_binary_sequential_IDLE : begin
          if(when_UartCtrlTx_l58) begin
            stateMachine_state <= `UartCtrlTxState_binary_sequential_START;
          end
        end
        `UartCtrlTxState_binary_sequential_START : begin
          if(clockDivider_counter_willOverflow) begin
            stateMachine_state <= `UartCtrlTxState_binary_sequential_DATA;
          end
        end
        `UartCtrlTxState_binary_sequential_DATA : begin
          if(clockDivider_counter_willOverflow) begin
            if(when_UartCtrlTx_l73) begin
              if(when_UartCtrlTx_l76) begin
                stateMachine_state <= `UartCtrlTxState_binary_sequential_STOP;
              end else begin
                stateMachine_state <= `UartCtrlTxState_binary_sequential_PARITY;
              end
            end
          end
        end
        `UartCtrlTxState_binary_sequential_PARITY : begin
          if(clockDivider_counter_willOverflow) begin
            stateMachine_state <= `UartCtrlTxState_binary_sequential_STOP;
          end
        end
        default : begin
          if(clockDivider_counter_willOverflow) begin
            if(when_UartCtrlTx_l93) begin
              stateMachine_state <= (io_write_valid ? `UartCtrlTxState_binary_sequential_START : `UartCtrlTxState_binary_sequential_IDLE);
            end
          end
        end
      endcase
      _zz_io_txd <= (stateMachine_txd && (! io_break));
    end
  end

  always @(posedge io_axiClk) begin
    if(clockDivider_counter_willOverflow) begin
      tickCounter_value <= (tickCounter_value + 3'b001);
    end
    if(clockDivider_counter_willOverflow) begin
      stateMachine_parity <= (stateMachine_parity ^ stateMachine_txd);
    end
    case(stateMachine_state)
      `UartCtrlTxState_binary_sequential_IDLE : begin
      end
      `UartCtrlTxState_binary_sequential_START : begin
        if(clockDivider_counter_willOverflow) begin
          stateMachine_parity <= (io_configFrame_parity == `UartParityType_binary_sequential_ODD);
          tickCounter_value <= 3'b000;
        end
      end
      `UartCtrlTxState_binary_sequential_DATA : begin
        if(clockDivider_counter_willOverflow) begin
          if(when_UartCtrlTx_l73) begin
            tickCounter_value <= 3'b000;
          end
        end
      end
      `UartCtrlTxState_binary_sequential_PARITY : begin
        if(clockDivider_counter_willOverflow) begin
          tickCounter_value <= 3'b000;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input      [15:0]   io_push_payload_data,
  input      [3:0]    io_push_payload_context_id,
  input               io_push_payload_context_last,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg [15:0]   io_pop_payload_data,
  output reg [3:0]    io_pop_payload_context_id,
  output reg          io_pop_payload_context_last,
  input               io_flush,
  output     [1:0]    io_occupancy,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [20:0]   _zz_ram_port0;
  wire       [20:0]   _zz_ram_port;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [0:0]    pushPtr_valueNext;
  reg        [0:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [0:0]    popPtr_valueNext;
  reg        [0:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire                when_Stream_l995;
  wire       [20:0]   _zz_io_pop_payload_data;
  wire       [4:0]    _zz_io_pop_payload_context_id;
  wire                when_Stream_l1008;
  wire       [0:0]    ptrDif;
  (* ram_style = "distributed" *) reg [20:0] ram [0:1];

  assign _zz_ram_port = {{io_push_payload_context_last,io_push_payload_context_id},io_push_payload_data};
  assign _zz_ram_port0 = ram[popPtr_value];
  always @(posedge io_axiClk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_ram_port;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing) begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush) begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 1'b1);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @(*) begin
    pushPtr_valueNext = (pushPtr_value + pushPtr_willIncrement);
    if(pushPtr_willClear) begin
      pushPtr_valueNext = 1'b0;
    end
  end

  always @(*) begin
    popPtr_willIncrement = 1'b0;
    if(popping) begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    popPtr_willClear = 1'b0;
    if(io_flush) begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 1'b1);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @(*) begin
    popPtr_valueNext = (popPtr_value + popPtr_willIncrement);
    if(popPtr_willClear) begin
      popPtr_valueNext = 1'b0;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign when_Stream_l995 = (! empty);
  always @(*) begin
    if(when_Stream_l995) begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  assign _zz_io_pop_payload_data = _zz_ram_port0;
  assign _zz_io_pop_payload_context_id = _zz_io_pop_payload_data[20 : 16];
  always @(*) begin
    if(when_Stream_l995) begin
      io_pop_payload_data = _zz_io_pop_payload_data[15 : 0];
    end else begin
      io_pop_payload_data = io_push_payload_data;
    end
  end

  always @(*) begin
    if(when_Stream_l995) begin
      io_pop_payload_context_id = _zz_io_pop_payload_context_id[3 : 0];
    end else begin
      io_pop_payload_context_id = io_push_payload_context_id;
    end
  end

  always @(*) begin
    if(when_Stream_l995) begin
      io_pop_payload_context_last = _zz_io_pop_payload_context_id[4];
    end else begin
      io_pop_payload_context_last = io_push_payload_context_last;
    end
  end

  assign when_Stream_l1008 = (pushing != popping);
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      pushPtr_value <= 1'b0;
      popPtr_value <= 1'b0;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if(when_Stream_l1008) begin
        risingOccupancy <= pushing;
      end
      if(io_flush) begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

//BufferCC replaced by BufferCC

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if(resetCtrl_axiReset) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
