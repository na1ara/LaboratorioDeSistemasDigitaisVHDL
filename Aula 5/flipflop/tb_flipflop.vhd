LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity tb_flipflop is
end tb_flipflop;

architecture teste of tb_flipflop is

component FlipFlopD is 

	port( clock: in std_logic;
		  D: in std_logic;
		  R: in std_logic;
	     Q: out std_logic
	    );

end component;

signal fio_clock, fio_D, fio_R, fio_Q: std_logic;

begin

	instancia_flipflop: FlipFlopD port 
	map(clock=>fio_clock,D=>fio_D,R=>fio_R,Q=>fio_Q);
	
	fio_clock <= '0', '1' after 10 ns, 	'0' after 20 ns, 	'1' after 30 ns, 	'0' after 40 ns, 	
	'1' after 50 ns, 	'0' after 60 ns, 	'1' after 70 ns, 	'0' after 80 ns;
	fio_D <= '0', '1' after 20 ns, 	'0' after 40 ns, 	'0' after 60 ns, 	'1' after 80 ns;
	fio_R <= '0', '1' after 20 ns, 	'1' after 40 ns, 	'0' after 60 ns, 	'0' after 80 ns;

end teste;