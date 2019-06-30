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
  SIGNAL ADDRQ   :  std_logic_vector (10 downto 0)  ; 
  SIGNAL X   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL Q   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL RST   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL SCE   :  STD_LOGIC  ; 
  COMPONENT sampler  
    PORT ( 
      ADDRQ  : out std_logic_vector (10 downto 0) ; 
      X  : in std_logic_vector (7 downto 0) ; 
      Q  : out std_logic_vector (7 downto 0) ; 
      RST  : in STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      SCE  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : sampler  
    PORT MAP ( 
      ADDRQ   => ADDRQ  ,
      X   => X  ,
      Q   => Q  ,
      RST   => RST  ,
      CLK   => CLK  ,
      SCE   => SCE   ) ; 


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
Process
	Begin
	 clk  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	while true loop
	    clk  <= '1'  ;
	   wait for 50 ns ;
	    clk  <= '0'  ;
	   wait for 50 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;
 
 Process
	Begin
	 sce  <= '0'  ;
	wait for 300 ns ;
	while true loop
	    sce  <= '1'  ;
	   wait for 100 ns ;
	    sce  <= '0'  ;
	   wait for 300 ns ;
	end loop;
	wait;
 End Process;
 
 Process
	Begin
	 rst  <= '1'  ;
	wait for 200ns ;
	rst  <= '0'  ;
	wait for 100ms;
	rst <= '1';
	wait for 200ns ;
	rst  <= '0'  ;
	wait;
 End Process;
 
 
Process
	variable VARx  : std_logic_vector(7 downto 0);
	Begin
	x  <= "00000000"  ;
	wait for 1000 ns ;
	while true loop
	x  <= x+1;
	wait for 1000 ns ;
	end loop;
	wait;
End Process;
 
END;
