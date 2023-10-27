library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Sinalizador is 
end tb_Sinalizador;

architecture teste of tb_Sinalizador is

	component Sinalizador is
		port
		(
			Reset, Clock :  in  std_logic;
			E :  in  std_logic_vector(3 DOWNTO 0);
			
			Subindo :  out  std_logic;
			Descendo :  out  std_logic;
			Display :  out  std_logic_vector(6 DOWNTO 0)
		);
	end component;
	
	signal clk: std_logic := '0';
	signal fioReset: std_logic := '1';
	signal fioE: std_logic_vector (3 downto 0);
	
	signal fioDescendo, fioSubindo: std_logic;
	signal display: std_logic_vector (6 downto 0);
	
begin

		instance_controladora: Sinalizador 
			port map 
			(
				Clock => clk,
				Reset => fioReset,
				E => fioE,
				
				Descendo => fioDescendo, 
				Subindo => fioSubindo,
				Display => display
			);
		
		
		clk <= not clk after 1 ns;
		fioReset <= '0' after 2 ns, '1' after 40 ns;
		fioE <= x"8", x"F" after 10 ns, x"1" after 20 ns, x"3" after 30 ns;
		
end teste;
