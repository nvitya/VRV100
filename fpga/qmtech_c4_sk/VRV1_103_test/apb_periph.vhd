
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity apb_periph is
port
(
	APB_PADDR		: in  std_logic_vector(19 downto 0);
	APB_PSEL			: in  std_logic;
	APB_PENABLE		: in  std_logic;
	APB_PREADY		: out std_logic;
	APB_PWRITE		: in  std_logic;
	APB_PWDATA		: in  std_logic_vector(31 downto 0);
	APB_PRDATA		: out std_logic_vector(31 downto 0);
	APB_PSLVERROR	: out std_logic;

	GPIO_OUT			: out std_logic_vector(31 downto 0);
	GPIO_IN			: in  std_logic_vector(31 downto 0);

	RESET     		: in  std_ulogic := '0'; 	-- global reset, low-active, async
	CLK		 		: in std_logic
);
end entity;

architecture behavioral of apb_periph
is
	signal GPIO_OUT_REG : std_logic_vector(31 downto 0);
begin

	APB_PSLVERROR <= '0';
	APB_PREADY <= APB_PSEL and APB_PENABLE;

	GPIO_OUT <= GPIO_OUT_REG;

	-- async read path

	APB_PRDATA
	<=
	   GPIO_OUT_REG   when APB_PADDR = X"00000"  else
	   GPIO_IN        when APB_PADDR = X"00020"  else
		X"00000000"
	;

	-- synced write

	process (CLK)
	begin
	 if rising_edge(CLK)
	 then
		if APB_PSEL = '1' and APB_PENABLE = '1'
		then
			if APB_PWRITE = '1'
			then
				if APB_PADDR = X"00000"
				then
					GPIO_OUT_REG <= APB_PWDATA;
				end if;
			end if;
		end if;
	 end if;
	end process;

end architecture;
