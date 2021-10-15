// VRV100 bootrom info

#include "stdint.h"
#include "VRV100.h"
#include "bootrom_info.h"

extern "C" void _reset_entry(void);

extern const bootrom_info_t bootrom_info;  // required so that the optimizer keeps this


__attribute__((section(".bootrom_info"),used))
const bootrom_info_t bootrom_info =
{
  .compid = VRV100_COMPID,
  .clock_speed_mhz = MCU_FIXED_SPEED,
  .bootblock_staddr = BOOTBLOCK_STADDR,
  .ocram_size = OCRAM_SIZE,
  .sdram_size = SDRAM_SIZE,
  .periph_mul = PERIPH_MUL
};

