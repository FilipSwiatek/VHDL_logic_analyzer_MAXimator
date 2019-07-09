LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY prescaler_tb  IS 
END ; 
 
ARCHITECTURE prescaler_tb_arch OF prescaler_tb IS
  SIGNAL CE   :  STD_LOGIC  ; 
  SIGNAL SLOWER   :  STD_LOGIC  ; 
  SIGNAL FASTER   :  STD_LOGIC  ; 
  SIGNAL RST   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL FACTOR   :  std_logic_vector (14 downto 0)  ;
  SIGNAL EFFECTIVE_CLK: STD_LOGIC; 
  COMPONENT prescaler  
    PORT ( 
      CE  : out STD_LOGIC ; 
      SLOWER  : in STD_LOGIC ; 
      FASTER  : in STD_LOGIC ; 
      RST  : in STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      FACTOR  : out std_logic_vector (14 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : prescaler  
    PORT MAP ( 
      CE   => CE  ,
      SLOWER   => SLOWER  ,
      FASTER   => FASTER  ,
      RST   => RST  ,
      CLK   => CLK  ,
      FACTOR   => FACTOR
			) ; 

  eff_clk: Process(CE, CLK)
	Begin
	EFFECTIVE_CLK <= CE and CLK;
 End Process;

-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 rst  <= '1'  ;
	wait for 200 ns ;
	rst  <= '0'  ;
	
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 3276800 ns, Period = 100 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 32767
	loop
	    clk  <= '1'  ;
	   wait for 50 ns ;
	    clk  <= '0'  ;
	   wait for 50 ns ;
-- 3276750 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 3276800 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 slower  <= '0'  ;
	 wait for 500 ns ;
	 slower  <= '1'  ;
	 wait for 1000 ns ;
	 slower  <= '0'  ;
	 wait for 500 ns ;
	 slower  <= '1'  ;
	 wait for 500 ns ;
	 slower  <= '0'  ;
	 wait for 500 ns ;
	 slower  <= '1'  ;
	 wait for 2*500 ns ;
	 slower  <= '0'  ;
	 wait for 500 ns ;
	 slower  <= '1'  ;
	 wait for 4*500 ns ;
	 slower  <= '0'  ;
	 wait for 500 ns ;
	 slower  <= '1'  ;
	 wait for 8*500 ns ;
	 slower  <= '0'  ;
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 faster  <= '0'  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
