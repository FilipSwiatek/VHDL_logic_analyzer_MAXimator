LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY sampleAndStore_tb  IS 
END ; 
 
ARCHITECTURE sampleAndStore_tb_arch OF sampleAndStore_tb IS
  SIGNAL SLOWER   :  STD_LOGIC  ; 
  SIGNAL INPUT   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL FASTER   :  STD_LOGIC  ; 
  SIGNAL RST   :  STD_LOGIC  ; 
  SIGNAL SAMPLES   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL READ_ADDR   :  STD_LOGIC_VECTOR (10 downto 0)  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL FACTOR   :  STD_LOGIC_VECTOR (14 downto 0)  ; 
  COMPONENT sampleAndStore  
    PORT ( 
      SLOWER  : in STD_LOGIC ; 
      INPUT  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      FASTER  : in STD_LOGIC ; 
      RST  : in STD_LOGIC ; 
      SAMPLES  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      READ_ADDR  : in STD_LOGIC_VECTOR (10 downto 0) ; 
      CLK  : in STD_LOGIC ; 
      FACTOR  : out STD_LOGIC_VECTOR (14 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : sampleAndStore  
    PORT MAP ( 
      SLOWER   => SLOWER  ,
      INPUT   => INPUT  ,
      FASTER   => FASTER  ,
      RST   => RST  ,
      SAMPLES   => SAMPLES  ,
      READ_ADDR   => READ_ADDR  ,
      CLK   => CLK  ,
      FACTOR   => FACTOR   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 450 us, Period = 0 ns
  Process
	Begin
	 rst  <= '1'  ;
	wait for 450 us ;
-- dumped values till 450 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 450 us, Period = 100 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 4499
	loop
	    clk  <= '1'  ;
	   wait for 50 ns ;
	    clk  <= '0'  ;
	   wait for 50 ns ;
-- 449950 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 450 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 450 us, Period = 0 ns
  Process
	Begin
	 faster  <= '0'  ;
	wait for 450 us ;
-- dumped values till 450 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 450 us, Period = 0 ns
  Process
	Begin
	 slower  <= '0'  ;
	wait for 450 us ;
-- dumped values till 450 us
	wait;
 End Process;
END;
