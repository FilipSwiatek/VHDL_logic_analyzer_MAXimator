library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;









entity sampler is

port    (
				X: in std_logic_vector(7 downto 0); -- sampled 8-bit vector
            RST: in std_logic; 
            CLK: in std_logic; -- global clock
            SCE: in std_logic;  -- clock enable from prescaler (for sampler only - read clock is not prescaled)
				ADDRQ: in std_logic_vector (10 downto 0); -- sample address to show on output
				Q: out std_logic_vector(7 downto 0) -- output
         );
end sampler;

architecture sampler_arch of sampler is

constant SAMPLES_num : integer := 1280; -- number of samples

signal X_first: std_logic_vector(7 downto 0);
signal ADDR_x: std_logic_vector(10 downto 0);
signal TRIGGERED: std_logic;

begin
trigger:process(CLK, RST)
begin
if rising_edge(CLK) then
	if RST = '1' then
		X_first <= X;
		TRIGGERED <= 0;
	else
		if( X_first xor X /= "00000000") then
			TRIGGERED <= '1';
		end if;
	end if;
end if;
end process;

sampling:process(CLK, RST)
begin

if rising_edge(CLK) then
	if RST = '1' then
		ADDR_x <= "00000000000";
	else
		if(CE = '1') then
			if(TRIGGERED) then
				if(ADDR_x /=  SAMPLES_num - 1) then -- save input state to buffer
					ADDR_x <= ADDR_x + 1;
					-- tuaj bedzie wpisywanie danej do pamieci
				end if;
			end if; -- if(TRIGGERED)	
		end if; --if(CE = '1')
	end if; -- if RST = '1'
end if; --if rising_edge(CLK)

end process;
end sampler_arch;