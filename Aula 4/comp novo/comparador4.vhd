library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity comparador4 is
	
	port 
	(
		a	: in std_logic_vector	(3 downto 0);
		b	: in std_logic_vector	(3 downto 0);
		maior	: out std_logic;
		menor	: out std_logic;
		igual	: out std_logic
	
	);
	
end entity;

architecture comp4 of comparador4 is

	component comparador is 

		generic 
		(
			DATA_WIDTH : natural := 16
		);

		port 
		(
			a	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
			b	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
			maior	: out std_logic;
			menor	: out std_logic;
			igual	: out std_logic
		);

	end component;

	signal fio_A, fio_B: std_logic_vector(3 downto 0);
	signal fio_maior, fio_menor, fio_igual: std_logic;

	begin
	fio_A <= a;
	fio_B <= b;
	maior <= fio_maior;
	menor <= fio_menor;
	igual <= fio_igual;
	instancia_comparador4: comparador generic map (DATA_WIDTH => 4) 
	port map(a=>fio_A,b=>fio_B,maior=>fio_maior, menor=>fio_menor,igual=>fio_igual);

end architecture;
