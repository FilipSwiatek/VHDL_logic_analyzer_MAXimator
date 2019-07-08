library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.numeric_std.all;

entity prescaler is
port    (
            RST: in std_logic;
            CLK: in std_logic;
				SLOWER: in std_logic;
				FASTER: in std_logic;
				FACTOR: out std_logic_vector(14 downto 0);
            CE: out std_logic
         );
end prescaler;

architecture prescaler_arch of prescaler is

signal CE_int: std_logic;
signal counter:std_logic_vector(14 downto 0);
signal FACTOR_int: unsigned(14 downto 0);
signal previous_SLOWER:std_logic;
signal previous_FASTER:std_logic;
begin
	counting: process(CLK, RST, FACTOR_int, counter)
	begin
		if(rising_edge(CLK)) then
			if ( (RST = '1') or (counter = std_logic_vector(FACTOR_int)) ) then 
				counter <= "000000000000000";
			else
				counter <= counter + 1;
			end if;
		end if; -- if rising_edge(CLK)
	end process;
	
	keyboard: process(CLK, RST, SLOWER, FASTER, previous_SLOWER, previous_FASTER) -- increment  or decrement FACTOR_int according to SLOWER and FASTER states
	begin
		if(rising_edge(CLK)) then
			if(RST = '1') then
				FACTOR_int <= "000000000000001";
			else	
				if(previous_SLOWER = '0' and SLOWER	= '1' and FACTOR_int /= "000000000000001") then
					FACTOR_int <= shift_right(FACTOR_int, 1); --right shift
				elsif(previous_FASTER = '0' and FASTER	= '1' and FACTOR_int /= "100000000000000") then
					FACTOR_int <= shift_left(FACTOR_int, 1); --left shift
				else
					FACTOR_int <= FACTOR_int; -- no changes
				end if;
			end if; --if(RST = '1')
		end if;
		previous_SLOWER <= SLOWER;
		previous_FASTER <= FASTER;
	end process;
	
	CE <= '1' when counter = std_logic_vector(FACTOR_int) -- managing CE based on counter and prescaling factor
	else '0';
	FACTOR <= std_logic_vector(FACTOR_int);
	
end prescaler_arch;
