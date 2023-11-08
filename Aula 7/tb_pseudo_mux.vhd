library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_pseudo_mux is 
end tb_pseudo_mux;

architecture teste of tb_pseudo_mux is

component pseudo_mux is
	port (
			  CLOCK   : in    std_logic; -- clock S
			  RESET   : in    std_logic;
			  S       : in    std_logic; -- control S
			  A,B,C,D : in    std_logic; -- data Ss
			  Q       : out   std_logic  -- data Q
		 );
end component;

signal clk: std_logic:= '0';
signal fio_rst: std_logic;
signal fio_S, fio_A, fio_B, fio_C, fio_D, fio_Q: std_logic;

begin 

instance_pseudo_mux: pseudo_mux port map (CLOCK => clk, RESET => fio_rst, S => fio_S, A => fio_A, B => fio_B, C => fio_C, D => fio_D, Q => fio_Q);

fio_rst <= '1', '0' after 1 ns, '1' after 26 ns;
clk <= not clk after 1 ns;
fio_S <= '0', '1' after 5 ns, '0' after 7 ns, '1' after 10 ns, '0' after 12 ns, '1' after  15 ns, '0' after 17 ns, '1' after 20 ns, '0' after 22 ns, '1' after 25 ns, '0' after 26 ns;
fio_A <= '1', '0'after 5 ns, '1'after 8 ns, '0'after 10 ns, '1'after 13 ns, '0'after 15 ns, '1'after 18 ns, '1'after 20 ns, '0'after 23 ns;
fio_B <= '0', '1'after 5 ns, '0'after 8 ns, '0'after 10 ns, '1'after 13 ns, '0'after 15 ns, '1'after 18 ns, '0'after 20 ns, '1'after 23 ns;
fio_C <= '0', '0'after 5 ns, '1'after 8 ns, '1'after 10 ns, '0'after 13 ns, '0'after 15 ns, '1'after 18 ns, '0'after 20 ns, '1'after 23 ns;
fio_D <= '0', '0'after 5 ns, '1'after 8 ns, '0'after 10 ns, '1'after 13 ns, '1'after 15 ns, '0'after 18 ns, '0'after 20 ns, '1'after 23 ns;
	
end teste;
