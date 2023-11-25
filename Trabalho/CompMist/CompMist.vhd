library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity CompMist is
	

	port 
	(
		b	: in std_logic_vector	(15 downto 0);
		menor	: out std_logic
	);
	
end CompMist;

architecture comp of CompMist is
begin

		menor <= '1' when unsigned(b) < 100 else
		'0';

end comp;