library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity top is

port    (
            nRST: in std_logic;
            OSC_IN: in std_logic;
				nSLOWER: in std_logic;
            nFASTER: in std_logic;
				H_SYNC: out std_logic := '1';
            V_SYNC: out std_logic := '1';
				RGB: out std_logic_vector(2 downto 0) := "111";
				INPUT: in std_logic_vector(7 downto 0);
				nLED_PRESCALE_FACTOR: out STD_LOGIC_VECTOR (3 downto 0)
				
				
         );
end top;

architecture top_arch of top is

-- signals
signal CLK : std_logic; -- CLK from PLL
signal RST : std_logic := '1'; -- RESET from nRST
signal SLOWER: std_logic;
signal FASTER: std_logic;
signal DISP_EN : std_logic := '1';
signal SAMPLES: std_logic_vector(7 downto 0) := "11111111"; 
signal X: std_logic_vector(15 downto 0);
signal Y: std_logic_vector(15 downto 0);
signal FACTOR: std_logic_vector(14 downto 0);
signal READ_ADDR: std_logic_vector (10 downto 0);
signal LED_PRESCALE_FACTOR: STD_LOGIC_VECTOR (3 downto 0);

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

COMPONENT sampleAndStore  
    PORT ( 
      SLOWER  : in STD_LOGIC ; 
      INPUT  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      FASTER  : in STD_LOGIC ; 
      RST  : in STD_LOGIC ; 
      SAMPLES  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      READ_ADDR  : in STD_LOGIC_VECTOR (10 downto 0) ; 
      CLK  : in STD_LOGIC ; 
      FACTOR  : out STD_LOGIC_VECTOR (14 downto 0)
		); 
		
  END COMPONENT ; 

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

u3: sampleAndStore port map(
	INPUT => INPUT,
	CLK => CLK,
	RST => RST,
	SAMPLES => SAMPLES,
	FACTOR => FACTOR,
	READ_ADDR => READ_ADDR,
	FASTER => FASTER,
	SLOWER => SLOWER
);



u4: drawer port map(
	CLK => CLK,
	RST => RST,
	X => X,
	Y => Y,
	DISP_EN => DISP_EN,
	RGB => RGB,
	SAMPLES => SAMPLES,
	FACTOR => FACTOR
);

process (FACTOR)
begin
end process;

 LED_PRESCALE_FACTOR <=  "0001" when (FACTOR = "000000000000001") else 
								 "0010" when (FACTOR = "000000000000010") else
								 "0011" when (FACTOR = "000000000000100") else
								 "0100" when (FACTOR = "000000000001000") else
								 "0101" when (FACTOR = "000000000010000") else
								 "0110" when (FACTOR = "000000000100000") else
								 "0111" when (FACTOR = "000000001000000") else
								 "1000" when (FACTOR = "000000010000000") else
								 "1001" when (FACTOR = "000000100000000") else
								 "1010" when (FACTOR = "000001000000000") else
								 "1011" when (FACTOR = "000010000000000") else
								 "1100" when (FACTOR = "000100000000000") else
								 "1101" when (FACTOR = "001000000000000") else
								 "1110" when (FACTOR = "010000000000000") else
								 "1111" when (FACTOR = "100000000000000") else
								 "0000";


RST <= not nRST;
SLOWER <= not nSLOWER;
FASTER <= not nFASTER;
nLED_PRESCALE_FACTOR <= not LED_PRESCALE_FACTOR;

READ_ADDR(0) <= X(0);
READ_ADDR(1) <= X(1);
READ_ADDR(2) <= X(2);
READ_ADDR(3) <= X(3);
READ_ADDR(4) <= X(4);
READ_ADDR(5) <= X(5);
READ_ADDR(6) <= X(6);
READ_ADDR(7) <= X(7);
READ_ADDR(8) <= X(8);
READ_ADDR(9) <= X(9);
READ_ADDR(10) <= X(10);

end top_arch;
