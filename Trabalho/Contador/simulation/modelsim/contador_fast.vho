-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/25/2023 14:56:27"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	E : IN std_logic;
	Q : OUT std_logic_vector(15 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[4]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[6]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[7]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[8]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[9]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[10]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[11]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[12]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[13]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[14]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[15]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \Count[0]~15_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \Count[1]~16_combout\ : std_logic;
SIGNAL \Count[1]~17\ : std_logic;
SIGNAL \Count[2]~18_combout\ : std_logic;
SIGNAL \Count[2]~19\ : std_logic;
SIGNAL \Count[3]~20_combout\ : std_logic;
SIGNAL \Count[3]~21\ : std_logic;
SIGNAL \Count[4]~22_combout\ : std_logic;
SIGNAL \Count[4]~23\ : std_logic;
SIGNAL \Count[5]~24_combout\ : std_logic;
SIGNAL \Count[5]~25\ : std_logic;
SIGNAL \Count[6]~26_combout\ : std_logic;
SIGNAL \Count[6]~27\ : std_logic;
SIGNAL \Count[7]~28_combout\ : std_logic;
SIGNAL \Count[7]~29\ : std_logic;
SIGNAL \Count[8]~30_combout\ : std_logic;
SIGNAL \Count[8]~31\ : std_logic;
SIGNAL \Count[9]~32_combout\ : std_logic;
SIGNAL \Count[9]~33\ : std_logic;
SIGNAL \Count[10]~34_combout\ : std_logic;
SIGNAL \Count[10]~35\ : std_logic;
SIGNAL \Count[11]~36_combout\ : std_logic;
SIGNAL \Count[11]~37\ : std_logic;
SIGNAL \Count[12]~38_combout\ : std_logic;
SIGNAL \Count[12]~39\ : std_logic;
SIGNAL \Count[13]~40_combout\ : std_logic;
SIGNAL \Count[13]~41\ : std_logic;
SIGNAL \Count[14]~42_combout\ : std_logic;
SIGNAL \Count[14]~43\ : std_logic;
SIGNAL \Count[15]~44_combout\ : std_logic;
SIGNAL Count : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_E <= E;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_E,
	combout => \E~combout\);

-- Location: LCCOMB_X43_Y35_N30
\Count[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[0]~15_combout\ = Count(0) $ (\E~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Count(0),
	datad => \E~combout\,
	combout => \Count[0]~15_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: CLKCTRL_G1
\Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~clkctrl_outclk\);

-- Location: LCFF_X43_Y35_N31
\Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[0]~15_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(0));

-- Location: LCCOMB_X43_Y35_N0
\Count[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[1]~16_combout\ = (Count(0) & (Count(1) $ (VCC))) # (!Count(0) & (Count(1) & VCC))
-- \Count[1]~17\ = CARRY((Count(0) & Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count(0),
	datab => Count(1),
	datad => VCC,
	combout => \Count[1]~16_combout\,
	cout => \Count[1]~17\);

-- Location: LCFF_X43_Y35_N1
\Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[1]~16_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(1));

-- Location: LCCOMB_X43_Y35_N2
\Count[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[2]~18_combout\ = (Count(2) & (!\Count[1]~17\)) # (!Count(2) & ((\Count[1]~17\) # (GND)))
-- \Count[2]~19\ = CARRY((!\Count[1]~17\) # (!Count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(2),
	datad => VCC,
	cin => \Count[1]~17\,
	combout => \Count[2]~18_combout\,
	cout => \Count[2]~19\);

-- Location: LCFF_X43_Y35_N3
\Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[2]~18_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(2));

-- Location: LCCOMB_X43_Y35_N4
\Count[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[3]~20_combout\ = (Count(3) & (\Count[2]~19\ $ (GND))) # (!Count(3) & (!\Count[2]~19\ & VCC))
-- \Count[3]~21\ = CARRY((Count(3) & !\Count[2]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(3),
	datad => VCC,
	cin => \Count[2]~19\,
	combout => \Count[3]~20_combout\,
	cout => \Count[3]~21\);

-- Location: LCFF_X43_Y35_N5
\Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[3]~20_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(3));

-- Location: LCCOMB_X43_Y35_N6
\Count[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[4]~22_combout\ = (Count(4) & (!\Count[3]~21\)) # (!Count(4) & ((\Count[3]~21\) # (GND)))
-- \Count[4]~23\ = CARRY((!\Count[3]~21\) # (!Count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(4),
	datad => VCC,
	cin => \Count[3]~21\,
	combout => \Count[4]~22_combout\,
	cout => \Count[4]~23\);

-- Location: LCFF_X43_Y35_N7
\Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[4]~22_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(4));

-- Location: LCCOMB_X43_Y35_N8
\Count[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[5]~24_combout\ = (Count(5) & (\Count[4]~23\ $ (GND))) # (!Count(5) & (!\Count[4]~23\ & VCC))
-- \Count[5]~25\ = CARRY((Count(5) & !\Count[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(5),
	datad => VCC,
	cin => \Count[4]~23\,
	combout => \Count[5]~24_combout\,
	cout => \Count[5]~25\);

-- Location: LCFF_X43_Y35_N9
\Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[5]~24_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(5));

-- Location: LCCOMB_X43_Y35_N10
\Count[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[6]~26_combout\ = (Count(6) & (!\Count[5]~25\)) # (!Count(6) & ((\Count[5]~25\) # (GND)))
-- \Count[6]~27\ = CARRY((!\Count[5]~25\) # (!Count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(6),
	datad => VCC,
	cin => \Count[5]~25\,
	combout => \Count[6]~26_combout\,
	cout => \Count[6]~27\);

-- Location: LCFF_X43_Y35_N11
\Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[6]~26_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(6));

-- Location: LCCOMB_X43_Y35_N12
\Count[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[7]~28_combout\ = (Count(7) & (\Count[6]~27\ $ (GND))) # (!Count(7) & (!\Count[6]~27\ & VCC))
-- \Count[7]~29\ = CARRY((Count(7) & !\Count[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count(7),
	datad => VCC,
	cin => \Count[6]~27\,
	combout => \Count[7]~28_combout\,
	cout => \Count[7]~29\);

-- Location: LCFF_X43_Y35_N13
\Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[7]~28_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(7));

-- Location: LCCOMB_X43_Y35_N14
\Count[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[8]~30_combout\ = (Count(8) & (!\Count[7]~29\)) # (!Count(8) & ((\Count[7]~29\) # (GND)))
-- \Count[8]~31\ = CARRY((!\Count[7]~29\) # (!Count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(8),
	datad => VCC,
	cin => \Count[7]~29\,
	combout => \Count[8]~30_combout\,
	cout => \Count[8]~31\);

-- Location: LCFF_X43_Y35_N15
\Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[8]~30_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(8));

-- Location: LCCOMB_X43_Y35_N16
\Count[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[9]~32_combout\ = (Count(9) & (\Count[8]~31\ $ (GND))) # (!Count(9) & (!\Count[8]~31\ & VCC))
-- \Count[9]~33\ = CARRY((Count(9) & !\Count[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count(9),
	datad => VCC,
	cin => \Count[8]~31\,
	combout => \Count[9]~32_combout\,
	cout => \Count[9]~33\);

-- Location: LCFF_X43_Y35_N17
\Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[9]~32_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(9));

-- Location: LCCOMB_X43_Y35_N18
\Count[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[10]~34_combout\ = (Count(10) & (!\Count[9]~33\)) # (!Count(10) & ((\Count[9]~33\) # (GND)))
-- \Count[10]~35\ = CARRY((!\Count[9]~33\) # (!Count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(10),
	datad => VCC,
	cin => \Count[9]~33\,
	combout => \Count[10]~34_combout\,
	cout => \Count[10]~35\);

-- Location: LCFF_X43_Y35_N19
\Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[10]~34_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(10));

-- Location: LCCOMB_X43_Y35_N20
\Count[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[11]~36_combout\ = (Count(11) & (\Count[10]~35\ $ (GND))) # (!Count(11) & (!\Count[10]~35\ & VCC))
-- \Count[11]~37\ = CARRY((Count(11) & !\Count[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count(11),
	datad => VCC,
	cin => \Count[10]~35\,
	combout => \Count[11]~36_combout\,
	cout => \Count[11]~37\);

-- Location: LCFF_X43_Y35_N21
\Count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[11]~36_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(11));

-- Location: LCCOMB_X43_Y35_N22
\Count[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[12]~38_combout\ = (Count(12) & (!\Count[11]~37\)) # (!Count(12) & ((\Count[11]~37\) # (GND)))
-- \Count[12]~39\ = CARRY((!\Count[11]~37\) # (!Count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(12),
	datad => VCC,
	cin => \Count[11]~37\,
	combout => \Count[12]~38_combout\,
	cout => \Count[12]~39\);

-- Location: LCFF_X43_Y35_N23
\Count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[12]~38_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(12));

-- Location: LCCOMB_X43_Y35_N24
\Count[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[13]~40_combout\ = (Count(13) & (\Count[12]~39\ $ (GND))) # (!Count(13) & (!\Count[12]~39\ & VCC))
-- \Count[13]~41\ = CARRY((Count(13) & !\Count[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count(13),
	datad => VCC,
	cin => \Count[12]~39\,
	combout => \Count[13]~40_combout\,
	cout => \Count[13]~41\);

-- Location: LCFF_X43_Y35_N25
\Count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[13]~40_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(13));

-- Location: LCCOMB_X43_Y35_N26
\Count[14]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[14]~42_combout\ = (Count(14) & (!\Count[13]~41\)) # (!Count(14) & ((\Count[13]~41\) # (GND)))
-- \Count[14]~43\ = CARRY((!\Count[13]~41\) # (!Count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(14),
	datad => VCC,
	cin => \Count[13]~41\,
	combout => \Count[14]~42_combout\,
	cout => \Count[14]~43\);

-- Location: LCFF_X43_Y35_N27
\Count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[14]~42_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(14));

-- Location: LCCOMB_X43_Y35_N28
\Count[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count[15]~44_combout\ = \Count[14]~43\ $ (!Count(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Count(15),
	cin => \Count[14]~43\,
	combout => \Count[15]~44_combout\);

-- Location: LCFF_X43_Y35_N29
\Count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Count[15]~44_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(15));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(4));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(5));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(6));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(7));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(8));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(9));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(10));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(11));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(12));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(13));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(14));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Count(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(15));
END structure;


