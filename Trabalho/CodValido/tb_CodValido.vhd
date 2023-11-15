library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_CodValido is
end tb_CodValido;

architecture teste of tb_CodValido is
	
	component CodValido is
		port 
		(
			cod	: in std_logic_vector	(31 downto 0);
			valido	: out std_logic
		);
	end component;
	
	signal cod : std_logic_vector (31 downto 0);
	signal valido : std_logic;
	
	begin
	
		instance_codvalido: CodValido port map (cod, valido);
		
		cod <= x"00000000", x"64646465" after 2 ns, x"64646464" after 4 ns, x"641a643f" after 6ns;
	
end teste;
