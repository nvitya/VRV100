
.section .asm_init  // goes to the very beginning

.option  norelax   // important, because the GP register is not set yet

.balign 4

//-------------------------------------------------
// the bootrom info block jumped over to start here
//-------------------------------------------------
.global bootrom_asm_init
bootrom_asm_init:

.cfi_startproc
.cfi_undefined ra

  la    sp, __stack  // stack pointer

//-------------------------------------------------
// Setup CPU core CSRs (some of them DO NOT have a dedicated
// reset and need to be explicitly initialized)
//-------------------------------------------------
cpu_csr_init:

  la    x10,   dummy_trap_handler // configure early trap handler
  csrw  mtvec, x10
  csrw  mepc,  x10                       // just to init mepc

  csrw  mstatus, zero                    // disable global IRQ
  csrw  mie, zero                        // absolutely no interrupts sources, thanks

  li    x11, 7
  csrw  mcounteren, x11

  li    x11,   0                         // stop all counters except for [m]cycle[h] and [m]instret[h]
  csrw  0x320, x11                       // = mcountinhibit (literal address for lagacy toolchain compatibility)

  csrw  mcycle,    zero                  // reset cycle counters
  csrw  mcycleh,   zero
  csrw  minstret,  zero                  // reset instruction counters
  csrw  minstreth, zero

  // set the global pointer
  // the GP is used for "relaxed" global data access, when the data is within -0x800 ... +0x800 range

  la    gp, __global_pointer$   // global pointer

exec_start_c:

  // initialize the registers:

//addi   x0, x0, 0  // zero: hardwired to zero
//addi   x1, x0, 0  // ra: return address
//addi   x2, x0, 0  // sp: stack pointer
//addi   x3, x0, 0  // gp: gloabl pointer
  addi   x4, x0, 0  // tp: thread pointer
  addi   x5, x0, 0  // t0: temporary
  addi   x6, x0, 0  // t1: temporary
  addi   x7, x0, 0  // t2: temporary
  addi   x8, x0, 0  // s0/fp saved register / frame pointer
  addi   x9, x0, 0  // s1 saved register
  // restore self flashing flag:
  addi  x10, x15, 0 // a0: function argument / return value
  addi  x11, x0, 0  // a1: function argument / return value
  addi  x12, x0, 0  // a2: function argument
  addi  x13, x0, 0  // a3: function argument
  addi  x14, x0, 0  // a4: function argument
  addi  x15, x0, 0  // a5: function argument

//  jal   ra, _start
  j _start

unexpected_return:
  nop
  j unexpected_return


//------------------------------------------------
// dummy trap handler
//------------------------------------------------

  .balign 4

dummy_trap_handler:
  nop
  j dummy_trap_handler

.cfi_endproc
.end

