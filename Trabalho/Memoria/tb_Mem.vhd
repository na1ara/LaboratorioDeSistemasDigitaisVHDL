library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Mem is
end tb_Mem;

architecture teste of tb_Mem is
    
    component Mem is
      port (
        clock: in STD_LOGIC;
        ler: in STD_LOGIC;
        addr: in STD_LOGIC_VECTOR(23 downto 0);
        data_out: out STD_LOGIC_VECTOR(31 downto 0);
        valido: out STD_LOGIC
		);
    end component;
	 
	 signal clk: STD_LOGIC := '0';
    signal fio_ler: STD_LOGIC := '0';
    signal fio_addr: STD_LOGIC_VECTOR(23 downto 0);
    signal fio_out: STD_LOGIC_VECTOR(31 downto 0);
    signal fio_valido: STD_LOGIC;


	begin
		instance_Memoria: Mem port map (
			  clock => clk,
			  ler => fio_ler,
			  addr => fio_addr,
			  data_out => fio_out,
			  valido => fio_valido
		 );
		clk <= not clk after 1 ns;
		fio_ler <= not fio_ler after 5 ns;
		fio_addr <= x"000000", x"ffffff" after 2 ns, x"000015" after 4 ns, x"00001f" after 6ns;
		
end teste;
