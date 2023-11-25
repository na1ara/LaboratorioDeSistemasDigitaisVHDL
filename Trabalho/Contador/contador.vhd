library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador is
    port (
        Clock, Reset, E : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR (15 downto 0)
    );
end contador;

architecture Behavior of contador is
    signal Count : STD_LOGIC_VECTOR (15 downto 0);
begin
    process (Clock, Reset)
    begin
        if (Reset = '1') then
            Count <= (others => '0');  
        elsif (Clock'event AND Clock = '1') then
            if E = '1' then
                Count <= Count + 1;
            else
                Count <= Count;
            end if;
        end if;
    end process;
    Q <= Count;
end Behavior;
