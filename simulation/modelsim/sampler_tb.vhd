LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY sampler_tb  IS 
END ; 
 
ARCHITECTURE sampler_tb_arch OF sampler_tb IS
  SIGNAL WREN   :  STD_LOGIC  ; 
  SIGNAL ADDRQ   :  STD_LOGIC_VECTOR (10 downto 0)  ; 
  SIGNAL CE   :  STD_LOGIC  ; 
  SIGNAL INPUT   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL Q   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL RST   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  COMPONENT sampler  
    PORT ( 
      WREN  : out STD_LOGIC ; 
      ADDRQ  : out STD_LOGIC_VECTOR (10 downto 0) ; 
      CE  : in STD_LOGIC ; 
      INPUT  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      Q  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      RST  : in STD_LOGIC ; 
      CLK  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : sampler  
    PORT MAP ( 
      WREN   => WREN  ,
      ADDRQ   => ADDRQ  ,
      CE   => CE  ,
      INPUT   => INPUT  ,
      Q   => Q  ,
      RST   => RST  ,
      CLK   => CLK   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 450 us, Period = 0 ns
  Process
	Begin
	 rst  <= '1'  ;
	wait for 300 ns ;
	 rst  <= '0'  ;
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


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 450 us, Period = 200 ns
  Process
	Begin
	for Z in 1 to 2250
	loop
	    ce  <= '1'  ;
	   wait for 100 ns ;
	    ce  <= '0'  ;
	   wait for 100 ns ;
-- 450 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;
 
 Process
	Begin
	 INPUT  <= "00000000";
	 wait for 1000ns;
	 INPUT  <= INPUT +1;
	 
-- dumped values till 450 us
	wait;
 End Process;
 
END;
