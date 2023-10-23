library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Sinalizador is
  port
	(
		Reset :  in  std_logic;
		E :  in  std_logic_vector(3 DOWNTO 0);
		
		Subindo :  out  std_logic;
		Descendo :  out  std_logic;
		Display :  out  std_logic_vector(6 DOWNTO 0)
	);
end Sinalizador;

architecture arch of Sinalizador is

	component Datapath 
		port
			(
				Clock :  in  std_logic;
				Fio_Load_E :  in  std_logic;
				Reset_MA :  in  std_logic;
				Fio_Descendo :  in  std_logic;
				Fio_Subindo :  in  std_logic;
				Fio_Atualizar :  in  std_logic;
				E :  in  std_logic_vector(3 DOWNTO 0);
				
				Fio_Maior :  out  std_logic;
				Fio_Igual :  out  std_logic;
				Fio_Menor :  out  std_logic;
				Subindo :  out  std_logic;
				Descendo :  out  std_logic;
				Display :  out  std_logic_vector(6 DOWNTO 0)
			);
	end component;
	
	component Controladora
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
	
	signal clk: std_logic:= '0';
	signal fioReset, fioMaior, fioMenor, fioIgual,fioLoad, resetMA, fioDescendo,
			 fioSubindo, fioAtualizar, saidaSubindo, saidaDescendo: std_logic;
	signal fioE: std_logic_vector (3 downto 0);
	signal saidaDisplay: std_logic_vector (6 downto 0);
	
	begin
	
		instance_datapath: Datapath port map 
				(
					clk, fioLoad, resetMA, fioDescendo, fioSubindo, fioAtualizar, fioE,
					fioMaior, fioIgual, fioMenor, saidaSubindo, saidaDescendo, saidaDisplay
				);
		instance_controladora: Controladora port map
				(
					clk, fioReset, fioMaior, fioIgual, fioMenor, 
					fioLoad, resetMA, fioDescendo, fioSubindo, fioAtualizar
				);	
end arch;