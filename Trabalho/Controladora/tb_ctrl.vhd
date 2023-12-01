library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ctrl is 
end tb_ctrl;

architecture teste of tb_ctrl is

	component Controladora is
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
	
	signal clk: std_logic := '0';
	signal fioReset: std_logic := '1';
	signal fioIniciar, fioRecipiente, fioCiano, fioMagenta, fioAmarelo, fioPreto, fioMist,
	fioFim, fioSRst,fioCodValido, fioCorValida, fioSCiano, fioSMagenta, fioSAmarelo,
	fioSPreto, fioSMist, fioHabMist, fioEscrita, fioPigmento: std_logic;
	signal fioCodErro: std_logic_vector(15 DOWNTO 0);
	
begin

		instance_ctrl: Controladora 
			port map 
			(
				Clock => clk,
				Reset => fioReset,
				Iniciar => fioIniciar,
				Recipiente => fioRecipiente,
				Codigo_valido => fioCodValido,
				Cor_valida => fioCorValida,
				Ciano => fioCiano,
				Magenta => fioMagenta,
				Amarelo =>fioAmarelo,
				Preto =>fioPreto,
				Saida_Ciano => fioSCiano,
				Saida_Magenta => fioSMagenta,
				Saida_Amarelo =>fioSAmarelo,
				Saida_Preto =>fioSPreto,
				Misturando => fioMist,
				Fim => fioFim,
				Codigo_de_erro => fioCodErro,
				Saida_misturando => fioSMist,
				Habilita_escrita => fioEscrita,
				Habilita_pigmento => fioPigmento,
				Habilita_mistura => fioHabMist,
				Saida_reset => fioSRst
			);
		
		
		clk <= not clk after 1 ns;
		fioReset <= '0' after 2 ns, '1' after 10 ns, '0' after 12 ns;
		fioRecipiente <= '0', '1' after 4 ns, '0' after 30 ns;
		fioIniciar <= '0', '1' after 5 ns, '0' after 8 ns, '1' after 15 ns;
		fioCodValido <= '0','1' after 10 ns;
		fioMist <= '1', '0' after 30 ns;
		fioCiano <= '0', '1' after 20 ns;
		fioMagenta <= '0', '1' after 22 ns;
		fioAmarelo <= '0', '1' after 21 ns;
		fioPreto <= '0', '1' after 25 ns;
		fioCorValida <= '0', '1' after 20 ns;

end teste;
