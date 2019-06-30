library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity drawer is

port    (
				SAMPLES: in std_logic_vector(7 downto 0); -- current sample (based on X)
            RST: in std_logic;
            CLK: in std_logic;
				X: in std_logic_vector(15 downto 0);
				Y: in std_logic_vector(15 downto 0);
				DISP_EN: in std_logic; -- inrorms when active region should be displayed
				RGB: out std_logic_vector(2 downto 0)
         );
end drawer;



architecture drawer_arch of drawer is


-- internal signals forwarded directly to output


begin


process
begin
	if(DISP_EN = '1') then
		RGB <= "111"; 
	else
		RGB <= "000";
	end if;
end process;

end drawer_arch;