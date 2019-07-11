library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity sampler is

port    (
				INPUT: in std_logic_vector(7 downto 0); -- sampled 8-bit vector
            RST: in std_logic; 
            CLK: in std_logic; -- global clock
            CE: in std_logic;  -- clock enable from prescaler (for sampler only - read clock is not prescaled)
				ADDRQ: out std_logic_vector (10 downto 0); -- sample address to show on output
				Q: out std_logic_vector(7 downto 0); -- output made to connect with data in from memory
				WREN: out std_logic
         );
end sampler;

architecture sampler_arch of sampler is

constant SAMPLES_num : integer := 1280; -- number of samples

signal INPUT_first: std_logic_vector(7 downto 0);
signal Q_int: std_logic_vector(7 downto 0);
signal ADDRQ_int: std_logic_vector(10 downto 0);
signal TRIGGER: std_logic;
signal WREN_int: std_logic;

begin

sampling:process(CLK, RST)
begin

if rising_edge(CLK) then
	if RST = '1' then
		ADDRQ_int <= "00000000000";
		INPUT_first <= INPUT;
		TRIGGER <= '0';
		WREN_int <= '0';
	else
		if(CE = '1') then
			if(TRIGGER = '1' or ((INPUT_first xor INPUT) /= "00000000")) then
				if(ADDRQ_int /=  SAMPLES_num - 1) then -- save input state to buffer
					if(TRIGGER = '1') then
						ADDRQ_int <= ADDRQ_int + 1;
					end if;
					TRIGGER <= '1';
					WREN_int <= '1';
					Q_int <= INPUT;
				else
					WREN_int <= '0';
				end if;
			end if; -- if(TRIGGER)	
		end if; --if(CE = '1')
	end if; -- if RST = '1'
end if; --if rising_edge(CLK)

end process;
WREN <= WREN_int; 
ADDRQ <= ADDRQ_int;
Q <= Q_int;
end sampler_arch;