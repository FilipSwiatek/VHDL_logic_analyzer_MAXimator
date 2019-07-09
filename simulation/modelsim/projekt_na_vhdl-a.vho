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

-- DATE "07/09/2019 20:51:39"

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
	SLOWER : IN std_logic;
	FASTER : IN std_logic;
	H_SYNC : BUFFER std_logic;
	V_SYNC : BUFFER std_logic;
	RGB : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- SLOWER	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FASTER	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_SYNC	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SYNC	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRST	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSC_IN	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SLOWER : std_logic;
SIGNAL ww_FASTER : std_logic;
SIGNAL ww_H_SYNC : std_logic;
SIGNAL ww_V_SYNC : std_logic;
SIGNAL ww_RGB : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SLOWER~input_o\ : std_logic;
SIGNAL \FASTER~input_o\ : std_logic;
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
SIGNAL \u2|X_int[6]~29\ : std_logic;
SIGNAL \u2|X_int[7]~31_combout\ : std_logic;
SIGNAL \u2|X_int[7]~32\ : std_logic;
SIGNAL \u2|X_int[8]~33_combout\ : std_logic;
SIGNAL \u2|X_int[8]~34\ : std_logic;
SIGNAL \u2|X_int[9]~35_combout\ : std_logic;
SIGNAL \u2|Equal0~1_combout\ : std_logic;
SIGNAL \u2|X_int[9]~36\ : std_logic;
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
SIGNAL \u2|Equal0~0_combout\ : std_logic;
SIGNAL \nRST~input_o\ : std_logic;
SIGNAL \u2|blanking~1_combout\ : std_logic;
SIGNAL \u2|blanking~2_combout\ : std_logic;
SIGNAL \u2|X_int[0]~30_combout\ : std_logic;
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
SIGNAL \u2|HV_SYNC~1_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~2_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~0_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~3_combout\ : std_logic;
SIGNAL \u2|Y_int[0]~16_combout\ : std_logic;
SIGNAL \u2|Equal1~3_combout\ : std_logic;
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
SIGNAL \u2|Y_int[13]~44\ : std_logic;
SIGNAL \u2|Y_int[14]~45_combout\ : std_logic;
SIGNAL \u2|Y_int[14]~46\ : std_logic;
SIGNAL \u2|Y_int[15]~47_combout\ : std_logic;
SIGNAL \u2|DISP_EN~1_combout\ : std_logic;
SIGNAL \u2|Equal1~0_combout\ : std_logic;
SIGNAL \u2|Equal1~1_combout\ : std_logic;
SIGNAL \u2|Equal1~2_combout\ : std_logic;
SIGNAL \u2|Y_int[0]~28_combout\ : std_logic;
SIGNAL \u2|Y_int[0]~17\ : std_logic;
SIGNAL \u2|Y_int[1]~18_combout\ : std_logic;
SIGNAL \u2|Y_int[1]~19\ : std_logic;
SIGNAL \u2|Y_int[2]~20_combout\ : std_logic;
SIGNAL \u2|Y_int[2]~21\ : std_logic;
SIGNAL \u2|Y_int[3]~22_combout\ : std_logic;
SIGNAL \u2|Y_int[3]~23\ : std_logic;
SIGNAL \u2|Y_int[4]~24_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~4_combout\ : std_logic;
SIGNAL \u2|HV_SYNC~5_combout\ : std_logic;
SIGNAL \u2|blanking~0_combout\ : std_logic;
SIGNAL \u2|blanking~3_combout\ : std_logic;
SIGNAL \u2|blanking~6_combout\ : std_logic;
SIGNAL \u2|blanking~4_combout\ : std_logic;
SIGNAL \u2|blanking~5_combout\ : std_logic;
SIGNAL \u2|DISP_EN~2_combout\ : std_logic;
SIGNAL \u2|DISP_EN~3_combout\ : std_logic;
SIGNAL \u2|DISP_EN~4_combout\ : std_logic;
SIGNAL \u2|X_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u2|Y_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_nRST <= nRST;
ww_OSC_IN <= OSC_IN;
ww_SLOWER <= SLOWER;
ww_FASTER <= FASTER;
H_SYNC <= ww_H_SYNC;
V_SYNC <= ww_V_SYNC;
RGB <= ww_RGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \OSC_IN~input_o\);

\u1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\u1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\u1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\u1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\u1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: LCCOMB_X11_Y24_N24
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
	i => \u2|HV_SYNC~3_combout\,
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
	i => \u2|HV_SYNC~5_combout\,
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
	i => \u2|DISP_EN~4_combout\,
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
	i => \u2|DISP_EN~4_combout\,
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
	i => \u2|DISP_EN~4_combout\,
	devoe => ww_devoe,
	o => ww_RGB(2));

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

-- Location: LCCOMB_X18_Y9_N0
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

-- Location: LCCOMB_X18_Y9_N12
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

-- Location: LCCOMB_X18_Y9_N14
\u2|X_int[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[7]~31_combout\ = (\u2|X_int\(7) & (!\u2|X_int[6]~29\)) # (!\u2|X_int\(7) & ((\u2|X_int[6]~29\) # (GND)))
-- \u2|X_int[7]~32\ = CARRY((!\u2|X_int[6]~29\) # (!\u2|X_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(7),
	datad => VCC,
	cin => \u2|X_int[6]~29\,
	combout => \u2|X_int[7]~31_combout\,
	cout => \u2|X_int[7]~32\);

-- Location: FF_X18_Y9_N15
\u2|X_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[7]~31_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(7));

-- Location: LCCOMB_X18_Y9_N16
\u2|X_int[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[8]~33_combout\ = (\u2|X_int\(8) & (\u2|X_int[7]~32\ $ (GND))) # (!\u2|X_int\(8) & (!\u2|X_int[7]~32\ & VCC))
-- \u2|X_int[8]~34\ = CARRY((\u2|X_int\(8) & !\u2|X_int[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(8),
	datad => VCC,
	cin => \u2|X_int[7]~32\,
	combout => \u2|X_int[8]~33_combout\,
	cout => \u2|X_int[8]~34\);

-- Location: FF_X18_Y9_N17
\u2|X_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[8]~33_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(8));

-- Location: LCCOMB_X18_Y9_N18
\u2|X_int[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[9]~35_combout\ = (\u2|X_int\(9) & (!\u2|X_int[8]~34\)) # (!\u2|X_int\(9) & ((\u2|X_int[8]~34\) # (GND)))
-- \u2|X_int[9]~36\ = CARRY((!\u2|X_int[8]~34\) # (!\u2|X_int\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(9),
	datad => VCC,
	cin => \u2|X_int[8]~34\,
	combout => \u2|X_int[9]~35_combout\,
	cout => \u2|X_int[9]~36\);

-- Location: FF_X18_Y9_N19
\u2|X_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[9]~35_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(9));

-- Location: LCCOMB_X18_Y11_N26
\u2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~1_combout\ = ((\u2|X_int\(1)) # (!\u2|X_int\(9))) # (!\u2|X_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(0),
	datac => \u2|X_int\(1),
	datad => \u2|X_int\(9),
	combout => \u2|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y9_N20
\u2|X_int[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[10]~37_combout\ = (\u2|X_int\(10) & (\u2|X_int[9]~36\ $ (GND))) # (!\u2|X_int\(10) & (!\u2|X_int[9]~36\ & VCC))
-- \u2|X_int[10]~38\ = CARRY((\u2|X_int\(10) & !\u2|X_int[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(10),
	datad => VCC,
	cin => \u2|X_int[9]~36\,
	combout => \u2|X_int[10]~37_combout\,
	cout => \u2|X_int[10]~38\);

-- Location: FF_X18_Y9_N21
\u2|X_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[10]~37_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(10));

-- Location: LCCOMB_X18_Y9_N22
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

-- Location: FF_X18_Y9_N23
\u2|X_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[11]~39_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(11));

-- Location: LCCOMB_X18_Y9_N24
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

-- Location: FF_X18_Y9_N25
\u2|X_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[12]~41_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(12));

-- Location: LCCOMB_X18_Y9_N26
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

-- Location: FF_X18_Y9_N27
\u2|X_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[13]~43_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(13));

-- Location: LCCOMB_X18_Y9_N28
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

-- Location: FF_X18_Y9_N29
\u2|X_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[14]~45_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(14));

-- Location: LCCOMB_X18_Y9_N30
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

-- Location: FF_X18_Y9_N31
\u2|X_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[15]~47_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(15));

-- Location: LCCOMB_X15_Y8_N8
\u2|DISP_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~0_combout\ = (!\u2|X_int\(12) & (!\u2|X_int\(14) & (!\u2|X_int\(13) & !\u2|X_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(12),
	datab => \u2|X_int\(14),
	datac => \u2|X_int\(13),
	datad => \u2|X_int\(11),
	combout => \u2|DISP_EN~0_combout\);

-- Location: LCCOMB_X18_Y11_N8
\u2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~0_combout\ = (!\u2|X_int\(15) & (\u2|X_int\(10) & \u2|DISP_EN~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(15),
	datac => \u2|X_int\(10),
	datad => \u2|DISP_EN~0_combout\,
	combout => \u2|Equal0~0_combout\);

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

-- Location: LCCOMB_X18_Y11_N4
\u2|blanking~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~1_combout\ = (\u2|X_int\(6) & (\u2|X_int\(5) & (!\u2|X_int\(7) & !\u2|X_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(6),
	datab => \u2|X_int\(5),
	datac => \u2|X_int\(7),
	datad => \u2|X_int\(2),
	combout => \u2|blanking~1_combout\);

-- Location: LCCOMB_X18_Y11_N6
\u2|blanking~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~2_combout\ = (!\u2|X_int\(3) & (!\u2|X_int\(8) & (\u2|blanking~1_combout\ & \u2|X_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(3),
	datab => \u2|X_int\(8),
	datac => \u2|blanking~1_combout\,
	datad => \u2|X_int\(4),
	combout => \u2|blanking~2_combout\);

-- Location: LCCOMB_X18_Y11_N12
\u2|X_int[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|X_int[0]~30_combout\ = ((!\u2|Equal0~1_combout\ & (\u2|Equal0~0_combout\ & \u2|blanking~2_combout\))) # (!\nRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~1_combout\,
	datab => \u2|Equal0~0_combout\,
	datac => \nRST~input_o\,
	datad => \u2|blanking~2_combout\,
	combout => \u2|X_int[0]~30_combout\);

-- Location: FF_X18_Y9_N1
\u2|X_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[0]~16_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(0));

-- Location: LCCOMB_X18_Y9_N2
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

-- Location: FF_X18_Y9_N3
\u2|X_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[1]~18_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(1));

-- Location: LCCOMB_X18_Y9_N4
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

-- Location: FF_X18_Y9_N5
\u2|X_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[2]~20_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(2));

-- Location: LCCOMB_X18_Y9_N6
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

-- Location: FF_X18_Y9_N7
\u2|X_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[3]~22_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(3));

-- Location: LCCOMB_X18_Y9_N8
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

-- Location: FF_X18_Y9_N9
\u2|X_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[4]~24_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(4));

-- Location: LCCOMB_X18_Y9_N10
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

-- Location: FF_X18_Y9_N11
\u2|X_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[5]~26_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(5));

-- Location: FF_X18_Y9_N13
\u2|X_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|X_int[6]~28_combout\,
	sclr => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|X_int\(6));

-- Location: LCCOMB_X18_Y11_N20
\u2|HV_SYNC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~1_combout\ = (\u2|X_int\(3) & ((\u2|X_int\(7)) # ((\u2|X_int\(1) & \u2|X_int\(2))))) # (!\u2|X_int\(3) & (\u2|X_int\(1) & (\u2|X_int\(7) & \u2|X_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(3),
	datab => \u2|X_int\(1),
	datac => \u2|X_int\(7),
	datad => \u2|X_int\(2),
	combout => \u2|HV_SYNC~1_combout\);

-- Location: LCCOMB_X18_Y11_N22
\u2|HV_SYNC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~2_combout\ = (\u2|X_int\(5) & (!\u2|X_int\(7) & ((\u2|X_int\(4)) # (\u2|HV_SYNC~1_combout\)))) # (!\u2|X_int\(5) & (\u2|X_int\(7) & ((!\u2|HV_SYNC~1_combout\) # (!\u2|X_int\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(4),
	datab => \u2|X_int\(5),
	datac => \u2|X_int\(7),
	datad => \u2|HV_SYNC~1_combout\,
	combout => \u2|HV_SYNC~2_combout\);

-- Location: LCCOMB_X18_Y11_N18
\u2|HV_SYNC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~0_combout\ = (!\u2|X_int\(9) & (\u2|X_int\(8) & \u2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(9),
	datab => \u2|X_int\(8),
	datac => \u2|Equal0~0_combout\,
	combout => \u2|HV_SYNC~0_combout\);

-- Location: LCCOMB_X18_Y11_N24
\u2|HV_SYNC~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~3_combout\ = ((\u2|X_int\(6) $ (\u2|X_int\(5))) # (!\u2|HV_SYNC~0_combout\)) # (!\u2|HV_SYNC~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(6),
	datab => \u2|X_int\(5),
	datac => \u2|HV_SYNC~2_combout\,
	datad => \u2|HV_SYNC~0_combout\,
	combout => \u2|HV_SYNC~3_combout\);

-- Location: LCCOMB_X19_Y9_N0
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

-- Location: LCCOMB_X25_Y13_N28
\u2|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~3_combout\ = (((\u2|Y_int\(1)) # (!\u2|Y_int\(0))) # (!\u2|Y_int\(2))) # (!\u2|Y_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(3),
	datab => \u2|Y_int\(2),
	datac => \u2|Y_int\(0),
	datad => \u2|Y_int\(1),
	combout => \u2|Equal1~3_combout\);

-- Location: LCCOMB_X19_Y9_N8
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

-- Location: LCCOMB_X19_Y9_N10
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

-- Location: FF_X19_Y9_N11
\u2|Y_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[5]~26_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(5));

-- Location: LCCOMB_X19_Y9_N12
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

-- Location: FF_X19_Y9_N13
\u2|Y_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[6]~29_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(6));

-- Location: LCCOMB_X19_Y9_N14
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

-- Location: FF_X19_Y9_N15
\u2|Y_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[7]~31_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(7));

-- Location: LCCOMB_X19_Y9_N16
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

-- Location: FF_X19_Y9_N17
\u2|Y_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[8]~33_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(8));

-- Location: LCCOMB_X19_Y9_N18
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

-- Location: FF_X19_Y9_N19
\u2|Y_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[9]~35_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(9));

-- Location: LCCOMB_X19_Y9_N20
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

-- Location: FF_X19_Y9_N21
\u2|Y_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[10]~37_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(10));

-- Location: LCCOMB_X19_Y9_N22
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

-- Location: FF_X19_Y9_N23
\u2|Y_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[11]~39_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(11));

-- Location: LCCOMB_X19_Y9_N24
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

-- Location: FF_X19_Y9_N25
\u2|Y_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[12]~41_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(12));

-- Location: LCCOMB_X19_Y9_N26
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

-- Location: FF_X19_Y9_N27
\u2|Y_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[13]~43_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(13));

-- Location: LCCOMB_X19_Y9_N28
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

-- Location: FF_X19_Y9_N29
\u2|Y_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[14]~45_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(14));

-- Location: LCCOMB_X19_Y9_N30
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

-- Location: FF_X19_Y9_N31
\u2|Y_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[15]~47_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(15));

-- Location: LCCOMB_X19_Y10_N0
\u2|DISP_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~1_combout\ = (!\u2|Y_int\(12) & (!\u2|Y_int\(11) & (!\u2|Y_int\(10) & !\u2|Y_int\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(12),
	datab => \u2|Y_int\(11),
	datac => \u2|Y_int\(10),
	datad => \u2|Y_int\(13),
	combout => \u2|DISP_EN~1_combout\);

-- Location: LCCOMB_X19_Y12_N24
\u2|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~0_combout\ = (\u2|Y_int\(6) & (\u2|Y_int\(7) & (\u2|Y_int\(9) & !\u2|Y_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(6),
	datab => \u2|Y_int\(7),
	datac => \u2|Y_int\(9),
	datad => \u2|Y_int\(8),
	combout => \u2|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y12_N18
\u2|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~1_combout\ = (!\u2|Y_int\(15) & (\u2|DISP_EN~1_combout\ & (!\u2|Y_int\(14) & \u2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(15),
	datab => \u2|DISP_EN~1_combout\,
	datac => \u2|Y_int\(14),
	datad => \u2|Equal1~0_combout\,
	combout => \u2|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y12_N8
\u2|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~2_combout\ = (\u2|Y_int\(4)) # (!\u2|Y_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Y_int\(5),
	datad => \u2|Y_int\(4),
	combout => \u2|Equal1~2_combout\);

-- Location: LCCOMB_X19_Y12_N10
\u2|Y_int[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Y_int[0]~28_combout\ = ((!\u2|Equal1~3_combout\ & (\u2|Equal1~1_combout\ & !\u2|Equal1~2_combout\))) # (!\nRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal1~3_combout\,
	datab => \u2|Equal1~1_combout\,
	datac => \u2|Equal1~2_combout\,
	datad => \nRST~input_o\,
	combout => \u2|Y_int[0]~28_combout\);

-- Location: FF_X19_Y9_N1
\u2|Y_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[0]~16_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(0));

-- Location: LCCOMB_X19_Y9_N2
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

-- Location: FF_X19_Y9_N3
\u2|Y_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[1]~18_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(1));

-- Location: LCCOMB_X19_Y9_N4
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

-- Location: FF_X19_Y9_N5
\u2|Y_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[2]~20_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(2));

-- Location: LCCOMB_X19_Y9_N6
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

-- Location: FF_X19_Y9_N7
\u2|Y_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[3]~22_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(3));

-- Location: FF_X19_Y9_N9
\u2|Y_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2|Y_int[4]~24_combout\,
	sclr => \u2|Y_int[0]~28_combout\,
	ena => \u2|X_int[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Y_int\(4));

-- Location: LCCOMB_X25_Y13_N0
\u2|HV_SYNC~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~4_combout\ = (\u2|Y_int\(3) & (!\u2|Y_int\(2) & ((!\u2|Y_int\(1))))) # (!\u2|Y_int\(3) & (\u2|Y_int\(2) & ((\u2|Y_int\(0)) # (\u2|Y_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(3),
	datab => \u2|Y_int\(2),
	datac => \u2|Y_int\(0),
	datad => \u2|Y_int\(1),
	combout => \u2|HV_SYNC~4_combout\);

-- Location: LCCOMB_X19_Y12_N4
\u2|HV_SYNC~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|HV_SYNC~5_combout\ = (((\u2|Y_int\(5)) # (!\u2|HV_SYNC~4_combout\)) # (!\u2|Equal1~1_combout\)) # (!\u2|Y_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(4),
	datab => \u2|Equal1~1_combout\,
	datac => \u2|Y_int\(5),
	datad => \u2|HV_SYNC~4_combout\,
	combout => \u2|HV_SYNC~5_combout\);

-- Location: LCCOMB_X18_Y11_N10
\u2|blanking~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~0_combout\ = ((!\u2|X_int\(8) & !\u2|X_int\(9))) # (!\u2|X_int\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|X_int\(8),
	datac => \u2|X_int\(10),
	datad => \u2|X_int\(9),
	combout => \u2|blanking~0_combout\);

-- Location: LCCOMB_X18_Y11_N16
\u2|blanking~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~3_combout\ = (\u2|blanking~0_combout\) # ((!\u2|X_int\(0) & (\u2|X_int\(1) & \u2|blanking~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|blanking~0_combout\,
	datab => \u2|X_int\(0),
	datac => \u2|X_int\(1),
	datad => \u2|blanking~2_combout\,
	combout => \u2|blanking~3_combout\);

-- Location: LCCOMB_X19_Y12_N20
\u2|blanking~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~6_combout\ = ((!\u2|Y_int\(8) & ((!\u2|Y_int\(7)) # (!\u2|Y_int\(6))))) # (!\u2|Y_int\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(6),
	datab => \u2|Y_int\(7),
	datac => \u2|Y_int\(9),
	datad => \u2|Y_int\(8),
	combout => \u2|blanking~6_combout\);

-- Location: LCCOMB_X25_Y13_N2
\u2|blanking~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~4_combout\ = (\u2|Y_int\(3) & (\u2|Y_int\(2) & (!\u2|Y_int\(0) & \u2|Y_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(3),
	datab => \u2|Y_int\(2),
	datac => \u2|Y_int\(0),
	datad => \u2|Y_int\(1),
	combout => \u2|blanking~4_combout\);

-- Location: LCCOMB_X19_Y12_N26
\u2|blanking~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|blanking~5_combout\ = (!\u2|Y_int\(4) & (!\u2|Y_int\(8) & ((\u2|blanking~4_combout\) # (!\u2|Y_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(4),
	datab => \u2|Y_int\(8),
	datac => \u2|Y_int\(5),
	datad => \u2|blanking~4_combout\,
	combout => \u2|blanking~5_combout\);

-- Location: LCCOMB_X19_Y12_N22
\u2|DISP_EN~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~2_combout\ = (!\u2|Y_int\(15) & !\u2|Y_int\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Y_int\(15),
	datac => \u2|Y_int\(14),
	combout => \u2|DISP_EN~2_combout\);

-- Location: LCCOMB_X19_Y12_N16
\u2|DISP_EN~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~3_combout\ = (!\u2|X_int\(15) & (\u2|DISP_EN~1_combout\ & (\u2|DISP_EN~2_combout\ & \u2|DISP_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|X_int\(15),
	datab => \u2|DISP_EN~1_combout\,
	datac => \u2|DISP_EN~2_combout\,
	datad => \u2|DISP_EN~0_combout\,
	combout => \u2|DISP_EN~3_combout\);

-- Location: LCCOMB_X19_Y12_N6
\u2|DISP_EN~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|DISP_EN~4_combout\ = (\u2|blanking~3_combout\ & (\u2|DISP_EN~3_combout\ & ((\u2|blanking~6_combout\) # (\u2|blanking~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|blanking~3_combout\,
	datab => \u2|blanking~6_combout\,
	datac => \u2|blanking~5_combout\,
	datad => \u2|DISP_EN~3_combout\,
	combout => \u2|DISP_EN~4_combout\);

-- Location: IOIBUF_X31_Y17_N1
\SLOWER~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SLOWER,
	o => \SLOWER~input_o\);

-- Location: IOIBUF_X31_Y17_N8
\FASTER~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FASTER,
	o => \FASTER~input_o\);

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


