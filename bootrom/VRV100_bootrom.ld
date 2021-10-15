/* very minimalistic linker script for the VRV100 bootloader */

MEMORY
{
  BLTEXT (xrw) : ORIGIN = 0x80000000, LENGTH = 768
  BLRAM (xrw)  : ORIGIN = 0x80000300, LENGTH = 192
  BLINFO (xrw) : ORIGIN = 0x800003C0, LENGTH = 64 
}

REGION_ALIAS("TEXT", BLTEXT);
REGION_ALIAS("RAM",  BLRAM);

OUTPUT_FORMAT("elf32-littleriscv", "elf32-littleriscv", "elf32-littleriscv")
OUTPUT_ARCH(riscv)

__stack = ORIGIN(RAM) + LENGTH(RAM);

ENTRY(_reset_entry)

SECTIONS
{
	.text : ALIGN(4)
	{
		. = ALIGN(4);
		
    KEEP(*(.resetentry))
    
		*(.text .text.* )

		*(.srodata .srodata.*)
		*(.rodata .rodata.* .constdata .constdata.* .gnu.linkonce.r.*)
		*(.ARM.extab* .gnu.linkonce.armextab.*)
		*(vtable)

    KEEP(*(.eh_frame*))
		*(.gnu.linkonce.t.*)

		*(.glue_7) *(.glue_7t)
		*(.gcc_except_table)

		. = ALIGN(4);
		KEEP (*crtbegin.o(.ctors))
		KEEP (*(EXCLUDE_FILE (*crtend.o) .ctors))
		KEEP (*(SORT(.ctors.*)))
		KEEP (*crtend.o(.ctors))

	} > TEXT

	. = ALIGN(4);
	_etext = .;
	__etext = .;

	.data : ALIGN(4)
	{
	 *(.data_begin .data_begin.*)
	 *(.data .data.*)
	 *(.data_end .data_end.*)
	 . = ALIGN(4);

	} > RAM

	__global_pointer$ = ADDR(.data) + 0x800;

	.bss (NOLOAD) : ALIGN(4)
	{
	 *(.bss_begin .bss_begin.*)
	 *(.bss .bss.*)
	 *(COMMON)
	 *(.bss_end .bss_end.*)
	} > RAM

	.noinit (NOLOAD) : ALIGN(4)
	{
	 _noinit = .;
	 *(.noinit .noinit.*)
	 . = ALIGN(4) ;
	 _end_noinit = .;
	} > RAM
	
  .bootrom_info : ALIGN(4) 
  {
    KEEP(*(.bootrom_info))
  } > BLINFO	

	PROVIDE ( end = _end_noinit ); /* was _ebss */
	PROVIDE ( _end = _end_noinit );
	PROVIDE ( __end = _end_noinit );
	PROVIDE ( __end__ = _end_noinit );

	/* This can remove the debugging information from the standard libraries */

	DISCARD :
	{
	 libc.a ( * )
	 libm.a ( * )
	 libgcc.a ( * )
	}

	/* Stabs debugging sections.  */
	.stab          0 : { *(.stab) }
	.stabstr       0 : { *(.stabstr) }
	.stab.excl     0 : { *(.stab.excl) }
	.stab.exclstr  0 : { *(.stab.exclstr) }
	.stab.index    0 : { *(.stab.index) }
	.stab.indexstr 0 : { *(.stab.indexstr) }
	.comment       0 : { *(.comment) }
	/*
	 * DWARF debug sections.
	 * Symbols in the DWARF debugging sections are relative to the beginning
	 * of the section so we begin them at 0.
	 */
	/* DWARF 1 */
	.debug          0 : { *(.debug) }
	.line           0 : { *(.line) }
	/* GNU DWARF 1 extensions */
	.debug_srcinfo  0 : { *(.debug_srcinfo) }
	.debug_sfnames  0 : { *(.debug_sfnames) }
	/* DWARF 1.1 and DWARF 2 */
	.debug_aranges  0 : { *(.debug_aranges) }
	.debug_pubnames 0 : { *(.debug_pubnames) }
	/* DWARF 2 */
	.debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
	.debug_abbrev   0 : { *(.debug_abbrev) }
	.debug_line     0 : { *(.debug_line) }
	.debug_frame    0 : { *(.debug_frame) }
	.debug_str      0 : { *(.debug_str) }
	.debug_loc      0 : { *(.debug_loc) }
	.debug_macinfo  0 : { *(.debug_macinfo) }
	/* SGI/MIPS DWARF 2 extensions */
	.debug_weaknames 0 : { *(.debug_weaknames) }
	.debug_funcnames 0 : { *(.debug_funcnames) }
	.debug_typenames 0 : { *(.debug_typenames) }
	.debug_varnames  0 : { *(.debug_varnames) }
	/* DWARF 3 */
	.debug_pubtypes 0 : { *(.debug_pubtypes) }
	.debug_ranges   0 : { *(.debug_ranges) }
	/* DWARF Extension.  */
	.debug_macro    0 : { *(.debug_macro) }
	.debug_addr     0 : { *(.debug_addr) }
	.gnu.attributes 0 : { KEEP (*(.gnu.attributes)) }

	/DISCARD/ : { *(.note.GNU-stack) *(.gnu_debuglink) *(.gnu.lto_*) }
}


