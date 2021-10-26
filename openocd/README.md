# VRV100 openocd

The VexRiscV requires a special openocd build, because the JTAG interface is not standard Risc-V.

The openocd for the VexRiscV can be downloaded from here: https://github.com/SpinalHDL/openocd_riscv

Then for the "simple" bus varients (VRV1_x0x) use the vexriscv_nocache.cfg and for the other variants
use the vexriscv_nocache.cfg (as target script).