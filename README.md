# VRV100
Standardized VexRiscV FPGA SoC

The VexRiscV is a highly configurable RISC-V soft cpu and peripheral system, it is accessible here:
https://github.com/SpinalHDL/VexRiscv

The VexRiscV CPU is relative fast, comparable with an ARM Cortex-M3.
This project helps to integrate it into FPGAs, providing some key components for more complex applications.

## CPU Core Options
VexRiscV CPU Core (I32M):
 - I32 with the following extensions: Mul-Div (M)
 - Frequency fixed to 100 MHz
 - MCYCLE CSR
 - Single Cycle Shift
 - 4k Instruction Cache (below 0xF0000000)
 - 4k Data Cache (below 0xF0000000)
 - JTAG Debugging Interface (special openocd required)
 
## Memory Map

 Address   | peripheral
-----------|--------------------
 0x40000000| SDRAM, integrated (32 MByte) or external (optional)
 0x80000000| BOOTROM(RAM), 1 kByte, do not write this area
 0x80000400| OCRAM 3 - 65 kByte (Variants xx1 - xx5)
 0xF0000000| GPIOA (32 bit, bidirectional, independent bit control)
 0xF0001000| GPIOB (32 bit, bidirectional, independent bit control) (optional)
 0xF0010000| UART1, usually used as debug console
 0xF0011000| UART2 (optional)
 0xF0020000| Timer
 0xF0030000| VGA Controller, frame buffer in SDRAM (optional)
 0xF0040000| SPI Master 1 (CS0: SPI Flash)
 0xF0041000| SPI Master 2 (optional)
 0xF1000000| External APB3 Bus (Master) - for user extensions

## Integrated Peripherals

### GPIO
 with bit set and clear

### SPI Mastex (SPIMx)
 512 byte FIFO

### UART (SPIMx)
 1024 byte FIFO

## Variants

 ID  | OCRAM|Cache| BUS    | SDRAM| Periph.             |
-----|------|-----|--------|------|---------------------|
103  | 15 k | -   | simple | -    | 1xSerials |
104  | 31 k | -   | simple | -    | 1xSerials |
241  |  3 k | 4+4 | AXI4   | int. | 1xSerials |
365  | 65 k | 8+8 | AXI4   | ext. | 2xSerials |
441  |  3 k | 4+4 | AXI4   | int. | 2xSerials |
443  | 15 k | 4+4 | AXI4   | int. | 2xSerials |
543  | 15 k | 4+4 | AXI4   | int. | 2xSerials + VGA |
