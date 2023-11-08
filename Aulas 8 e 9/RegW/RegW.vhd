LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity RegW is

	generic
	(
		DATA_WIDTH : integer:= 4
	);
	port
	( 
		clock: in std_logic;
		load: in std_logic;
		D: in std_logic_vector ((DATA_WIDTH-1) downto 0);
	   Q: out std_logic_vector ((DATA_WIDTH-1) downto 0)
	 );
end RegW;

architecture RTL of RegW is
begin
	process(clock, load)
	begin
		if (rising_edge(clock) and load = '1') then
			Q <= D;
		end if;
	end process;
end RTL;