library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is
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
end Datapath;

architecture arch of Datapath is

	component RegW 
		generic
		(
			DATA_WIDTH : integer:= 4
		);
		port
		( 
			clock: in std_logic;
			load: in std_logic;
			D: in std_logic_vector ((DATA_WIDTH-1) downto 0);
			Q: out std_logic_vector ((DATA_WIDTH-1) downto 0)
		 );
	end component;
	
	component Reg_MA
		generic 
		(
        W       :       integer := 32
		 );
		 port 
		 (
			  CLK     : in    std_logic;
			  RESET   : in    std_logic;
			  INPUT   : in    std_logic_vector(W - 1 downto 0);
			  OUTPUT  : out   std_logic_vector(W - 1 downto 0)
		 );
	end component;
	
	component Comparador
	
		generic
		(
			DATA_WIDTH: natural := 16
		);
		
		port
		(
			a: in std_logic_vector ((DATA_WIDTH-1) downto 0);
			b: in std_logic_vector ((DATA_WIDTH-1) downto 0);
			maior: out std_logic;
			menor: out std_logic;
			igual: out std_logic
		);
	
	end component;
	
	component BCD_7seg
		port 
		(
			entrada: in std_logic_vector (3 downto 0);
			saida: out std_logic_vector (6 downto 0)
		);
	end component;
	
	
	signal fio_E, fio_MA: std_logic_vector(3 DOWNTO 0);
	
	begin
		instance_Reg_E: RegW generic map (DATA_WIDTH => 4) port map (clock => Clock, load => Fio_Load_E, D => E, Q => fio_E);
		instance_Comp:  Comparador generic map (DATA_WIDTH => 4) port map (a => fio_E, b => fio_MA, maior => Fio_Maior, menor => Fio_Menor, igual => Fio_Igual);
		instance_MA: Reg_MA generic map (W => 4) port map (CLK => Clock, RESET => Reset_MA, INPUT => fio_E, OUTPUT => fio_MA);
		instance_BCD: BCD_7seg port map (entrada => fio_MA, saida => Display);
		
		instance_Sobe: RegW generic map (DATA_WIDTH => 1) port map (clock => Clock, load => Fio_Atualizar, D(0) => Fio_Subindo, Q(0) => Subindo);
		instance_Desce: RegW generic map (DATA_WIDTH => 1) port map (clock => Clock, load => Fio_Atualizar, D(0) => Fio_Descendo, Q(0) => Descendo);
end arch;