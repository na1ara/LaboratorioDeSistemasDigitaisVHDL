library ieee;
use ieee.std_logic_1164.all;

entity Controladora is
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
end Controladora;

architecture arch of Controladora is

    type estados is (s0,s1,s2,s3,s4);
	 signal estado	: estados;
	 
begin

	process (CLOCK, RESET)
	begin
		if reset = '1' then
			estado <= s0;
		elsif (rising_edge(CLOCK)) then
			case estado is
				when s0=>
					estado <= s1;
				when s1=>
					if (Fio_Maior = '1' and Fio_Menor = '0' and Fio_Igual = '0') then
						estado <= s2;
					elsif (Fio_Maior = '0' and Fio_Menor = '1' and Fio_Igual = '0') then
						estado <= s3;
					elsif (Fio_Maior = '0' and Fio_Menor = '0' and Fio_Igual = '1') then
						estado <= s4;
					else 
						estado <= s1;
					end if;
				when s2=>
					estado <= s1;
				when s3=>
					estado <= s1;
				when s4=>
					estado <= s1;
			end case;
		end if;
	end process;
	
	process (estado)
	begin
		case estado is
			when s0 =>
				Fio_Load_E <= '1';
				Reset_MA <= '1';
				Fio_Descendo <= '1';
				Fio_Subindo <= '1';
				Fio_Atualizar <= '1';
			when s1 =>
				Fio_Load_E <= '0';
				Reset_MA <= '0';
				Fio_Descendo <= '0';
				Fio_Subindo <= '0';
				Fio_Atualizar <= '0';
			when s2 =>
				Fio_Load_E <= '1';
				Reset_MA <= '0';
				Fio_Descendo <= '0';
				Fio_Subindo <= '1';
				Fio_Atualizar <= '1';
			when s3 =>
				Fio_Load_E <= '1';
				Reset_MA <= '0';
				Fio_Descendo <= '1';
				Fio_Subindo <= '0';
				Fio_Atualizar <= '1';
			when s4 =>
				Fio_Load_E <= '1';
				Reset_MA <= '0';
				Fio_Descendo <= '0';
				Fio_Subindo <= '0';
				Fio_Atualizar <= '1';
		end case;
	end process;

end arch;