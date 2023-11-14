LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity tb_Reg is
end tb_Reg;

architecture teste of tb_Reg is

	component Reg is
	
		generic
	(
		W : integer:= 16
	);
	port
	( 
		clock: in std_logic;
		reset: in std_logic;
		D: in std_logic_vector ((W-1) downto 0);
	   Q: out std_logic_vector ((W-1) downto 0)
	 );
	
	end component;
	
	signal fio_clock: std_logic := '0';
	signal fio_reset: std_logic;
	signal fio_D, fio_Q: std_logic_vector(3 downto 0);
	
	begin
		instance_regw: Reg generic map (W => 4) port map (clock => fio_clock, D => fio_D, reset => fio_reset, Q => fio_Q);
		fio_clock <= not fio_clock after 1 ns;
		fio_D <= x"8", x"3" after 2 ns, x"F" after 7 ns, x"2" after 12 ns;
		fio_reset <= '1', '0' after 5 ns, '1' after 7 ns, '0' after 10 ns;
		
end teste;