library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity drawer is

port    (
				SAMPLES: in std_logic_vector(7 downto 0); -- current sample (based on X)
				FACTOR: in std_logic_vector(14 downto 0);
            RST: in std_logic;
            CLK: in std_logic;
				X: in std_logic_vector(15 downto 0);
				Y: in std_logic_vector(15 downto 0);
				DISP_EN: in std_logic; -- inrorms when active region should be displayed
				RGB: out std_logic_vector(2 downto 0)
         );
end drawer;



architecture drawer_arch of drawer is
-- constants
constant H_SIZE_PXLS : integer := 1280; -- horizontal active pixels

-- internal signals forwarded directly to output


begin
process(DISP_EN, CLK, SAMPLES, X) -- poki co demo
begin
	if(rising_edge(CLK)) then
		if(DISP_EN = '1') then
			
			RGB(0) <= SAMPLES(0);
			RGB(1) <= SAMPLES(1);
			RGB(2) <= SAMPLES(2);
			
		else
			RGB <= "000";
		end if;
	end if;
end process;

end drawer_arch;