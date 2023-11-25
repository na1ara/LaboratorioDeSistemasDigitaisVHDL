library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_compmist is
end tb_compmist;

architecture teste of tb_compmist is

	component CompMist is 

		port 
		(
			b	: in std_logic_vector	(15 downto 0);
			menor	: out std_logic
		);

	end component;

	signal fio_B: std_logic_vector(15 downto 0);
	signal fio_menor: std_logic;

	begin

	instancia_compmist: CompMist port map(b=>fio_B,menor=>fio_menor);

	fio_B <= x"0000", x"0105" after 10 ns, x"0015" after 30 ns, x"006f" after 50 ns;
end teste;