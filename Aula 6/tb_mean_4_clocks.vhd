library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mean_4_clocks is 
end tb_mean_4_clocks;

architecture teste of tb_mean_4_clocks is

component mean_4_clocks is
generic (
  W       :       integer := 32
 );
 port (
	  CLK     : in    std_logic;
	  RESET   : in    std_logic;
	  INPUT   : in    std_logic_vector(W - 1 downto 0);
	  OUTPUT  : out   std_logic_vector(W - 1 downto 0)
 );
end component;

signal clk: std_logic:= '0';
signal fio_rst: std_logic;
signal fio_in, fio_out: std_logic_vector(3 downto 0);

begin 

instance_mean_4_clocks: mean_4_clocks generic map (W => 4) port map (CLK => clk, RESET => fio_rst, INPUT => fio_in,OUTPUT => fio_out);

fio_in <= x"8", x"F" after 20 ns, x"1" after 40 ns;
fio_rst <= '1', '0' after 5 ns;
clk <= not clk after 1 ns;
	
end teste;