library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity top is

port    (
            RST: in std_logic;
            CLK: in std_logic;
            H_SYNC: out std_logic;
            V_SYNC: out std_logic;
				X: out std_logic_vector(15 downto 0);
				Y: out std_logic_vector(15 downto 0);
				DISP_EN: out std_logic
         );
end top;



architecture top_arch of top is



begin

	

end top_arch;
