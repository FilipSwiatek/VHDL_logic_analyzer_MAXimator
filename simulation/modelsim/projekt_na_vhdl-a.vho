-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/12/2019 02:41:27"

-- 
-- Device: Altera 10M08DAF256C8G Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	nRST : IN std_logic;
	OSC_IN : IN std_logic;
	nSLOWER : IN std_logic;
	nFASTER : IN std_logic;
	H_SYNC : BUFFER std_logic;
	V_SYNC : BUFFER std_logic;
	RGB : BUFFER std_logic_vector(2 DOWNTO 0);
	INPUT : IN std_logic_vector(7 DOWNTO 0);
	nLED_PRESCALE_FACTOR : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- H_SYNC	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SYNC	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nLED_PRESCALE_FACTOR[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nLED_PRESCALE_FACTOR[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nLED_PRESCALE_FACTOR[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nLED_PRESCALE_FACTOR[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRST	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSLOWER	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nFASTER	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSC_IN	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[7]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nRST : std_logic;
SIGNAL ww_OSC_IN : std_logic;
SIGNAL ww_nSLOWER : std_logic;
SIGNAL ww_nFASTER : std_logic;
SIGNAL ww_H_SYNC : std_logic;
SIGNAL ww_V_SYNC : std_logic;
SIGNAL ww_RGB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_INPUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nLED_PRESCALE_FACTOR : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \OSC_IN~input_o\ : std_logic;
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \u2|X_int[0]~16_combout\ : std_logic;
SIGNAL \u2|X_int[8]~33\ : std_logic;
SIGNAL \u2|X_int[9]~34_combout\ : std_logic;
SIGNAL \u2|Equal0~0_combout\ : std_logic;
SIGNAL \u2|blanking~0_combout\ : std_logic;
SIGNAL \u2|blanking~1_combout\ : std_logic;
SIGNAL \nRST~input_o\ : std_logic;
SIGNAL \u2|X_int[9]~35\ : std_logic;
SIGNAL \u2|X_int[10]~37_combout\ : std_logic;
SIGNAL \u2|X_int[10]~38\ : std_logic;
SIGNAL \u2|X_int[11]~39_combout\ : std_logic;
SIGNAL \u2|X_int[11]~40\ : std_logic;
SIGNAL \u2|X_int[12]~41_combout\ : std_logic;
SIGNAL \u2|X_int[12]~42\ : std_logic;
SIGNAL \u2|X_int[13]~43_combout\ : std_logic;
SIGNAL \u2|X_int[13]~44\ : std_logic;
SIGNAL \u2|X_int[14]~45_combout\ : std_logic;
SIGNAL \u2|X_int[14]~46\ : std_logic;
SIGNAL \u2|X_int[15]~47_combout\ : std_logic;
SIGNAL \u2|DISP_EN~0_combout\ : std_logic;
SIGNAL \u2|Equal0~1_combout\ : std_logic;
SIGNAL \u2|X_int[6]~36_combout\ : std_logic;
SIGNAL \u2|X_int[0]~17\ : std_logic;
SIGNAL \u2|X_int[1]~18_combout\ : std_logic;
SIGNAL \u2|X_int[1]~19\ : std_logic;
SIGNAL \u2|X_int[2]~20_combout\ : std_logic;
SIGNAL \u2|X_int[2]~21\ : std_logic;
SIGNAL \u2|X_int[3]~22_combout\ : std_logic;
SIGNAL \u2|X_int[3]~23\ : std_logic;
SIGNAL \u2|X_int[4]~24_combout\ : std_logic;
SIGNAL \u2|X_int[4]~25\ : std_logic;
SIGNAL \u2|X_int[5]~26_combout\ : std_logic;
SIGNAL \u2|X_int[5]~27\ : std_logic;
SIGNAL \u2|X_int[6]~28_combout\ : std_logic;
SIGNAL \u2|X_int[6]~29\ : std_logic;
SIGNAL \u2|X_int[7]~30_combout\ : std_logic;
SIGNAL \u2|X_int[7]~31\ : std_logic;
SIGNAL \u2|X_int[8]~32_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~1_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~0_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~2_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~3_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~4_combout\ : std_logic;
SIGNAL \u2|Y_int[0]~16_combout\ : std_logic;
SIGNAL \u2|Y_int[4]~25\ : std_logic;
SIGNAL \u2|Y_int[5]~26_combout\ : std_logic;
SIGNAL \u2|Y_int[5]~27\ : std_logic;
SIGNAL \u2|Y_int[6]~29_combout\ : std_logic;
SIGNAL \u2|Y_int[6]~30\ : std_logic;
SIGNAL \u2|Y_int[7]~31_combout\ : std_logic;
SIGNAL \u2|Y_int[7]~32\ : std_logic;
SIGNAL \u2|Y_int[8]~33_combout\ : std_logic;
SIGNAL \u2|Y_int[8]~34\ : std_logic;
SIGNAL \u2|Y_int[9]~35_combout\ : std_logic;
SIGNAL \u2|Y_int[9]~36\ : std_logic;
SIGNAL \u2|Y_int[10]~37_combout\ : std_logic;
SIGNAL \u2|Y_int[10]~38\ : std_logic;
SIGNAL \u2|Y_int[11]~39_combout\ : std_logic;
SIGNAL \u2|Y_int[11]~40\ : std_logic;
SIGNAL \u2|Y_int[12]~41_combout\ : std_logic;
SIGNAL \u2|Y_int[12]~42\ : std_logic;
SIGNAL \u2|Y_int[13]~43_combout\ : std_logic;
SIGNAL \u2|DISP_EN~1_combout\ : std_logic;
SIGNAL \u2|Y_int[13]~44\ : std_logic;
SIGNAL \u2|Y_int[14]~45_combout\ : std_logic;
SIGNAL \u2|Y_int[14]~46\ : std_logic;
SIGNAL \u2|Y_int[15]~47_combout\ : std_logic;
SIGNAL \u2|Equal1~0_combout\ : std_logic;
SIGNAL \u2|Equal1~1_combout\ : std_logic;
SIGNAL \u2|Equal1~3_combout\ : std_logic;
SIGNAL \u2|Equal1~2_combout\ : std_logic;
SIGNAL \u2|Y_int[11]~28_combout\ : std_logic;
SIGNAL \u2|Y_int[0]~17\ : std_logic;
SIGNAL \u2|Y_int[1]~18_combout\ : std_logic;
SIGNAL \u2|Y_int[1]~19\ : std_logic;
SIGNAL \u2|Y_int[2]~20_combout\ : std_logic;
SIGNAL \u2|Y_int[2]~21\ : std_logic;
SIGNAL \u2|Y_int[3]~22_combout\ : std_logic;
SIGNAL \u2|Y_int[3]~23\ : std_logic;
SIGNAL \u2|Y_int[4]~24_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~5_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~6_combout\ : std_logic;
SIGNAL \u2|blanking~2_combout\ : std_logic;
SIGNAL \u2|blanking~3_combout\ : std_logic;
SIGNAL \u2|blanking~6_combout\ : std_logic;
SIGNAL \u2|DISP_EN~2_combout\ : std_logic;
SIGNAL \u2|DISP_EN~3_combout\ : std_logic;
SIGNAL \u2|blanking~4_combout\ : std_logic;
SIGNAL \u2|blanking~5_combout\ : std_logic;
SIGNAL \u2|DISP_EN~4_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[0]~14_combout\ : std_logic;
SIGNAL \u3|u1|sampling~5_combout\ : std_logic;
SIGNAL \u3|u1|Equal1~1_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[9]~35\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[10]~36_combout\ : std_logic;
SIGNAL \u3|u1|Equal1~0_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int~38_combout\ : std_logic;
SIGNAL \u3|u2|counter[0]~15_combout\ : std_logic;
SIGNAL \u3|u2|counter[0]~16\ : std_logic;
SIGNAL \u3|u2|counter[1]~17_combout\ : std_logic;
SIGNAL \u3|u2|counter[1]~18\ : std_logic;
SIGNAL \u3|u2|counter[2]~19_combout\ : std_logic;
SIGNAL \u3|u2|counter[2]~20\ : std_logic;
SIGNAL \u3|u2|counter[3]~21_combout\ : std_logic;
SIGNAL \u3|u2|counter[3]~22\ : std_logic;
SIGNAL \u3|u2|counter[4]~23_combout\ : std_logic;
SIGNAL \u3|u2|counter[4]~24\ : std_logic;
SIGNAL \u3|u2|counter[5]~25_combout\ : std_logic;
SIGNAL \u3|u2|counter[5]~26\ : std_logic;
SIGNAL \u3|u2|counter[6]~27_combout\ : std_logic;
SIGNAL \u3|u2|counter[6]~28\ : std_logic;
SIGNAL \u3|u2|counter[7]~29_combout\ : std_logic;
SIGNAL \u3|u2|counter[7]~30\ : std_logic;
SIGNAL \u3|u2|counter[8]~31_combout\ : std_logic;
SIGNAL \u3|u2|counter[8]~32\ : std_logic;
SIGNAL \u3|u2|counter[9]~33_combout\ : std_logic;
SIGNAL \u3|u2|counter[9]~34\ : std_logic;
SIGNAL \u3|u2|counter[10]~35_combout\ : std_logic;
SIGNAL \u3|u2|counter[10]~36\ : std_logic;
SIGNAL \u3|u2|counter[11]~37_combout\ : std_logic;
SIGNAL \u3|u2|counter[11]~38\ : std_logic;
SIGNAL \u3|u2|counter[12]~39_combout\ : std_logic;
SIGNAL \u3|u2|counter[12]~40\ : std_logic;
SIGNAL \u3|u2|counter[13]~41_combout\ : std_logic;
SIGNAL \u3|u2|counter[13]~42\ : std_logic;
SIGNAL \u3|u2|counter[14]~43_combout\ : std_logic;
SIGNAL \nFASTER~input_o\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[0]~0_combout\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[2]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[3]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~7_combout\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[6]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[7]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[10]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[11]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~10_combout\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[14]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[15]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_FASTER[16]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~8_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~11_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~9_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~12_combout\ : std_logic;
SIGNAL \nSLOWER~input_o\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[0]~0_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[2]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[3]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~0_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[5]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[7]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[9]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[10]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~3_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[12]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[13]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~2_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~4_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[16]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|previous_SLOWER[17]~feeder_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~1_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~5_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[0]~19_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[0]~20_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[1]~23_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[1]~24_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[2]~25_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[2]~26_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[3]~29_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[3]~30_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[4]~0_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[4]~2_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[6]~3_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[6]~4_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[5]~27_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[5]~28_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int~5_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[8]~6_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[13]~11_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[13]~12_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[12]~9_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[12]~10_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[11]~7_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[11]~8_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \u3|u2|keyboard~6_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[9]~15_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[9]~16_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[8]~13_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[8]~14_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[7]~21_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[7]~22_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[8]~1_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[10]~17_combout\ : std_logic;
SIGNAL \u3|u2|FACTOR_int[10]~18_combout\ : std_logic;
SIGNAL \u3|u2|Add1~1\ : std_logic;
SIGNAL \u3|u2|Add1~3\ : std_logic;
SIGNAL \u3|u2|Add1~5\ : std_logic;
SIGNAL \u3|u2|Add1~7\ : std_logic;
SIGNAL \u3|u2|Add1~9\ : std_logic;
SIGNAL \u3|u2|Add1~11\ : std_logic;
SIGNAL \u3|u2|Add1~13\ : std_logic;
SIGNAL \u3|u2|Add1~15\ : std_logic;
SIGNAL \u3|u2|Add1~17\ : std_logic;
SIGNAL \u3|u2|Add1~19\ : std_logic;
SIGNAL \u3|u2|Add1~20_combout\ : std_logic;
SIGNAL \u3|u2|Add1~21\ : std_logic;
SIGNAL \u3|u2|Add1~23\ : std_logic;
SIGNAL \u3|u2|Add1~25\ : std_logic;
SIGNAL \u3|u2|Add1~27\ : std_logic;
SIGNAL \u3|u2|Add1~28_combout\ : std_logic;
SIGNAL \u3|u2|CE~0_combout\ : std_logic;
SIGNAL \u3|u2|Add1~0_combout\ : std_logic;
SIGNAL \u3|u2|Add1~2_combout\ : std_logic;
SIGNAL \u3|u2|Equal0~0_combout\ : std_logic;
SIGNAL \u3|u2|Add1~4_combout\ : std_logic;
SIGNAL \u3|u2|Add1~6_combout\ : std_logic;
SIGNAL \u3|u2|Equal0~1_combout\ : std_logic;
SIGNAL \u3|u2|Add1~14_combout\ : std_logic;
SIGNAL \u3|u2|Add1~12_combout\ : std_logic;
SIGNAL \u3|u2|Equal0~3_combout\ : std_logic;
SIGNAL \u3|u2|Add1~8_combout\ : std_logic;
SIGNAL \u3|u2|Add1~10_combout\ : std_logic;
SIGNAL \u3|u2|Equal0~2_combout\ : std_logic;
SIGNAL \u3|u2|Equal0~4_combout\ : std_logic;
SIGNAL \u3|u2|Add1~24_combout\ : std_logic;
SIGNAL \u3|u2|Add1~18_combout\ : std_logic;
SIGNAL \u3|u2|Add1~16_combout\ : std_logic;
SIGNAL \u3|u2|Equal0~5_combout\ : std_logic;
SIGNAL \u3|u2|Add1~22_combout\ : std_logic;
SIGNAL \u3|u2|Add1~26_combout\ : std_logic;
SIGNAL \u3|u2|CE~1_combout\ : std_logic;
SIGNAL \u3|u2|CE~2_combout\ : std_logic;
SIGNAL \u3|u2|CE~3_combout\ : std_logic;
SIGNAL \u3|u2|CE~feeder_combout\ : std_logic;
SIGNAL \u3|u2|CE~q\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int~16_combout\ : std_logic;
SIGNAL \INPUT[5]~input_o\ : std_logic;
SIGNAL \u3|u1|INPUT_first[5]~feeder_combout\ : std_logic;
SIGNAL \INPUT[4]~input_o\ : std_logic;
SIGNAL \u3|u1|sampling~2_combout\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \u3|u1|INPUT_first[3]~feeder_combout\ : std_logic;
SIGNAL \u3|u1|sampling~1_combout\ : std_logic;
SIGNAL \INPUT[7]~input_o\ : std_logic;
SIGNAL \u3|u1|INPUT_first[7]~feeder_combout\ : std_logic;
SIGNAL \INPUT[6]~input_o\ : std_logic;
SIGNAL \u3|u1|sampling~3_combout\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \u3|u1|INPUT_first[1]~feeder_combout\ : std_logic;
SIGNAL \u3|u1|sampling~0_combout\ : std_logic;
SIGNAL \u3|u1|sampling~4_combout\ : std_logic;
SIGNAL \u3|u1|TRIGGER~1_combout\ : std_logic;
SIGNAL \u3|u1|TRIGGER~q\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[0]~17_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[0]~15\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[1]~18_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[1]~19\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[2]~20_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[2]~21\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[3]~22_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[3]~23\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[4]~24_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[4]~25\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[5]~26_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[5]~27\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[6]~28_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[6]~29\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[7]~30_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[7]~31\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[8]~32_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[8]~33\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int[9]~34_combout\ : std_logic;
SIGNAL \u3|u1|WREN_int~2_combout\ : std_logic;
SIGNAL \u3|u1|CLEARING_MEMORY_ONGOING~2_combout\ : std_logic;
SIGNAL \u3|u1|CLEARING_MEMORY_ONGOING~q\ : std_logic;
SIGNAL \u3|u1|Equal1~2_combout\ : std_logic;
SIGNAL \u3|u1|Equal1~3_combout\ : std_logic;
SIGNAL \u3|u1|ADDRQ_int~13_combout\ : std_logic;
SIGNAL \u3|u1|TRIGGER~0_combout\ : std_logic;
SIGNAL \u3|u1|WREN_int~3_combout\ : std_logic;
SIGNAL \u3|u1|WREN_int~4_combout\ : std_logic;
SIGNAL \u3|u1|WREN_int~5_combout\ : std_logic;
SIGNAL \u3|u1|WREN_int~q\ : std_logic;
SIGNAL \u3|u1|Q_int~2_combout\ : std_logic;
SIGNAL \u3|u1|Q_int[0]~5_combout\ : std_logic;
SIGNAL \u3|u1|Q_int~3_combout\ : std_logic;
SIGNAL \u3|u1|Q_int~4_combout\ : std_logic;
SIGNAL \u4|RGB~0_combout\ : std_logic;
SIGNAL \u4|RGB~1_combout\ : std_logic;
SIGNAL \u4|RGB~2_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[3]~2_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[3]~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[0]~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR~7_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[3]~5_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[3]~6_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR~8_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[3]~10_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[3]~11_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[2]~14_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[2]~15_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[2]~9_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[2]~12_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[2]~18_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[2]~16_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[2]~13_combout\ : std_logic;
SIGNAL \LED_PRESCALE_FACTOR[3]~17_combout\ : std_logic;
SIGNAL \u2|X_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3|u2|previous_SLOWER\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u2|Y_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3|u2|FACTOR_int\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u4|RGB\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u3|u2|counter\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u3|u3|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|u1|ADDRQ_int\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u3|u2|previous_FASTER\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u3|u1|Q_int\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|u1|INPUT_first\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_LED_PRESCALE_FACTOR[2]~18_combout\ : std_logic;
SIGNAL \ALT_INV_LED_PRESCALE_FACTOR[3]~17_combout\ : std_logic;
SIGNAL \ALT_INV_LED_PRESCALE_FACTOR~8_combout\ : std_logic;
SIGNAL \ALT_INV_LED_PRESCALE_FACTOR[0]~4_combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_FACTOR_int\ : std_logic_vector(13 DOWNTO 13);

BEGIN

ww_nRST <= nRST;
ww_OSC_IN <= OSC_IN;
ww_nSLOWER <= nSLOWER;
ww_nFASTER <= nFASTER;
H_SYNC <= ww_H_SYNC;
V_SYNC <= ww_V_SYNC;
RGB <= ww_RGB;
ww_INPUT <= INPUT;
nLED_PRESCALE_FACTOR <= ww_nLED_PRESCALE_FACTOR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \OSC_IN~input_o\);

\u1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\u1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\u1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\u1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\u1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \u3|u1|Q_int\(2) & \u3|u1|Q_int\(1) & \u3|u1|Q_int\(0));

\u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u3|u1|ADDRQ_int\(10) & \u3|u1|ADDRQ_int\(9) & \u3|u1|ADDRQ_int\(8) & \u3|u1|ADDRQ_int\(7) & \u3|u1|ADDRQ_int\(6) & \u3|u1|ADDRQ_int\(5) & \u3|u1|ADDRQ_int\(4) & 
\u3|u1|ADDRQ_int\(3) & \u3|u1|ADDRQ_int\(2) & \u3|u1|ADDRQ_int\(1) & \u3|u1|ADDRQ_int\(0));

\u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u2|X_int\(10) & \u2|X_int\(9) & \u2|X_int\(8) & \u2|X_int\(7) & \u2|X_int\(6) & \u2|X_int\(5) & \u2|X_int\(4) & \u2|X_int\(3) & \u2|X_int\(2) & \u2|X_int\(1) & 
\u2|X_int\(0));

\u3|u3|altsyncram_component|auto_generated|q_b\(0) <= \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u3|u3|altsyncram_component|auto_generated|q_b\(1) <= \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u3|u3|altsyncram_component|auto_generated|q_b\(2) <= \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|altpll_component|auto_generated|wire_pll1_clk\(0));
\u1|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\ALT_INV_LED_PRESCALE_FACTOR[2]~18_combout\ <= NOT \LED_PRESCALE_FACTOR[2]~18_combout\;
\ALT_INV_LED_PRESCALE_FACTOR[3]~17_combout\ <= NOT \LED_PRESCALE_FACTOR[3]~17_combout\;
\ALT_INV_LED_PRESCALE_FACTOR~8_combout\ <= NOT \LED_PRESCALE_FACTOR~8_combout\;
\ALT_INV_LED_PRESCALE_FACTOR[0]~4_combout\ <= NOT \LED_PRESCALE_FACTOR[0]~4_combout\;
\u3|u2|ALT_INV_FACTOR_int\(13) <= NOT \u3|u2|FACTOR_int\(13);

-- Location: LCCOMB_X11_Y22_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y7_N2
\H_SYNC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|HV_SYNC~4_combout\,
	devoe => ww_devoe,
	o => ww_H_SYNC);

-- Location: IOOBUF_X10_Y17_N2
\V_SYNC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|HV_SYNC~6_combout\,
	devoe => ww_devoe,
	o => ww_V_SYNC);

-- Location: IOOBUF_X3_Y0_N23
\RGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|RGB\(0),
	devoe => ww_devoe,
	o => ww_RGB(0));

-- Location: IOOBUF_X0_Y5_N9
\RGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|RGB\(1),
	devoe => ww_devoe,
	o => ww_RGB(1));

-- Location: IOOBUF_X0_Y5_N2
\RGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|RGB\(2),
	devoe => ww_devoe,
	o => ww_RGB(2));

-- Location: IOOBUF_X31_Y6_N9
\nLED_PRESCALE_FACTOR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED_PRESCALE_FACTOR[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_nLED_PRESCALE_FACTOR(0));

-- Location: IOOBUF_X31_Y4_N23
\nLED_PRESCALE_FACTOR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED_PRESCALE_FACTOR~8_combout\,
	devoe => ww_devoe,
	o => ww_nLED_PRESCALE_FACTOR(1));

-- Location: IOOBUF_X31_Y4_N16
\nLED_PRESCALE_FACTOR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED_PRESCALE_FACTOR[2]~18_combout\,
	devoe => ww_devoe,
	o => ww_nLED_PRESCALE_FACTOR(2));

-- Location: IOOBUF_X31_Y4_N2
\nLED_PRESCALE_FACTOR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED_PRESCALE_FACTOR[3]~17_combout\,
	devoe => ww_devoe,
	o => ww_nLED_PRESCALE_FACTOR(3));

-- Location: IOIBUF_X0_Y7_N22
\OSC_IN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OSC_IN,
	o => \OSC_IN~input_o\);

-- Location: PLL_1
\u1|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 36,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 100000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 36,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 347,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \u1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \u1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \u1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \u1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y13_N0
\u2|X_int[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[0]~16_combout\ = \u2|X_int\(0) $ (VCC)
-- \u2|X_int[0]~17\ = CARRY(\u2|X_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(0),
	datad => VCC,
	combout => \u2|X_int[0]~16_combout\,
	cout => \u2|X_int[0]~17\);

-- Location: LCCOMB_X22_Y13_N16
\u2|X_int[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[8]~32_combout\ = (\u2|X_int\(8) & (\u2|X_int[7]~31\ $ (GND))) # (!\u2|X_int\(8) & (!\u2|X_int[7]~31\ & VCC))
-- \u2|X_int[8]~33\ = CARRY((\u2|X_int\(8) & !\u2|X_int[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(8),
	datad => VCC,
	cin => \u2|X_int[7]~31\,
	combout => \u2|X_int[8]~32_combout\,
	cout => \u2|X_int[8]~33\);

-- Location: LCCOMB_X22_Y13_N18
\u2|X_int[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[9]~34_combout\ = (\u2|X_int\(9) & (!\u2|X_int[8]~33\)) # (!\u2|X_int\(9) & ((\u2|X_int[8]~33\) # (GND)))
-- \u2|X_int[9]~35\ = CARRY((!\u2|X_int[8]~33\) # (!\u2|X_int\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(9),
	datad => VCC,
	cin => \u2|X_int[8]~33\,
	combout => \u2|X_int[9]~34_combout\,
	cout => \u2|X_int[9]~35\);

-- Location: FF_X22_Y13_N19
\u2|X_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[9]~34_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(9));

-- Location: LCCOMB_X19_Y3_N26
\u2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~0_combout\ = ((\u2|X_int\(1)) # (!\u2|X_int\(9))) # (!\u2|X_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(0),
	datac => \u2|X_int\(1),
	datad => \u2|X_int\(9),
	combout => \u2|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y3_N14
\u2|blanking~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~0_combout\ = (\u2|X_int\(5) & (\u2|X_int\(6) & (!\u2|X_int\(7) & !\u2|X_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(5),
	datab => \u2|X_int\(6),
	datac => \u2|X_int\(7),
	datad => \u2|X_int\(2),
	combout => \u2|blanking~0_combout\);

-- Location: LCCOMB_X19_Y3_N16
\u2|blanking~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~1_combout\ = (!\u2|X_int\(8) & (\u2|X_int\(4) & (\u2|blanking~0_combout\ & !\u2|X_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(8),
	datab => \u2|X_int\(4),
	datac => \u2|blanking~0_combout\,
	datad => \u2|X_int\(3),
	combout => \u2|blanking~1_combout\);

-- Location: IOIBUF_X31_Y4_N8
\nRST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRST,
	o => \nRST~input_o\);

-- Location: LCCOMB_X22_Y13_N20
\u2|X_int[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[10]~37_combout\ = (\u2|X_int\(10) & (\u2|X_int[9]~35\ $ (GND))) # (!\u2|X_int\(10) & (!\u2|X_int[9]~35\ & VCC))
-- \u2|X_int[10]~38\ = CARRY((\u2|X_int\(10) & !\u2|X_int[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(10),
	datad => VCC,
	cin => \u2|X_int[9]~35\,
	combout => \u2|X_int[10]~37_combout\,
	cout => \u2|X_int[10]~38\);

-- Location: FF_X22_Y13_N21
\u2|X_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[10]~37_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(10));

-- Location: LCCOMB_X22_Y13_N22
\u2|X_int[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[11]~39_combout\ = (\u2|X_int\(11) & (!\u2|X_int[10]~38\)) # (!\u2|X_int\(11) & ((\u2|X_int[10]~38\) # (GND)))
-- \u2|X_int[11]~40\ = CARRY((!\u2|X_int[10]~38\) # (!\u2|X_int\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(11),
	datad => VCC,
	cin => \u2|X_int[10]~38\,
	combout => \u2|X_int[11]~39_combout\,
	cout => \u2|X_int[11]~40\);

-- Location: FF_X22_Y13_N23
\u2|X_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[11]~39_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(11));

-- Location: LCCOMB_X22_Y13_N24
\u2|X_int[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[12]~41_combout\ = (\u2|X_int\(12) & (\u2|X_int[11]~40\ $ (GND))) # (!\u2|X_int\(12) & (!\u2|X_int[11]~40\ & VCC))
-- \u2|X_int[12]~42\ = CARRY((\u2|X_int\(12) & !\u2|X_int[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(12),
	datad => VCC,
	cin => \u2|X_int[11]~40\,
	combout => \u2|X_int[12]~41_combout\,
	cout => \u2|X_int[12]~42\);

-- Location: FF_X22_Y13_N25
\u2|X_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[12]~41_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(12));

-- Location: LCCOMB_X22_Y13_N26
\u2|X_int[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[13]~43_combout\ = (\u2|X_int\(13) & (!\u2|X_int[12]~42\)) # (!\u2|X_int\(13) & ((\u2|X_int[12]~42\) # (GND)))
-- \u2|X_int[13]~44\ = CARRY((!\u2|X_int[12]~42\) # (!\u2|X_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(13),
	datad => VCC,
	cin => \u2|X_int[12]~42\,
	combout => \u2|X_int[13]~43_combout\,
	cout => \u2|X_int[13]~44\);

-- Location: FF_X22_Y13_N27
\u2|X_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[13]~43_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(13));

-- Location: LCCOMB_X22_Y13_N28
\u2|X_int[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[14]~45_combout\ = (\u2|X_int\(14) & (\u2|X_int[13]~44\ $ (GND))) # (!\u2|X_int\(14) & (!\u2|X_int[13]~44\ & VCC))
-- \u2|X_int[14]~46\ = CARRY((\u2|X_int\(14) & !\u2|X_int[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(14),
	datad => VCC,
	cin => \u2|X_int[13]~44\,
	combout => \u2|X_int[14]~45_combout\,
	cout => \u2|X_int[14]~46\);

-- Location: FF_X22_Y13_N29
\u2|X_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[14]~45_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(14));

-- Location: LCCOMB_X22_Y13_N30
\u2|X_int[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[15]~47_combout\ = \u2|X_int\(15) $ (\u2|X_int[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(15),
	cin => \u2|X_int[14]~46\,
	combout => \u2|X_int[15]~47_combout\);

-- Location: FF_X22_Y13_N31
\u2|X_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[15]~47_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(15));

-- Location: LCCOMB_X23_Y13_N24
\u2|DISP_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~0_combout\ = (!\u2|X_int\(11) & (!\u2|X_int\(12) & (!\u2|X_int\(13) & !\u2|X_int\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(11),
	datab => \u2|X_int\(12),
	datac => \u2|X_int\(13),
	datad => \u2|X_int\(14),
	combout => \u2|DISP_EN~0_combout\);

-- Location: LCCOMB_X19_Y3_N20
\u2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~1_combout\ = (\u2|X_int\(10) & (!\u2|X_int\(15) & \u2|DISP_EN~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(10),
	datac => \u2|X_int\(15),
	datad => \u2|DISP_EN~0_combout\,
	combout => \u2|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y3_N2
\u2|X_int[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[6]~36_combout\ = ((!\u2|Equal0~0_combout\ & (\u2|blanking~1_combout\ & \u2|Equal0~1_combout\))) # (!\nRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~0_combout\,
	datab => \u2|blanking~1_combout\,
	datac => \nRST~input_o\,
	datad => \u2|Equal0~1_combout\,
	combout => \u2|X_int[6]~36_combout\);

-- Location: FF_X22_Y13_N1
\u2|X_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[0]~16_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(0));

-- Location: LCCOMB_X22_Y13_N2
\u2|X_int[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[1]~18_combout\ = (\u2|X_int\(1) & (!\u2|X_int[0]~17\)) # (!\u2|X_int\(1) & ((\u2|X_int[0]~17\) # (GND)))
-- \u2|X_int[1]~19\ = CARRY((!\u2|X_int[0]~17\) # (!\u2|X_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(1),
	datad => VCC,
	cin => \u2|X_int[0]~17\,
	combout => \u2|X_int[1]~18_combout\,
	cout => \u2|X_int[1]~19\);

-- Location: FF_X22_Y13_N3
\u2|X_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[1]~18_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(1));

-- Location: LCCOMB_X22_Y13_N4
\u2|X_int[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[2]~20_combout\ = (\u2|X_int\(2) & (\u2|X_int[1]~19\ $ (GND))) # (!\u2|X_int\(2) & (!\u2|X_int[1]~19\ & VCC))
-- \u2|X_int[2]~21\ = CARRY((\u2|X_int\(2) & !\u2|X_int[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(2),
	datad => VCC,
	cin => \u2|X_int[1]~19\,
	combout => \u2|X_int[2]~20_combout\,
	cout => \u2|X_int[2]~21\);

-- Location: FF_X22_Y13_N5
\u2|X_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[2]~20_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(2));

-- Location: LCCOMB_X22_Y13_N6
\u2|X_int[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[3]~22_combout\ = (\u2|X_int\(3) & (!\u2|X_int[2]~21\)) # (!\u2|X_int\(3) & ((\u2|X_int[2]~21\) # (GND)))
-- \u2|X_int[3]~23\ = CARRY((!\u2|X_int[2]~21\) # (!\u2|X_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(3),
	datad => VCC,
	cin => \u2|X_int[2]~21\,
	combout => \u2|X_int[3]~22_combout\,
	cout => \u2|X_int[3]~23\);

-- Location: FF_X22_Y13_N7
\u2|X_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[3]~22_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(3));

-- Location: LCCOMB_X22_Y13_N8
\u2|X_int[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[4]~24_combout\ = (\u2|X_int\(4) & (\u2|X_int[3]~23\ $ (GND))) # (!\u2|X_int\(4) & (!\u2|X_int[3]~23\ & VCC))
-- \u2|X_int[4]~25\ = CARRY((\u2|X_int\(4) & !\u2|X_int[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(4),
	datad => VCC,
	cin => \u2|X_int[3]~23\,
	combout => \u2|X_int[4]~24_combout\,
	cout => \u2|X_int[4]~25\);

-- Location: FF_X22_Y13_N9
\u2|X_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[4]~24_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(4));

-- Location: LCCOMB_X22_Y13_N10
\u2|X_int[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[5]~26_combout\ = (\u2|X_int\(5) & (!\u2|X_int[4]~25\)) # (!\u2|X_int\(5) & ((\u2|X_int[4]~25\) # (GND)))
-- \u2|X_int[5]~27\ = CARRY((!\u2|X_int[4]~25\) # (!\u2|X_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(5),
	datad => VCC,
	cin => \u2|X_int[4]~25\,
	combout => \u2|X_int[5]~26_combout\,
	cout => \u2|X_int[5]~27\);

-- Location: FF_X22_Y13_N11
\u2|X_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[5]~26_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(5));

-- Location: LCCOMB_X22_Y13_N12
\u2|X_int[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[6]~28_combout\ = (\u2|X_int\(6) & (\u2|X_int[5]~27\ $ (GND))) # (!\u2|X_int\(6) & (!\u2|X_int[5]~27\ & VCC))
-- \u2|X_int[6]~29\ = CARRY((\u2|X_int\(6) & !\u2|X_int[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(6),
	datad => VCC,
	cin => \u2|X_int[5]~27\,
	combout => \u2|X_int[6]~28_combout\,
	cout => \u2|X_int[6]~29\);

-- Location: FF_X22_Y13_N13
\u2|X_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[6]~28_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(6));

-- Location: LCCOMB_X22_Y13_N14
\u2|X_int[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[7]~30_combout\ = (\u2|X_int\(7) & (!\u2|X_int[6]~29\)) # (!\u2|X_int\(7) & ((\u2|X_int[6]~29\) # (GND)))
-- \u2|X_int[7]~31\ = CARRY((!\u2|X_int[6]~29\) # (!\u2|X_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(7),
	datad => VCC,
	cin => \u2|X_int[6]~29\,
	combout => \u2|X_int[7]~30_combout\,
	cout => \u2|X_int[7]~31\);

-- Location: FF_X22_Y13_N15
\u2|X_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[7]~30_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(7));

-- Location: FF_X22_Y13_N17
\u2|X_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[8]~32_combout\,
	sclr => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(8));

-- Location: LCCOMB_X19_Y3_N10
\u2|HV_SYNC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~1_combout\ = (\u2|X_int\(8) & ((\u2|X_int\(6) & (!\u2|X_int\(7) & \u2|X_int\(5))) # (!\u2|X_int\(6) & (\u2|X_int\(7) & !\u2|X_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(8),
	datab => \u2|X_int\(6),
	datac => \u2|X_int\(7),
	datad => \u2|X_int\(5),
	combout => \u2|HV_SYNC~1_combout\);

-- Location: LCCOMB_X19_Y3_N24
\u2|HV_SYNC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~0_combout\ = (\u2|X_int\(9)) # (((\u2|X_int\(15)) # (!\u2|DISP_EN~0_combout\)) # (!\u2|X_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(9),
	datab => \u2|X_int\(10),
	datac => \u2|X_int\(15),
	datad => \u2|DISP_EN~0_combout\,
	combout => \u2|HV_SYNC~0_combout\);

-- Location: LCCOMB_X19_Y3_N28
\u2|HV_SYNC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~2_combout\ = (\u2|X_int\(1) & \u2|X_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|X_int\(1),
	datad => \u2|X_int\(2),
	combout => \u2|HV_SYNC~2_combout\);

-- Location: LCCOMB_X19_Y3_N6
\u2|HV_SYNC~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~3_combout\ = (\u2|X_int\(7) & (((!\u2|X_int\(3) & !\u2|HV_SYNC~2_combout\)) # (!\u2|X_int\(4)))) # (!\u2|X_int\(7) & ((\u2|X_int\(4)) # ((\u2|X_int\(3) & \u2|HV_SYNC~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(3),
	datab => \u2|HV_SYNC~2_combout\,
	datac => \u2|X_int\(7),
	datad => \u2|X_int\(4),
	combout => \u2|HV_SYNC~3_combout\);

-- Location: LCCOMB_X19_Y3_N0
\u2|HV_SYNC~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~4_combout\ = ((\u2|HV_SYNC~0_combout\) # (!\u2|HV_SYNC~3_combout\)) # (!\u2|HV_SYNC~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|HV_SYNC~1_combout\,
	datab => \u2|HV_SYNC~0_combout\,
	datad => \u2|HV_SYNC~3_combout\,
	combout => \u2|HV_SYNC~4_combout\);

-- Location: LCCOMB_X19_Y12_N0
\u2|Y_int[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[0]~16_combout\ = \u2|Y_int\(0) $ (VCC)
-- \u2|Y_int[0]~17\ = CARRY(\u2|Y_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(0),
	datad => VCC,
	combout => \u2|Y_int[0]~16_combout\,
	cout => \u2|Y_int[0]~17\);

-- Location: LCCOMB_X19_Y12_N8
\u2|Y_int[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[4]~24_combout\ = (\u2|Y_int\(4) & (\u2|Y_int[3]~23\ $ (GND))) # (!\u2|Y_int\(4) & (!\u2|Y_int[3]~23\ & VCC))
-- \u2|Y_int[4]~25\ = CARRY((\u2|Y_int\(4) & !\u2|Y_int[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(4),
	datad => VCC,
	cin => \u2|Y_int[3]~23\,
	combout => \u2|Y_int[4]~24_combout\,
	cout => \u2|Y_int[4]~25\);

-- Location: LCCOMB_X19_Y12_N10
\u2|Y_int[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[5]~26_combout\ = (\u2|Y_int\(5) & (!\u2|Y_int[4]~25\)) # (!\u2|Y_int\(5) & ((\u2|Y_int[4]~25\) # (GND)))
-- \u2|Y_int[5]~27\ = CARRY((!\u2|Y_int[4]~25\) # (!\u2|Y_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(5),
	datad => VCC,
	cin => \u2|Y_int[4]~25\,
	combout => \u2|Y_int[5]~26_combout\,
	cout => \u2|Y_int[5]~27\);

-- Location: FF_X19_Y12_N11
\u2|Y_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[5]~26_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(5));

-- Location: LCCOMB_X19_Y12_N12
\u2|Y_int[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[6]~29_combout\ = (\u2|Y_int\(6) & (\u2|Y_int[5]~27\ $ (GND))) # (!\u2|Y_int\(6) & (!\u2|Y_int[5]~27\ & VCC))
-- \u2|Y_int[6]~30\ = CARRY((\u2|Y_int\(6) & !\u2|Y_int[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(6),
	datad => VCC,
	cin => \u2|Y_int[5]~27\,
	combout => \u2|Y_int[6]~29_combout\,
	cout => \u2|Y_int[6]~30\);

-- Location: FF_X19_Y12_N13
\u2|Y_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[6]~29_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(6));

-- Location: LCCOMB_X19_Y12_N14
\u2|Y_int[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[7]~31_combout\ = (\u2|Y_int\(7) & (!\u2|Y_int[6]~30\)) # (!\u2|Y_int\(7) & ((\u2|Y_int[6]~30\) # (GND)))
-- \u2|Y_int[7]~32\ = CARRY((!\u2|Y_int[6]~30\) # (!\u2|Y_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(7),
	datad => VCC,
	cin => \u2|Y_int[6]~30\,
	combout => \u2|Y_int[7]~31_combout\,
	cout => \u2|Y_int[7]~32\);

-- Location: FF_X19_Y12_N15
\u2|Y_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[7]~31_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(7));

-- Location: LCCOMB_X19_Y12_N16
\u2|Y_int[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[8]~33_combout\ = (\u2|Y_int\(8) & (\u2|Y_int[7]~32\ $ (GND))) # (!\u2|Y_int\(8) & (!\u2|Y_int[7]~32\ & VCC))
-- \u2|Y_int[8]~34\ = CARRY((\u2|Y_int\(8) & !\u2|Y_int[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(8),
	datad => VCC,
	cin => \u2|Y_int[7]~32\,
	combout => \u2|Y_int[8]~33_combout\,
	cout => \u2|Y_int[8]~34\);

-- Location: FF_X19_Y12_N17
\u2|Y_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[8]~33_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(8));

-- Location: LCCOMB_X19_Y12_N18
\u2|Y_int[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[9]~35_combout\ = (\u2|Y_int\(9) & (!\u2|Y_int[8]~34\)) # (!\u2|Y_int\(9) & ((\u2|Y_int[8]~34\) # (GND)))
-- \u2|Y_int[9]~36\ = CARRY((!\u2|Y_int[8]~34\) # (!\u2|Y_int\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(9),
	datad => VCC,
	cin => \u2|Y_int[8]~34\,
	combout => \u2|Y_int[9]~35_combout\,
	cout => \u2|Y_int[9]~36\);

-- Location: FF_X19_Y12_N19
\u2|Y_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[9]~35_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(9));

-- Location: LCCOMB_X19_Y12_N20
\u2|Y_int[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[10]~37_combout\ = (\u2|Y_int\(10) & (\u2|Y_int[9]~36\ $ (GND))) # (!\u2|Y_int\(10) & (!\u2|Y_int[9]~36\ & VCC))
-- \u2|Y_int[10]~38\ = CARRY((\u2|Y_int\(10) & !\u2|Y_int[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(10),
	datad => VCC,
	cin => \u2|Y_int[9]~36\,
	combout => \u2|Y_int[10]~37_combout\,
	cout => \u2|Y_int[10]~38\);

-- Location: FF_X19_Y12_N21
\u2|Y_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[10]~37_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(10));

-- Location: LCCOMB_X19_Y12_N22
\u2|Y_int[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[11]~39_combout\ = (\u2|Y_int\(11) & (!\u2|Y_int[10]~38\)) # (!\u2|Y_int\(11) & ((\u2|Y_int[10]~38\) # (GND)))
-- \u2|Y_int[11]~40\ = CARRY((!\u2|Y_int[10]~38\) # (!\u2|Y_int\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(11),
	datad => VCC,
	cin => \u2|Y_int[10]~38\,
	combout => \u2|Y_int[11]~39_combout\,
	cout => \u2|Y_int[11]~40\);

-- Location: FF_X19_Y12_N23
\u2|Y_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[11]~39_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(11));

-- Location: LCCOMB_X19_Y12_N24
\u2|Y_int[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[12]~41_combout\ = (\u2|Y_int\(12) & (\u2|Y_int[11]~40\ $ (GND))) # (!\u2|Y_int\(12) & (!\u2|Y_int[11]~40\ & VCC))
-- \u2|Y_int[12]~42\ = CARRY((\u2|Y_int\(12) & !\u2|Y_int[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(12),
	datad => VCC,
	cin => \u2|Y_int[11]~40\,
	combout => \u2|Y_int[12]~41_combout\,
	cout => \u2|Y_int[12]~42\);

-- Location: FF_X19_Y12_N25
\u2|Y_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[12]~41_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(12));

-- Location: LCCOMB_X19_Y12_N26
\u2|Y_int[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[13]~43_combout\ = (\u2|Y_int\(13) & (!\u2|Y_int[12]~42\)) # (!\u2|Y_int\(13) & ((\u2|Y_int[12]~42\) # (GND)))
-- \u2|Y_int[13]~44\ = CARRY((!\u2|Y_int[12]~42\) # (!\u2|Y_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(13),
	datad => VCC,
	cin => \u2|Y_int[12]~42\,
	combout => \u2|Y_int[13]~43_combout\,
	cout => \u2|Y_int[13]~44\);

-- Location: FF_X19_Y12_N27
\u2|Y_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[13]~43_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(13));

-- Location: LCCOMB_X18_Y12_N8
\u2|DISP_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~1_combout\ = (!\u2|Y_int\(13) & (!\u2|Y_int\(11) & (!\u2|Y_int\(10) & !\u2|Y_int\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(13),
	datab => \u2|Y_int\(11),
	datac => \u2|Y_int\(10),
	datad => \u2|Y_int\(12),
	combout => \u2|DISP_EN~1_combout\);

-- Location: LCCOMB_X19_Y12_N28
\u2|Y_int[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[14]~45_combout\ = (\u2|Y_int\(14) & (\u2|Y_int[13]~44\ $ (GND))) # (!\u2|Y_int\(14) & (!\u2|Y_int[13]~44\ & VCC))
-- \u2|Y_int[14]~46\ = CARRY((\u2|Y_int\(14) & !\u2|Y_int[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(14),
	datad => VCC,
	cin => \u2|Y_int[13]~44\,
	combout => \u2|Y_int[14]~45_combout\,
	cout => \u2|Y_int[14]~46\);

-- Location: FF_X19_Y12_N29
\u2|Y_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[14]~45_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(14));

-- Location: LCCOMB_X19_Y12_N30
\u2|Y_int[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[15]~47_combout\ = \u2|Y_int\(15) $ (\u2|Y_int[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(15),
	cin => \u2|Y_int[14]~46\,
	combout => \u2|Y_int[15]~47_combout\);

-- Location: FF_X19_Y12_N31
\u2|Y_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[15]~47_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(15));

-- Location: LCCOMB_X22_Y12_N24
\u2|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~0_combout\ = (\u2|Y_int\(6) & (\u2|Y_int\(9) & (\u2|Y_int\(7) & !\u2|Y_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(6),
	datab => \u2|Y_int\(9),
	datac => \u2|Y_int\(7),
	datad => \u2|Y_int\(8),
	combout => \u2|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y12_N10
\u2|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~1_combout\ = (\u2|DISP_EN~1_combout\ & (!\u2|Y_int\(14) & (!\u2|Y_int\(15) & \u2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|DISP_EN~1_combout\,
	datab => \u2|Y_int\(14),
	datac => \u2|Y_int\(15),
	datad => \u2|Equal1~0_combout\,
	combout => \u2|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y12_N16
\u2|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~3_combout\ = ((\u2|Y_int\(1)) # ((!\u2|Y_int\(3)) # (!\u2|Y_int\(0)))) # (!\u2|Y_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(2),
	datab => \u2|Y_int\(1),
	datac => \u2|Y_int\(0),
	datad => \u2|Y_int\(3),
	combout => \u2|Equal1~3_combout\);

-- Location: LCCOMB_X22_Y12_N30
\u2|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~2_combout\ = (\u2|Y_int\(4)) # (!\u2|Y_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(4),
	datac => \u2|Y_int\(5),
	combout => \u2|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y12_N2
\u2|Y_int[11]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[11]~28_combout\ = ((\u2|Equal1~1_combout\ & (!\u2|Equal1~3_combout\ & !\u2|Equal1~2_combout\))) # (!\nRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal1~1_combout\,
	datab => \u2|Equal1~3_combout\,
	datac => \u2|Equal1~2_combout\,
	datad => \nRST~input_o\,
	combout => \u2|Y_int[11]~28_combout\);

-- Location: FF_X19_Y12_N1
\u2|Y_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[0]~16_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(0));

-- Location: LCCOMB_X19_Y12_N2
\u2|Y_int[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[1]~18_combout\ = (\u2|Y_int\(1) & (!\u2|Y_int[0]~17\)) # (!\u2|Y_int\(1) & ((\u2|Y_int[0]~17\) # (GND)))
-- \u2|Y_int[1]~19\ = CARRY((!\u2|Y_int[0]~17\) # (!\u2|Y_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(1),
	datad => VCC,
	cin => \u2|Y_int[0]~17\,
	combout => \u2|Y_int[1]~18_combout\,
	cout => \u2|Y_int[1]~19\);

-- Location: FF_X19_Y12_N3
\u2|Y_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[1]~18_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(1));

-- Location: LCCOMB_X19_Y12_N4
\u2|Y_int[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[2]~20_combout\ = (\u2|Y_int\(2) & (\u2|Y_int[1]~19\ $ (GND))) # (!\u2|Y_int\(2) & (!\u2|Y_int[1]~19\ & VCC))
-- \u2|Y_int[2]~21\ = CARRY((\u2|Y_int\(2) & !\u2|Y_int[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(2),
	datad => VCC,
	cin => \u2|Y_int[1]~19\,
	combout => \u2|Y_int[2]~20_combout\,
	cout => \u2|Y_int[2]~21\);

-- Location: FF_X19_Y12_N5
\u2|Y_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[2]~20_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(2));

-- Location: LCCOMB_X19_Y12_N6
\u2|Y_int[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[3]~22_combout\ = (\u2|Y_int\(3) & (!\u2|Y_int[2]~21\)) # (!\u2|Y_int\(3) & ((\u2|Y_int[2]~21\) # (GND)))
-- \u2|Y_int[3]~23\ = CARRY((!\u2|Y_int[2]~21\) # (!\u2|Y_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(3),
	datad => VCC,
	cin => \u2|Y_int[2]~21\,
	combout => \u2|Y_int[3]~22_combout\,
	cout => \u2|Y_int[3]~23\);

-- Location: FF_X19_Y12_N7
\u2|Y_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[3]~22_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(3));

-- Location: FF_X19_Y12_N9
\u2|Y_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[4]~24_combout\,
	sclr => \u2|Y_int[11]~28_combout\,
	ena => \u2|X_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(4));

-- Location: LCCOMB_X22_Y12_N20
\u2|HV_SYNC~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~5_combout\ = (\u2|Y_int\(2) & (!\u2|Y_int\(3) & ((\u2|Y_int\(1)) # (\u2|Y_int\(0))))) # (!\u2|Y_int\(2) & (!\u2|Y_int\(1) & ((\u2|Y_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(2),
	datab => \u2|Y_int\(1),
	datac => \u2|Y_int\(0),
	datad => \u2|Y_int\(3),
	combout => \u2|HV_SYNC~5_combout\);

-- Location: LCCOMB_X22_Y12_N6
\u2|HV_SYNC~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~6_combout\ = (((\u2|Y_int\(5)) # (!\u2|Equal1~1_combout\)) # (!\u2|HV_SYNC~5_combout\)) # (!\u2|Y_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(4),
	datab => \u2|HV_SYNC~5_combout\,
	datac => \u2|Y_int\(5),
	datad => \u2|Equal1~1_combout\,
	combout => \u2|HV_SYNC~6_combout\);

-- Location: LCCOMB_X19_Y3_N12
\u2|blanking~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~2_combout\ = ((!\u2|X_int\(8) & !\u2|X_int\(9))) # (!\u2|X_int\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(10),
	datac => \u2|X_int\(8),
	datad => \u2|X_int\(9),
	combout => \u2|blanking~2_combout\);

-- Location: LCCOMB_X19_Y3_N22
\u2|blanking~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~3_combout\ = (\u2|blanking~2_combout\) # ((\u2|blanking~1_combout\ & (\u2|X_int\(1) & !\u2|X_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|blanking~2_combout\,
	datab => \u2|blanking~1_combout\,
	datac => \u2|X_int\(1),
	datad => \u2|X_int\(0),
	combout => \u2|blanking~3_combout\);

-- Location: LCCOMB_X22_Y12_N18
\u2|blanking~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~6_combout\ = ((!\u2|Y_int\(8) & ((!\u2|Y_int\(7)) # (!\u2|Y_int\(6))))) # (!\u2|Y_int\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(6),
	datab => \u2|Y_int\(9),
	datac => \u2|Y_int\(7),
	datad => \u2|Y_int\(8),
	combout => \u2|blanking~6_combout\);

-- Location: LCCOMB_X20_Y12_N24
\u2|DISP_EN~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~2_combout\ = (!\u2|Y_int\(15) & !\u2|Y_int\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Y_int\(15),
	datad => \u2|Y_int\(14),
	combout => \u2|DISP_EN~2_combout\);

-- Location: LCCOMB_X22_Y12_N4
\u2|DISP_EN~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~3_combout\ = (\u2|DISP_EN~1_combout\ & (\u2|DISP_EN~2_combout\ & (!\u2|X_int\(15) & \u2|DISP_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|DISP_EN~1_combout\,
	datab => \u2|DISP_EN~2_combout\,
	datac => \u2|X_int\(15),
	datad => \u2|DISP_EN~0_combout\,
	combout => \u2|DISP_EN~3_combout\);

-- Location: LCCOMB_X22_Y12_N14
\u2|blanking~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~4_combout\ = (\u2|Y_int\(2) & (\u2|Y_int\(1) & (!\u2|Y_int\(0) & \u2|Y_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(2),
	datab => \u2|Y_int\(1),
	datac => \u2|Y_int\(0),
	datad => \u2|Y_int\(3),
	combout => \u2|blanking~4_combout\);

-- Location: LCCOMB_X22_Y12_N0
\u2|blanking~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~5_combout\ = (!\u2|Y_int\(4) & (!\u2|Y_int\(8) & ((\u2|blanking~4_combout\) # (!\u2|Y_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(4),
	datab => \u2|Y_int\(5),
	datac => \u2|blanking~4_combout\,
	datad => \u2|Y_int\(8),
	combout => \u2|blanking~5_combout\);

-- Location: LCCOMB_X22_Y12_N12
\u2|DISP_EN~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~4_combout\ = (\u2|blanking~3_combout\ & (\u2|DISP_EN~3_combout\ & ((\u2|blanking~6_combout\) # (\u2|blanking~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|blanking~3_combout\,
	datab => \u2|blanking~6_combout\,
	datac => \u2|DISP_EN~3_combout\,
	datad => \u2|blanking~5_combout\,
	combout => \u2|DISP_EN~4_combout\);

-- Location: LCCOMB_X28_Y12_N2
\u3|u1|ADDRQ_int[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[0]~14_combout\ = \u3|u1|ADDRQ_int\(0) $ (VCC)
-- \u3|u1|ADDRQ_int[0]~15\ = CARRY(\u3|u1|ADDRQ_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|ADDRQ_int\(0),
	datad => VCC,
	combout => \u3|u1|ADDRQ_int[0]~14_combout\,
	cout => \u3|u1|ADDRQ_int[0]~15\);

-- Location: LCCOMB_X30_Y5_N18
\u3|u1|sampling~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|sampling~5_combout\ = (!\nRST~input_o\ & !\u3|u1|CLEARING_MEMORY_ONGOING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nRST~input_o\,
	datac => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	combout => \u3|u1|sampling~5_combout\);

-- Location: LCCOMB_X28_Y12_N0
\u3|u1|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|Equal1~1_combout\ = (((!\u3|u1|ADDRQ_int\(5)) # (!\u3|u1|ADDRQ_int\(3))) # (!\u3|u1|ADDRQ_int\(2))) # (!\u3|u1|ADDRQ_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int\(4),
	datab => \u3|u1|ADDRQ_int\(2),
	datac => \u3|u1|ADDRQ_int\(3),
	datad => \u3|u1|ADDRQ_int\(5),
	combout => \u3|u1|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y12_N20
\u3|u1|ADDRQ_int[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[9]~34_combout\ = (\u3|u1|ADDRQ_int\(9) & (!\u3|u1|ADDRQ_int[8]~33\)) # (!\u3|u1|ADDRQ_int\(9) & ((\u3|u1|ADDRQ_int[8]~33\) # (GND)))
-- \u3|u1|ADDRQ_int[9]~35\ = CARRY((!\u3|u1|ADDRQ_int[8]~33\) # (!\u3|u1|ADDRQ_int\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|ADDRQ_int\(9),
	datad => VCC,
	cin => \u3|u1|ADDRQ_int[8]~33\,
	combout => \u3|u1|ADDRQ_int[9]~34_combout\,
	cout => \u3|u1|ADDRQ_int[9]~35\);

-- Location: LCCOMB_X28_Y12_N22
\u3|u1|ADDRQ_int[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[10]~36_combout\ = \u3|u1|ADDRQ_int\(10) $ (!\u3|u1|ADDRQ_int[9]~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int\(10),
	cin => \u3|u1|ADDRQ_int[9]~35\,
	combout => \u3|u1|ADDRQ_int[10]~36_combout\);

-- Location: FF_X28_Y12_N23
\u3|u1|ADDRQ_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[10]~36_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(10));

-- Location: LCCOMB_X28_Y12_N24
\u3|u1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|Equal1~0_combout\ = (\u3|u1|ADDRQ_int\(9)) # (((\u3|u1|ADDRQ_int\(8)) # (!\u3|u1|ADDRQ_int\(1))) # (!\u3|u1|ADDRQ_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int\(9),
	datab => \u3|u1|ADDRQ_int\(0),
	datac => \u3|u1|ADDRQ_int\(1),
	datad => \u3|u1|ADDRQ_int\(8),
	combout => \u3|u1|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y12_N30
\u3|u1|ADDRQ_int~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int~38_combout\ = ((\u3|u1|Equal1~0_combout\) # ((!\u3|u1|ADDRQ_int\(7)) # (!\u3|u1|ADDRQ_int\(6)))) # (!\u3|u1|ADDRQ_int\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int\(10),
	datab => \u3|u1|Equal1~0_combout\,
	datac => \u3|u1|ADDRQ_int\(6),
	datad => \u3|u1|ADDRQ_int\(7),
	combout => \u3|u1|ADDRQ_int~38_combout\);

-- Location: LCCOMB_X22_Y11_N2
\u3|u2|counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[0]~15_combout\ = \u3|u2|counter\(0) $ (VCC)
-- \u3|u2|counter[0]~16\ = CARRY(\u3|u2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|counter\(0),
	datad => VCC,
	combout => \u3|u2|counter[0]~15_combout\,
	cout => \u3|u2|counter[0]~16\);

-- Location: FF_X22_Y11_N3
\u3|u2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[0]~15_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(0));

-- Location: LCCOMB_X22_Y11_N4
\u3|u2|counter[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[1]~17_combout\ = (\u3|u2|counter\(1) & (!\u3|u2|counter[0]~16\)) # (!\u3|u2|counter\(1) & ((\u3|u2|counter[0]~16\) # (GND)))
-- \u3|u2|counter[1]~18\ = CARRY((!\u3|u2|counter[0]~16\) # (!\u3|u2|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|counter\(1),
	datad => VCC,
	cin => \u3|u2|counter[0]~16\,
	combout => \u3|u2|counter[1]~17_combout\,
	cout => \u3|u2|counter[1]~18\);

-- Location: FF_X22_Y11_N5
\u3|u2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[1]~17_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(1));

-- Location: LCCOMB_X22_Y11_N6
\u3|u2|counter[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[2]~19_combout\ = (\u3|u2|counter\(2) & (\u3|u2|counter[1]~18\ $ (GND))) # (!\u3|u2|counter\(2) & (!\u3|u2|counter[1]~18\ & VCC))
-- \u3|u2|counter[2]~20\ = CARRY((\u3|u2|counter\(2) & !\u3|u2|counter[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(2),
	datad => VCC,
	cin => \u3|u2|counter[1]~18\,
	combout => \u3|u2|counter[2]~19_combout\,
	cout => \u3|u2|counter[2]~20\);

-- Location: FF_X22_Y11_N7
\u3|u2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[2]~19_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(2));

-- Location: LCCOMB_X22_Y11_N8
\u3|u2|counter[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[3]~21_combout\ = (\u3|u2|counter\(3) & (!\u3|u2|counter[2]~20\)) # (!\u3|u2|counter\(3) & ((\u3|u2|counter[2]~20\) # (GND)))
-- \u3|u2|counter[3]~22\ = CARRY((!\u3|u2|counter[2]~20\) # (!\u3|u2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|counter\(3),
	datad => VCC,
	cin => \u3|u2|counter[2]~20\,
	combout => \u3|u2|counter[3]~21_combout\,
	cout => \u3|u2|counter[3]~22\);

-- Location: FF_X22_Y11_N9
\u3|u2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[3]~21_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(3));

-- Location: LCCOMB_X22_Y11_N10
\u3|u2|counter[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[4]~23_combout\ = (\u3|u2|counter\(4) & (\u3|u2|counter[3]~22\ $ (GND))) # (!\u3|u2|counter\(4) & (!\u3|u2|counter[3]~22\ & VCC))
-- \u3|u2|counter[4]~24\ = CARRY((\u3|u2|counter\(4) & !\u3|u2|counter[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(4),
	datad => VCC,
	cin => \u3|u2|counter[3]~22\,
	combout => \u3|u2|counter[4]~23_combout\,
	cout => \u3|u2|counter[4]~24\);

-- Location: FF_X22_Y11_N11
\u3|u2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[4]~23_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(4));

-- Location: LCCOMB_X22_Y11_N12
\u3|u2|counter[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[5]~25_combout\ = (\u3|u2|counter\(5) & (!\u3|u2|counter[4]~24\)) # (!\u3|u2|counter\(5) & ((\u3|u2|counter[4]~24\) # (GND)))
-- \u3|u2|counter[5]~26\ = CARRY((!\u3|u2|counter[4]~24\) # (!\u3|u2|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(5),
	datad => VCC,
	cin => \u3|u2|counter[4]~24\,
	combout => \u3|u2|counter[5]~25_combout\,
	cout => \u3|u2|counter[5]~26\);

-- Location: FF_X22_Y11_N13
\u3|u2|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[5]~25_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(5));

-- Location: LCCOMB_X22_Y11_N14
\u3|u2|counter[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[6]~27_combout\ = (\u3|u2|counter\(6) & (\u3|u2|counter[5]~26\ $ (GND))) # (!\u3|u2|counter\(6) & (!\u3|u2|counter[5]~26\ & VCC))
-- \u3|u2|counter[6]~28\ = CARRY((\u3|u2|counter\(6) & !\u3|u2|counter[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|counter\(6),
	datad => VCC,
	cin => \u3|u2|counter[5]~26\,
	combout => \u3|u2|counter[6]~27_combout\,
	cout => \u3|u2|counter[6]~28\);

-- Location: FF_X22_Y11_N15
\u3|u2|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[6]~27_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(6));

-- Location: LCCOMB_X22_Y11_N16
\u3|u2|counter[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[7]~29_combout\ = (\u3|u2|counter\(7) & (!\u3|u2|counter[6]~28\)) # (!\u3|u2|counter\(7) & ((\u3|u2|counter[6]~28\) # (GND)))
-- \u3|u2|counter[7]~30\ = CARRY((!\u3|u2|counter[6]~28\) # (!\u3|u2|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|counter\(7),
	datad => VCC,
	cin => \u3|u2|counter[6]~28\,
	combout => \u3|u2|counter[7]~29_combout\,
	cout => \u3|u2|counter[7]~30\);

-- Location: FF_X22_Y11_N17
\u3|u2|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[7]~29_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(7));

-- Location: LCCOMB_X22_Y11_N18
\u3|u2|counter[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[8]~31_combout\ = (\u3|u2|counter\(8) & (\u3|u2|counter[7]~30\ $ (GND))) # (!\u3|u2|counter\(8) & (!\u3|u2|counter[7]~30\ & VCC))
-- \u3|u2|counter[8]~32\ = CARRY((\u3|u2|counter\(8) & !\u3|u2|counter[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|counter\(8),
	datad => VCC,
	cin => \u3|u2|counter[7]~30\,
	combout => \u3|u2|counter[8]~31_combout\,
	cout => \u3|u2|counter[8]~32\);

-- Location: FF_X22_Y11_N19
\u3|u2|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[8]~31_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(8));

-- Location: LCCOMB_X22_Y11_N20
\u3|u2|counter[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[9]~33_combout\ = (\u3|u2|counter\(9) & (!\u3|u2|counter[8]~32\)) # (!\u3|u2|counter\(9) & ((\u3|u2|counter[8]~32\) # (GND)))
-- \u3|u2|counter[9]~34\ = CARRY((!\u3|u2|counter[8]~32\) # (!\u3|u2|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|counter\(9),
	datad => VCC,
	cin => \u3|u2|counter[8]~32\,
	combout => \u3|u2|counter[9]~33_combout\,
	cout => \u3|u2|counter[9]~34\);

-- Location: FF_X22_Y11_N21
\u3|u2|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[9]~33_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(9));

-- Location: LCCOMB_X22_Y11_N22
\u3|u2|counter[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[10]~35_combout\ = (\u3|u2|counter\(10) & (\u3|u2|counter[9]~34\ $ (GND))) # (!\u3|u2|counter\(10) & (!\u3|u2|counter[9]~34\ & VCC))
-- \u3|u2|counter[10]~36\ = CARRY((\u3|u2|counter\(10) & !\u3|u2|counter[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(10),
	datad => VCC,
	cin => \u3|u2|counter[9]~34\,
	combout => \u3|u2|counter[10]~35_combout\,
	cout => \u3|u2|counter[10]~36\);

-- Location: FF_X22_Y11_N23
\u3|u2|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[10]~35_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(10));

-- Location: LCCOMB_X22_Y11_N24
\u3|u2|counter[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[11]~37_combout\ = (\u3|u2|counter\(11) & (!\u3|u2|counter[10]~36\)) # (!\u3|u2|counter\(11) & ((\u3|u2|counter[10]~36\) # (GND)))
-- \u3|u2|counter[11]~38\ = CARRY((!\u3|u2|counter[10]~36\) # (!\u3|u2|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|counter\(11),
	datad => VCC,
	cin => \u3|u2|counter[10]~36\,
	combout => \u3|u2|counter[11]~37_combout\,
	cout => \u3|u2|counter[11]~38\);

-- Location: FF_X22_Y11_N25
\u3|u2|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[11]~37_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(11));

-- Location: LCCOMB_X22_Y11_N26
\u3|u2|counter[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[12]~39_combout\ = (\u3|u2|counter\(12) & (\u3|u2|counter[11]~38\ $ (GND))) # (!\u3|u2|counter\(12) & (!\u3|u2|counter[11]~38\ & VCC))
-- \u3|u2|counter[12]~40\ = CARRY((\u3|u2|counter\(12) & !\u3|u2|counter[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(12),
	datad => VCC,
	cin => \u3|u2|counter[11]~38\,
	combout => \u3|u2|counter[12]~39_combout\,
	cout => \u3|u2|counter[12]~40\);

-- Location: FF_X22_Y11_N27
\u3|u2|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[12]~39_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(12));

-- Location: LCCOMB_X22_Y11_N28
\u3|u2|counter[13]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[13]~41_combout\ = (\u3|u2|counter\(13) & (!\u3|u2|counter[12]~40\)) # (!\u3|u2|counter\(13) & ((\u3|u2|counter[12]~40\) # (GND)))
-- \u3|u2|counter[13]~42\ = CARRY((!\u3|u2|counter[12]~40\) # (!\u3|u2|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|counter\(13),
	datad => VCC,
	cin => \u3|u2|counter[12]~40\,
	combout => \u3|u2|counter[13]~41_combout\,
	cout => \u3|u2|counter[13]~42\);

-- Location: FF_X22_Y11_N29
\u3|u2|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[13]~41_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(13));

-- Location: LCCOMB_X22_Y11_N30
\u3|u2|counter[14]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|counter[14]~43_combout\ = \u3|u2|counter\(14) $ (!\u3|u2|counter[13]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(14),
	cin => \u3|u2|counter[13]~42\,
	combout => \u3|u2|counter[14]~43_combout\);

-- Location: FF_X22_Y11_N31
\u3|u2|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|counter[14]~43_combout\,
	sclr => \u3|u2|CE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|counter\(14));

-- Location: IOIBUF_X31_Y17_N8
\nFASTER~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nFASTER,
	o => \nFASTER~input_o\);

-- Location: LCCOMB_X27_Y19_N30
\u3|u2|previous_FASTER[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[0]~0_combout\ = !\nFASTER~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nFASTER~input_o\,
	combout => \u3|u2|previous_FASTER[0]~0_combout\);

-- Location: FF_X27_Y19_N31
\u3|u2|previous_FASTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(0));

-- Location: FF_X27_Y19_N13
\u3|u2|previous_FASTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_FASTER\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(1));

-- Location: LCCOMB_X27_Y19_N10
\u3|u2|previous_FASTER[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[2]~feeder_combout\ = \u3|u2|previous_FASTER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_FASTER\(1),
	combout => \u3|u2|previous_FASTER[2]~feeder_combout\);

-- Location: FF_X27_Y19_N11
\u3|u2|previous_FASTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(2));

-- Location: LCCOMB_X27_Y19_N24
\u3|u2|previous_FASTER[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[3]~feeder_combout\ = \u3|u2|previous_FASTER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_FASTER\(2),
	combout => \u3|u2|previous_FASTER[3]~feeder_combout\);

-- Location: FF_X27_Y19_N25
\u3|u2|previous_FASTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(3));

-- Location: LCCOMB_X27_Y19_N12
\u3|u2|keyboard~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~7_combout\ = (((!\u3|u2|previous_FASTER\(2)) # (!\u3|u2|previous_FASTER\(1))) # (!\u3|u2|previous_FASTER\(3))) # (!\u3|u2|previous_FASTER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|previous_FASTER\(0),
	datab => \u3|u2|previous_FASTER\(3),
	datac => \u3|u2|previous_FASTER\(1),
	datad => \u3|u2|previous_FASTER\(2),
	combout => \u3|u2|keyboard~7_combout\);

-- Location: FF_X25_Y16_N5
\u3|u2|previous_FASTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_FASTER\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(4));

-- Location: FF_X25_Y16_N13
\u3|u2|previous_FASTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_FASTER\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(5));

-- Location: LCCOMB_X25_Y16_N16
\u3|u2|previous_FASTER[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[6]~feeder_combout\ = \u3|u2|previous_FASTER\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_FASTER\(5),
	combout => \u3|u2|previous_FASTER[6]~feeder_combout\);

-- Location: FF_X25_Y16_N17
\u3|u2|previous_FASTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(6));

-- Location: LCCOMB_X25_Y16_N14
\u3|u2|previous_FASTER[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[7]~feeder_combout\ = \u3|u2|previous_FASTER\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_FASTER\(6),
	combout => \u3|u2|previous_FASTER[7]~feeder_combout\);

-- Location: FF_X25_Y16_N15
\u3|u2|previous_FASTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(7));

-- Location: FF_X25_Y16_N23
\u3|u2|previous_FASTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_FASTER\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(8));

-- Location: FF_X25_Y16_N27
\u3|u2|previous_FASTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_FASTER\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(9));

-- Location: LCCOMB_X25_Y16_N8
\u3|u2|previous_FASTER[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[10]~feeder_combout\ = \u3|u2|previous_FASTER\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_FASTER\(9),
	combout => \u3|u2|previous_FASTER[10]~feeder_combout\);

-- Location: FF_X25_Y16_N9
\u3|u2|previous_FASTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(10));

-- Location: LCCOMB_X25_Y16_N28
\u3|u2|previous_FASTER[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[11]~feeder_combout\ = \u3|u2|previous_FASTER\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_FASTER\(10),
	combout => \u3|u2|previous_FASTER[11]~feeder_combout\);

-- Location: FF_X25_Y16_N29
\u3|u2|previous_FASTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(11));

-- Location: LCCOMB_X25_Y16_N26
\u3|u2|keyboard~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~10_combout\ = ((\u3|u2|previous_FASTER\(11)) # ((\u3|u2|previous_FASTER\(9)) # (\u3|u2|previous_FASTER\(10)))) # (!\u3|u2|previous_FASTER\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|previous_FASTER\(8),
	datab => \u3|u2|previous_FASTER\(11),
	datac => \u3|u2|previous_FASTER\(9),
	datad => \u3|u2|previous_FASTER\(10),
	combout => \u3|u2|keyboard~10_combout\);

-- Location: FF_X25_Y16_N21
\u3|u2|previous_FASTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_FASTER\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(12));

-- Location: FF_X25_Y16_N11
\u3|u2|previous_FASTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_FASTER\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(13));

-- Location: LCCOMB_X25_Y16_N24
\u3|u2|previous_FASTER[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[14]~feeder_combout\ = \u3|u2|previous_FASTER\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_FASTER\(13),
	combout => \u3|u2|previous_FASTER[14]~feeder_combout\);

-- Location: FF_X25_Y16_N25
\u3|u2|previous_FASTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(14));

-- Location: LCCOMB_X25_Y16_N6
\u3|u2|previous_FASTER[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[15]~feeder_combout\ = \u3|u2|previous_FASTER\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_FASTER\(14),
	combout => \u3|u2|previous_FASTER[15]~feeder_combout\);

-- Location: FF_X25_Y16_N7
\u3|u2|previous_FASTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(15));

-- Location: LCCOMB_X25_Y16_N30
\u3|u2|previous_FASTER[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_FASTER[16]~feeder_combout\ = \u3|u2|previous_FASTER\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_FASTER\(15),
	combout => \u3|u2|previous_FASTER[16]~feeder_combout\);

-- Location: FF_X25_Y16_N31
\u3|u2|previous_FASTER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_FASTER[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(16));

-- Location: FF_X25_Y16_N3
\u3|u2|previous_FASTER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_FASTER\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(17));

-- Location: FF_X25_Y16_N1
\u3|u2|previous_FASTER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_FASTER\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_FASTER\(18));

-- Location: LCCOMB_X25_Y16_N0
\u3|u2|keyboard~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~8_combout\ = (\u3|u2|previous_FASTER\(16)) # ((\u3|u2|previous_FASTER\(17)) # ((\u3|u2|previous_FASTER\(18)) # (\nFASTER~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|previous_FASTER\(16),
	datab => \u3|u2|previous_FASTER\(17),
	datac => \u3|u2|previous_FASTER\(18),
	datad => \nFASTER~input_o\,
	combout => \u3|u2|keyboard~8_combout\);

-- Location: LCCOMB_X25_Y16_N4
\u3|u2|keyboard~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~11_combout\ = (((!\u3|u2|previous_FASTER\(6)) # (!\u3|u2|previous_FASTER\(4))) # (!\u3|u2|previous_FASTER\(7))) # (!\u3|u2|previous_FASTER\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|previous_FASTER\(5),
	datab => \u3|u2|previous_FASTER\(7),
	datac => \u3|u2|previous_FASTER\(4),
	datad => \u3|u2|previous_FASTER\(6),
	combout => \u3|u2|keyboard~11_combout\);

-- Location: LCCOMB_X25_Y16_N20
\u3|u2|keyboard~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~9_combout\ = (\u3|u2|previous_FASTER\(15)) # ((\u3|u2|previous_FASTER\(14)) # ((\u3|u2|previous_FASTER\(12)) # (\u3|u2|previous_FASTER\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|previous_FASTER\(15),
	datab => \u3|u2|previous_FASTER\(14),
	datac => \u3|u2|previous_FASTER\(12),
	datad => \u3|u2|previous_FASTER\(13),
	combout => \u3|u2|keyboard~9_combout\);

-- Location: LCCOMB_X25_Y16_N18
\u3|u2|keyboard~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~12_combout\ = (\u3|u2|keyboard~10_combout\) # ((\u3|u2|keyboard~8_combout\) # ((\u3|u2|keyboard~11_combout\) # (\u3|u2|keyboard~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|keyboard~10_combout\,
	datab => \u3|u2|keyboard~8_combout\,
	datac => \u3|u2|keyboard~11_combout\,
	datad => \u3|u2|keyboard~9_combout\,
	combout => \u3|u2|keyboard~12_combout\);

-- Location: IOIBUF_X31_Y17_N1
\nSLOWER~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nSLOWER,
	o => \nSLOWER~input_o\);

-- Location: LCCOMB_X29_Y16_N30
\u3|u2|previous_SLOWER[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[0]~0_combout\ = !\nSLOWER~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nSLOWER~input_o\,
	combout => \u3|u2|previous_SLOWER[0]~0_combout\);

-- Location: FF_X29_Y16_N31
\u3|u2|previous_SLOWER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(0));

-- Location: FF_X29_Y16_N13
\u3|u2|previous_SLOWER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_SLOWER\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(1));

-- Location: LCCOMB_X29_Y16_N10
\u3|u2|previous_SLOWER[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[2]~feeder_combout\ = \u3|u2|previous_SLOWER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(1),
	combout => \u3|u2|previous_SLOWER[2]~feeder_combout\);

-- Location: FF_X29_Y16_N11
\u3|u2|previous_SLOWER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(2));

-- Location: LCCOMB_X29_Y16_N16
\u3|u2|previous_SLOWER[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[3]~feeder_combout\ = \u3|u2|previous_SLOWER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(2),
	combout => \u3|u2|previous_SLOWER[3]~feeder_combout\);

-- Location: FF_X29_Y16_N17
\u3|u2|previous_SLOWER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(3));

-- Location: LCCOMB_X29_Y16_N12
\u3|u2|keyboard~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~0_combout\ = (\u3|u2|previous_SLOWER\(0) & (\u3|u2|previous_SLOWER\(3) & (\u3|u2|previous_SLOWER\(1) & \u3|u2|previous_SLOWER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|previous_SLOWER\(0),
	datab => \u3|u2|previous_SLOWER\(3),
	datac => \u3|u2|previous_SLOWER\(1),
	datad => \u3|u2|previous_SLOWER\(2),
	combout => \u3|u2|keyboard~0_combout\);

-- Location: FF_X25_Y20_N15
\u3|u2|previous_SLOWER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_SLOWER\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(4));

-- Location: LCCOMB_X25_Y20_N8
\u3|u2|previous_SLOWER[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[5]~feeder_combout\ = \u3|u2|previous_SLOWER\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(4),
	combout => \u3|u2|previous_SLOWER[5]~feeder_combout\);

-- Location: FF_X25_Y20_N9
\u3|u2|previous_SLOWER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(5));

-- Location: FF_X25_Y20_N7
\u3|u2|previous_SLOWER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_SLOWER\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(6));

-- Location: LCCOMB_X25_Y20_N22
\u3|u2|previous_SLOWER[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[7]~feeder_combout\ = \u3|u2|previous_SLOWER\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(6),
	combout => \u3|u2|previous_SLOWER[7]~feeder_combout\);

-- Location: FF_X25_Y20_N23
\u3|u2|previous_SLOWER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(7));

-- Location: FF_X25_Y20_N17
\u3|u2|previous_SLOWER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_SLOWER\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(8));

-- Location: LCCOMB_X25_Y20_N4
\u3|u2|previous_SLOWER[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[9]~feeder_combout\ = \u3|u2|previous_SLOWER\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(8),
	combout => \u3|u2|previous_SLOWER[9]~feeder_combout\);

-- Location: FF_X25_Y20_N5
\u3|u2|previous_SLOWER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(9));

-- Location: LCCOMB_X25_Y20_N0
\u3|u2|previous_SLOWER[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[10]~feeder_combout\ = \u3|u2|previous_SLOWER\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(9),
	combout => \u3|u2|previous_SLOWER[10]~feeder_combout\);

-- Location: FF_X25_Y20_N1
\u3|u2|previous_SLOWER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(10));

-- Location: FF_X25_Y20_N27
\u3|u2|previous_SLOWER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_SLOWER\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(11));

-- Location: LCCOMB_X25_Y20_N26
\u3|u2|keyboard~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~3_combout\ = (!\u3|u2|previous_SLOWER\(9) & (!\u3|u2|previous_SLOWER\(10) & (!\u3|u2|previous_SLOWER\(11) & \u3|u2|previous_SLOWER\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|previous_SLOWER\(9),
	datab => \u3|u2|previous_SLOWER\(10),
	datac => \u3|u2|previous_SLOWER\(11),
	datad => \u3|u2|previous_SLOWER\(8),
	combout => \u3|u2|keyboard~3_combout\);

-- Location: LCCOMB_X25_Y20_N18
\u3|u2|previous_SLOWER[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[12]~feeder_combout\ = \u3|u2|previous_SLOWER\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(11),
	combout => \u3|u2|previous_SLOWER[12]~feeder_combout\);

-- Location: FF_X25_Y20_N19
\u3|u2|previous_SLOWER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(12));

-- Location: LCCOMB_X25_Y20_N28
\u3|u2|previous_SLOWER[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[13]~feeder_combout\ = \u3|u2|previous_SLOWER\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(12),
	combout => \u3|u2|previous_SLOWER[13]~feeder_combout\);

-- Location: FF_X25_Y20_N29
\u3|u2|previous_SLOWER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(13));

-- Location: FF_X25_Y20_N3
\u3|u2|previous_SLOWER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_SLOWER\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(14));

-- Location: FF_X25_Y20_N13
\u3|u2|previous_SLOWER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_SLOWER\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(15));

-- Location: LCCOMB_X25_Y20_N2
\u3|u2|keyboard~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~2_combout\ = (!\u3|u2|previous_SLOWER\(15) & (!\u3|u2|previous_SLOWER\(13) & (!\u3|u2|previous_SLOWER\(14) & !\u3|u2|previous_SLOWER\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|previous_SLOWER\(15),
	datab => \u3|u2|previous_SLOWER\(13),
	datac => \u3|u2|previous_SLOWER\(14),
	datad => \u3|u2|previous_SLOWER\(12),
	combout => \u3|u2|keyboard~2_combout\);

-- Location: LCCOMB_X25_Y20_N14
\u3|u2|keyboard~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~4_combout\ = (\u3|u2|previous_SLOWER\(7) & (\u3|u2|previous_SLOWER\(5) & (\u3|u2|previous_SLOWER\(4) & \u3|u2|previous_SLOWER\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|previous_SLOWER\(7),
	datab => \u3|u2|previous_SLOWER\(5),
	datac => \u3|u2|previous_SLOWER\(4),
	datad => \u3|u2|previous_SLOWER\(6),
	combout => \u3|u2|keyboard~4_combout\);

-- Location: LCCOMB_X25_Y20_N20
\u3|u2|previous_SLOWER[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[16]~feeder_combout\ = \u3|u2|previous_SLOWER\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(15),
	combout => \u3|u2|previous_SLOWER[16]~feeder_combout\);

-- Location: FF_X25_Y20_N21
\u3|u2|previous_SLOWER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(16));

-- Location: LCCOMB_X25_Y20_N24
\u3|u2|previous_SLOWER[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|previous_SLOWER[17]~feeder_combout\ = \u3|u2|previous_SLOWER\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|previous_SLOWER\(16),
	combout => \u3|u2|previous_SLOWER[17]~feeder_combout\);

-- Location: FF_X25_Y20_N25
\u3|u2|previous_SLOWER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|previous_SLOWER[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(17));

-- Location: FF_X25_Y20_N11
\u3|u2|previous_SLOWER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|u2|previous_SLOWER\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|previous_SLOWER\(18));

-- Location: LCCOMB_X25_Y20_N10
\u3|u2|keyboard~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~1_combout\ = (!\nSLOWER~input_o\ & (!\u3|u2|previous_SLOWER\(16) & (!\u3|u2|previous_SLOWER\(18) & !\u3|u2|previous_SLOWER\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nSLOWER~input_o\,
	datab => \u3|u2|previous_SLOWER\(16),
	datac => \u3|u2|previous_SLOWER\(18),
	datad => \u3|u2|previous_SLOWER\(17),
	combout => \u3|u2|keyboard~1_combout\);

-- Location: LCCOMB_X25_Y20_N30
\u3|u2|keyboard~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~5_combout\ = (\u3|u2|keyboard~3_combout\ & (\u3|u2|keyboard~2_combout\ & (\u3|u2|keyboard~4_combout\ & \u3|u2|keyboard~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|keyboard~3_combout\,
	datab => \u3|u2|keyboard~2_combout\,
	datac => \u3|u2|keyboard~4_combout\,
	datad => \u3|u2|keyboard~1_combout\,
	combout => \u3|u2|keyboard~5_combout\);

-- Location: LCCOMB_X27_Y15_N22
\Equal7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (!\u3|u2|FACTOR_int\(9) & !\u3|u2|FACTOR_int\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u2|FACTOR_int\(9),
	datad => \u3|u2|FACTOR_int\(10),
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X28_Y17_N6
\u3|u2|FACTOR_int[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[0]~19_combout\ = (\u3|u2|FACTOR_int\(1) & (((\Equal0~3_combout\) # (!\u3|u2|keyboard~5_combout\)) # (!\u3|u2|keyboard~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|keyboard~0_combout\,
	datab => \u3|u2|FACTOR_int\(1),
	datac => \u3|u2|keyboard~5_combout\,
	datad => \Equal0~3_combout\,
	combout => \u3|u2|FACTOR_int[0]~19_combout\);

-- Location: LCCOMB_X27_Y15_N26
\u3|u2|FACTOR_int[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[0]~20_combout\ = ((\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int\(0)))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int[0]~19_combout\))) # (!\nRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int[0]~19_combout\,
	datab => \nRST~input_o\,
	datac => \u3|u2|FACTOR_int\(0),
	datad => \u3|u2|FACTOR_int[8]~1_combout\,
	combout => \u3|u2|FACTOR_int[0]~20_combout\);

-- Location: FF_X27_Y15_N27
\u3|u2|FACTOR_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(0));

-- Location: LCCOMB_X23_Y15_N14
\u3|u2|FACTOR_int[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[1]~23_combout\ = (\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(0))) # (!\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(0),
	datac => \u3|u2|FACTOR_int\(2),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[1]~23_combout\);

-- Location: LCCOMB_X23_Y15_N18
\u3|u2|FACTOR_int[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[1]~24_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int\(1)))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRST~input_o\,
	datab => \u3|u2|FACTOR_int[1]~23_combout\,
	datac => \u3|u2|FACTOR_int\(1),
	datad => \u3|u2|FACTOR_int[8]~1_combout\,
	combout => \u3|u2|FACTOR_int[1]~24_combout\);

-- Location: FF_X23_Y15_N19
\u3|u2|FACTOR_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(1));

-- Location: LCCOMB_X23_Y15_N0
\u3|u2|FACTOR_int[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[2]~25_combout\ = (\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(1)))) # (!\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(3),
	datac => \u3|u2|FACTOR_int\(1),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[2]~25_combout\);

-- Location: LCCOMB_X23_Y15_N4
\u3|u2|FACTOR_int[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[2]~26_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int\(2)))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRST~input_o\,
	datab => \u3|u2|FACTOR_int[2]~25_combout\,
	datac => \u3|u2|FACTOR_int\(2),
	datad => \u3|u2|FACTOR_int[8]~1_combout\,
	combout => \u3|u2|FACTOR_int[2]~26_combout\);

-- Location: FF_X23_Y15_N5
\u3|u2|FACTOR_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(2));

-- Location: LCCOMB_X23_Y15_N12
\u3|u2|FACTOR_int[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[3]~29_combout\ = (\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(2)))) # (!\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(4),
	datac => \u3|u2|FACTOR_int\(2),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[3]~29_combout\);

-- Location: LCCOMB_X23_Y15_N24
\u3|u2|FACTOR_int[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[3]~30_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int\(3))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int[3]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRST~input_o\,
	datab => \u3|u2|FACTOR_int[8]~1_combout\,
	datac => \u3|u2|FACTOR_int\(3),
	datad => \u3|u2|FACTOR_int[3]~29_combout\,
	combout => \u3|u2|FACTOR_int[3]~30_combout\);

-- Location: FF_X23_Y15_N25
\u3|u2|FACTOR_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(3));

-- Location: LCCOMB_X23_Y15_N28
\u3|u2|FACTOR_int[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[4]~0_combout\ = (\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(3)))) # (!\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(5),
	datab => \u3|u2|FACTOR_int\(3),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[4]~0_combout\);

-- Location: LCCOMB_X23_Y15_N16
\u3|u2|FACTOR_int[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[4]~2_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int\(4)))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRST~input_o\,
	datab => \u3|u2|FACTOR_int[4]~0_combout\,
	datac => \u3|u2|FACTOR_int\(4),
	datad => \u3|u2|FACTOR_int[8]~1_combout\,
	combout => \u3|u2|FACTOR_int[4]~2_combout\);

-- Location: FF_X23_Y15_N17
\u3|u2|FACTOR_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(4));

-- Location: LCCOMB_X27_Y15_N2
\u3|u2|FACTOR_int[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[6]~3_combout\ = (\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(5)))) # (!\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(7),
	datac => \u3|u2|FACTOR_int\(5),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[6]~3_combout\);

-- Location: LCCOMB_X27_Y15_N16
\u3|u2|FACTOR_int[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[6]~4_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int\(6))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int[6]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int[8]~1_combout\,
	datab => \nRST~input_o\,
	datac => \u3|u2|FACTOR_int\(6),
	datad => \u3|u2|FACTOR_int[6]~3_combout\,
	combout => \u3|u2|FACTOR_int[6]~4_combout\);

-- Location: FF_X27_Y15_N17
\u3|u2|FACTOR_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(6));

-- Location: LCCOMB_X23_Y15_N10
\u3|u2|FACTOR_int[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[5]~27_combout\ = (\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(4))) # (!\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(4),
	datac => \u3|u2|FACTOR_int\(6),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[5]~27_combout\);

-- Location: LCCOMB_X23_Y15_N6
\u3|u2|FACTOR_int[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[5]~28_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int\(5))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int[5]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRST~input_o\,
	datab => \u3|u2|FACTOR_int[8]~1_combout\,
	datac => \u3|u2|FACTOR_int\(5),
	datad => \u3|u2|FACTOR_int[5]~27_combout\,
	combout => \u3|u2|FACTOR_int[5]~28_combout\);

-- Location: FF_X23_Y15_N7
\u3|u2|FACTOR_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[5]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(5));

-- Location: LCCOMB_X23_Y15_N2
\Equal7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (!\u3|u2|FACTOR_int\(5) & (!\u3|u2|FACTOR_int\(4) & (!\u3|u2|FACTOR_int\(6) & !\u3|u2|FACTOR_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(5),
	datab => \u3|u2|FACTOR_int\(4),
	datac => \u3|u2|FACTOR_int\(6),
	datad => \u3|u2|FACTOR_int\(3),
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X22_Y24_N16
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\u3|u2|FACTOR_int\(0) & !\u3|u2|FACTOR_int\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u2|FACTOR_int\(0),
	datad => \u3|u2|FACTOR_int\(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y24_N6
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal7~3_combout\ & (\Equal0~0_combout\ & (!\u3|u2|FACTOR_int\(1) & !\u3|u2|FACTOR_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \u3|u2|FACTOR_int\(1),
	datad => \u3|u2|FACTOR_int\(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X28_Y17_N16
\u3|u2|FACTOR_int~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int~5_combout\ = (\u3|u2|keyboard~0_combout\ & (!\Equal0~3_combout\ & (\u3|u2|keyboard~5_combout\ & \nRST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|keyboard~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \u3|u2|keyboard~5_combout\,
	datad => \nRST~input_o\,
	combout => \u3|u2|FACTOR_int~5_combout\);

-- Location: LCCOMB_X28_Y17_N8
\u3|u2|FACTOR_int[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[8]~6_combout\ = (!\u3|u2|FACTOR_int[8]~1_combout\) # (!\nRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nRST~input_o\,
	datad => \u3|u2|FACTOR_int[8]~1_combout\,
	combout => \u3|u2|FACTOR_int[8]~6_combout\);

-- Location: FF_X28_Y17_N17
\u3|u2|FACTOR_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int~5_combout\,
	sclr => \u3|u2|ALT_INV_FACTOR_int\(13),
	ena => \u3|u2|FACTOR_int[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(14));

-- Location: LCCOMB_X28_Y17_N20
\u3|u2|FACTOR_int[13]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[13]~11_combout\ = (\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(12))) # (!\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(12),
	datac => \u3|u2|keyboard~6_combout\,
	datad => \u3|u2|FACTOR_int\(14),
	combout => \u3|u2|FACTOR_int[13]~11_combout\);

-- Location: LCCOMB_X28_Y17_N28
\u3|u2|FACTOR_int[13]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[13]~12_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int\(13)))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int[13]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int[8]~1_combout\,
	datab => \u3|u2|FACTOR_int[13]~11_combout\,
	datac => \u3|u2|FACTOR_int\(13),
	datad => \nRST~input_o\,
	combout => \u3|u2|FACTOR_int[13]~12_combout\);

-- Location: FF_X28_Y17_N29
\u3|u2|FACTOR_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[13]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(13));

-- Location: LCCOMB_X28_Y17_N26
\u3|u2|FACTOR_int[12]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[12]~9_combout\ = (\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(11))) # (!\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(11),
	datac => \u3|u2|keyboard~6_combout\,
	datad => \u3|u2|FACTOR_int\(13),
	combout => \u3|u2|FACTOR_int[12]~9_combout\);

-- Location: LCCOMB_X28_Y17_N18
\u3|u2|FACTOR_int[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[12]~10_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int\(12))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int[12]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int[8]~1_combout\,
	datab => \nRST~input_o\,
	datac => \u3|u2|FACTOR_int\(12),
	datad => \u3|u2|FACTOR_int[12]~9_combout\,
	combout => \u3|u2|FACTOR_int[12]~10_combout\);

-- Location: FF_X28_Y17_N19
\u3|u2|FACTOR_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(12));

-- Location: LCCOMB_X27_Y15_N20
\u3|u2|FACTOR_int[11]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[11]~7_combout\ = (\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(10)))) # (!\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(12),
	datab => \u3|u2|FACTOR_int\(10),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[11]~7_combout\);

-- Location: LCCOMB_X27_Y15_N10
\u3|u2|FACTOR_int[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[11]~8_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int\(11))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int[11]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int[8]~1_combout\,
	datab => \nRST~input_o\,
	datac => \u3|u2|FACTOR_int\(11),
	datad => \u3|u2|FACTOR_int[11]~7_combout\,
	combout => \u3|u2|FACTOR_int[11]~8_combout\);

-- Location: FF_X27_Y15_N11
\u3|u2|FACTOR_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(11));

-- Location: LCCOMB_X28_Y17_N24
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\u3|u2|FACTOR_int\(11) & (\u3|u2|FACTOR_int\(14) & (!\u3|u2|FACTOR_int\(12) & !\u3|u2|FACTOR_int\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(11),
	datab => \u3|u2|FACTOR_int\(14),
	datac => \u3|u2|FACTOR_int\(12),
	datad => \u3|u2|FACTOR_int\(13),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y17_N2
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal7~4_combout\ & (!\u3|u2|FACTOR_int\(8) & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~4_combout\,
	datab => \u3|u2|FACTOR_int\(8),
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X28_Y17_N30
\u3|u2|keyboard~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|keyboard~6_combout\ = (\u3|u2|keyboard~0_combout\ & (\u3|u2|keyboard~5_combout\ & !\Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|keyboard~0_combout\,
	datac => \u3|u2|keyboard~5_combout\,
	datad => \Equal0~3_combout\,
	combout => \u3|u2|keyboard~6_combout\);

-- Location: LCCOMB_X27_Y15_N8
\u3|u2|FACTOR_int[9]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[9]~15_combout\ = (\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(8)))) # (!\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(10),
	datac => \u3|u2|FACTOR_int\(8),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[9]~15_combout\);

-- Location: LCCOMB_X27_Y15_N14
\u3|u2|FACTOR_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[9]~16_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int\(9))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int[9]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int[8]~1_combout\,
	datab => \nRST~input_o\,
	datac => \u3|u2|FACTOR_int\(9),
	datad => \u3|u2|FACTOR_int[9]~15_combout\,
	combout => \u3|u2|FACTOR_int[9]~16_combout\);

-- Location: FF_X27_Y15_N15
\u3|u2|FACTOR_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(9));

-- Location: LCCOMB_X27_Y15_N6
\u3|u2|FACTOR_int[8]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[8]~13_combout\ = (\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(7))) # (!\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(7),
	datac => \u3|u2|FACTOR_int\(9),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[8]~13_combout\);

-- Location: LCCOMB_X27_Y15_N28
\u3|u2|FACTOR_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[8]~14_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int\(8))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int[8]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int[8]~1_combout\,
	datab => \nRST~input_o\,
	datac => \u3|u2|FACTOR_int\(8),
	datad => \u3|u2|FACTOR_int[8]~13_combout\,
	combout => \u3|u2|FACTOR_int[8]~14_combout\);

-- Location: FF_X27_Y15_N29
\u3|u2|FACTOR_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(8));

-- Location: LCCOMB_X27_Y15_N4
\u3|u2|FACTOR_int[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[7]~21_combout\ = (\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(6)))) # (!\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(8),
	datac => \u3|u2|FACTOR_int\(6),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[7]~21_combout\);

-- Location: LCCOMB_X27_Y15_N12
\u3|u2|FACTOR_int[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[7]~22_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int\(7))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int[7]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int[8]~1_combout\,
	datab => \nRST~input_o\,
	datac => \u3|u2|FACTOR_int\(7),
	datad => \u3|u2|FACTOR_int[7]~21_combout\,
	combout => \u3|u2|FACTOR_int[7]~22_combout\);

-- Location: FF_X27_Y15_N13
\u3|u2|FACTOR_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(7));

-- Location: LCCOMB_X28_Y17_N14
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\u3|u2|FACTOR_int\(11) & (!\u3|u2|FACTOR_int\(14) & (!\u3|u2|FACTOR_int\(12) & !\u3|u2|FACTOR_int\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(11),
	datab => \u3|u2|FACTOR_int\(14),
	datac => \u3|u2|FACTOR_int\(12),
	datad => \u3|u2|FACTOR_int\(13),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X22_Y24_N8
\Equal7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (!\u3|u2|FACTOR_int\(8) & (!\u3|u2|FACTOR_int\(1) & (\Equal4~0_combout\ & \Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(8),
	datab => \u3|u2|FACTOR_int\(1),
	datac => \Equal4~0_combout\,
	datad => \Equal7~4_combout\,
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X22_Y24_N0
\Equal7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (!\u3|u2|FACTOR_int\(2) & \Equal7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(2),
	datad => \Equal7~3_combout\,
	combout => \Equal7~6_combout\);

-- Location: LCCOMB_X22_Y24_N26
\Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!\u3|u2|FACTOR_int\(7) & (\Equal7~5_combout\ & (\u3|u2|FACTOR_int\(0) & \Equal7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(7),
	datab => \Equal7~5_combout\,
	datac => \u3|u2|FACTOR_int\(0),
	datad => \Equal7~6_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X27_Y15_N24
\u3|u2|FACTOR_int[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[8]~1_combout\ = (!\u3|u2|keyboard~6_combout\ & ((\u3|u2|keyboard~7_combout\) # ((\u3|u2|keyboard~12_combout\) # (\Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|keyboard~7_combout\,
	datab => \u3|u2|keyboard~12_combout\,
	datac => \Equal14~0_combout\,
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[8]~1_combout\);

-- Location: LCCOMB_X27_Y15_N18
\u3|u2|FACTOR_int[10]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[10]~17_combout\ = (\u3|u2|keyboard~6_combout\ & ((\u3|u2|FACTOR_int\(9)))) # (!\u3|u2|keyboard~6_combout\ & (\u3|u2|FACTOR_int\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(11),
	datac => \u3|u2|FACTOR_int\(9),
	datad => \u3|u2|keyboard~6_combout\,
	combout => \u3|u2|FACTOR_int[10]~17_combout\);

-- Location: LCCOMB_X27_Y15_N0
\u3|u2|FACTOR_int[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|FACTOR_int[10]~18_combout\ = (\nRST~input_o\ & ((\u3|u2|FACTOR_int[8]~1_combout\ & (\u3|u2|FACTOR_int\(10))) # (!\u3|u2|FACTOR_int[8]~1_combout\ & ((\u3|u2|FACTOR_int[10]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int[8]~1_combout\,
	datab => \nRST~input_o\,
	datac => \u3|u2|FACTOR_int\(10),
	datad => \u3|u2|FACTOR_int[10]~17_combout\,
	combout => \u3|u2|FACTOR_int[10]~18_combout\);

-- Location: FF_X27_Y15_N1
\u3|u2|FACTOR_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|FACTOR_int[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|FACTOR_int\(10));

-- Location: LCCOMB_X28_Y15_N2
\u3|u2|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~0_combout\ = \u3|u2|FACTOR_int\(0) $ (VCC)
-- \u3|u2|Add1~1\ = CARRY(\u3|u2|FACTOR_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(0),
	datad => VCC,
	combout => \u3|u2|Add1~0_combout\,
	cout => \u3|u2|Add1~1\);

-- Location: LCCOMB_X28_Y15_N4
\u3|u2|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~2_combout\ = (\u3|u2|FACTOR_int\(1) & (\u3|u2|Add1~1\ & VCC)) # (!\u3|u2|FACTOR_int\(1) & (!\u3|u2|Add1~1\))
-- \u3|u2|Add1~3\ = CARRY((!\u3|u2|FACTOR_int\(1) & !\u3|u2|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(1),
	datad => VCC,
	cin => \u3|u2|Add1~1\,
	combout => \u3|u2|Add1~2_combout\,
	cout => \u3|u2|Add1~3\);

-- Location: LCCOMB_X28_Y15_N6
\u3|u2|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~4_combout\ = (\u3|u2|FACTOR_int\(2) & ((GND) # (!\u3|u2|Add1~3\))) # (!\u3|u2|FACTOR_int\(2) & (\u3|u2|Add1~3\ $ (GND)))
-- \u3|u2|Add1~5\ = CARRY((\u3|u2|FACTOR_int\(2)) # (!\u3|u2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(2),
	datad => VCC,
	cin => \u3|u2|Add1~3\,
	combout => \u3|u2|Add1~4_combout\,
	cout => \u3|u2|Add1~5\);

-- Location: LCCOMB_X28_Y15_N8
\u3|u2|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~6_combout\ = (\u3|u2|FACTOR_int\(3) & (\u3|u2|Add1~5\ & VCC)) # (!\u3|u2|FACTOR_int\(3) & (!\u3|u2|Add1~5\))
-- \u3|u2|Add1~7\ = CARRY((!\u3|u2|FACTOR_int\(3) & !\u3|u2|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(3),
	datad => VCC,
	cin => \u3|u2|Add1~5\,
	combout => \u3|u2|Add1~6_combout\,
	cout => \u3|u2|Add1~7\);

-- Location: LCCOMB_X28_Y15_N10
\u3|u2|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~8_combout\ = (\u3|u2|FACTOR_int\(4) & ((GND) # (!\u3|u2|Add1~7\))) # (!\u3|u2|FACTOR_int\(4) & (\u3|u2|Add1~7\ $ (GND)))
-- \u3|u2|Add1~9\ = CARRY((\u3|u2|FACTOR_int\(4)) # (!\u3|u2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(4),
	datad => VCC,
	cin => \u3|u2|Add1~7\,
	combout => \u3|u2|Add1~8_combout\,
	cout => \u3|u2|Add1~9\);

-- Location: LCCOMB_X28_Y15_N12
\u3|u2|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~10_combout\ = (\u3|u2|FACTOR_int\(5) & (\u3|u2|Add1~9\ & VCC)) # (!\u3|u2|FACTOR_int\(5) & (!\u3|u2|Add1~9\))
-- \u3|u2|Add1~11\ = CARRY((!\u3|u2|FACTOR_int\(5) & !\u3|u2|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(5),
	datad => VCC,
	cin => \u3|u2|Add1~9\,
	combout => \u3|u2|Add1~10_combout\,
	cout => \u3|u2|Add1~11\);

-- Location: LCCOMB_X28_Y15_N14
\u3|u2|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~12_combout\ = (\u3|u2|FACTOR_int\(6) & ((GND) # (!\u3|u2|Add1~11\))) # (!\u3|u2|FACTOR_int\(6) & (\u3|u2|Add1~11\ $ (GND)))
-- \u3|u2|Add1~13\ = CARRY((\u3|u2|FACTOR_int\(6)) # (!\u3|u2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(6),
	datad => VCC,
	cin => \u3|u2|Add1~11\,
	combout => \u3|u2|Add1~12_combout\,
	cout => \u3|u2|Add1~13\);

-- Location: LCCOMB_X28_Y15_N16
\u3|u2|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~14_combout\ = (\u3|u2|FACTOR_int\(7) & (\u3|u2|Add1~13\ & VCC)) # (!\u3|u2|FACTOR_int\(7) & (!\u3|u2|Add1~13\))
-- \u3|u2|Add1~15\ = CARRY((!\u3|u2|FACTOR_int\(7) & !\u3|u2|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(7),
	datad => VCC,
	cin => \u3|u2|Add1~13\,
	combout => \u3|u2|Add1~14_combout\,
	cout => \u3|u2|Add1~15\);

-- Location: LCCOMB_X28_Y15_N18
\u3|u2|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~16_combout\ = (\u3|u2|FACTOR_int\(8) & ((GND) # (!\u3|u2|Add1~15\))) # (!\u3|u2|FACTOR_int\(8) & (\u3|u2|Add1~15\ $ (GND)))
-- \u3|u2|Add1~17\ = CARRY((\u3|u2|FACTOR_int\(8)) # (!\u3|u2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(8),
	datad => VCC,
	cin => \u3|u2|Add1~15\,
	combout => \u3|u2|Add1~16_combout\,
	cout => \u3|u2|Add1~17\);

-- Location: LCCOMB_X28_Y15_N20
\u3|u2|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~18_combout\ = (\u3|u2|FACTOR_int\(9) & (\u3|u2|Add1~17\ & VCC)) # (!\u3|u2|FACTOR_int\(9) & (!\u3|u2|Add1~17\))
-- \u3|u2|Add1~19\ = CARRY((!\u3|u2|FACTOR_int\(9) & !\u3|u2|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(9),
	datad => VCC,
	cin => \u3|u2|Add1~17\,
	combout => \u3|u2|Add1~18_combout\,
	cout => \u3|u2|Add1~19\);

-- Location: LCCOMB_X28_Y15_N22
\u3|u2|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~20_combout\ = (\u3|u2|FACTOR_int\(10) & ((GND) # (!\u3|u2|Add1~19\))) # (!\u3|u2|FACTOR_int\(10) & (\u3|u2|Add1~19\ $ (GND)))
-- \u3|u2|Add1~21\ = CARRY((\u3|u2|FACTOR_int\(10)) # (!\u3|u2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(10),
	datad => VCC,
	cin => \u3|u2|Add1~19\,
	combout => \u3|u2|Add1~20_combout\,
	cout => \u3|u2|Add1~21\);

-- Location: LCCOMB_X28_Y15_N24
\u3|u2|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~22_combout\ = (\u3|u2|FACTOR_int\(11) & (\u3|u2|Add1~21\ & VCC)) # (!\u3|u2|FACTOR_int\(11) & (!\u3|u2|Add1~21\))
-- \u3|u2|Add1~23\ = CARRY((!\u3|u2|FACTOR_int\(11) & !\u3|u2|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(11),
	datad => VCC,
	cin => \u3|u2|Add1~21\,
	combout => \u3|u2|Add1~22_combout\,
	cout => \u3|u2|Add1~23\);

-- Location: LCCOMB_X28_Y15_N26
\u3|u2|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~24_combout\ = (\u3|u2|FACTOR_int\(12) & ((GND) # (!\u3|u2|Add1~23\))) # (!\u3|u2|FACTOR_int\(12) & (\u3|u2|Add1~23\ $ (GND)))
-- \u3|u2|Add1~25\ = CARRY((\u3|u2|FACTOR_int\(12)) # (!\u3|u2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(12),
	datad => VCC,
	cin => \u3|u2|Add1~23\,
	combout => \u3|u2|Add1~24_combout\,
	cout => \u3|u2|Add1~25\);

-- Location: LCCOMB_X28_Y15_N28
\u3|u2|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~26_combout\ = (\u3|u2|FACTOR_int\(13) & (\u3|u2|Add1~25\ & VCC)) # (!\u3|u2|FACTOR_int\(13) & (!\u3|u2|Add1~25\))
-- \u3|u2|Add1~27\ = CARRY((!\u3|u2|FACTOR_int\(13) & !\u3|u2|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(13),
	datad => VCC,
	cin => \u3|u2|Add1~25\,
	combout => \u3|u2|Add1~26_combout\,
	cout => \u3|u2|Add1~27\);

-- Location: LCCOMB_X28_Y15_N30
\u3|u2|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Add1~28_combout\ = \u3|u2|Add1~27\ $ (\u3|u2|FACTOR_int\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|FACTOR_int\(14),
	cin => \u3|u2|Add1~27\,
	combout => \u3|u2|Add1~28_combout\);

-- Location: LCCOMB_X28_Y13_N20
\u3|u2|CE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|CE~0_combout\ = (\u3|u2|counter\(10) & (\u3|u2|Add1~20_combout\ & (\u3|u2|counter\(14) $ (!\u3|u2|Add1~28_combout\)))) # (!\u3|u2|counter\(10) & (!\u3|u2|Add1~20_combout\ & (\u3|u2|counter\(14) $ (!\u3|u2|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(10),
	datab => \u3|u2|counter\(14),
	datac => \u3|u2|Add1~20_combout\,
	datad => \u3|u2|Add1~28_combout\,
	combout => \u3|u2|CE~0_combout\);

-- Location: LCCOMB_X28_Y13_N10
\u3|u2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Equal0~0_combout\ = (\u3|u2|counter\(0) & (\u3|u2|Add1~0_combout\ & (\u3|u2|counter\(1) $ (!\u3|u2|Add1~2_combout\)))) # (!\u3|u2|counter\(0) & (!\u3|u2|Add1~0_combout\ & (\u3|u2|counter\(1) $ (!\u3|u2|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(0),
	datab => \u3|u2|Add1~0_combout\,
	datac => \u3|u2|counter\(1),
	datad => \u3|u2|Add1~2_combout\,
	combout => \u3|u2|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y13_N28
\u3|u2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Equal0~1_combout\ = (\u3|u2|Add1~4_combout\ & (\u3|u2|counter\(2) & (\u3|u2|counter\(3) $ (!\u3|u2|Add1~6_combout\)))) # (!\u3|u2|Add1~4_combout\ & (!\u3|u2|counter\(2) & (\u3|u2|counter\(3) $ (!\u3|u2|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|Add1~4_combout\,
	datab => \u3|u2|counter\(3),
	datac => \u3|u2|counter\(2),
	datad => \u3|u2|Add1~6_combout\,
	combout => \u3|u2|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y13_N8
\u3|u2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Equal0~3_combout\ = (\u3|u2|counter\(6) & (\u3|u2|Add1~12_combout\ & (\u3|u2|counter\(7) $ (!\u3|u2|Add1~14_combout\)))) # (!\u3|u2|counter\(6) & (!\u3|u2|Add1~12_combout\ & (\u3|u2|counter\(7) $ (!\u3|u2|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(6),
	datab => \u3|u2|counter\(7),
	datac => \u3|u2|Add1~14_combout\,
	datad => \u3|u2|Add1~12_combout\,
	combout => \u3|u2|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y13_N6
\u3|u2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Equal0~2_combout\ = (\u3|u2|counter\(4) & (\u3|u2|Add1~8_combout\ & (\u3|u2|counter\(5) $ (!\u3|u2|Add1~10_combout\)))) # (!\u3|u2|counter\(4) & (!\u3|u2|Add1~8_combout\ & (\u3|u2|counter\(5) $ (!\u3|u2|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(4),
	datab => \u3|u2|counter\(5),
	datac => \u3|u2|Add1~8_combout\,
	datad => \u3|u2|Add1~10_combout\,
	combout => \u3|u2|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y13_N26
\u3|u2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Equal0~4_combout\ = (\u3|u2|Equal0~0_combout\ & (\u3|u2|Equal0~1_combout\ & (\u3|u2|Equal0~3_combout\ & \u3|u2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|Equal0~0_combout\,
	datab => \u3|u2|Equal0~1_combout\,
	datac => \u3|u2|Equal0~3_combout\,
	datad => \u3|u2|Equal0~2_combout\,
	combout => \u3|u2|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y13_N22
\u3|u2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|Equal0~5_combout\ = (\u3|u2|counter\(9) & (\u3|u2|Add1~18_combout\ & (\u3|u2|counter\(8) $ (!\u3|u2|Add1~16_combout\)))) # (!\u3|u2|counter\(9) & (!\u3|u2|Add1~18_combout\ & (\u3|u2|counter\(8) $ (!\u3|u2|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(9),
	datab => \u3|u2|counter\(8),
	datac => \u3|u2|Add1~18_combout\,
	datad => \u3|u2|Add1~16_combout\,
	combout => \u3|u2|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y15_N0
\u3|u2|CE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|CE~1_combout\ = (\u3|u2|counter\(13) & ((\u3|u2|Add1~22_combout\ $ (\u3|u2|counter\(11))) # (!\u3|u2|Add1~26_combout\))) # (!\u3|u2|counter\(13) & ((\u3|u2|Add1~26_combout\) # (\u3|u2|Add1~22_combout\ $ (\u3|u2|counter\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|counter\(13),
	datab => \u3|u2|Add1~22_combout\,
	datac => \u3|u2|counter\(11),
	datad => \u3|u2|Add1~26_combout\,
	combout => \u3|u2|CE~1_combout\);

-- Location: LCCOMB_X28_Y13_N0
\u3|u2|CE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|CE~2_combout\ = (\u3|u2|Equal0~5_combout\ & (!\u3|u2|CE~1_combout\ & (\u3|u2|Add1~24_combout\ $ (!\u3|u2|counter\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|Add1~24_combout\,
	datab => \u3|u2|counter\(12),
	datac => \u3|u2|Equal0~5_combout\,
	datad => \u3|u2|CE~1_combout\,
	combout => \u3|u2|CE~2_combout\);

-- Location: LCCOMB_X28_Y13_N18
\u3|u2|CE~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|CE~3_combout\ = ((\u3|u2|CE~0_combout\ & (\u3|u2|Equal0~4_combout\ & \u3|u2|CE~2_combout\))) # (!\nRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRST~input_o\,
	datab => \u3|u2|CE~0_combout\,
	datac => \u3|u2|Equal0~4_combout\,
	datad => \u3|u2|CE~2_combout\,
	combout => \u3|u2|CE~3_combout\);

-- Location: LCCOMB_X28_Y13_N24
\u3|u2|CE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u2|CE~feeder_combout\ = \u3|u2|CE~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|CE~3_combout\,
	combout => \u3|u2|CE~feeder_combout\);

-- Location: FF_X28_Y13_N25
\u3|u2|CE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u2|CE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u2|CE~q\);

-- Location: LCCOMB_X28_Y5_N8
\u3|u1|ADDRQ_int~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int~16_combout\ = (!\u3|u1|CLEARING_MEMORY_ONGOING~q\ & (\u3|u2|CE~q\ & ((\u3|u1|Equal1~1_combout\) # (\u3|u1|ADDRQ_int~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	datab => \u3|u1|Equal1~1_combout\,
	datac => \u3|u1|ADDRQ_int~38_combout\,
	datad => \u3|u2|CE~q\,
	combout => \u3|u1|ADDRQ_int~16_combout\);

-- Location: IOIBUF_X31_Y14_N15
\INPUT[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(5),
	o => \INPUT[5]~input_o\);

-- Location: LCCOMB_X30_Y11_N0
\u3|u1|INPUT_first[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|INPUT_first[5]~feeder_combout\ = \INPUT[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[5]~input_o\,
	combout => \u3|u1|INPUT_first[5]~feeder_combout\);

-- Location: FF_X30_Y11_N1
\u3|u1|INPUT_first[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|INPUT_first[5]~feeder_combout\,
	ena => \u3|u1|sampling~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|INPUT_first\(5));

-- Location: IOIBUF_X31_Y11_N1
\INPUT[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(4),
	o => \INPUT[4]~input_o\);

-- Location: FF_X30_Y11_N23
\u3|u1|INPUT_first[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \INPUT[4]~input_o\,
	sload => VCC,
	ena => \u3|u1|sampling~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|INPUT_first\(4));

-- Location: LCCOMB_X30_Y11_N22
\u3|u1|sampling~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|sampling~2_combout\ = (\u3|u1|INPUT_first\(5) & ((\INPUT[4]~input_o\ $ (\u3|u1|INPUT_first\(4))) # (!\INPUT[5]~input_o\))) # (!\u3|u1|INPUT_first\(5) & ((\INPUT[5]~input_o\) # (\INPUT[4]~input_o\ $ (\u3|u1|INPUT_first\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|INPUT_first\(5),
	datab => \INPUT[4]~input_o\,
	datac => \u3|u1|INPUT_first\(4),
	datad => \INPUT[5]~input_o\,
	combout => \u3|u1|sampling~2_combout\);

-- Location: IOIBUF_X31_Y11_N15
\INPUT[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: IOIBUF_X31_Y11_N8
\INPUT[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: LCCOMB_X30_Y11_N28
\u3|u1|INPUT_first[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|INPUT_first[3]~feeder_combout\ = \INPUT[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[3]~input_o\,
	combout => \u3|u1|INPUT_first[3]~feeder_combout\);

-- Location: FF_X30_Y11_N29
\u3|u1|INPUT_first[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|INPUT_first[3]~feeder_combout\,
	ena => \u3|u1|sampling~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|INPUT_first\(3));

-- Location: FF_X30_Y11_N19
\u3|u1|INPUT_first[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \INPUT[2]~input_o\,
	sload => VCC,
	ena => \u3|u1|sampling~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|INPUT_first\(2));

-- Location: LCCOMB_X30_Y11_N18
\u3|u1|sampling~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|sampling~1_combout\ = (\INPUT[2]~input_o\ & ((\u3|u1|INPUT_first\(3) $ (\INPUT[3]~input_o\)) # (!\u3|u1|INPUT_first\(2)))) # (!\INPUT[2]~input_o\ & ((\u3|u1|INPUT_first\(2)) # (\u3|u1|INPUT_first\(3) $ (\INPUT[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[2]~input_o\,
	datab => \u3|u1|INPUT_first\(3),
	datac => \u3|u1|INPUT_first\(2),
	datad => \INPUT[3]~input_o\,
	combout => \u3|u1|sampling~1_combout\);

-- Location: IOIBUF_X31_Y14_N1
\INPUT[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(7),
	o => \INPUT[7]~input_o\);

-- Location: LCCOMB_X30_Y11_N12
\u3|u1|INPUT_first[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|INPUT_first[7]~feeder_combout\ = \INPUT[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[7]~input_o\,
	combout => \u3|u1|INPUT_first[7]~feeder_combout\);

-- Location: FF_X30_Y11_N13
\u3|u1|INPUT_first[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|INPUT_first[7]~feeder_combout\,
	ena => \u3|u1|sampling~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|INPUT_first\(7));

-- Location: IOIBUF_X31_Y14_N8
\INPUT[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(6),
	o => \INPUT[6]~input_o\);

-- Location: FF_X30_Y11_N27
\u3|u1|INPUT_first[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \INPUT[6]~input_o\,
	sload => VCC,
	ena => \u3|u1|sampling~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|INPUT_first\(6));

-- Location: LCCOMB_X30_Y11_N26
\u3|u1|sampling~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|sampling~3_combout\ = (\u3|u1|INPUT_first\(7) & ((\INPUT[6]~input_o\ $ (\u3|u1|INPUT_first\(6))) # (!\INPUT[7]~input_o\))) # (!\u3|u1|INPUT_first\(7) & ((\INPUT[7]~input_o\) # (\INPUT[6]~input_o\ $ (\u3|u1|INPUT_first\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|INPUT_first\(7),
	datab => \INPUT[6]~input_o\,
	datac => \u3|u1|INPUT_first\(6),
	datad => \INPUT[7]~input_o\,
	combout => \u3|u1|sampling~3_combout\);

-- Location: IOIBUF_X31_Y6_N1
\INPUT[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: IOIBUF_X31_Y11_N22
\INPUT[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: LCCOMB_X30_Y11_N24
\u3|u1|INPUT_first[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|INPUT_first[1]~feeder_combout\ = \INPUT[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[1]~input_o\,
	combout => \u3|u1|INPUT_first[1]~feeder_combout\);

-- Location: FF_X30_Y11_N25
\u3|u1|INPUT_first[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|INPUT_first[1]~feeder_combout\,
	ena => \u3|u1|sampling~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|INPUT_first\(1));

-- Location: FF_X30_Y11_N7
\u3|u1|INPUT_first[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \INPUT[0]~input_o\,
	sload => VCC,
	ena => \u3|u1|sampling~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|INPUT_first\(0));

-- Location: LCCOMB_X30_Y11_N6
\u3|u1|sampling~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|sampling~0_combout\ = (\INPUT[0]~input_o\ & ((\u3|u1|INPUT_first\(1) $ (\INPUT[1]~input_o\)) # (!\u3|u1|INPUT_first\(0)))) # (!\INPUT[0]~input_o\ & ((\u3|u1|INPUT_first\(0)) # (\u3|u1|INPUT_first\(1) $ (\INPUT[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \u3|u1|INPUT_first\(1),
	datac => \u3|u1|INPUT_first\(0),
	datad => \INPUT[1]~input_o\,
	combout => \u3|u1|sampling~0_combout\);

-- Location: LCCOMB_X30_Y11_N30
\u3|u1|sampling~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|sampling~4_combout\ = (\u3|u1|sampling~2_combout\) # ((\u3|u1|sampling~1_combout\) # ((\u3|u1|sampling~3_combout\) # (\u3|u1|sampling~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|sampling~2_combout\,
	datab => \u3|u1|sampling~1_combout\,
	datac => \u3|u1|sampling~3_combout\,
	datad => \u3|u1|sampling~0_combout\,
	combout => \u3|u1|sampling~4_combout\);

-- Location: LCCOMB_X30_Y5_N30
\u3|u1|TRIGGER~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|TRIGGER~1_combout\ = (!\u3|u1|sampling~5_combout\ & ((\u3|u1|TRIGGER~q\) # ((\u3|u1|ADDRQ_int~16_combout\ & \u3|u1|sampling~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int~16_combout\,
	datab => \u3|u1|sampling~5_combout\,
	datac => \u3|u1|TRIGGER~q\,
	datad => \u3|u1|sampling~4_combout\,
	combout => \u3|u1|TRIGGER~1_combout\);

-- Location: FF_X30_Y5_N31
\u3|u1|TRIGGER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|TRIGGER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|TRIGGER~q\);

-- Location: LCCOMB_X28_Y5_N26
\u3|u1|ADDRQ_int[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[0]~17_combout\ = (\u3|u1|WREN_int~2_combout\) # ((\u3|u1|sampling~5_combout\) # ((\u3|u1|TRIGGER~q\ & \u3|u1|ADDRQ_int~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|TRIGGER~q\,
	datab => \u3|u1|WREN_int~2_combout\,
	datac => \u3|u1|ADDRQ_int~16_combout\,
	datad => \u3|u1|sampling~5_combout\,
	combout => \u3|u1|ADDRQ_int[0]~17_combout\);

-- Location: FF_X28_Y12_N3
\u3|u1|ADDRQ_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[0]~14_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(0));

-- Location: LCCOMB_X28_Y12_N4
\u3|u1|ADDRQ_int[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[1]~18_combout\ = (\u3|u1|ADDRQ_int\(1) & (!\u3|u1|ADDRQ_int[0]~15\)) # (!\u3|u1|ADDRQ_int\(1) & ((\u3|u1|ADDRQ_int[0]~15\) # (GND)))
-- \u3|u1|ADDRQ_int[1]~19\ = CARRY((!\u3|u1|ADDRQ_int[0]~15\) # (!\u3|u1|ADDRQ_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|ADDRQ_int\(1),
	datad => VCC,
	cin => \u3|u1|ADDRQ_int[0]~15\,
	combout => \u3|u1|ADDRQ_int[1]~18_combout\,
	cout => \u3|u1|ADDRQ_int[1]~19\);

-- Location: FF_X28_Y12_N5
\u3|u1|ADDRQ_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[1]~18_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(1));

-- Location: LCCOMB_X28_Y12_N6
\u3|u1|ADDRQ_int[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[2]~20_combout\ = (\u3|u1|ADDRQ_int\(2) & (\u3|u1|ADDRQ_int[1]~19\ $ (GND))) # (!\u3|u1|ADDRQ_int\(2) & (!\u3|u1|ADDRQ_int[1]~19\ & VCC))
-- \u3|u1|ADDRQ_int[2]~21\ = CARRY((\u3|u1|ADDRQ_int\(2) & !\u3|u1|ADDRQ_int[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int\(2),
	datad => VCC,
	cin => \u3|u1|ADDRQ_int[1]~19\,
	combout => \u3|u1|ADDRQ_int[2]~20_combout\,
	cout => \u3|u1|ADDRQ_int[2]~21\);

-- Location: FF_X28_Y12_N7
\u3|u1|ADDRQ_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[2]~20_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(2));

-- Location: LCCOMB_X28_Y12_N8
\u3|u1|ADDRQ_int[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[3]~22_combout\ = (\u3|u1|ADDRQ_int\(3) & (!\u3|u1|ADDRQ_int[2]~21\)) # (!\u3|u1|ADDRQ_int\(3) & ((\u3|u1|ADDRQ_int[2]~21\) # (GND)))
-- \u3|u1|ADDRQ_int[3]~23\ = CARRY((!\u3|u1|ADDRQ_int[2]~21\) # (!\u3|u1|ADDRQ_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|ADDRQ_int\(3),
	datad => VCC,
	cin => \u3|u1|ADDRQ_int[2]~21\,
	combout => \u3|u1|ADDRQ_int[3]~22_combout\,
	cout => \u3|u1|ADDRQ_int[3]~23\);

-- Location: FF_X28_Y12_N9
\u3|u1|ADDRQ_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[3]~22_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(3));

-- Location: LCCOMB_X28_Y12_N10
\u3|u1|ADDRQ_int[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[4]~24_combout\ = (\u3|u1|ADDRQ_int\(4) & (\u3|u1|ADDRQ_int[3]~23\ $ (GND))) # (!\u3|u1|ADDRQ_int\(4) & (!\u3|u1|ADDRQ_int[3]~23\ & VCC))
-- \u3|u1|ADDRQ_int[4]~25\ = CARRY((\u3|u1|ADDRQ_int\(4) & !\u3|u1|ADDRQ_int[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int\(4),
	datad => VCC,
	cin => \u3|u1|ADDRQ_int[3]~23\,
	combout => \u3|u1|ADDRQ_int[4]~24_combout\,
	cout => \u3|u1|ADDRQ_int[4]~25\);

-- Location: FF_X28_Y12_N11
\u3|u1|ADDRQ_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[4]~24_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(4));

-- Location: LCCOMB_X28_Y12_N12
\u3|u1|ADDRQ_int[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[5]~26_combout\ = (\u3|u1|ADDRQ_int\(5) & (!\u3|u1|ADDRQ_int[4]~25\)) # (!\u3|u1|ADDRQ_int\(5) & ((\u3|u1|ADDRQ_int[4]~25\) # (GND)))
-- \u3|u1|ADDRQ_int[5]~27\ = CARRY((!\u3|u1|ADDRQ_int[4]~25\) # (!\u3|u1|ADDRQ_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int\(5),
	datad => VCC,
	cin => \u3|u1|ADDRQ_int[4]~25\,
	combout => \u3|u1|ADDRQ_int[5]~26_combout\,
	cout => \u3|u1|ADDRQ_int[5]~27\);

-- Location: FF_X28_Y12_N13
\u3|u1|ADDRQ_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[5]~26_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(5));

-- Location: LCCOMB_X28_Y12_N14
\u3|u1|ADDRQ_int[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[6]~28_combout\ = (\u3|u1|ADDRQ_int\(6) & (\u3|u1|ADDRQ_int[5]~27\ $ (GND))) # (!\u3|u1|ADDRQ_int\(6) & (!\u3|u1|ADDRQ_int[5]~27\ & VCC))
-- \u3|u1|ADDRQ_int[6]~29\ = CARRY((\u3|u1|ADDRQ_int\(6) & !\u3|u1|ADDRQ_int[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|ADDRQ_int\(6),
	datad => VCC,
	cin => \u3|u1|ADDRQ_int[5]~27\,
	combout => \u3|u1|ADDRQ_int[6]~28_combout\,
	cout => \u3|u1|ADDRQ_int[6]~29\);

-- Location: FF_X28_Y12_N15
\u3|u1|ADDRQ_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[6]~28_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(6));

-- Location: LCCOMB_X28_Y12_N16
\u3|u1|ADDRQ_int[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[7]~30_combout\ = (\u3|u1|ADDRQ_int\(7) & (!\u3|u1|ADDRQ_int[6]~29\)) # (!\u3|u1|ADDRQ_int\(7) & ((\u3|u1|ADDRQ_int[6]~29\) # (GND)))
-- \u3|u1|ADDRQ_int[7]~31\ = CARRY((!\u3|u1|ADDRQ_int[6]~29\) # (!\u3|u1|ADDRQ_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|ADDRQ_int\(7),
	datad => VCC,
	cin => \u3|u1|ADDRQ_int[6]~29\,
	combout => \u3|u1|ADDRQ_int[7]~30_combout\,
	cout => \u3|u1|ADDRQ_int[7]~31\);

-- Location: FF_X28_Y12_N17
\u3|u1|ADDRQ_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[7]~30_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(7));

-- Location: LCCOMB_X28_Y12_N18
\u3|u1|ADDRQ_int[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int[8]~32_combout\ = (\u3|u1|ADDRQ_int\(8) & (\u3|u1|ADDRQ_int[7]~31\ $ (GND))) # (!\u3|u1|ADDRQ_int\(8) & (!\u3|u1|ADDRQ_int[7]~31\ & VCC))
-- \u3|u1|ADDRQ_int[8]~33\ = CARRY((\u3|u1|ADDRQ_int\(8) & !\u3|u1|ADDRQ_int[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|ADDRQ_int\(8),
	datad => VCC,
	cin => \u3|u1|ADDRQ_int[7]~31\,
	combout => \u3|u1|ADDRQ_int[8]~32_combout\,
	cout => \u3|u1|ADDRQ_int[8]~33\);

-- Location: FF_X28_Y12_N19
\u3|u1|ADDRQ_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[8]~32_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(8));

-- Location: FF_X28_Y12_N21
\u3|u1|ADDRQ_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|ADDRQ_int[9]~34_combout\,
	sclr => \u3|u1|sampling~5_combout\,
	ena => \u3|u1|ADDRQ_int[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|ADDRQ_int\(9));

-- Location: LCCOMB_X27_Y9_N16
\u3|u1|WREN_int~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|WREN_int~2_combout\ = (\u3|u1|CLEARING_MEMORY_ONGOING~q\ & (((!\u3|u1|ADDRQ_int\(9) & !\u3|u1|ADDRQ_int\(8))) # (!\u3|u1|ADDRQ_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int\(9),
	datab => \u3|u1|ADDRQ_int\(8),
	datac => \u3|u1|ADDRQ_int\(10),
	datad => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	combout => \u3|u1|WREN_int~2_combout\);

-- Location: LCCOMB_X30_Y5_N26
\u3|u1|CLEARING_MEMORY_ONGOING~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|CLEARING_MEMORY_ONGOING~2_combout\ = (\u3|u1|WREN_int~2_combout\) # ((!\nRST~input_o\ & !\u3|u1|CLEARING_MEMORY_ONGOING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|WREN_int~2_combout\,
	datab => \nRST~input_o\,
	datac => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	combout => \u3|u1|CLEARING_MEMORY_ONGOING~2_combout\);

-- Location: FF_X30_Y5_N27
\u3|u1|CLEARING_MEMORY_ONGOING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|CLEARING_MEMORY_ONGOING~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|CLEARING_MEMORY_ONGOING~q\);

-- Location: LCCOMB_X28_Y12_N26
\u3|u1|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|Equal1~2_combout\ = ((!\u3|u1|ADDRQ_int\(7)) # (!\u3|u1|ADDRQ_int\(6))) # (!\u3|u1|ADDRQ_int\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ADDRQ_int\(10),
	datac => \u3|u1|ADDRQ_int\(6),
	datad => \u3|u1|ADDRQ_int\(7),
	combout => \u3|u1|Equal1~2_combout\);

-- Location: LCCOMB_X28_Y12_N28
\u3|u1|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|Equal1~3_combout\ = (\u3|u1|Equal1~0_combout\) # ((\u3|u1|Equal1~2_combout\) # (\u3|u1|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|Equal1~0_combout\,
	datac => \u3|u1|Equal1~2_combout\,
	datad => \u3|u1|Equal1~1_combout\,
	combout => \u3|u1|Equal1~3_combout\);

-- Location: LCCOMB_X30_Y5_N20
\u3|u1|ADDRQ_int~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|ADDRQ_int~13_combout\ = (!\u3|u1|CLEARING_MEMORY_ONGOING~q\ & \u3|u2|CE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	datad => \u3|u2|CE~q\,
	combout => \u3|u1|ADDRQ_int~13_combout\);

-- Location: LCCOMB_X30_Y5_N24
\u3|u1|TRIGGER~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|TRIGGER~0_combout\ = (\u3|u1|Equal1~3_combout\ & (\u3|u1|ADDRQ_int~13_combout\ & ((\u3|u1|TRIGGER~q\) # (\u3|u1|sampling~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|TRIGGER~q\,
	datab => \u3|u1|sampling~4_combout\,
	datac => \u3|u1|Equal1~3_combout\,
	datad => \u3|u1|ADDRQ_int~13_combout\,
	combout => \u3|u1|TRIGGER~0_combout\);

-- Location: LCCOMB_X30_Y5_N12
\u3|u1|WREN_int~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|WREN_int~3_combout\ = (\u3|u1|WREN_int~q\ & (((!\u3|u1|TRIGGER~q\ & !\u3|u1|sampling~4_combout\)) # (!\u3|u1|ADDRQ_int~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|TRIGGER~q\,
	datab => \u3|u1|ADDRQ_int~13_combout\,
	datac => \u3|u1|WREN_int~q\,
	datad => \u3|u1|sampling~4_combout\,
	combout => \u3|u1|WREN_int~3_combout\);

-- Location: LCCOMB_X30_Y5_N6
\u3|u1|WREN_int~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|WREN_int~4_combout\ = (\u3|u1|WREN_int~2_combout\ & ((\u3|u1|CLEARING_MEMORY_ONGOING~q\) # ((\u3|u1|Equal1~3_combout\)))) # (!\u3|u1|WREN_int~2_combout\ & (((\u3|u1|WREN_int~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	datab => \u3|u1|Equal1~3_combout\,
	datac => \u3|u1|WREN_int~2_combout\,
	datad => \u3|u1|WREN_int~3_combout\,
	combout => \u3|u1|WREN_int~4_combout\);

-- Location: LCCOMB_X30_Y5_N0
\u3|u1|WREN_int~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|WREN_int~5_combout\ = (\u3|u1|TRIGGER~0_combout\) # ((\u3|u1|WREN_int~4_combout\) # ((!\u3|u1|CLEARING_MEMORY_ONGOING~q\ & !\nRST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	datab => \u3|u1|TRIGGER~0_combout\,
	datac => \nRST~input_o\,
	datad => \u3|u1|WREN_int~4_combout\,
	combout => \u3|u1|WREN_int~5_combout\);

-- Location: FF_X30_Y5_N1
\u3|u1|WREN_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|WREN_int~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|WREN_int~q\);

-- Location: LCCOMB_X30_Y11_N16
\u3|u1|Q_int~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|Q_int~2_combout\ = (!\u3|u1|CLEARING_MEMORY_ONGOING~q\ & \INPUT[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	datac => \INPUT[0]~input_o\,
	combout => \u3|u1|Q_int~2_combout\);

-- Location: LCCOMB_X30_Y5_N16
\u3|u1|Q_int[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|Q_int[0]~5_combout\ = (\u3|u1|CLEARING_MEMORY_ONGOING~q\ & (((\u3|u1|WREN_int~2_combout\) # (\u3|u1|TRIGGER~0_combout\)))) # (!\u3|u1|CLEARING_MEMORY_ONGOING~q\ & (\nRST~input_o\ & ((\u3|u1|WREN_int~2_combout\) # (\u3|u1|TRIGGER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	datab => \nRST~input_o\,
	datac => \u3|u1|WREN_int~2_combout\,
	datad => \u3|u1|TRIGGER~0_combout\,
	combout => \u3|u1|Q_int[0]~5_combout\);

-- Location: FF_X30_Y11_N17
\u3|u1|Q_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|Q_int~2_combout\,
	ena => \u3|u1|Q_int[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|Q_int\(0));

-- Location: LCCOMB_X30_Y11_N2
\u3|u1|Q_int~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|Q_int~3_combout\ = (\INPUT[1]~input_o\ & !\u3|u1|CLEARING_MEMORY_ONGOING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[1]~input_o\,
	datad => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	combout => \u3|u1|Q_int~3_combout\);

-- Location: FF_X30_Y11_N3
\u3|u1|Q_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|Q_int~3_combout\,
	ena => \u3|u1|Q_int[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|Q_int\(1));

-- Location: LCCOMB_X30_Y11_N20
\u3|u1|Q_int~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|Q_int~4_combout\ = (!\u3|u1|CLEARING_MEMORY_ONGOING~q\ & \INPUT[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|CLEARING_MEMORY_ONGOING~q\,
	datac => \INPUT[2]~input_o\,
	combout => \u3|u1|Q_int~4_combout\);

-- Location: FF_X30_Y11_N21
\u3|u1|Q_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|u1|Q_int~4_combout\,
	ena => \u3|u1|Q_int[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|Q_int\(2));

-- Location: M9K_X26_Y12_N0
\u3|u3|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sampleAndStore:u3|memory:u3|altsyncram:altsyncram_component|altsyncram_ctn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 1280,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 1280,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	power_up_uninitialized => "true",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u3|u1|WREN_int~q\,
	portbre => VCC,
	clk0 => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u3|u3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y12_N8
\u4|RGB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|RGB~0_combout\ = (\u2|DISP_EN~4_combout\ & \u3|u3|altsyncram_component|auto_generated|q_b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|DISP_EN~4_combout\,
	datad => \u3|u3|altsyncram_component|auto_generated|q_b\(0),
	combout => \u4|RGB~0_combout\);

-- Location: FF_X22_Y12_N9
\u4|RGB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u4|RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|RGB\(0));

-- Location: LCCOMB_X22_Y12_N26
\u4|RGB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|RGB~1_combout\ = (\u2|DISP_EN~4_combout\ & \u3|u3|altsyncram_component|auto_generated|q_b\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|DISP_EN~4_combout\,
	datad => \u3|u3|altsyncram_component|auto_generated|q_b\(1),
	combout => \u4|RGB~1_combout\);

-- Location: FF_X22_Y12_N27
\u4|RGB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u4|RGB~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|RGB\(1));

-- Location: LCCOMB_X22_Y12_N28
\u4|RGB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|RGB~2_combout\ = (\u2|DISP_EN~4_combout\ & \u3|u3|altsyncram_component|auto_generated|q_b\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|DISP_EN~4_combout\,
	datad => \u3|u3|altsyncram_component|auto_generated|q_b\(2),
	combout => \u4|RGB~2_combout\);

-- Location: FF_X22_Y12_N29
\u4|RGB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u4|RGB~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|RGB\(2));

-- Location: LCCOMB_X22_Y24_N10
\Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (\Equal7~3_combout\ & (\Equal0~0_combout\ & (\Equal7~5_combout\ & \u3|u2|FACTOR_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal7~5_combout\,
	datad => \u3|u2|FACTOR_int\(2),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X22_Y24_N20
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\Equal0~1_combout\ & (\Equal7~4_combout\ & (\Equal4~0_combout\ & \u3|u2|FACTOR_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal7~4_combout\,
	datac => \Equal4~0_combout\,
	datad => \u3|u2|FACTOR_int\(8),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X24_Y21_N24
\Equal7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (!\u3|u2|FACTOR_int\(10) & (!\u3|u2|FACTOR_int\(8) & (!\u3|u2|FACTOR_int\(9) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(10),
	datab => \u3|u2|FACTOR_int\(8),
	datac => \u3|u2|FACTOR_int\(9),
	datad => \Equal4~0_combout\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X22_Y24_N2
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\Equal7~2_combout\ & (!\u3|u2|FACTOR_int\(2) & (!\u3|u2|FACTOR_int\(1) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \u3|u2|FACTOR_int\(2),
	datac => \u3|u2|FACTOR_int\(1),
	datad => \Equal0~0_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X28_Y23_N0
\Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (!\u3|u2|FACTOR_int\(5) & (!\u3|u2|FACTOR_int\(3) & \Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(5),
	datac => \u3|u2|FACTOR_int\(3),
	datad => \Equal8~0_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X28_Y23_N4
\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!\u3|u2|FACTOR_int\(6) & (\u3|u2|FACTOR_int\(4) & \Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(6),
	datac => \u3|u2|FACTOR_int\(4),
	datad => \Equal8~1_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X22_Y24_N12
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Equal4~0_combout\ & !\u3|u2|FACTOR_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~0_combout\,
	datad => \u3|u2|FACTOR_int\(8),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X27_Y20_N8
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (\Equal4~1_combout\ & (\Equal0~1_combout\ & (!\u3|u2|FACTOR_int\(9) & \u3|u2|FACTOR_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal0~1_combout\,
	datac => \u3|u2|FACTOR_int\(9),
	datad => \u3|u2|FACTOR_int\(10),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X28_Y23_N18
\LED_PRESCALE_FACTOR[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[3]~2_combout\ = (!\Equal4~2_combout\ & (((\u3|u2|FACTOR_int\(4)) # (!\Equal8~1_combout\)) # (!\u3|u2|FACTOR_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \u3|u2|FACTOR_int\(6),
	datac => \u3|u2|FACTOR_int\(4),
	datad => \Equal8~1_combout\,
	combout => \LED_PRESCALE_FACTOR[3]~2_combout\);

-- Location: LCCOMB_X22_Y24_N30
\LED_PRESCALE_FACTOR[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[3]~3_combout\ = (!\Equal12~0_combout\ & (!\Equal6~0_combout\ & (!\Equal10~0_combout\ & \LED_PRESCALE_FACTOR[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \Equal10~0_combout\,
	datad => \LED_PRESCALE_FACTOR[3]~2_combout\,
	combout => \LED_PRESCALE_FACTOR[3]~3_combout\);

-- Location: LCCOMB_X28_Y17_N12
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal7~4_combout\ & (!\u3|u2|FACTOR_int\(8) & (\Equal0~1_combout\ & !\u3|u2|FACTOR_int\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~4_combout\,
	datab => \u3|u2|FACTOR_int\(8),
	datac => \Equal0~1_combout\,
	datad => \u3|u2|FACTOR_int\(14),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X28_Y17_N22
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Equal1~0_combout\ & (!\u3|u2|FACTOR_int\(13) & (\u3|u2|FACTOR_int\(12) & !\u3|u2|FACTOR_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \u3|u2|FACTOR_int\(13),
	datac => \u3|u2|FACTOR_int\(12),
	datad => \u3|u2|FACTOR_int\(11),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X28_Y18_N0
\LED_PRESCALE_FACTOR[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[0]~4_combout\ = \Equal14~0_combout\ $ ((((\Equal2~0_combout\) # (\Equal0~3_combout\)) # (!\LED_PRESCALE_FACTOR[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \LED_PRESCALE_FACTOR[3]~3_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \LED_PRESCALE_FACTOR[0]~4_combout\);

-- Location: LCCOMB_X28_Y17_N0
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\u3|u2|FACTOR_int\(12) & \u3|u2|FACTOR_int\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(12),
	datad => \u3|u2|FACTOR_int\(13),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X28_Y17_N10
\LED_PRESCALE_FACTOR~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR~7_combout\ = (\Equal0~3_combout\) # ((\Equal1~0_combout\ & (\Equal1~1_combout\ & !\u3|u2|FACTOR_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal1~1_combout\,
	datad => \u3|u2|FACTOR_int\(11),
	combout => \LED_PRESCALE_FACTOR~7_combout\);

-- Location: LCCOMB_X22_Y24_N28
\LED_PRESCALE_FACTOR[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[3]~5_combout\ = (!\Equal12~0_combout\ & \LED_PRESCALE_FACTOR[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datad => \LED_PRESCALE_FACTOR[3]~2_combout\,
	combout => \LED_PRESCALE_FACTOR[3]~5_combout\);

-- Location: LCCOMB_X22_Y24_N22
\Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\Equal7~2_combout\ & (\Equal7~6_combout\ & (\u3|u2|FACTOR_int\(1) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \Equal7~6_combout\,
	datac => \u3|u2|FACTOR_int\(1),
	datad => \Equal0~0_combout\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X25_Y20_N16
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\u3|u2|FACTOR_int\(10) & \u3|u2|FACTOR_int\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|FACTOR_int\(10),
	datad => \u3|u2|FACTOR_int\(9),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X28_Y23_N30
\Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!\u3|u2|FACTOR_int\(4) & !\u3|u2|FACTOR_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u2|FACTOR_int\(4),
	datad => \u3|u2|FACTOR_int\(6),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X28_Y23_N8
\Equal9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (!\u3|u2|FACTOR_int\(3) & (\Equal8~0_combout\ & (\Equal9~0_combout\ & \u3|u2|FACTOR_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(3),
	datab => \Equal8~0_combout\,
	datac => \Equal9~0_combout\,
	datad => \u3|u2|FACTOR_int\(5),
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X28_Y23_N26
\LED_PRESCALE_FACTOR[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[3]~6_combout\ = (!\Equal9~1_combout\ & (((!\Equal4~1_combout\) # (!\Equal5~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal9~1_combout\,
	datad => \Equal4~1_combout\,
	combout => \LED_PRESCALE_FACTOR[3]~6_combout\);

-- Location: LCCOMB_X22_Y24_N24
\LED_PRESCALE_FACTOR~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR~8_combout\ = \Equal13~0_combout\ $ (((\LED_PRESCALE_FACTOR~7_combout\) # ((!\LED_PRESCALE_FACTOR[3]~6_combout\) # (!\LED_PRESCALE_FACTOR[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_PRESCALE_FACTOR~7_combout\,
	datab => \LED_PRESCALE_FACTOR[3]~5_combout\,
	datac => \Equal13~0_combout\,
	datad => \LED_PRESCALE_FACTOR[3]~6_combout\,
	combout => \LED_PRESCALE_FACTOR~8_combout\);

-- Location: LCCOMB_X22_Y24_N14
\Equal7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (\Equal7~3_combout\ & (!\u3|u2|FACTOR_int\(2) & (!\u3|u2|FACTOR_int\(1) & \Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~3_combout\,
	datab => \u3|u2|FACTOR_int\(2),
	datac => \u3|u2|FACTOR_int\(1),
	datad => \Equal7~2_combout\,
	combout => \Equal7~7_combout\);

-- Location: LCCOMB_X22_Y24_N18
\LED_PRESCALE_FACTOR[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[3]~10_combout\ = (\Equal13~0_combout\) # ((\Equal7~7_combout\ & (\u3|u2|FACTOR_int\(0) $ (\u3|u2|FACTOR_int\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal7~7_combout\,
	datac => \u3|u2|FACTOR_int\(0),
	datad => \u3|u2|FACTOR_int\(7),
	combout => \LED_PRESCALE_FACTOR[3]~10_combout\);

-- Location: LCCOMB_X28_Y23_N28
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\u3|u2|FACTOR_int\(3) & (\Equal8~0_combout\ & (\Equal9~0_combout\ & !\u3|u2|FACTOR_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(3),
	datab => \Equal8~0_combout\,
	datac => \Equal9~0_combout\,
	datad => \u3|u2|FACTOR_int\(5),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X28_Y23_N6
\LED_PRESCALE_FACTOR[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[3]~11_combout\ = ((\LED_PRESCALE_FACTOR[3]~10_combout\) # ((\Equal11~0_combout\) # (!\LED_PRESCALE_FACTOR[3]~3_combout\))) # (!\LED_PRESCALE_FACTOR[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_PRESCALE_FACTOR[3]~6_combout\,
	datab => \LED_PRESCALE_FACTOR[3]~10_combout\,
	datac => \LED_PRESCALE_FACTOR[3]~3_combout\,
	datad => \Equal11~0_combout\,
	combout => \LED_PRESCALE_FACTOR[3]~11_combout\);

-- Location: LCCOMB_X28_Y23_N12
\LED_PRESCALE_FACTOR[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[2]~14_combout\ = ((\u3|u2|FACTOR_int\(3) $ (!\u3|u2|FACTOR_int\(5))) # (!\Equal9~0_combout\)) # (!\Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|FACTOR_int\(3),
	datab => \Equal8~0_combout\,
	datac => \Equal9~0_combout\,
	datad => \u3|u2|FACTOR_int\(5),
	combout => \LED_PRESCALE_FACTOR[2]~14_combout\);

-- Location: LCCOMB_X28_Y23_N22
\LED_PRESCALE_FACTOR[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[2]~15_combout\ = (\LED_PRESCALE_FACTOR[2]~14_combout\ & ((\u3|u2|FACTOR_int\(6) $ (!\u3|u2|FACTOR_int\(4))) # (!\Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_PRESCALE_FACTOR[2]~14_combout\,
	datab => \u3|u2|FACTOR_int\(6),
	datac => \u3|u2|FACTOR_int\(4),
	datad => \Equal8~1_combout\,
	combout => \LED_PRESCALE_FACTOR[2]~15_combout\);

-- Location: LCCOMB_X28_Y17_N4
\LED_PRESCALE_FACTOR[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[2]~9_combout\ = (\Equal1~0_combout\ & (!\u3|u2|FACTOR_int\(13) & (\u3|u2|FACTOR_int\(12) $ (\u3|u2|FACTOR_int\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \u3|u2|FACTOR_int\(13),
	datac => \u3|u2|FACTOR_int\(12),
	datad => \u3|u2|FACTOR_int\(11),
	combout => \LED_PRESCALE_FACTOR[2]~9_combout\);

-- Location: LCCOMB_X28_Y23_N24
\LED_PRESCALE_FACTOR[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[2]~12_combout\ = (!\LED_PRESCALE_FACTOR[3]~11_combout\ & ((\LED_PRESCALE_FACTOR[2]~9_combout\) # (\LED_PRESCALE_FACTOR~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_PRESCALE_FACTOR[2]~9_combout\,
	datac => \LED_PRESCALE_FACTOR~7_combout\,
	datad => \LED_PRESCALE_FACTOR[3]~11_combout\,
	combout => \LED_PRESCALE_FACTOR[2]~12_combout\);

-- Location: LCCOMB_X28_Y23_N2
\LED_PRESCALE_FACTOR[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[2]~18_combout\ = (\LED_PRESCALE_FACTOR[2]~12_combout\) # ((\LED_PRESCALE_FACTOR[3]~11_combout\ & (!\Equal14~0_combout\ & !\LED_PRESCALE_FACTOR[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_PRESCALE_FACTOR[3]~11_combout\,
	datab => \Equal14~0_combout\,
	datac => \LED_PRESCALE_FACTOR[2]~15_combout\,
	datad => \LED_PRESCALE_FACTOR[2]~12_combout\,
	combout => \LED_PRESCALE_FACTOR[2]~18_combout\);

-- Location: LCCOMB_X22_Y24_N4
\LED_PRESCALE_FACTOR[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[2]~16_combout\ = (!\Equal13~0_combout\ & !\Equal12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal13~0_combout\,
	datad => \Equal12~0_combout\,
	combout => \LED_PRESCALE_FACTOR[2]~16_combout\);

-- Location: LCCOMB_X28_Y23_N10
\LED_PRESCALE_FACTOR[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[2]~13_combout\ = (!\Equal14~0_combout\ & \LED_PRESCALE_FACTOR[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~0_combout\,
	datad => \LED_PRESCALE_FACTOR[3]~11_combout\,
	combout => \LED_PRESCALE_FACTOR[2]~13_combout\);

-- Location: LCCOMB_X28_Y23_N16
\LED_PRESCALE_FACTOR[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_PRESCALE_FACTOR[3]~17_combout\ = (\LED_PRESCALE_FACTOR[2]~12_combout\) # ((\LED_PRESCALE_FACTOR[2]~15_combout\ & (\LED_PRESCALE_FACTOR[2]~16_combout\ & \LED_PRESCALE_FACTOR[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_PRESCALE_FACTOR[2]~15_combout\,
	datab => \LED_PRESCALE_FACTOR[2]~12_combout\,
	datac => \LED_PRESCALE_FACTOR[2]~16_combout\,
	datad => \LED_PRESCALE_FACTOR[2]~13_combout\,
	combout => \LED_PRESCALE_FACTOR[3]~17_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);
END structure;


