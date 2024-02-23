// bootrom_info.h

#ifndef SRC_BOOTROM_INFO_H_
#define SRC_BOOTROM_INFO_H_

#if 0
  //
#elif defined(VRV1_103_1M)
  #define VRV100_COMPID      0x11030001
  #define PERIPH_MUL                  1
  #define BOOTBLOCK_STADDR     0x100000
  #define OCRAM_SIZE              16384
  #define SDRAM_SIZE                  0
#elif defined(VRV1_104_1M)
  #define VRV100_COMPID      0x11040001
  #define PERIPH_MUL                  1
  #define BOOTBLOCK_STADDR     0x100000
  #define OCRAM_SIZE              32768
  #define SDRAM_SIZE                  0
#elif defined(VRV1_104_4M)
  #define VRV100_COMPID      0x11040001
  #define PERIPH_MUL                  1
  #define BOOTBLOCK_STADDR     0x400000
  #define OCRAM_SIZE              32768
  #define SDRAM_SIZE                  0
#elif defined(VRV1_241_1M)
  #define VRV100_COMPID      0x12410001
  #define PERIPH_MUL                  1
  #define BOOTBLOCK_STADDR     0x100000
  #define OCRAM_SIZE               4096
  #define SDRAM_SIZE      (32*1024*1024)
#elif defined(VRV1_365_4M)
  #define VRV100_COMPID      0x13650001
  #define PERIPH_MUL                  2
  #define BOOTBLOCK_STADDR     0x400000
  #define OCRAM_SIZE              65536
  #define SDRAM_SIZE     (256*1024*1024)
#elif defined(VRV1_403_1M)
  #define VRV100_COMPID      0x14030001
  #define PERIPH_MUL                  2
  #define BOOTBLOCK_STADDR     0x100000
  #define OCRAM_SIZE              16384
  #define SDRAM_SIZE                  0
#elif defined(VRV1_441_1M)
  #define VRV100_COMPID      0x14410001
  #define PERIPH_MUL                  2
  #define BOOTBLOCK_STADDR     0x100000
  #define OCRAM_SIZE               4096
  #define SDRAM_SIZE      (32*1024*1024)
#elif defined(VRV1_443_1M)
  #define VRV100_COMPID      0x14430001
  #define PERIPH_MUL                  2
  #define BOOTBLOCK_STADDR     0x100000
  #define OCRAM_SIZE              16384
  #define SDRAM_SIZE      (32*1024*1024)
#elif defined(VRV1_456_5M)
  #define VRV100_COMPID      0x14560001
  #define PERIPH_MUL                  2
  #define BOOTBLOCK_STADDR     0x500000
  #define OCRAM_SIZE             131072
  #define SDRAM_SIZE     (64*1024*1024)
#elif defined(VRV1_543_1M)
  #define VRV100_COMPID      0x15430001
  #define PERIPH_MUL                  2
  #define BOOTBLOCK_STADDR     0x100000
  #define OCRAM_SIZE              16384
  #define SDRAM_SIZE      (32*1024*1024)
#else
  #error "Unknown configuration."
#endif




#endif /* SRC_BOOTROM_INFO_H_ */
