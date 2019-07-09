library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity top is

port    (
            nRST: in std_logic;
            OSC_IN: in std_logic;
				SLOWER: in std_logic;
            FASTER: in std_logic;
				H_SYNC: out std_logic := '1';
            V_SYNC: out std_logic := '1';
				RGB: out std_logic_vector(2 downto 0) := "111"
				
				
         );
end top;



architecture top_arch of top is

-- signals
signal CLK : std_logic;
signal RST : std_logic := '0';
signal DISP_EN : std_logic := '1';
signal CE: std_logic;
signal SAMPLES: std_logic_vector(7 downto 0) := "11111111"; 
signal X: std_logic_vector(15 downto 0);
signal Y: std_logic_vector(15 downto 0);
signal FACTOR: std_logic_vector(14 downto 0);

-- components
component PLL IS
	PORT
	(
		inclk0		: IN STD_LOGIC;
		c0		: OUT STD_LOGIC
	);
END component;

component vga_controller is
port    (
            RST: in std_logic;
            CLK: in std_logic;
            H_SYNC: out std_logic;
            V_SYNC: out std_logic;
				X: out std_logic_vector(15 downto 0);
				Y: out std_logic_vector(15 downto 0);
				DISP_EN: out std_logic
         );
end component;

component drawer is
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
end component;

component sampler is
port    (
				X: in std_logic_vector(7 downto 0); -- sampled 8-bit vector
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



begin

u1: PLL port map(
	inclk0 => OSC_IN,
	c0 => CLK
);

u2: vga_controller port map(
	CLK => CLK,
	RST => RST,
	H_SYNC => H_SYNC,
	V_SYNC => V_SYNC,
	X => X,
	Y => Y,
	DISP_EN => DISP_EN
);

u3: drawer port map(
	CLK => CLK,
	RST => RST,
	X => X,
	Y => Y,
	DISP_EN => DISP_EN,
	RGB => RGB,
	SAMPLES => SAMPLES,
	FACTOR => FACTOR
);


u4: prescaler port map(
	CLK => CLK,
	RST => RST,
	SLOWER => SLOWER,
	FASTER => FASTER,
	FACTOR =>FACTOR,
	CE => CE
);


RST <= not nRST;



end top_arch;
