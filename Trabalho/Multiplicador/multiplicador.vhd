library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplicador is
    Port (
        A : in  STD_LOGIC_VECTOR (7 downto 0);  
        Produto : out  STD_LOGIC_VECTOR (15 downto 0)  
    );
end multiplicador;

architecture Behavioral of multiplicador is
begin
    Produto <= std_logic_vector(unsigned(A) * 100);  
end Behavioral;
