LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_multiplicador is
end tb_multiplicador;

architecture teste of tb_multiplicador is
    -- Componente Multiplicador
    component multiplicador is
        Port (
            A : in  STD_LOGIC_VECTOR (15 downto 0);
            Produto : out  STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    -- Sinais para simulação
    signal fio_A: std_logic_vector(15 downto 0);
    signal fio_Produto: std_logic_vector(31 downto 0);

begin
    -- Instanciando o Multiplicador
    instance_mult: multiplicador port map (A => fio_A, Produto => fio_Produto);
	 
	 fio_A <= "0000000000000010", "0000000000000011" after 8 ns;

end teste;
