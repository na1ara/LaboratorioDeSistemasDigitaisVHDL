LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity tb_contador is
end tb_contador;

architecture behavior of tb_contador is 
    component contador
    port(
        Clock : in  std_logic;
        Reset : in  std_logic;
        E : in  std_logic;
        Q : out  std_logic_vector(15 downto 0)
        );
    end component;
   
    signal clk : std_logic := '0';
    signal rst : std_logic;
    signal fioE : std_logic;
    signal fioQ : std_logic_vector(15 downto 0);
begin 
    instance_cont: contador port map (
          Clock => clk,
          Reset => rst,
          E => fioE,
          Q => fioQ
        );

	clk <= not clk after 1 ms;
	rst <= '1', '0' after 5 ms, '1' after 12 ms;
	fioE <= '0', '1' after 3 ms, '0' after 10 ms;
end;
