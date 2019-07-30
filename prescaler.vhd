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

signal keyboard_counter: std_logic_vector(19 downto 0) := "00000000000000000000"; -- used for debouncing
signal CE_int: std_logic;
signal counter:std_logic_vector(14 downto 0);
signal FACTOR_int: unsigned(14 downto 0); -- numeric unsigned type for shift operations
signal previous_SLOWER:std_logic_vector (18 downto 0);
signal previous_FASTER:std_logic_vector (18 downto 0);
begin
	counting: process(CLK, RST, FACTOR_int, counter)
	begin
		if(rising_edge(CLK)) then
			if ( (RST = '1') or (counter = std_logic_vector(FACTOR_int-1)) ) then 
				counter <= "000000000000000";
			else
				counter <= counter + 1;
			end if;
		end if; -- if rising_edge(CLK)
		
		if(falling_edge(CLK)) then
			if(RST = '1') then
				CE <= '1';
			else
				if(counter = std_logic_vector(FACTOR_int-1) ) then
					CE <= '1';
				else
					CE <= '0';
				end if;
			end if;	-- if(RST = '1')
		end if; -- if(falling_edge(CLK))
		
	end process;
	
	keyboard: process(CLK, RST, SLOWER, FASTER, previous_SLOWER, previous_FASTER) -- increment  or decrement FACTOR_int according to SLOWER and FASTER states
	begin
		if(rising_edge(CLK)) then
			if(keyboard_counter = 890000) then
				keyboard_counter <= "00000000000000000000"; -- reseting keyboard counter used for debouncing
				if(RST = '1') then
					FACTOR_int <= "000000000000001";
				else	
					if(previous_SLOWER = "0111111111" and SLOWER	= '1' and FACTOR_int /= "100000000000000") then
						FACTOR_int <= shift_left(FACTOR_int, 1); --left shift
					elsif(previous_FASTER = "0111111111" and FASTER	= '1' and FACTOR_int /= "000000000000001") then
						FACTOR_int <= shift_right(FACTOR_int, 1); --right shift
					else
						FACTOR_int <= FACTOR_int; -- no changes
					end if;
				end if; --if(RST = '1')
			
			
				previous_SLOWER(18) <= previous_SLOWER(17);
				previous_SLOWER(17) <= previous_SLOWER(16);
				previous_SLOWER(16) <= previous_SLOWER(15);
				previous_SLOWER(15) <= previous_SLOWER(14);
				previous_SLOWER(14) <= previous_SLOWER(13);
				previous_SLOWER(13) <= previous_SLOWER(12);
				previous_SLOWER(12) <= previous_SLOWER(11);
				previous_SLOWER(11) <= previous_SLOWER(10);
				previous_SLOWER(10) <= previous_SLOWER(9);
				previous_SLOWER(9) <=  previous_SLOWER(8);
				previous_SLOWER(8) <=  previous_SLOWER(7);
				previous_SLOWER(7) <=  previous_SLOWER(6);
				previous_SLOWER(6) <=  previous_SLOWER(5);
				previous_SLOWER(5) <=  previous_SLOWER(4);
				previous_SLOWER(4) <=  previous_SLOWER(3);
				previous_SLOWER(3) <=  previous_SLOWER(2);
				previous_SLOWER(2) <=  previous_SLOWER(1);
				previous_SLOWER(1) <=  previous_SLOWER(0);
				previous_SLOWER(0) <=  SLOWER;
				
				previous_FASTER(18) <= previous_FASTER(17);
				previous_FASTER(17) <= previous_FASTER(16);
				previous_FASTER(16) <= previous_FASTER(15);
				previous_FASTER(15) <= previous_FASTER(14);
				previous_FASTER(14) <= previous_FASTER(13);
				previous_FASTER(13) <= previous_FASTER(12);
				previous_FASTER(12) <= previous_FASTER(11);
				previous_FASTER(11) <= previous_FASTER(10);
				previous_FASTER(10) <= previous_FASTER(9);
				previous_FASTER(9) <=  previous_FASTER(8);
				previous_FASTER(8) <=  previous_FASTER(7);
				previous_FASTER(7) <=  previous_FASTER(6);
				previous_FASTER(6) <=  previous_FASTER(5);
				previous_FASTER(5) <=  previous_FASTER(4);
				previous_FASTER(4) <=  previous_FASTER(3);
				previous_FASTER(3) <=  previous_FASTER(2);
				previous_FASTER(2) <=  previous_FASTER(1);
				previous_FASTER(1) <=  previous_FASTER(0);
				previous_FASTER(0) <=  FASTER;
			else
				keyboard_counter <= keyboard_counter + 1;
			end if; --if(keyboard_counter = 890000)
		end if; -- if(rising_edge(CLK))
	end process;
	
	FACTOR <= std_logic_vector(FACTOR_int);
	
end prescaler_arch;
