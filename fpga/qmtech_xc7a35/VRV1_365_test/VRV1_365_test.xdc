# set the default IOSTANDARD with this line:
#set_property IOSTANDARD   LVCMOS33  [get_ports -of_objects [get_iobanks -filter { BANK_TYPE !~  "BT_MGT" }]]

#====================================================================
# FPGA Board I/O
#====================================================================
set_property PACKAGE_PIN   N11       [get_ports  CLKIN_50  ]
set_property PACKAGE_PIN   E6        [get_ports  FLED      ]
set_property PACKAGE_PIN   K5        [get_ports  FKEY      ]
#
set_property IOSTANDARD    LVCMOS33  [get_ports  CLKIN_50  ]
set_property IOSTANDARD    LVCMOS33  [get_ports  FLED      ]
set_property IOSTANDARD    LVCMOS33  [get_ports  FKEY      ]

#------------------------------------------------
# SPI Flash
#------------------------------------------------
set_property PACKAGE_PIN   L12       [get_ports  SPIM1_SS   ]
set_property PACKAGE_PIN   M15       [get_ports  SPIM1_SCLK ]
set_property PACKAGE_PIN   J13       [get_ports  SPIM1_MOSI ]
set_property PACKAGE_PIN   J14       [get_ports  SPIM1_MISO ]

set_property IOSTANDARD    LVCMOS33  [get_ports  SPIM1_*   ]

#====================================================================
# Carrier Board Signals
#====================================================================

#------------------------------------------------
# JTAG (PMOD-J11)
#------------------------------------------------
# pin 1: TDO
# pin 2: TCK
# pin 3: TMS
# pin 4: TDI
set_property PACKAGE_PIN   M12       [get_ports  JTAG_TDO ]
set_property PACKAGE_PIN   N14       [get_ports  JTAG_TCK ]
set_property PACKAGE_PIN   P15       [get_ports  JTAG_TMS ]
set_property PACKAGE_PIN   R15       [get_ports  JTAG_TDI ]
#
set_property IOSTANDARD    LVCMOS33  [get_ports  JTAG_*   ]

#------------------------------------------------
# UART
#------------------------------------------------
set_property PACKAGE_PIN   T15       [get_ports  UART0_RXD_I ]
set_property PACKAGE_PIN   T14       [get_ports  UART0_TXD_O ]
#
set_property IOSTANDARD    LVCMOS33  [get_ports  UART0_*    ]

#------------------------------------------------
# LEDS
#------------------------------------------------
set_property PACKAGE_PIN   R6        [get_ports  BLED[0]   ]
set_property PACKAGE_PIN   T5        [get_ports  BLED[1]   ]
set_property PACKAGE_PIN   R7        [get_ports  BLED[2]   ]
set_property PACKAGE_PIN   T7        [get_ports  BLED[3]   ]
set_property PACKAGE_PIN   R8        [get_ports  BLED[4]   ]
#
set_property IOSTANDARD    LVCMOS33  [get_ports  BLED[*]   ]

#------------------------------------------------
# KEYS
#------------------------------------------------
set_property PACKAGE_PIN   B7        [get_ports  BKEY[0]   ]
set_property PACKAGE_PIN   M6        [get_ports  BKEY[1]   ]
set_property PACKAGE_PIN   N6        [get_ports  BKEY[2]   ]
set_property PACKAGE_PIN   R5        [get_ports  BKEY[3]   ]
set_property PACKAGE_PIN   P6        [get_ports  BKEY[4]   ]
#
set_property IOSTANDARD    LVCMOS33  [get_ports  BKEY[*]   ]

#------------------------------------------------
# 3 Digit 7 Segment Display
#------------------------------------------------
set_property PACKAGE_PIN   T9        [get_ports D7S_SEL[2]      ]
set_property PACKAGE_PIN   P10       [get_ports D7S_SEL[1]      ]
set_property PACKAGE_PIN   T8        [get_ports D7S_SEL[0]      ]
#
set_property PACKAGE_PIN   T10       [get_ports D7S_SEGMENT[0]  ]
set_property PACKAGE_PIN   K13       [get_ports D7S_SEGMENT[1]  ]
set_property PACKAGE_PIN   P11       [get_ports D7S_SEGMENT[2]  ]
set_property PACKAGE_PIN   R11       [get_ports D7S_SEGMENT[3]  ]
set_property PACKAGE_PIN   R10       [get_ports D7S_SEGMENT[4]  ]
set_property PACKAGE_PIN   N9        [get_ports D7S_SEGMENT[5]  ]
set_property PACKAGE_PIN   K12       [get_ports D7S_SEGMENT[6]  ]
set_property PACKAGE_PIN   P9        [get_ports D7S_SEGMENT[7]  ]
#
set_property IOSTANDARD    LVCMOS33  [get_ports D7S_SEL[*]      ]
set_property IOSTANDARD    LVCMOS33  [get_ports D7S_SEGMENT[*]  ]

#====================================================================
# Special
#====================================================================
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
