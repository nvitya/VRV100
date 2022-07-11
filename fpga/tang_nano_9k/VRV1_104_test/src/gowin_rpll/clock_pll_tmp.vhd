--Copyright (C)2014-2022 Gowin Semiconductor Corporation.
--All rights reserved.
--File Title: Template file for instantiation
--GOWIN Version: V1.9.8.05
--Part Number: GW1NR-LV9QN88PC6/I5
--Device: GW1NR-9C
--Created Time: Mon Jul 11 20:44:52 2022

--Change the instance name and port connections to the signal names
----------Copy here to design--------

component clock_pll
    port (
        clkout: out std_logic;
        clkoutp: out std_logic;
        clkin: in std_logic
    );
end component;

your_instance_name: clock_pll
    port map (
        clkout => clkout_o,
        clkoutp => clkoutp_o,
        clkin => clkin_i
    );

----------Copy end-------------------
