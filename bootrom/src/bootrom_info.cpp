// VRV100 bootrom info

#include "stdint.h"
#include "VRV100.h"

extern "C" void _reset_entry(void);

extern const bootrom_info_t bootrom_info;  // required so that the optimizer keeps this

__attribute__((section(".bootrom_info"),used))
const bootrom_info_t bootrom_info =
{
  .compid = VRV100_COMPID,
  .bootblock_staddr = BOOTBLOCK_STADDR,
  .clock_speed_mhz = MCU_FIXED_SPEED
};

