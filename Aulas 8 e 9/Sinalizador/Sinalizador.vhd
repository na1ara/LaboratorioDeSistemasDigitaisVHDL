library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Sinalizador is
  port
	(
		Reset, Clock :  in  std_logic;
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
	
	signal fioMaior, fioMenor, fioIgual,fioLoad, resetMA, fioDescendo,
			 fioSubindo, fioAtualizar: std_logic;
	
	begin
	
		instance_datapath: Datapath port map 
				(
					Clock, fioLoad, resetMA, fioDescendo, fioSubindo, fioAtualizar, E,
					fioMaior, fioIgual, fioMenor, Subindo, Descendo, Display 
				);
		instance_controladora: Controladora port map
				(
					Clock, Reset, fioMaior, fioIgual, fioMenor, 
					fioLoad, resetMA, fioDescendo, fioSubindo, fioAtualizar
				);	
end arch;