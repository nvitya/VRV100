MEMORY
{
  OCRAM (xrw)  : ORIGIN = 0x10003800, LENGTH = 2K
  OCROM (xrw)  : ORIGIN = 0x80000000, LENGTH = 4032
  BLINFO (xrw) : ORIGIN = 0x80000FC0, LENGTH = 64
}

REGION_ALIAS("TEXT", OCROM);

REGION_ALIAS("RAM",  OCRAM);
REGION_ALIAS("ITCRAM", OCRAM);
REGION_ALIAS("DTCRAM", OCRAM);
REGION_ALIAS("RAM2", OCRAM);

OUTPUT_FORMAT("elf32-littleriscv", "elf32-littleriscv", "elf32-littleriscv")
OUTPUT_ARCH(riscv)

__stack = ORIGIN(RAM) + LENGTH(RAM);
__Main_Stack_Size = 1024 ;

PROVIDE ( _Main_Stack_Size = __Main_Stack_Size ) ;
__Main_Stack_Limit = __stack  - __Main_Stack_Size ;
PROVIDE ( _Main_Stack_Limit = __Main_Stack_Limit ) ;

_Minimum_Stack_Size = 256 ;

PROVIDE ( _Heap_Begin = _end_noinit ) ;
PROVIDE ( _Heap_Limit = __stack - __Main_Stack_Size ) ;

ENTRY(_self_flashing_entry)

SECTIONS
{
	.bootrom_info : ALIGN(4)  /* application header (32 byte) for the bootloader, might not exist */
	{
		KEEP(*(.bootrom_info))
	} > BLINFO

	.resetentry : ALIGN(4)
	{
		KEEP(*(.resetentry))
		KEEP(*(.startup))
	} > TEXT

	.inits : ALIGN(4)
	{
		/* DATA COPY REGIONS */

		__data_regions_array_start = .;

		LONG(LOADADDR(.data));         LONG(ADDR(.data));         LONG(ADDR(.data)+SIZEOF(.data));
		LONG(LOADADDR(.data_DTCRAM));  LONG(ADDR(.data_DTCRAM));  LONG(ADDR(.data_DTCRAM)+SIZEOF(.data_DTCRAM));
		LONG(LOADADDR(.data_ITCRAM));  LONG(ADDR(.data_ITCRAM));  LONG(ADDR(.data_ITCRAM)+SIZEOF(.data_ITCRAM));
		LONG(LOADADDR(.data_RAM2));    LONG(ADDR(.data_RAM2));    LONG(ADDR(.data_RAM2)+SIZEOF(.data_RAM2));

		LONG(LOADADDR(.text_ITCRAM));  LONG(ADDR(.text_ITCRAM));  LONG(ADDR(.text_ITCRAM)+SIZEOF(.text_ITCRAM));
		LONG(LOADADDR(.text_DTCRAM));  LONG(ADDR(.text_DTCRAM));  LONG(ADDR(.text_DTCRAM)+SIZEOF(.text_DTCRAM));
		LONG(LOADADDR(.text_RAM2));    LONG(ADDR(.text_RAM2));    LONG(ADDR(.text_RAM2)+SIZEOF(.text_RAM2));

		__data_regions_array_end = .;

		/* DATA CLEAR REGIONS */

		__bss_regions_array_start = .;

		LONG(ADDR(.bss));         LONG(ADDR(.bss)+SIZEOF(.bss));
		LONG(ADDR(.bss_DTCRAM));  LONG(ADDR(.bss_DTCRAM)+SIZEOF(.bss_DTCRAM));
		LONG(ADDR(.bss_ITCRAM));  LONG(ADDR(.bss_ITCRAM)+SIZEOF(.bss_ITCRAM));
		LONG(ADDR(.bss_RAM2));    LONG(ADDR(.bss_RAM2)+SIZEOF(.bss_RAM2));

		__bss_regions_array_end = .;

	} > TEXT

	.text_ITCRAM  : ALIGN(4)  { *(.text_ITCRAM) } > ITCRAM  AT > TEXT
	.text_DTCRAM  : ALIGN(4)  { *(.text_DTCRAM) } > DTCRAM  AT > TEXT
	.text_RAM2    : ALIGN(4)  { *(.text_RAM2) }   > RAM2    AT > TEXT
	.text : ALIGN(4)
	{
		KEEP(*(.init))
		KEEP(*(.fini))

		. = ALIGN(4);

		PROVIDE_HIDDEN (__preinit_array_start = .);
		KEEP(*(.preinit_array_sysinit .preinit_array_sysinit.*))
		KEEP(*(.preinit_array_platform .preinit_array_platform.*))
		KEEP(*(.preinit_array .preinit_array.*))
		PROVIDE_HIDDEN (__preinit_array_end = .);

		. = ALIGN(4);

		PROVIDE_HIDDEN (__init_array_start = .);
		KEEP(*(SORT(.init_array.*)))
		KEEP(*(.init_array))
		PROVIDE_HIDDEN (__init_array_end = .);

		. = ALIGN(4);

		PROVIDE_HIDDEN (__fini_array_start = .);
		KEEP(*(SORT(.fini_array.*)))
		KEEP(*(.fini_array))
		PROVIDE_HIDDEN (__fini_array_end = .);

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

	.data_DTCRAM  : ALIGN(4)  { *(.data_DTCRAM) } > DTCRAM  AT > TEXT
	.data_ITCRAM  : ALIGN(4)  { *(.data_ITCRAM) } > ITCRAM  AT > TEXT
	.data_RAM2    : ALIGN(4)  { *(.data_RAM2) }   > RAM2    AT > TEXT
	.data : ALIGN(4)
	{
	 *(.data_begin .data_begin.*)
	 *(.data .data.*)
	 *(.data_end .data_end.*)
	 . = ALIGN(4);

	} > RAM AT > TEXT

	__app_image_end = LOADADDR(.data) + SIZEOF(.data);

	__global_pointer$ = ADDR(.data) + 0x800;

	.bss_DTCRAM (NOLOAD) : ALIGN(4) { *(.bss_DTCRAM) } > DTCRAM
	.bss_ITCRAM (NOLOAD) : ALIGN(4) { *(.bss_ITCRAM) } > ITCRAM
	.bss_RAM2   (NOLOAD) : ALIGN(4) { *(.bss_RAM2) }   > RAM2
	.bss (NOLOAD) : ALIGN(4)
	{
	 *(.bss_begin .bss_begin.*)
	 *(.bss .bss.*)
	 *(COMMON)
	 *(.bss_end .bss_end.*)
	} > RAM

	.noinit_DTCRAM (NOLOAD) : ALIGN(4)  { *(.noinit_DTCRAM) } > DTCRAM
	.noinit_ITCRAM (NOLOAD) : ALIGN(4)  { *(.noinit_ITCRAM) } > ITCRAM
	.noinit_RAM2   (NOLOAD) : ALIGN(4)  { *(.noinit_RAM2) }   > RAM2
	.noinit (NOLOAD) : ALIGN(4)
	{
	 _noinit = .;
	 *(.noinit .noinit.*)
	 . = ALIGN(4) ;
	 _end_noinit = .;
	} > RAM

	PROVIDE ( end = _end_noinit ); /* was _ebss */
	PROVIDE ( _end = _end_noinit );
	PROVIDE ( __end = _end_noinit );
	PROVIDE ( __end__ = _end_noinit );

	._check_stack : ALIGN(4)
	{
		 . = . + _Minimum_Stack_Size ;
	} > RAM

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


