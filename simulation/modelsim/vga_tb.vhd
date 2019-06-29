LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY vga_tb  IS 
END ; 
 
ARCHITECTURE vga_tb_arch OF vga_tb IS
  SIGNAL X   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL H_SYNC   :  STD_LOGIC  ; 
  SIGNAL Y   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL RST   :  STD_LOGIC  ; 
  SIGNAL DISP_EN   :  STD_LOGIC  ; 
  SIGNAL V_SYNC   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  COMPONENT vga_controller  
    PORT ( 
      X  : out std_logic_vector (15 downto 0) ; 
      H_SYNC  : out STD_LOGIC ; 
      Y  : out std_logic_vector (15 downto 0) ; 
      RST  : in STD_LOGIC ; 
      DISP_EN  : out STD_LOGIC ; 
      V_SYNC  : out STD_LOGIC ; 
      CLK  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : vga_controller  
    PORT MAP ( 
      X   => X  ,
      H_SYNC   => H_SYNC  ,
      Y   => Y  ,
      RST   => RST  ,
      DISP_EN   => DISP_EN  ,
      V_SYNC   => V_SYNC  ,
      CLK   => CLK   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 120 ns, Period = 0 ns
  Process
	Begin
	 rst  <= '1'  ;
	wait for 120 ns ;
	 rst  <= '0'  ;
-- dumped values till 120 ns
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 10 ms, Period = 112 ns
  Process
	Begin
	clk<='0';
	
	while true loop
	wait for 10ns;
	clk <= not clk;
	end loop;
	
	wait;
 End Process;
END;
