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
				ADDRQ: out std_logic_vector (10 downto 0); -- sample address to show on output
				Q: out std_logic_vector(7 downto 0) -- output made to connect with data in from memory
         );
end sampler;

architecture sampler_arch of sampler is

constant SAMPLES_num : integer := 1280; -- number of samples

signal X_first: std_logic_vector(7 downto 0);
signal Q_int: std_logic_vector(7 downto 0);
signal ADDRQ_int: std_logic_vector(10 downto 0);
signal TRIGGER: std_logic;

begin


sampling:process(CLK, RST)
begin

if rising_edge(CLK) then
	if RST = '1' then
		ADDRQ_int <= "00000000000";
		X_first <= X;
		TRIGGER <= '0';
	else
		if(SCE = '1') then
			if(TRIGGER = '1' or ((X_first xor X) /= "00000000")) then
				if(ADDRQ_int /=  SAMPLES_num - 1) then -- save input state to buffer
					if(TRIGGER = '1') then
						ADDRQ_int <= ADDRQ_int + 1;
					end if;
					TRIGGER <= '1';
					Q_int <= X;
				end if;
			end if; -- if(TRIGGER)	
		end if; --if(CE = '1')
	end if; -- if RST = '1'
end if; --if rising_edge(CLK)

end process;
ADDRQ <= ADDRQ_int;
Q <= Q_int;
end sampler_arch;