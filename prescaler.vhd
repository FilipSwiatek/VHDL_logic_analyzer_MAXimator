library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity prescaler is
port    (
            RST: in std_logic;
            CLK: in std_logic;
				RATIO: in std_logic_vector(9 downto 0);
            CE: out std_logic
         );
end prescaler;

architecture prescaler_arch of prescaler is

signal CE_int: std_logic;
signal counter:std_logic_vector(9 downto 0);

begin
counter: process(CLK)
begin
if (RST = '1' or counter = RATIO) then 
	counter <= "0000000000";
else

end if;
end process;

CE <= '1' when counter = RATIO
else '0';
end;


