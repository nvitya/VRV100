
.section .jumpcode  // goes to the very beginning

.option  norelax   // important, because the GP register is not set yet

.balign 4

//-------------------------------------------------
// Reset entry point
//-------------------------------------------------
.global _reset_entry
_reset_entry:

.cfi_startproc
.cfi_undefined ra

  nop
  j bootrom_asm_init

.cfi_endproc
.end

