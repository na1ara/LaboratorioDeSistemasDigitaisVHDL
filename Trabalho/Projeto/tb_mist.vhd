library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mist is 
end tb_mist;

architecture teste of tb_mist is

	component MisturadorTinta is
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
	end component;
	
	signal clk: std_logic := '0';
	signal fioReset: std_logic := '1';
	signal fioIniciar, fioRecipiente, fioCiano, fioMagenta, fioAmarelo, fioPreto, fioMist, fioFim: std_logic;
	signal fioSensor, fioCod, fioCodMist: std_logic_vector(31 DOWNTO 0);
	signal fioCodErro: std_logic_vector(15 DOWNTO 0);
	
begin

		instance_mist: MisturadorTinta 
			port map 
			(
				Clock => clk,
				Reset => fioReset,
				Iniciar => fioIniciar,
				Recipiente => fioRecipiente,
				Sensor_de_cor => fioSensor,
				Codigo_de_cor => fioCod,
				Saida_Ciano => fioCiano,
				Saida_Magenta => fioMagenta,
				Saida_Amarelo =>fioAmarelo,
				Saida_Preto =>fioPreto,
				Misturando => fioMist,
				Fim => fioFim,
				Codigo_de_erro => fioCodErro,
				Codigo_cor_misturada => fioCodMist
			);
		
		
		clk <= not clk after 1 ns;
		fioReset <= '0' after 2 ns, '1' after 10 ns, '0' after 12 ns;
		fioRecipiente <= '0', '1' after 4 ns, '0' after 20 ns;
		fioIniciar <= '0', '1' after 5 ns, '0' after 8 ns, '1' after 15 ns;
		fioCod <= x"00000000", x"6f7260f9" after 2 ns, x"02050301" after 8 ns;
		fioSensor <= x"00000000", x"02050301" after 5 ns;
		
end teste;
