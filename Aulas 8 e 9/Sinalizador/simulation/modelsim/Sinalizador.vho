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

-- DATE "10/27/2023 17:24:46"

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

ENTITY 	Sinalizador IS
    PORT (
	Reset : IN std_logic;
	Clock : IN std_logic;
	E : IN std_logic_vector(3 DOWNTO 0);
	Subindo : OUT std_logic;
	Descendo : OUT std_logic;
	Display : OUT std_logic_vector(6 DOWNTO 0)
	);
END Sinalizador;

-- Design Ports Information
-- Subindo	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Descendo	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[3]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[4]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[6]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sinalizador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_E : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Subindo : std_logic;
SIGNAL ww_Descendo : std_logic;
SIGNAL ww_Display : std_logic_vector(6 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instance_MA|Add1~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add1~5\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add0~2_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add0~4_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add1~6_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add1~7\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add1~8_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|LessThan0~0_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \instance_controladora|estado.s0~feeder_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \instance_controladora|estado.s0~regout\ : std_logic;
SIGNAL \instance_datapath|instance_Reg_E|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Reg_E|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Reg_E|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Reg_E|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|var2[1]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|var3[1]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|var2[0]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add1~1\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add1~3\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add1~4_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add1~2_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add2~1_cout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add2~3_cout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|LessThan1~1_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add0~1\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add0~3\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add0~5\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add0~7\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add0~8_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|OUTPUT[0]~1\ : std_logic;
SIGNAL \instance_datapath|instance_MA|OUTPUT[1]~3\ : std_logic;
SIGNAL \instance_datapath|instance_MA|OUTPUT[2]~4_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|LessThan1~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|OUTPUT[2]~5\ : std_logic;
SIGNAL \instance_datapath|instance_MA|OUTPUT[3]~6_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|Equal0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|LessThan1~2_combout\ : std_logic;
SIGNAL \instance_controladora|estado~10_combout\ : std_logic;
SIGNAL \instance_controladora|estado.s1~regout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|Add0~6_combout\ : std_logic;
SIGNAL \instance_datapath|instance_MA|OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|LessThan0~1_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|LessThan0~2_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|Equal0~1_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|LessThan0~3_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Comp|Equal0~2_combout\ : std_logic;
SIGNAL \instance_controladora|estado~9_combout\ : std_logic;
SIGNAL \instance_controladora|estado.s2~regout\ : std_logic;
SIGNAL \instance_controladora|Fio_Subindo~combout\ : std_logic;
SIGNAL \instance_controladora|estado~11_combout\ : std_logic;
SIGNAL \instance_controladora|estado.s3~regout\ : std_logic;
SIGNAL \instance_controladora|Fio_Descendo~combout\ : std_logic;
SIGNAL \instance_datapath|instance_BCD|Mux6~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_BCD|Mux5~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_BCD|Mux4~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_BCD|Mux3~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_BCD|Mux2~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_BCD|Mux1~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_BCD|Mux0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Desce|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \instance_datapath|instance_Reg_E|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instance_MA|var4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instance_MA|var3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instance_MA|var2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instance_MA|var1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instance_Sobe|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \E~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_controladora|ALT_INV_estado.s1~regout\ : std_logic;
SIGNAL \instance_controladora|ALT_INV_estado.s0~regout\ : std_logic;
SIGNAL \instance_datapath|instance_BCD|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_Reset <= Reset;
ww_Clock <= Clock;
ww_E <= E;
Subindo <= ww_Subindo;
Descendo <= ww_Descendo;
Display <= ww_Display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);
\instance_controladora|ALT_INV_estado.s1~regout\ <= NOT \instance_controladora|estado.s1~regout\;
\instance_controladora|ALT_INV_estado.s0~regout\ <= NOT \instance_controladora|estado.s0~regout\;
\instance_datapath|instance_BCD|ALT_INV_Mux0~0_combout\ <= NOT \instance_datapath|instance_BCD|Mux0~0_combout\;

-- Location: LCCOMB_X27_Y35_N4
\instance_datapath|instance_MA|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add1~0_combout\ = (\instance_datapath|instance_MA|var4\(0) & (\instance_datapath|instance_MA|var3\(0) $ (VCC))) # (!\instance_datapath|instance_MA|var4\(0) & (\instance_datapath|instance_MA|var3\(0) & VCC))
-- \instance_datapath|instance_MA|Add1~1\ = CARRY((\instance_datapath|instance_MA|var4\(0) & \instance_datapath|instance_MA|var3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|var4\(0),
	datab => \instance_datapath|instance_MA|var3\(0),
	datad => VCC,
	combout => \instance_datapath|instance_MA|Add1~0_combout\,
	cout => \instance_datapath|instance_MA|Add1~1\);

-- Location: LCCOMB_X27_Y35_N8
\instance_datapath|instance_MA|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add1~4_combout\ = ((\instance_datapath|instance_MA|var3\(2) $ (\instance_datapath|instance_MA|var4\(2) $ (!\instance_datapath|instance_MA|Add1~3\)))) # (GND)
-- \instance_datapath|instance_MA|Add1~5\ = CARRY((\instance_datapath|instance_MA|var3\(2) & ((\instance_datapath|instance_MA|var4\(2)) # (!\instance_datapath|instance_MA|Add1~3\))) # (!\instance_datapath|instance_MA|var3\(2) & 
-- (\instance_datapath|instance_MA|var4\(2) & !\instance_datapath|instance_MA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|var3\(2),
	datab => \instance_datapath|instance_MA|var4\(2),
	datad => VCC,
	cin => \instance_datapath|instance_MA|Add1~3\,
	combout => \instance_datapath|instance_MA|Add1~4_combout\,
	cout => \instance_datapath|instance_MA|Add1~5\);

-- Location: LCCOMB_X27_Y35_N18
\instance_datapath|instance_MA|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add0~2_combout\ = (\instance_datapath|instance_MA|var2\(1) & ((\instance_datapath|instance_MA|var1\(1) & (\instance_datapath|instance_MA|Add0~1\ & VCC)) # (!\instance_datapath|instance_MA|var1\(1) & 
-- (!\instance_datapath|instance_MA|Add0~1\)))) # (!\instance_datapath|instance_MA|var2\(1) & ((\instance_datapath|instance_MA|var1\(1) & (!\instance_datapath|instance_MA|Add0~1\)) # (!\instance_datapath|instance_MA|var1\(1) & 
-- ((\instance_datapath|instance_MA|Add0~1\) # (GND)))))
-- \instance_datapath|instance_MA|Add0~3\ = CARRY((\instance_datapath|instance_MA|var2\(1) & (!\instance_datapath|instance_MA|var1\(1) & !\instance_datapath|instance_MA|Add0~1\)) # (!\instance_datapath|instance_MA|var2\(1) & 
-- ((!\instance_datapath|instance_MA|Add0~1\) # (!\instance_datapath|instance_MA|var1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|var2\(1),
	datab => \instance_datapath|instance_MA|var1\(1),
	datad => VCC,
	cin => \instance_datapath|instance_MA|Add0~1\,
	combout => \instance_datapath|instance_MA|Add0~2_combout\,
	cout => \instance_datapath|instance_MA|Add0~3\);

-- Location: LCCOMB_X27_Y35_N20
\instance_datapath|instance_MA|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add0~4_combout\ = ((\instance_datapath|instance_MA|var2\(2) $ (\instance_datapath|instance_MA|var1\(2) $ (!\instance_datapath|instance_MA|Add0~3\)))) # (GND)
-- \instance_datapath|instance_MA|Add0~5\ = CARRY((\instance_datapath|instance_MA|var2\(2) & ((\instance_datapath|instance_MA|var1\(2)) # (!\instance_datapath|instance_MA|Add0~3\))) # (!\instance_datapath|instance_MA|var2\(2) & 
-- (\instance_datapath|instance_MA|var1\(2) & !\instance_datapath|instance_MA|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|var2\(2),
	datab => \instance_datapath|instance_MA|var1\(2),
	datad => VCC,
	cin => \instance_datapath|instance_MA|Add0~3\,
	combout => \instance_datapath|instance_MA|Add0~4_combout\,
	cout => \instance_datapath|instance_MA|Add0~5\);

-- Location: LCCOMB_X27_Y35_N10
\instance_datapath|instance_MA|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add1~6_combout\ = (\instance_datapath|instance_MA|var4\(3) & ((\instance_datapath|instance_MA|var3\(3) & (\instance_datapath|instance_MA|Add1~5\ & VCC)) # (!\instance_datapath|instance_MA|var3\(3) & 
-- (!\instance_datapath|instance_MA|Add1~5\)))) # (!\instance_datapath|instance_MA|var4\(3) & ((\instance_datapath|instance_MA|var3\(3) & (!\instance_datapath|instance_MA|Add1~5\)) # (!\instance_datapath|instance_MA|var3\(3) & 
-- ((\instance_datapath|instance_MA|Add1~5\) # (GND)))))
-- \instance_datapath|instance_MA|Add1~7\ = CARRY((\instance_datapath|instance_MA|var4\(3) & (!\instance_datapath|instance_MA|var3\(3) & !\instance_datapath|instance_MA|Add1~5\)) # (!\instance_datapath|instance_MA|var4\(3) & 
-- ((!\instance_datapath|instance_MA|Add1~5\) # (!\instance_datapath|instance_MA|var3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|var4\(3),
	datab => \instance_datapath|instance_MA|var3\(3),
	datad => VCC,
	cin => \instance_datapath|instance_MA|Add1~5\,
	combout => \instance_datapath|instance_MA|Add1~6_combout\,
	cout => \instance_datapath|instance_MA|Add1~7\);

-- Location: LCCOMB_X27_Y35_N12
\instance_datapath|instance_MA|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add1~8_combout\ = !\instance_datapath|instance_MA|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instance_datapath|instance_MA|Add1~7\,
	combout => \instance_datapath|instance_MA|Add1~8_combout\);

-- Location: LCFF_X27_Y35_N7
\instance_datapath|instance_MA|var4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_MA|var3\(1),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var4\(1));

-- Location: LCFF_X27_Y35_N5
\instance_datapath|instance_MA|var4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_MA|var3\(0),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var4\(0));

-- Location: LCFF_X27_Y35_N11
\instance_datapath|instance_MA|var4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_MA|var3\(3),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var4\(3));

-- Location: LCFF_X27_Y35_N19
\instance_datapath|instance_MA|var3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_MA|var2\(3),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var3\(3));

-- Location: LCCOMB_X28_Y35_N20
\instance_datapath|instance_Comp|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|LessThan0~0_combout\ = (\instance_datapath|instance_Reg_E|Q\(3) & (!\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (\instance_datapath|instance_Reg_E|Q\(2) & \instance_datapath|instance_MA|OUTPUT[3]~6_combout\))) # 
-- (!\instance_datapath|instance_Reg_E|Q\(3) & ((\instance_datapath|instance_MA|OUTPUT[3]~6_combout\) # ((!\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & \instance_datapath|instance_Reg_E|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	datab => \instance_datapath|instance_Reg_E|Q\(3),
	datac => \instance_datapath|instance_Reg_E|Q\(2),
	datad => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	combout => \instance_datapath|instance_Comp|LessThan0~0_combout\);

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

-- Location: LCCOMB_X28_Y35_N30
\instance_controladora|estado.s0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|estado.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \instance_controladora|estado.s0~feeder_combout\);

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

-- Location: LCFF_X28_Y35_N31
\instance_controladora|estado.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|estado.s0~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.s0~regout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[3]~I\ : cycloneii_io
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
	padio => ww_E(3),
	combout => \E~combout\(3));

-- Location: LCCOMB_X29_Y35_N8
\instance_datapath|instance_Reg_E|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Reg_E|Q[3]~feeder_combout\ = \E~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(3),
	combout => \instance_datapath|instance_Reg_E|Q[3]~feeder_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[0]~I\ : cycloneii_io
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
	padio => ww_E(0),
	combout => \E~combout\(0));

-- Location: LCCOMB_X29_Y35_N22
\instance_datapath|instance_Reg_E|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Reg_E|Q[0]~feeder_combout\ = \E~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(0),
	combout => \instance_datapath|instance_Reg_E|Q[0]~feeder_combout\);

-- Location: LCFF_X29_Y35_N23
\instance_datapath|instance_Reg_E|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_Reg_E|Q[0]~feeder_combout\,
	ena => \instance_controladora|ALT_INV_estado.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_Reg_E|Q\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[2]~I\ : cycloneii_io
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
	padio => ww_E(2),
	combout => \E~combout\(2));

-- Location: LCCOMB_X29_Y35_N10
\instance_datapath|instance_Reg_E|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Reg_E|Q[2]~feeder_combout\ = \E~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(2),
	combout => \instance_datapath|instance_Reg_E|Q[2]~feeder_combout\);

-- Location: LCFF_X29_Y35_N11
\instance_datapath|instance_Reg_E|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_Reg_E|Q[2]~feeder_combout\,
	ena => \instance_controladora|ALT_INV_estado.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_Reg_E|Q\(2));

-- Location: LCFF_X28_Y35_N21
\instance_datapath|instance_MA|var1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_Reg_E|Q\(2),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var1\(2));

-- Location: LCFF_X27_Y35_N21
\instance_datapath|instance_MA|var2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_MA|var1\(2),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var2\(2));

-- Location: LCFF_X27_Y35_N17
\instance_datapath|instance_MA|var3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_MA|var2\(2),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var3\(2));

-- Location: LCFF_X27_Y35_N9
\instance_datapath|instance_MA|var4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_MA|var3\(2),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var4\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[1]~I\ : cycloneii_io
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
	padio => ww_E(1),
	combout => \E~combout\(1));

-- Location: LCCOMB_X29_Y35_N16
\instance_datapath|instance_Reg_E|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Reg_E|Q[1]~feeder_combout\ = \E~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(1),
	combout => \instance_datapath|instance_Reg_E|Q[1]~feeder_combout\);

-- Location: LCFF_X29_Y35_N17
\instance_datapath|instance_Reg_E|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_Reg_E|Q[1]~feeder_combout\,
	ena => \instance_controladora|ALT_INV_estado.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_Reg_E|Q\(1));

-- Location: LCFF_X28_Y35_N19
\instance_datapath|instance_MA|var1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_Reg_E|Q\(1),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var1\(1));

-- Location: LCCOMB_X27_Y35_N2
\instance_datapath|instance_MA|var2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|var2[1]~feeder_combout\ = \instance_datapath|instance_MA|var1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instance_MA|var1\(1),
	combout => \instance_datapath|instance_MA|var2[1]~feeder_combout\);

-- Location: LCFF_X27_Y35_N3
\instance_datapath|instance_MA|var2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_MA|var2[1]~feeder_combout\,
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var2\(1));

-- Location: LCCOMB_X27_Y35_N26
\instance_datapath|instance_MA|var3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|var3[1]~feeder_combout\ = \instance_datapath|instance_MA|var2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instance_MA|var2\(1),
	combout => \instance_datapath|instance_MA|var3[1]~feeder_combout\);

-- Location: LCFF_X27_Y35_N27
\instance_datapath|instance_MA|var3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_MA|var3[1]~feeder_combout\,
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var3\(1));

-- Location: LCFF_X28_Y35_N29
\instance_datapath|instance_MA|var1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_Reg_E|Q\(0),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var1\(0));

-- Location: LCCOMB_X27_Y35_N14
\instance_datapath|instance_MA|var2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|var2[0]~feeder_combout\ = \instance_datapath|instance_MA|var1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instance_MA|var1\(0),
	combout => \instance_datapath|instance_MA|var2[0]~feeder_combout\);

-- Location: LCFF_X27_Y35_N15
\instance_datapath|instance_MA|var2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_MA|var2[0]~feeder_combout\,
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var2\(0));

-- Location: LCFF_X27_Y35_N31
\instance_datapath|instance_MA|var3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_MA|var2\(0),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var3\(0));

-- Location: LCCOMB_X27_Y35_N6
\instance_datapath|instance_MA|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add1~2_combout\ = (\instance_datapath|instance_MA|var4\(1) & ((\instance_datapath|instance_MA|var3\(1) & (\instance_datapath|instance_MA|Add1~1\ & VCC)) # (!\instance_datapath|instance_MA|var3\(1) & 
-- (!\instance_datapath|instance_MA|Add1~1\)))) # (!\instance_datapath|instance_MA|var4\(1) & ((\instance_datapath|instance_MA|var3\(1) & (!\instance_datapath|instance_MA|Add1~1\)) # (!\instance_datapath|instance_MA|var3\(1) & 
-- ((\instance_datapath|instance_MA|Add1~1\) # (GND)))))
-- \instance_datapath|instance_MA|Add1~3\ = CARRY((\instance_datapath|instance_MA|var4\(1) & (!\instance_datapath|instance_MA|var3\(1) & !\instance_datapath|instance_MA|Add1~1\)) # (!\instance_datapath|instance_MA|var4\(1) & 
-- ((!\instance_datapath|instance_MA|Add1~1\) # (!\instance_datapath|instance_MA|var3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|var4\(1),
	datab => \instance_datapath|instance_MA|var3\(1),
	datad => VCC,
	cin => \instance_datapath|instance_MA|Add1~1\,
	combout => \instance_datapath|instance_MA|Add1~2_combout\,
	cout => \instance_datapath|instance_MA|Add1~3\);

-- Location: LCCOMB_X27_Y35_N16
\instance_datapath|instance_MA|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add0~0_combout\ = (\instance_datapath|instance_MA|var2\(0) & (\instance_datapath|instance_MA|var1\(0) $ (VCC))) # (!\instance_datapath|instance_MA|var2\(0) & (\instance_datapath|instance_MA|var1\(0) & VCC))
-- \instance_datapath|instance_MA|Add0~1\ = CARRY((\instance_datapath|instance_MA|var2\(0) & \instance_datapath|instance_MA|var1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|var2\(0),
	datab => \instance_datapath|instance_MA|var1\(0),
	datad => VCC,
	combout => \instance_datapath|instance_MA|Add0~0_combout\,
	cout => \instance_datapath|instance_MA|Add0~1\);

-- Location: LCCOMB_X28_Y35_N2
\instance_datapath|instance_MA|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add2~1_cout\ = CARRY((\instance_datapath|instance_MA|Add1~0_combout\ & \instance_datapath|instance_MA|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|Add1~0_combout\,
	datab => \instance_datapath|instance_MA|Add0~0_combout\,
	datad => VCC,
	cout => \instance_datapath|instance_MA|Add2~1_cout\);

-- Location: LCCOMB_X28_Y35_N4
\instance_datapath|instance_MA|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add2~3_cout\ = CARRY((\instance_datapath|instance_MA|Add0~2_combout\ & (!\instance_datapath|instance_MA|Add1~2_combout\ & !\instance_datapath|instance_MA|Add2~1_cout\)) # (!\instance_datapath|instance_MA|Add0~2_combout\ & 
-- ((!\instance_datapath|instance_MA|Add2~1_cout\) # (!\instance_datapath|instance_MA|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|Add0~2_combout\,
	datab => \instance_datapath|instance_MA|Add1~2_combout\,
	datad => VCC,
	cin => \instance_datapath|instance_MA|Add2~1_cout\,
	cout => \instance_datapath|instance_MA|Add2~3_cout\);

-- Location: LCCOMB_X28_Y35_N6
\instance_datapath|instance_MA|OUTPUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|OUTPUT[0]~0_combout\ = ((\instance_datapath|instance_MA|Add0~4_combout\ $ (\instance_datapath|instance_MA|Add1~4_combout\ $ (!\instance_datapath|instance_MA|Add2~3_cout\)))) # (GND)
-- \instance_datapath|instance_MA|OUTPUT[0]~1\ = CARRY((\instance_datapath|instance_MA|Add0~4_combout\ & ((\instance_datapath|instance_MA|Add1~4_combout\) # (!\instance_datapath|instance_MA|Add2~3_cout\))) # (!\instance_datapath|instance_MA|Add0~4_combout\ & 
-- (\instance_datapath|instance_MA|Add1~4_combout\ & !\instance_datapath|instance_MA|Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|Add0~4_combout\,
	datab => \instance_datapath|instance_MA|Add1~4_combout\,
	datad => VCC,
	cin => \instance_datapath|instance_MA|Add2~3_cout\,
	combout => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	cout => \instance_datapath|instance_MA|OUTPUT[0]~1\);

-- Location: LCCOMB_X29_Y35_N14
\instance_datapath|instance_Comp|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|LessThan1~1_combout\ = (\instance_datapath|instance_Reg_E|Q\(1) & (!\instance_datapath|instance_Reg_E|Q\(0) & (\instance_datapath|instance_MA|OUTPUT[0]~0_combout\ & \instance_datapath|instance_MA|OUTPUT[1]~2_combout\))) # 
-- (!\instance_datapath|instance_Reg_E|Q\(1) & ((\instance_datapath|instance_MA|OUTPUT[1]~2_combout\) # ((!\instance_datapath|instance_Reg_E|Q\(0) & \instance_datapath|instance_MA|OUTPUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Reg_E|Q\(1),
	datab => \instance_datapath|instance_Reg_E|Q\(0),
	datac => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instance_Comp|LessThan1~1_combout\);

-- Location: LCCOMB_X27_Y35_N22
\instance_datapath|instance_MA|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add0~6_combout\ = (\instance_datapath|instance_MA|var1\(3) & ((\instance_datapath|instance_MA|var2\(3) & (\instance_datapath|instance_MA|Add0~5\ & VCC)) # (!\instance_datapath|instance_MA|var2\(3) & 
-- (!\instance_datapath|instance_MA|Add0~5\)))) # (!\instance_datapath|instance_MA|var1\(3) & ((\instance_datapath|instance_MA|var2\(3) & (!\instance_datapath|instance_MA|Add0~5\)) # (!\instance_datapath|instance_MA|var2\(3) & 
-- ((\instance_datapath|instance_MA|Add0~5\) # (GND)))))
-- \instance_datapath|instance_MA|Add0~7\ = CARRY((\instance_datapath|instance_MA|var1\(3) & (!\instance_datapath|instance_MA|var2\(3) & !\instance_datapath|instance_MA|Add0~5\)) # (!\instance_datapath|instance_MA|var1\(3) & 
-- ((!\instance_datapath|instance_MA|Add0~5\) # (!\instance_datapath|instance_MA|var2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|var1\(3),
	datab => \instance_datapath|instance_MA|var2\(3),
	datad => VCC,
	cin => \instance_datapath|instance_MA|Add0~5\,
	combout => \instance_datapath|instance_MA|Add0~6_combout\,
	cout => \instance_datapath|instance_MA|Add0~7\);

-- Location: LCCOMB_X27_Y35_N24
\instance_datapath|instance_MA|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|Add0~8_combout\ = !\instance_datapath|instance_MA|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instance_datapath|instance_MA|Add0~7\,
	combout => \instance_datapath|instance_MA|Add0~8_combout\);

-- Location: LCCOMB_X28_Y35_N8
\instance_datapath|instance_MA|OUTPUT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|OUTPUT[1]~2_combout\ = (\instance_datapath|instance_MA|Add1~6_combout\ & ((\instance_datapath|instance_MA|Add0~6_combout\ & (\instance_datapath|instance_MA|OUTPUT[0]~1\ & VCC)) # 
-- (!\instance_datapath|instance_MA|Add0~6_combout\ & (!\instance_datapath|instance_MA|OUTPUT[0]~1\)))) # (!\instance_datapath|instance_MA|Add1~6_combout\ & ((\instance_datapath|instance_MA|Add0~6_combout\ & (!\instance_datapath|instance_MA|OUTPUT[0]~1\)) # 
-- (!\instance_datapath|instance_MA|Add0~6_combout\ & ((\instance_datapath|instance_MA|OUTPUT[0]~1\) # (GND)))))
-- \instance_datapath|instance_MA|OUTPUT[1]~3\ = CARRY((\instance_datapath|instance_MA|Add1~6_combout\ & (!\instance_datapath|instance_MA|Add0~6_combout\ & !\instance_datapath|instance_MA|OUTPUT[0]~1\)) # (!\instance_datapath|instance_MA|Add1~6_combout\ & 
-- ((!\instance_datapath|instance_MA|OUTPUT[0]~1\) # (!\instance_datapath|instance_MA|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|Add1~6_combout\,
	datab => \instance_datapath|instance_MA|Add0~6_combout\,
	datad => VCC,
	cin => \instance_datapath|instance_MA|OUTPUT[0]~1\,
	combout => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	cout => \instance_datapath|instance_MA|OUTPUT[1]~3\);

-- Location: LCCOMB_X28_Y35_N10
\instance_datapath|instance_MA|OUTPUT[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|OUTPUT[2]~4_combout\ = ((\instance_datapath|instance_MA|Add1~8_combout\ $ (\instance_datapath|instance_MA|Add0~8_combout\ $ (!\instance_datapath|instance_MA|OUTPUT[1]~3\)))) # (GND)
-- \instance_datapath|instance_MA|OUTPUT[2]~5\ = CARRY((\instance_datapath|instance_MA|Add1~8_combout\ & ((\instance_datapath|instance_MA|Add0~8_combout\) # (!\instance_datapath|instance_MA|OUTPUT[1]~3\))) # (!\instance_datapath|instance_MA|Add1~8_combout\ & 
-- (\instance_datapath|instance_MA|Add0~8_combout\ & !\instance_datapath|instance_MA|OUTPUT[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|Add1~8_combout\,
	datab => \instance_datapath|instance_MA|Add0~8_combout\,
	datad => VCC,
	cin => \instance_datapath|instance_MA|OUTPUT[1]~3\,
	combout => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	cout => \instance_datapath|instance_MA|OUTPUT[2]~5\);

-- Location: LCCOMB_X29_Y35_N4
\instance_datapath|instance_Comp|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|LessThan1~0_combout\ = (\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & (!\instance_datapath|instance_Reg_E|Q\(2) & (\instance_datapath|instance_Reg_E|Q\(3) & \instance_datapath|instance_MA|OUTPUT[2]~4_combout\))) # 
-- (!\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & ((\instance_datapath|instance_Reg_E|Q\(3)) # ((!\instance_datapath|instance_Reg_E|Q\(2) & \instance_datapath|instance_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_datapath|instance_Reg_E|Q\(2),
	datac => \instance_datapath|instance_Reg_E|Q\(3),
	datad => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_datapath|instance_Comp|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y35_N12
\instance_datapath|instance_MA|OUTPUT[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_MA|OUTPUT[3]~6_combout\ = \instance_datapath|instance_MA|OUTPUT[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instance_datapath|instance_MA|OUTPUT[2]~5\,
	combout => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\);

-- Location: LCCOMB_X29_Y35_N30
\instance_datapath|instance_Comp|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|Equal0~0_combout\ = (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (\instance_datapath|instance_Reg_E|Q\(2) & (\instance_datapath|instance_Reg_E|Q\(3) $ (!\instance_datapath|instance_MA|OUTPUT[3]~6_combout\)))) # 
-- (!\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (!\instance_datapath|instance_Reg_E|Q\(2) & (\instance_datapath|instance_Reg_E|Q\(3) $ (!\instance_datapath|instance_MA|OUTPUT[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	datab => \instance_datapath|instance_Reg_E|Q\(2),
	datac => \instance_datapath|instance_Reg_E|Q\(3),
	datad => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	combout => \instance_datapath|instance_Comp|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y35_N20
\instance_datapath|instance_Comp|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|LessThan1~2_combout\ = (\instance_datapath|instance_Comp|LessThan1~0_combout\) # ((\instance_datapath|instance_Comp|LessThan1~1_combout\ & \instance_datapath|instance_Comp|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_Comp|LessThan1~1_combout\,
	datac => \instance_datapath|instance_Comp|LessThan1~0_combout\,
	datad => \instance_datapath|instance_Comp|Equal0~0_combout\,
	combout => \instance_datapath|instance_Comp|LessThan1~2_combout\);

-- Location: LCCOMB_X28_Y35_N16
\instance_controladora|estado~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|estado~10_combout\ = (\instance_datapath|instance_Comp|Equal0~2_combout\ $ (((!\instance_datapath|instance_Comp|LessThan0~2_combout\ & !\instance_datapath|instance_Comp|LessThan1~2_combout\)))) # 
-- (!\instance_controladora|estado.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Comp|Equal0~2_combout\,
	datab => \instance_datapath|instance_Comp|LessThan0~2_combout\,
	datac => \instance_controladora|estado.s1~regout\,
	datad => \instance_datapath|instance_Comp|LessThan1~2_combout\,
	combout => \instance_controladora|estado~10_combout\);

-- Location: LCFF_X28_Y35_N17
\instance_controladora|estado.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|estado~10_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.s1~regout\);

-- Location: LCFF_X29_Y35_N9
\instance_datapath|instance_Reg_E|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_Reg_E|Q[3]~feeder_combout\,
	ena => \instance_controladora|ALT_INV_estado.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_Reg_E|Q\(3));

-- Location: LCFF_X28_Y35_N27
\instance_datapath|instance_MA|var1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_Reg_E|Q\(3),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var1\(3));

-- Location: LCFF_X27_Y35_N23
\instance_datapath|instance_MA|var2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_datapath|instance_MA|var1\(3),
	aclr => \instance_controladora|ALT_INV_estado.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_MA|var2\(3));

-- Location: LCCOMB_X28_Y35_N18
\instance_datapath|instance_Comp|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|LessThan0~1_combout\ = (\instance_datapath|instance_MA|OUTPUT[1]~2_combout\ & (\instance_datapath|instance_Reg_E|Q\(0) & (\instance_datapath|instance_Reg_E|Q\(1) & !\instance_datapath|instance_MA|OUTPUT[0]~0_combout\))) # 
-- (!\instance_datapath|instance_MA|OUTPUT[1]~2_combout\ & ((\instance_datapath|instance_Reg_E|Q\(1)) # ((\instance_datapath|instance_Reg_E|Q\(0) & !\instance_datapath|instance_MA|OUTPUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Reg_E|Q\(0),
	datab => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	datac => \instance_datapath|instance_Reg_E|Q\(1),
	datad => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	combout => \instance_datapath|instance_Comp|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y35_N26
\instance_datapath|instance_Comp|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|LessThan0~2_combout\ = (\instance_datapath|instance_Comp|LessThan0~0_combout\) # ((\instance_datapath|instance_Comp|LessThan0~1_combout\ & \instance_datapath|instance_Comp|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Comp|LessThan0~0_combout\,
	datab => \instance_datapath|instance_Comp|LessThan0~1_combout\,
	datad => \instance_datapath|instance_Comp|Equal0~0_combout\,
	combout => \instance_datapath|instance_Comp|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y35_N0
\instance_datapath|instance_Comp|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|Equal0~1_combout\ = (\instance_datapath|instance_Reg_E|Q\(1) & (\instance_datapath|instance_MA|OUTPUT[1]~2_combout\ & (\instance_datapath|instance_Reg_E|Q\(0) $ (!\instance_datapath|instance_MA|OUTPUT[0]~0_combout\)))) # 
-- (!\instance_datapath|instance_Reg_E|Q\(1) & (!\instance_datapath|instance_MA|OUTPUT[1]~2_combout\ & (\instance_datapath|instance_Reg_E|Q\(0) $ (!\instance_datapath|instance_MA|OUTPUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Reg_E|Q\(1),
	datab => \instance_datapath|instance_Reg_E|Q\(0),
	datac => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	datad => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	combout => \instance_datapath|instance_Comp|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y35_N28
\instance_datapath|instance_Comp|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|LessThan0~3_combout\ = \instance_datapath|instance_Reg_E|Q\(2) $ (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_Reg_E|Q\(2),
	datad => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_datapath|instance_Comp|LessThan0~3_combout\);

-- Location: LCCOMB_X28_Y35_N14
\instance_datapath|instance_Comp|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Comp|Equal0~2_combout\ = (\instance_datapath|instance_Comp|Equal0~1_combout\ & (!\instance_datapath|instance_Comp|LessThan0~3_combout\ & (\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ $ 
-- (!\instance_datapath|instance_Reg_E|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_datapath|instance_Comp|Equal0~1_combout\,
	datac => \instance_datapath|instance_Reg_E|Q\(3),
	datad => \instance_datapath|instance_Comp|LessThan0~3_combout\,
	combout => \instance_datapath|instance_Comp|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y35_N24
\instance_controladora|estado~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|estado~9_combout\ = (\instance_controladora|estado.s1~regout\ & (\instance_datapath|instance_Comp|LessThan0~2_combout\ & (!\instance_datapath|instance_Comp|Equal0~2_combout\ & 
-- !\instance_datapath|instance_Comp|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|estado.s1~regout\,
	datab => \instance_datapath|instance_Comp|LessThan0~2_combout\,
	datac => \instance_datapath|instance_Comp|Equal0~2_combout\,
	datad => \instance_datapath|instance_Comp|LessThan1~2_combout\,
	combout => \instance_controladora|estado~9_combout\);

-- Location: LCFF_X28_Y35_N25
\instance_controladora|estado.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|estado~9_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.s2~regout\);

-- Location: LCCOMB_X27_Y35_N28
\instance_controladora|Fio_Subindo\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Fio_Subindo~combout\ = (\instance_controladora|estado.s2~regout\) # (!\instance_controladora|estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_controladora|estado.s0~regout\,
	datad => \instance_controladora|estado.s2~regout\,
	combout => \instance_controladora|Fio_Subindo~combout\);

-- Location: LCFF_X27_Y35_N29
\instance_datapath|instance_Sobe|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|Fio_Subindo~combout\,
	ena => \instance_controladora|ALT_INV_estado.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_Sobe|Q\(0));

-- Location: LCCOMB_X28_Y35_N22
\instance_controladora|estado~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|estado~11_combout\ = (\instance_controladora|estado.s1~regout\ & (!\instance_datapath|instance_Comp|LessThan0~2_combout\ & (!\instance_datapath|instance_Comp|Equal0~2_combout\ & 
-- \instance_datapath|instance_Comp|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|estado.s1~regout\,
	datab => \instance_datapath|instance_Comp|LessThan0~2_combout\,
	datac => \instance_datapath|instance_Comp|Equal0~2_combout\,
	datad => \instance_datapath|instance_Comp|LessThan1~2_combout\,
	combout => \instance_controladora|estado~11_combout\);

-- Location: LCFF_X28_Y35_N23
\instance_controladora|estado.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|estado~11_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.s3~regout\);

-- Location: LCCOMB_X27_Y35_N0
\instance_controladora|Fio_Descendo\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Fio_Descendo~combout\ = (\instance_controladora|estado.s3~regout\) # (!\instance_controladora|estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_controladora|estado.s0~regout\,
	datad => \instance_controladora|estado.s3~regout\,
	combout => \instance_controladora|Fio_Descendo~combout\);

-- Location: LCFF_X27_Y35_N1
\instance_datapath|instance_Desce|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|Fio_Descendo~combout\,
	ena => \instance_controladora|ALT_INV_estado.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_Desce|Q\(0));

-- Location: LCCOMB_X29_Y35_N28
\instance_datapath|instance_BCD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_BCD|Mux6~0_combout\ = (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (!\instance_datapath|instance_MA|OUTPUT[1]~2_combout\ & (\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ $ 
-- (!\instance_datapath|instance_MA|OUTPUT[0]~0_combout\)))) # (!\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (\instance_datapath|instance_MA|OUTPUT[0]~0_combout\ & (\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ $ 
-- (!\instance_datapath|instance_MA|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	datab => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instance_BCD|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y35_N2
\instance_datapath|instance_BCD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_BCD|Mux5~0_combout\ = (\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & ((\instance_datapath|instance_MA|OUTPUT[0]~0_combout\ & ((\instance_datapath|instance_MA|OUTPUT[1]~2_combout\))) # 
-- (!\instance_datapath|instance_MA|OUTPUT[0]~0_combout\ & (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\)))) # (!\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & 
-- (\instance_datapath|instance_MA|OUTPUT[0]~0_combout\ $ (\instance_datapath|instance_MA|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	datab => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instance_BCD|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y35_N12
\instance_datapath|instance_BCD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_BCD|Mux4~0_combout\ = (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & ((\instance_datapath|instance_MA|OUTPUT[1]~2_combout\) # 
-- (!\instance_datapath|instance_MA|OUTPUT[0]~0_combout\)))) # (!\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (!\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & (!\instance_datapath|instance_MA|OUTPUT[0]~0_combout\ & 
-- \instance_datapath|instance_MA|OUTPUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	datab => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instance_BCD|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y35_N26
\instance_datapath|instance_BCD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_BCD|Mux3~0_combout\ = (\instance_datapath|instance_MA|OUTPUT[1]~2_combout\ & ((\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & ((\instance_datapath|instance_MA|OUTPUT[0]~0_combout\))) # 
-- (!\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & !\instance_datapath|instance_MA|OUTPUT[0]~0_combout\)))) # (!\instance_datapath|instance_MA|OUTPUT[1]~2_combout\ & 
-- (!\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ $ (\instance_datapath|instance_MA|OUTPUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	datab => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instance_BCD|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y35_N24
\instance_datapath|instance_BCD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_BCD|Mux2~0_combout\ = (\instance_datapath|instance_MA|OUTPUT[1]~2_combout\ & (((!\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & \instance_datapath|instance_MA|OUTPUT[0]~0_combout\)))) # 
-- (!\instance_datapath|instance_MA|OUTPUT[1]~2_combout\ & ((\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (!\instance_datapath|instance_MA|OUTPUT[3]~6_combout\)) # (!\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & 
-- ((\instance_datapath|instance_MA|OUTPUT[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	datab => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instance_BCD|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y35_N18
\instance_datapath|instance_BCD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_BCD|Mux1~0_combout\ = (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (\instance_datapath|instance_MA|OUTPUT[0]~0_combout\ & (\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ $ 
-- (\instance_datapath|instance_MA|OUTPUT[1]~2_combout\)))) # (!\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ & (!\instance_datapath|instance_MA|OUTPUT[3]~6_combout\ & ((\instance_datapath|instance_MA|OUTPUT[0]~0_combout\) # 
-- (\instance_datapath|instance_MA|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	datab => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instance_BCD|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y35_N0
\instance_datapath|instance_BCD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_BCD|Mux0~0_combout\ = (\instance_datapath|instance_MA|OUTPUT[0]~0_combout\ & ((\instance_datapath|instance_MA|OUTPUT[3]~6_combout\) # (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ $ 
-- (\instance_datapath|instance_MA|OUTPUT[1]~2_combout\)))) # (!\instance_datapath|instance_MA|OUTPUT[0]~0_combout\ & ((\instance_datapath|instance_MA|OUTPUT[1]~2_combout\) # (\instance_datapath|instance_MA|OUTPUT[2]~4_combout\ $ 
-- (\instance_datapath|instance_MA|OUTPUT[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_MA|OUTPUT[2]~4_combout\,
	datab => \instance_datapath|instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_datapath|instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_datapath|instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instance_BCD|Mux0~0_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Subindo~I\ : cycloneii_io
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
	datain => \instance_datapath|instance_Sobe|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Subindo);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Descendo~I\ : cycloneii_io
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
	datain => \instance_datapath|instance_Desce|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Descendo);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[0]~I\ : cycloneii_io
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
	datain => \instance_datapath|instance_BCD|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[1]~I\ : cycloneii_io
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
	datain => \instance_datapath|instance_BCD|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[2]~I\ : cycloneii_io
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
	datain => \instance_datapath|instance_BCD|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(2));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[3]~I\ : cycloneii_io
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
	datain => \instance_datapath|instance_BCD|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(3));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[4]~I\ : cycloneii_io
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
	datain => \instance_datapath|instance_BCD|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(4));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[5]~I\ : cycloneii_io
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
	datain => \instance_datapath|instance_BCD|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(5));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[6]~I\ : cycloneii_io
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
	datain => \instance_datapath|instance_BCD|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(6));
END structure;


