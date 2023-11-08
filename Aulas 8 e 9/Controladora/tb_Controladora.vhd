library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Controladora is 
end tb_Controladora;

architecture teste of tb_Controladora is

	component Controladora is
		port
		(
			Clock :  in  std_logic;
			Reset: in  std_logic;
			Fio_Maior :  in  std_logic;
			Fio_Igual :  in  std_logic;
			Fio_Menor :  in  std_logic;
			
			Fio_Load_E :  out  std_logic;
			Reset_MA :  out  std_logic;
			Fio_Descendo :  out  std_logic;
			Fio_Subindo :  out  std_logic;
			Fio_Atualizar :  out  std_logic
		);
	end component;
	
	signal fioLoad, fioResetMA, fioDescendo, fioSubindo, fioAtualizar: std_logic;
	signal clk, fioMaior, fioMenor, fioIgual: std_logic := '0';
	signal fioReset: std_logic := '1';
	
begin

		instance_controladora: Controladora 
			port map 
			(
				Clock => clk,
				Reset => fioReset,
				Fio_Maior => fioMaior, 
				Fio_Igual => fioIgual, 
				Fio_Menor => fioMenor,
				
				Fio_Load_E => fioLoad, 
				Reset_MA => fioResetMA, 
				Fio_Descendo => fioDescendo, 
				Fio_Subindo => fioSubindo, 
				Fio_Atualizar => fioAtualizar
			);
		
		clk <= not clk after 1 ns;
		
		fioReset <= '0' after 1 ns, '1' after 18 ns;
		fioMaior <= '1' after 2 ns, '0' after 4 ns;
		fioMenor <= '1' after 8 ns, '0' after 10 ns;
		fioIgual <= '1' after 14 ns, '0' after 16 ns;
		
end teste;
