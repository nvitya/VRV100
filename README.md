# VRV100
Standardized VexRiscV FPGA SoC

The Risc-V CPU core is here:
https://github.com/SpinalHDL/VexRiscv

## Variants

All variants include:
 * GPIOA (32 bit general purpose IO with bit set and clear)
 * SPIM1 (connected to SPI Flash) with 512 byte FIFO
 * UART1 with 1024 byte FIFO
 * A timer unit
 * External APB Bus at 0xF1000000 (for extension)
 * OC RAM at 0x10000000

 Type   | OC RAM | CACHE | BUS    | SDRAM | VGA | GPIOB | SPIM2 | UART2 |
--------|--------|-------|--------|-------|-----|-------|-------|-------|
VRV104  | 32 k   | no    | simple | no    | no  | no    | no    | no    |
VRV114  | 32 k   | 4+4 k | AXI4   | no    | no  | no    | no    | no    |
VRV123  | 16 k   | 4+4 k | AXI4   | yes   | no  | no    | no    | no    |
VRV134  | 32 k   | 4+4 k | AXI4   | no    | no  | yes   | yes   | yes   |
VRV143  | 16 k   | 4+4 k | AXI4   | yes   | no  | yes   | yes   | yes   |
VRV153  | 16 k   | 4+4 k | AXI4   | yes   | yes | yes   | yes   | yes   |
