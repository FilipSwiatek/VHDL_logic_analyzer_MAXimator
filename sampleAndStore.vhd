library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity sampleAndStore is
port    (
				SAMPLES: out std_logic_vector(7 downto 0); 
				INPUT: in std_logic_vector(7 downto 0); 
				FACTOR: out std_logic_vector(14 downto 0);
            RST: in std_logic;
            CLK: in std_logic;
				FASTER: in std_logic;
				SLOWER: in std_logic;
				READ_ADDR: in std_logic_vector(10 downto 0)
         );
end sampleAndStore;


architecture sampleAndStore_arch of sampleAndStore is

--signals
signal CE: std_logic;
signal WREN: std_logic := '1';
signal WRADDR: std_logic_vector(10 downto 0);
signal PRESCALED_INPUT: std_logic_vector(7 downto 0);

--components
component sampler is
port    (
				INPUT: in std_logic_vector(7 downto 0); -- sampled 8-bit vector
            RST: in std_logic; 
            CLK: in std_logic; -- global clock
            CE: in std_logic;  -- clock enable from prescaler (for sampler only - read clock is not prescaled)
				ADDRQ: out std_logic_vector (10 downto 0); -- sample address to show on output
				Q: out std_logic_vector(7 downto 0) -- output made to connect with data in from memory
         );
end component;

component prescaler is
port    (
            RST: in std_logic;
            CLK: in std_logic;
				SLOWER: in std_logic;
				FASTER: in std_logic;
				FACTOR: out std_logic_vector(14 downto 0);
            CE: out std_logic
         );
end component;

component memory IS
	PORT
	(
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		wraddress		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END component;

begin

	--signal assignments
	
	WREN <= '1';

	--port mapping
	
	u1: sampler port map(
		CLK => CLK,
		RST => RST,
		CE => CE,
		INPUT => INPUT,
		Q => PRESCALED_INPUT,
		ADDRQ => WRADDR
	);
	
	u2: prescaler port map(
		CLK => CLK,
		RST => RST,
		SLOWER => SLOWER,
		FASTER => FASTER,
		FACTOR =>FACTOR,
		CE => CE
	);
	
	
	u3: memory port map(
		clock => CLK,
		wraddress => WRADDR,
		rdaddress => READ_ADDR,
		q => SAMPLES,
		data => PRESCALED_INPUT,
		wren => WREN
	
	);

end sampleAndStore_arch;