LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity tb_RegW is
end tb_RegW;

architecture teste of tb_RegW is

	component RegW is
	
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
	
	end component;
	
	signal fio_clock: std_logic := '0';
	signal fio_L: std_logic;
	signal fio_D, fio_Q: std_logic_vector(3 downto 0);
	
	begin
		instance_regw: RegW generic map (DATA_WIDTH => 4) port map (clock => fio_clock, D => fio_D, load => fio_L, Q => fio_Q);
		fio_clock <= not fio_clock after 1 ns;
		fio_D <= x"8", x"3" after 2 ns, x"F" after 7 ns, x"2" after 12 ns;
		fio_L <= '0', '1' after 5 ns, '0' after 7 ns, '1' after 10 ns, '0' after 12 ns;
		
end teste;