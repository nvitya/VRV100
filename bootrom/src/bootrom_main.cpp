
#include "stdint.h"
#include "VRV100.h"
#include "cppinit.h"

vexriscv_spim_t * spiregs;

void spiflash_init()
{
  spiregs = (vexriscv_spim_t *)SPIM1_BASE;

  unsigned speed = 10000000;
  unsigned basespeed = MCU_FIXED_SPEED / 2;
  uint32_t clkdiv = basespeed / speed;
  if (clkdiv * speed < basespeed)  ++clkdiv;
  spiregs->CLOCK_DIVIDER = clkdiv;

  spiregs->STATUS = 0; // clear interrupts and pending

  uint32_t cfg = (0
    | (0  <<  0)  // CPOL: 0 = clock low by default, 1 = clock high by default
    | (0  <<  1)  // CPHA: 0 = sampling by clock rising edge, 1 = sampling by clock falling edge
    | (0  <<  4)  // SSACTIVEHIGH(28): bitn 1 = SS is active high, 0 = SS active low;
  );
  spiregs->CONFIG = cfg;

  spiregs->SSSETUP    =  1;  // time between chip select enable and the next byte
  spiregs->SSHOLD     =  1;  // time between the last byte transmission and the chip select disable
  spiregs->SSDISABLE  =  1;  // time between chip select disable and chip select enable
}

void spiflash_load(unsigned aflashaddr, void * adst, unsigned alen)
{
  unsigned rx_remaining = alen;
  unsigned tx_remaining = alen;
  uint8_t * dst = (uint8_t *)adst;

  // empty tx fifo
  while ((spiregs->STATUS >> 16) != SPIM_TXFIFO_DEPTH)
  {
    // wait until the fifo will be empty
  }

  // empty rx fifo
  while (spiregs->DATA & SPIM_DATA_VALID)
  {
    // do nothing
  }

  // enable the CS[0]
  spiregs->DATA = 0x11000000 | 0;

  // send command, 0x03 = read
  spiregs->DATA = 0x00000000 | 0x03;

  // send address, 3 byte, MSB first
  spiregs->DATA = 0x00000000 | ((aflashaddr >> 16) & 0xFF);
  spiregs->DATA = 0x00000000 | ((aflashaddr >>  8) & 0xFF);
  spiregs->DATA = 0x00000000 | ((aflashaddr >>  0) & 0xFF);

  while (tx_remaining && rx_remaining)
  {
    // TX

    if (tx_remaining)
    {
      // 0x010000xx =>  Send byte xx and also push the read data into the FIFO
      uint32_t pushcnt = (spiregs->STATUS >> 16);  // tx fifo free
      if (pushcnt > tx_remaining)  pushcnt = tx_remaining;
      tx_remaining -= pushcnt;
      while (pushcnt)
      {
        spiregs->DATA = 0x01000000; // just send zeroes
        --pushcnt;
      }

      if (0 == tx_remaining)
      {
        // disable the CS[0]
        spiregs->DATA = 0x10000000 | 0;
      }
    }

    // RX

    while (rx_remaining)
    {
      uint32_t d = spiregs->DATA;
      if (d & SPIM_DATA_VALID)
      {
        *dst = d;
        ++dst;
        --rx_remaining;
      }
      else
      {
        break;
      }
    }
  }

}

inline void start_app(unsigned appentry)
{
  __asm("jr %0" : : "r" (appentry));
}

// the C libraries require "_start" so we keep it as the entry point
extern "C" __attribute__((noreturn)) void _start(unsigned self_flashing)  // self_flashing = 1: self-flashing required
{
	// run the C/C++ initialization:
	cppinit();

	// provide info to the system about the clock speed:

	spiflash_init();

	bootblock_header_t  apphead;

	// BOOTBLOCK_STADDR provided as build option
	spiflash_load(BOOTBLOCK_STADDR, &apphead, sizeof(apphead));

	if ((apphead.signature == BOOTBLOCK_SIGNATURE) && ((apphead.compid >> 16) == 0x0153))
	{
	  // load the body to the destination
	  spiflash_load(BOOTBLOCK_STADDR, (void *)apphead.addr_load, apphead.length + sizeof(apphead));

	  //TODO: perform checksum

	  start_app(apphead.addr_entry);
	}

	// Infinite loop
	while (1)
	{

	}
}

// ----------------------------------------------------------------------------
