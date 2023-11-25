library ieee;
use ieee.std_logic_1164.all;

entity Controladora is
   port
	(
		Clock :  in  std_logic;
		Reset: in  std_logic;
		Iniciar :  in  std_logic;
		Recipiente :  in  std_logic;
		Misturando :  in  std_logic;
		Pigmento_adicionado :  in  std_logic;
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
end Controladora;

architecture arch of Controladora is

    type estados is (inicio, espera, verifica, pigmento, mistura, valida, pronto, erro);
	 signal estado	: estados;
	 
begin
	
	process (CLOCK)
	begin
		if (rising_edge(CLOCK)) then
			case estado is
				when inicio =>
					estado <= espera;
				when espera=>
					if (Recipiente = '1' and Iniciar = '1') then
						estado <= verifica;
					else 
						estado <= espera;
					end if;
				when verifica=>
					if (Codigo_valido = '0') then
						estado <= erro;
					else 
						if (Reset = '1') then
							estado <= inicio;
						else 
							estado <= pigmento;
						end if;
					end if;
				when pigmento =>
					if(Ciano = '1' or Magenta = '1' or Amarelo = '1' or Preto = '1') then
						estado <= pigmento;
					else 
						estado <= mistura;
					end if;
				when mistura =>
					if (Misturando = '1') then
						estado <= mistura;
					else 
						estado <= valida;
					end if;
				when valida =>
					if (Cor_valida = '1') then
						estado <= pronto;
					else 
						 estado <= erro;
					end if;
				when pronto =>
					if (recipiente = '1') then
						estado <= pronto;
					else 
					 estado <= inicio;
					end if;
				when erro =>
					if (reset = '1') then
						estado <= inicio;
					else 
						estado <= erro;
					end if;
			end case;
		end if;
	end process;
	

	
	process (estado)
	begin
		case estado is
			when inicio =>
				Habilita_escrita <=  '0';
				Habilita_pigmento <=  '0';
				Habilita_mistura <=  '0';
				Saida_reset <=  '1';
				Saida_ciano <=  '0';
				Saida_magenta <=  '0';
				Saida_amarelo <=  '0';
				Saida_preto <=  '0';
				Saida_misturando <=  '0';
				Fim <=  '0';
				Codigo_de_erro <=  x"0000";
			when espera =>
				Habilita_escrita <=  '1';
				Habilita_pigmento <=  '0';
				Habilita_mistura <=  '0';
				Saida_reset <=  '0';
				Saida_ciano <=  '0';
				Saida_magenta <=  '0';
				Saida_amarelo <=  '0';
				Saida_preto <=  '0';
				Saida_misturando <=  '0';
				Fim <=  '0';
				Codigo_de_erro <=  x"0000";
			when verifica =>
				Habilita_escrita <=  '0';
				Habilita_pigmento <=  '0';
				Habilita_mistura <=  '0';
				Saida_reset <=  '0';
				Saida_ciano <=  '0';
				Saida_magenta <=  '0';
				Saida_amarelo <=  '0';
				Saida_preto <=  '0';
				Saida_misturando <=  '0';
				Fim <=  '0';
				Codigo_de_erro <=  x"0000";
			when pigmento =>
				Habilita_escrita <=  '0';
				Habilita_pigmento <=  '1';
				Habilita_mistura <=  '0';
				Saida_reset <=  '0';
				Saida_ciano <=  Ciano;
				Saida_magenta <=  Magenta;
				Saida_amarelo <=  Amarelo;
				Saida_preto <=  Preto;
				Saida_misturando <=  '0';
				Fim <=  '0';
				Codigo_de_erro <=  x"0000";
			when mistura =>
				Habilita_escrita <=  '0';
				Habilita_pigmento <=  '0';
				Habilita_mistura <=  '1';
				Saida_reset <=  '0';
				Saida_ciano <=  '0';
				Saida_magenta <=  '0';
				Saida_amarelo <=  '0';
				Saida_preto <=  '0';
				Saida_misturando <=  '1';
				Fim <=  '0';
				Codigo_de_erro <=  x"0000";
			when valida =>
				Habilita_escrita <=  '0';
				Habilita_pigmento <=  '0';
				Habilita_mistura <=  '0';
				Saida_reset <=  '0';
				Saida_ciano <=  '0';
				Saida_magenta <=  '0';
				Saida_amarelo <=  '0';
				Saida_preto <=  '0';
				Saida_misturando <=  '0';
				Fim <=  '0';
				Codigo_de_erro <=  x"0000";
			when pronto =>
				Habilita_escrita <=  '0';
				Habilita_pigmento <=  '0';
				Habilita_mistura <=  '0';
				Saida_reset <=  '0';
				Saida_ciano <=  '0';
				Saida_magenta <=  '0';
				Saida_amarelo <=  '0';
				Saida_preto <=  '0';
				Saida_misturando <=  '0';
				Fim <=  '1';
				Codigo_de_erro <=  x"0000";
			when erro =>
				Habilita_escrita <=  '0';
				Habilita_pigmento <=  '0';
				Habilita_mistura <=  '0';
				Saida_reset <=  '0';
				Saida_ciano <=  '0';
				Saida_magenta <=  '0';
				Saida_amarelo <=  '0';
				Saida_preto <=  '0';
				Saida_misturando <=  '0';
				Fim <=  '0';
				if (Codigo_valido = '0' and Cor_valida = '1') then
					Codigo_de_erro <=  x"0001";
				elsif (Codigo_valido = '1' and Cor_valida = '0') then
					Codigo_de_erro <=  x"0002";
				else 
					Codigo_de_erro <=  x"0003";
				end if;
		end case;
	end process;
end arch;