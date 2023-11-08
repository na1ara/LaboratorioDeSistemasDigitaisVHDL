-- pseudo_mux - A Finite estado Machine that mimics the behavior of mux
-- Copyright (C) 2018  Digital Systems Group - UFMG
-- 
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- 
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, see <https://www.gnu.org/licenses/>.
--

library ieee;
use ieee.std_logic_1164.all;

entity pseudo_mux is
    port (
        CLOCK   : in    std_logic; -- clock S
		  RESET   : in    std_logic;
        S       : in    std_logic; -- control S
        A,B,C,D : in    std_logic; -- data Ss
        Q       : out   std_logic  -- data Q
    );
end pseudo_mux;

architecture arch of pseudo_mux is

    type estados is (s0,s1,s2,s3);
   attribute ENUM_ENCODING: string; 
   attribute ENUM_ENCODING of estados: type is 
   "00 01 10 11"; 
	 signal estado	: estados;
	 
--	 component DivisorClock is
--		 port 
--		 (
--			CLOCK_50MHz : in std_logic;
--			reset	      : in std_logic;
--			CLOCK_1Hz   : out std_logic
--		  );
--	end component;
--	signal fio_Reset, fio_Clock1: std_logic;
begin
	
--	instance_clock: DivisorClock port map(CLOCK, fio_Reset , fio_Clock1);	
	
	process (CLOCK, RESET)            --para divisor de clock: fio_Clock1
	begin
		if reset = '1' then
			estado <= s0;
		elsif (rising_edge(CLOCK)) then    --para divisor de clock: fio_Clock1
			case estado is
				when s0=>
					if S = '1' then
						estado <= s1;
					else
						estado <= s0;
					end if;
				when s1=>
					if S = '1' then
						estado <= s2;
					else
						estado <= s1;
					end if;
				when s2=>
					if S = '1' then
						estado <= s3;
					else
						estado <= s2;
					end if;
				when s3 =>
					if S = '1' then
						estado <= s0;
					else
						estado <= s3;
					end if;
			end case;
		end if;
	end process;
	
	process (estado, A, B, C, D)
	begin
		case estado is
			when s0 =>
				Q <= A;
			when s1 =>
				Q <= B;
			when s2 =>
				Q <= C;
			when s3 =>
				Q <= D;
		end case;
	end process;

end arch;