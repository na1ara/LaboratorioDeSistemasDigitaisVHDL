library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MisturadorTinta is
  port
	(
		Iniciar :  in  std_logic;
		Reset :  in  std_logic;
		Recipiente :  in  std_logic;
		Clock :  in  std_logic;
		Sensor_de_cor :  in  std_logic_vector(31 DOWNTO 0);
		Codigo_de_cor :  in  std_logic_vector(31 DOWNTO 0);
		
		Saida_Ciano :  out  std_logic;
		Saida_Magenta :  out  std_logic;
		Saida_Amarelo :  out  std_logic;
		Saida_Preto :  out  std_logic;
		Misturando :  out  std_logic;
		Fim :  out  std_logic;
		Codigo_de_erro :  out  std_logic_vector(15 DOWNTO 0);
		Codigo_cor_misturada :  out  std_logic_vector(31 DOWNTO 0)
	);
end MisturadorTinta;

architecture arch of MisturadorTinta is

	component CaminhoDados 
		port
		(
			Sensor_de_cor :  in  std_logic_vector(31 DOWNTO 0);
			Codigo_de_cor :  in  std_logic_vector(31 DOWNTO 0);
			Clock : in std_logic;
			Reset : in std_logic;
			Habilita_escrita : in std_logic;
			Habilita_pigmento : in std_logic;
			Habilita_mistura : in std_logic;
			
			Misturando :  out  std_logic;
			Ciano :  out  std_logic;
			Magenta :  out  std_logic;
			Amarelo :  out  std_logic;
			Preto :  out  std_logic;
			Codigo_valido :  out  std_logic;
			Cor_valida :  out  std_logic;
			Codigo_cor_misturada :  out  std_logic_vector(31 DOWNTO 0)
		);
	end component;
	
	component Controladora
		port
		(
			Clock :  in  std_logic;
			Reset: in  std_logic;
			Iniciar :  in  std_logic;
			Recipiente :  in  std_logic;
			Misturando :  in  std_logic;
			Codigo_valido :  in  std_logic;
			Cor_valida :  in  std_logic;
			Ciano :  in  std_logic;
			Magenta :  in  std_logic;
			Amarelo :  in  std_logic;
			Preto :  in  std_logic;
			
			Habilita_escrita :  out  std_logic;
			Habilita_pigmento :  out  std_logic;
			Habilita_mistura :  out  std_logic;
			Saida_reset :  out  std_logic;
			Saida_ciano :  out  std_logic;
			Saida_magenta :  out  std_logic;
			Saida_amarelo :  out  std_logic;
			Saida_preto :  out  std_logic;
			Saida_misturando :  out  std_logic;
			Fim :  out  std_logic;
			Codigo_de_erro :  out  std_logic_vector(15 downto 0)
		);
	end component;
	
	
	signal fioReset, fioEscrita, fioPigmento, fioMistura, fioMisturando,
			 fioCiano, fioMagenta, fioAmarelo, fioPreto, fioCodValido,
			 fioCorValida : std_logic;
	
	begin
	
		instance_datapath: CaminhoDados port map 
				(
					Sensor_de_cor, Codigo_de_cor, Clock, fioReset, fioEscrita, 
					fioPigmento, fioMistura, fioMisturando, fioCiano, fioMagenta, 
					fioAmarelo, fioPreto, fioCodValido, fioCorValida, Codigo_cor_misturada				
				);
		instance_controladora: Controladora port map
				(
					Clock, Reset, Iniciar, Recipiente, fioMisturando, fioCodValido,
					fioCorValida, fioCiano, fioMagenta, fioAmarelo, fioPreto,
					fioEscrita, fioPigmento, fioMistura, fioReset, Saida_Ciano,
					Saida_Magenta, Saida_Amarelo, Saida_Preto, Misturando, Fim, Codigo_de_erro
				);	
end arch;