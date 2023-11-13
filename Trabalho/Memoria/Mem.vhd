library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mem is
    Port (
        clock: in STD_LOGIC;
        ler: in STD_LOGIC;
        addr: in STD_LOGIC_VECTOR(23 downto 0);
        data_out: out STD_LOGIC_VECTOR(31 downto 0);
        valido: out STD_LOGIC
    );
end Mem;

architecture Behavioral of Mem is
    type MemType is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
    constant MemData: MemType := (
        -- Endereço 00
        X"00000064",
        -- Endereço 01
        X"64640064",
        -- Endereço 02
        X"64640063",
        -- Endereço 03
        X"64640063",
		  -- Endereço 04
        X"64640062",
		  -- Endereço 05
        X"64640062",
		  -- Endereço 06
        X"64640062",
		  -- Endereço 07
        X"64640061",
		  -- Endereço 08
        X"64640061",
		  -- Endereço 09
        X"64640060",
		  -- Endereço 0a
        X"64640060",
		  -- Endereço 0b
        X"64640060",
		  -- Endereço 0c
        X"6464005f",
		  -- Endereço 0d
        X"6464005f",
		  -- Endereço 0e
        X"6464005f",
		  -- Endereço 0f
        X"6464005e",
		  
		  -- Endereço 10
        X"6464005e",
		  -- Endereço 11
        X"6464005d",
		  -- Endereço 12
        X"6464005d",
		  -- Endereço 13
        X"6464005d",
		  -- Endereço 14
        X"6464005c",
		  -- Endereço 15
        X"6464005c",
		  -- Endereço 16
        X"6464005b",
		  -- Endereço 17
        X"6464005b",
		  -- Endereço 18 
        X"6464005b",
		  -- Endereço 19
        X"6464005a",
		  -- Endereço 1a
        X"6464005a",
		  -- Endereço 1b
        X"64640059",
		  -- Endereço 1c
        X"64640059",		  
		  -- Endereço 1d
        X"64640059",
		  -- Endereço 1e
        X"64640058",		  
		  -- Endereço 1f
        X"64640058"
		  
		  
		  
    );
begin
    process (clock, ler, addr)
		
		variable endereco: integer;
    
	 begin
	  
	  endereco := to_integer(unsigned(addr));
	  
	  if rising_edge(clock) then
			if ler = '1' then
				 if  endereco <= 32 then
					  data_out <= MemData(endereco);
					  valido <= '1';
				 else
					  data_out <= (others => '0');
					  valido <= '0';
				 end if;
			else
				 data_out <= (others => '0');
				 valido <= '0';
			end if;
	  end if;
    end process;
end Behavioral;
