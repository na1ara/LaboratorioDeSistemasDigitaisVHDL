library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity CodValido is
	
	port 
	(
		cod	: in std_logic_vector	(31 downto 0);
		valido	: out std_logic
	);
	
end CodValido;

architecture codvalid of CodValido is
begin
	process (cod)
		variable limite : std_logic_vector(31 downto 0);
	begin
		limite := x"64646464";
		if  to_integer(unsigned(cod)) <= to_integer(unsigned(limite)) then
			valido <= '1';
		else
			valido <= '0';
		end if;
	end process;			 		
end codvalid;