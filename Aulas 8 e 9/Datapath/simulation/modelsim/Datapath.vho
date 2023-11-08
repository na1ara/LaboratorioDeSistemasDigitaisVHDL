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

-- DATE "10/20/2023 12:19:56"

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

ENTITY 	Datapath IS
    PORT (
	Clock : IN std_logic;
	Fio_Load_E : IN std_logic;
	Reset_MA : IN std_logic;
	Fio_Descendo : IN std_logic;
	Fio_Subindo : IN std_logic;
	Fio_Atualizar : IN std_logic;
	E : IN std_logic_vector(3 DOWNTO 0);
	Fio_Maior : OUT std_logic;
	Fio_Igual : OUT std_logic;
	Fio_Menor : OUT std_logic;
	Subindo : OUT std_logic;
	Descendo : OUT std_logic;
	Display : OUT std_logic_vector(6 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- Fio_Maior	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Igual	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Menor	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Subindo	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Descendo	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[0]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[1]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[2]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[3]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[4]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[5]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[6]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_MA	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Load_E	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[3]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[1]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[0]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Subindo	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Atualizar	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Descendo	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
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
SIGNAL ww_Fio_Load_E : std_logic;
SIGNAL ww_Reset_MA : std_logic;
SIGNAL ww_Fio_Descendo : std_logic;
SIGNAL ww_Fio_Subindo : std_logic;
SIGNAL ww_Fio_Atualizar : std_logic;
SIGNAL ww_E : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Fio_Maior : std_logic;
SIGNAL ww_Fio_Igual : std_logic;
SIGNAL ww_Fio_Menor : std_logic;
SIGNAL ww_Subindo : std_logic;
SIGNAL ww_Descendo : std_logic;
SIGNAL ww_Display : std_logic_vector(6 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_MA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_MA|Add1~0_combout\ : std_logic;
SIGNAL \instance_MA|Add1~2_combout\ : std_logic;
SIGNAL \instance_MA|Add1~7\ : std_logic;
SIGNAL \instance_MA|Add1~8_combout\ : std_logic;
SIGNAL \instance_MA|Add0~4_combout\ : std_logic;
SIGNAL \instance_MA|Add0~6_combout\ : std_logic;
SIGNAL \instance_Reg_E|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Fio_Load_E~combout\ : std_logic;
SIGNAL \Reset_MA~combout\ : std_logic;
SIGNAL \Reset_MA~clkctrl_outclk\ : std_logic;
SIGNAL \instance_Reg_E|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instance_MA|var3[2]~feeder_combout\ : std_logic;
SIGNAL \instance_MA|var1[0]~feeder_combout\ : std_logic;
SIGNAL \instance_MA|var2[0]~feeder_combout\ : std_logic;
SIGNAL \instance_MA|var3[0]~feeder_combout\ : std_logic;
SIGNAL \instance_MA|Add1~1\ : std_logic;
SIGNAL \instance_MA|Add1~3\ : std_logic;
SIGNAL \instance_MA|Add1~5\ : std_logic;
SIGNAL \instance_MA|Add1~6_combout\ : std_logic;
SIGNAL \instance_MA|Add1~4_combout\ : std_logic;
SIGNAL \instance_MA|Add0~1\ : std_logic;
SIGNAL \instance_MA|Add0~2_combout\ : std_logic;
SIGNAL \instance_MA|Add0~0_combout\ : std_logic;
SIGNAL \instance_MA|Add2~1_cout\ : std_logic;
SIGNAL \instance_MA|Add2~3_cout\ : std_logic;
SIGNAL \instance_MA|OUTPUT[0]~1\ : std_logic;
SIGNAL \instance_MA|OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \instance_Comp|LessThan0~1_combout\ : std_logic;
SIGNAL \instance_MA|Add0~3\ : std_logic;
SIGNAL \instance_MA|Add0~5\ : std_logic;
SIGNAL \instance_MA|Add0~7\ : std_logic;
SIGNAL \instance_MA|Add0~8_combout\ : std_logic;
SIGNAL \instance_MA|OUTPUT[1]~3\ : std_logic;
SIGNAL \instance_MA|OUTPUT[2]~5\ : std_logic;
SIGNAL \instance_MA|OUTPUT[3]~6_combout\ : std_logic;
SIGNAL \instance_MA|OUTPUT[2]~4_combout\ : std_logic;
SIGNAL \instance_Comp|LessThan0~0_combout\ : std_logic;
SIGNAL \instance_Comp|Equal0~0_combout\ : std_logic;
SIGNAL \instance_Comp|LessThan0~2_combout\ : std_logic;
SIGNAL \instance_Comp|Equal0~1_combout\ : std_logic;
SIGNAL \instance_Comp|LessThan0~3_combout\ : std_logic;
SIGNAL \instance_Comp|Equal0~2_combout\ : std_logic;
SIGNAL \instance_Comp|LessThan1~0_combout\ : std_logic;
SIGNAL \instance_Comp|LessThan1~1_combout\ : std_logic;
SIGNAL \instance_Comp|LessThan1~2_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Fio_Subindo~combout\ : std_logic;
SIGNAL \instance_Sobe|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Fio_Atualizar~combout\ : std_logic;
SIGNAL \Fio_Descendo~combout\ : std_logic;
SIGNAL \instance_Desce|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instance_MA|OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \instance_BCD|Mux6~0_combout\ : std_logic;
SIGNAL \instance_BCD|Mux5~0_combout\ : std_logic;
SIGNAL \instance_BCD|Mux4~0_combout\ : std_logic;
SIGNAL \instance_BCD|Mux3~0_combout\ : std_logic;
SIGNAL \instance_BCD|Mux2~0_combout\ : std_logic;
SIGNAL \instance_BCD|Mux1~0_combout\ : std_logic;
SIGNAL \instance_BCD|Mux0~0_combout\ : std_logic;
SIGNAL \instance_Desce|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \instance_Reg_E|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_MA|var4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_MA|var3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_MA|var2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_MA|var1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_Sobe|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \E~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_BCD|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Fio_Load_E <= Fio_Load_E;
ww_Reset_MA <= Reset_MA;
ww_Fio_Descendo <= Fio_Descendo;
ww_Fio_Subindo <= Fio_Subindo;
ww_Fio_Atualizar <= Fio_Atualizar;
ww_E <= E;
Fio_Maior <= ww_Fio_Maior;
Fio_Igual <= ww_Fio_Igual;
Fio_Menor <= ww_Fio_Menor;
Subindo <= ww_Subindo;
Descendo <= ww_Descendo;
Display <= ww_Display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\Reset_MA~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_MA~combout\);
\instance_BCD|ALT_INV_Mux0~0_combout\ <= NOT \instance_BCD|Mux0~0_combout\;

-- Location: LCCOMB_X2_Y1_N0
\instance_MA|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add1~0_combout\ = (\instance_MA|var3\(0) & (\instance_MA|var4\(0) $ (VCC))) # (!\instance_MA|var3\(0) & (\instance_MA|var4\(0) & VCC))
-- \instance_MA|Add1~1\ = CARRY((\instance_MA|var3\(0) & \instance_MA|var4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|var3\(0),
	datab => \instance_MA|var4\(0),
	datad => VCC,
	combout => \instance_MA|Add1~0_combout\,
	cout => \instance_MA|Add1~1\);

-- Location: LCCOMB_X2_Y1_N2
\instance_MA|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add1~2_combout\ = (\instance_MA|var4\(1) & ((\instance_MA|var3\(1) & (\instance_MA|Add1~1\ & VCC)) # (!\instance_MA|var3\(1) & (!\instance_MA|Add1~1\)))) # (!\instance_MA|var4\(1) & ((\instance_MA|var3\(1) & (!\instance_MA|Add1~1\)) # 
-- (!\instance_MA|var3\(1) & ((\instance_MA|Add1~1\) # (GND)))))
-- \instance_MA|Add1~3\ = CARRY((\instance_MA|var4\(1) & (!\instance_MA|var3\(1) & !\instance_MA|Add1~1\)) # (!\instance_MA|var4\(1) & ((!\instance_MA|Add1~1\) # (!\instance_MA|var3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|var4\(1),
	datab => \instance_MA|var3\(1),
	datad => VCC,
	cin => \instance_MA|Add1~1\,
	combout => \instance_MA|Add1~2_combout\,
	cout => \instance_MA|Add1~3\);

-- Location: LCCOMB_X2_Y1_N6
\instance_MA|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add1~6_combout\ = (\instance_MA|var3\(3) & ((\instance_MA|var4\(3) & (\instance_MA|Add1~5\ & VCC)) # (!\instance_MA|var4\(3) & (!\instance_MA|Add1~5\)))) # (!\instance_MA|var3\(3) & ((\instance_MA|var4\(3) & (!\instance_MA|Add1~5\)) # 
-- (!\instance_MA|var4\(3) & ((\instance_MA|Add1~5\) # (GND)))))
-- \instance_MA|Add1~7\ = CARRY((\instance_MA|var3\(3) & (!\instance_MA|var4\(3) & !\instance_MA|Add1~5\)) # (!\instance_MA|var3\(3) & ((!\instance_MA|Add1~5\) # (!\instance_MA|var4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|var3\(3),
	datab => \instance_MA|var4\(3),
	datad => VCC,
	cin => \instance_MA|Add1~5\,
	combout => \instance_MA|Add1~6_combout\,
	cout => \instance_MA|Add1~7\);

-- Location: LCCOMB_X2_Y1_N8
\instance_MA|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add1~8_combout\ = !\instance_MA|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instance_MA|Add1~7\,
	combout => \instance_MA|Add1~8_combout\);

-- Location: LCCOMB_X2_Y1_N18
\instance_MA|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add0~4_combout\ = ((\instance_MA|var2\(2) $ (\instance_MA|var1\(2) $ (!\instance_MA|Add0~3\)))) # (GND)
-- \instance_MA|Add0~5\ = CARRY((\instance_MA|var2\(2) & ((\instance_MA|var1\(2)) # (!\instance_MA|Add0~3\))) # (!\instance_MA|var2\(2) & (\instance_MA|var1\(2) & !\instance_MA|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|var2\(2),
	datab => \instance_MA|var1\(2),
	datad => VCC,
	cin => \instance_MA|Add0~3\,
	combout => \instance_MA|Add0~4_combout\,
	cout => \instance_MA|Add0~5\);

-- Location: LCCOMB_X2_Y1_N20
\instance_MA|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add0~6_combout\ = (\instance_MA|var2\(3) & ((\instance_MA|var1\(3) & (\instance_MA|Add0~5\ & VCC)) # (!\instance_MA|var1\(3) & (!\instance_MA|Add0~5\)))) # (!\instance_MA|var2\(3) & ((\instance_MA|var1\(3) & (!\instance_MA|Add0~5\)) # 
-- (!\instance_MA|var1\(3) & ((\instance_MA|Add0~5\) # (GND)))))
-- \instance_MA|Add0~7\ = CARRY((\instance_MA|var2\(3) & (!\instance_MA|var1\(3) & !\instance_MA|Add0~5\)) # (!\instance_MA|var2\(3) & ((!\instance_MA|Add0~5\) # (!\instance_MA|var1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|var2\(3),
	datab => \instance_MA|var1\(3),
	datad => VCC,
	cin => \instance_MA|Add0~5\,
	combout => \instance_MA|Add0~6_combout\,
	cout => \instance_MA|Add0~7\);

-- Location: LCFF_X3_Y1_N3
\instance_MA|var4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_MA|var3\(1),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var4\(1));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y1_N10
\instance_Reg_E|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Reg_E|Q[0]~feeder_combout\ = \E~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(0),
	combout => \instance_Reg_E|Q[0]~feeder_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Load_E~I\ : cycloneii_io
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
	padio => ww_Fio_Load_E,
	combout => \Fio_Load_E~combout\);

-- Location: LCFF_X2_Y1_N11
\instance_Reg_E|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_Reg_E|Q[0]~feeder_combout\,
	ena => \Fio_Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_Reg_E|Q\(0));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X3_Y1_N17
\instance_Reg_E|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \E~combout\(1),
	sload => VCC,
	ena => \Fio_Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_Reg_E|Q\(1));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X3_Y1_N25
\instance_Reg_E|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \E~combout\(3),
	sload => VCC,
	ena => \Fio_Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_Reg_E|Q\(3));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_MA~I\ : cycloneii_io
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
	padio => ww_Reset_MA,
	combout => \Reset_MA~combout\);

-- Location: CLKCTRL_G1
\Reset_MA~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_MA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_MA~clkctrl_outclk\);

-- Location: LCFF_X3_Y1_N19
\instance_MA|var1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_Reg_E|Q\(3),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var1\(3));

-- Location: LCFF_X3_Y1_N13
\instance_MA|var2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_MA|var1\(3),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var2\(3));

-- Location: LCFF_X3_Y1_N5
\instance_MA|var3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_MA|var2\(3),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var3\(3));

-- Location: LCFF_X3_Y1_N11
\instance_MA|var4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_MA|var3\(3),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var4\(3));

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

-- Location: LCCOMB_X2_Y1_N30
\instance_Reg_E|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Reg_E|Q[2]~feeder_combout\ = \E~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(2),
	combout => \instance_Reg_E|Q[2]~feeder_combout\);

-- Location: LCFF_X2_Y1_N31
\instance_Reg_E|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_Reg_E|Q[2]~feeder_combout\,
	ena => \Fio_Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_Reg_E|Q\(2));

-- Location: LCFF_X2_Y1_N3
\instance_MA|var1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_Reg_E|Q\(2),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var1\(2));

-- Location: LCFF_X2_Y1_N7
\instance_MA|var2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_MA|var1\(2),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var2\(2));

-- Location: LCCOMB_X2_Y1_N26
\instance_MA|var3[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|var3[2]~feeder_combout\ = \instance_MA|var2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_MA|var2\(2),
	combout => \instance_MA|var3[2]~feeder_combout\);

-- Location: LCFF_X2_Y1_N27
\instance_MA|var3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_MA|var3[2]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var3\(2));

-- Location: LCFF_X2_Y1_N5
\instance_MA|var4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_MA|var3\(2),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var4\(2));

-- Location: LCFF_X3_Y1_N21
\instance_MA|var1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_Reg_E|Q\(1),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var1\(1));

-- Location: LCFF_X3_Y1_N15
\instance_MA|var2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_MA|var1\(1),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var2\(1));

-- Location: LCFF_X3_Y1_N9
\instance_MA|var3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_MA|var2\(1),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var3\(1));

-- Location: LCCOMB_X2_Y1_N12
\instance_MA|var1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|var1[0]~feeder_combout\ = \instance_Reg_E|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_Reg_E|Q\(0),
	combout => \instance_MA|var1[0]~feeder_combout\);

-- Location: LCFF_X2_Y1_N13
\instance_MA|var1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_MA|var1[0]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var1\(0));

-- Location: LCCOMB_X2_Y1_N28
\instance_MA|var2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|var2[0]~feeder_combout\ = \instance_MA|var1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_MA|var1\(0),
	combout => \instance_MA|var2[0]~feeder_combout\);

-- Location: LCFF_X2_Y1_N29
\instance_MA|var2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_MA|var2[0]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var2\(0));

-- Location: LCCOMB_X2_Y1_N24
\instance_MA|var3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|var3[0]~feeder_combout\ = \instance_MA|var2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_MA|var2\(0),
	combout => \instance_MA|var3[0]~feeder_combout\);

-- Location: LCFF_X2_Y1_N25
\instance_MA|var3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_MA|var3[0]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var3\(0));

-- Location: LCFF_X2_Y1_N1
\instance_MA|var4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \instance_MA|var3\(0),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_MA|var4\(0));

-- Location: LCCOMB_X2_Y1_N4
\instance_MA|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add1~4_combout\ = ((\instance_MA|var3\(2) $ (\instance_MA|var4\(2) $ (!\instance_MA|Add1~3\)))) # (GND)
-- \instance_MA|Add1~5\ = CARRY((\instance_MA|var3\(2) & ((\instance_MA|var4\(2)) # (!\instance_MA|Add1~3\))) # (!\instance_MA|var3\(2) & (\instance_MA|var4\(2) & !\instance_MA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|var3\(2),
	datab => \instance_MA|var4\(2),
	datad => VCC,
	cin => \instance_MA|Add1~3\,
	combout => \instance_MA|Add1~4_combout\,
	cout => \instance_MA|Add1~5\);

-- Location: LCCOMB_X2_Y1_N14
\instance_MA|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add0~0_combout\ = (\instance_MA|var1\(0) & (\instance_MA|var2\(0) $ (VCC))) # (!\instance_MA|var1\(0) & (\instance_MA|var2\(0) & VCC))
-- \instance_MA|Add0~1\ = CARRY((\instance_MA|var1\(0) & \instance_MA|var2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|var1\(0),
	datab => \instance_MA|var2\(0),
	datad => VCC,
	combout => \instance_MA|Add0~0_combout\,
	cout => \instance_MA|Add0~1\);

-- Location: LCCOMB_X2_Y1_N16
\instance_MA|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add0~2_combout\ = (\instance_MA|var1\(1) & ((\instance_MA|var2\(1) & (\instance_MA|Add0~1\ & VCC)) # (!\instance_MA|var2\(1) & (!\instance_MA|Add0~1\)))) # (!\instance_MA|var1\(1) & ((\instance_MA|var2\(1) & (!\instance_MA|Add0~1\)) # 
-- (!\instance_MA|var2\(1) & ((\instance_MA|Add0~1\) # (GND)))))
-- \instance_MA|Add0~3\ = CARRY((\instance_MA|var1\(1) & (!\instance_MA|var2\(1) & !\instance_MA|Add0~1\)) # (!\instance_MA|var1\(1) & ((!\instance_MA|Add0~1\) # (!\instance_MA|var2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|var1\(1),
	datab => \instance_MA|var2\(1),
	datad => VCC,
	cin => \instance_MA|Add0~1\,
	combout => \instance_MA|Add0~2_combout\,
	cout => \instance_MA|Add0~3\);

-- Location: LCCOMB_X3_Y1_N2
\instance_MA|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add2~1_cout\ = CARRY((\instance_MA|Add1~0_combout\ & \instance_MA|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|Add1~0_combout\,
	datab => \instance_MA|Add0~0_combout\,
	datad => VCC,
	cout => \instance_MA|Add2~1_cout\);

-- Location: LCCOMB_X3_Y1_N4
\instance_MA|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add2~3_cout\ = CARRY((\instance_MA|Add1~2_combout\ & (!\instance_MA|Add0~2_combout\ & !\instance_MA|Add2~1_cout\)) # (!\instance_MA|Add1~2_combout\ & ((!\instance_MA|Add2~1_cout\) # (!\instance_MA|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|Add1~2_combout\,
	datab => \instance_MA|Add0~2_combout\,
	datad => VCC,
	cin => \instance_MA|Add2~1_cout\,
	cout => \instance_MA|Add2~3_cout\);

-- Location: LCCOMB_X3_Y1_N6
\instance_MA|OUTPUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|OUTPUT[0]~0_combout\ = ((\instance_MA|Add0~4_combout\ $ (\instance_MA|Add1~4_combout\ $ (!\instance_MA|Add2~3_cout\)))) # (GND)
-- \instance_MA|OUTPUT[0]~1\ = CARRY((\instance_MA|Add0~4_combout\ & ((\instance_MA|Add1~4_combout\) # (!\instance_MA|Add2~3_cout\))) # (!\instance_MA|Add0~4_combout\ & (\instance_MA|Add1~4_combout\ & !\instance_MA|Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|Add0~4_combout\,
	datab => \instance_MA|Add1~4_combout\,
	datad => VCC,
	cin => \instance_MA|Add2~3_cout\,
	combout => \instance_MA|OUTPUT[0]~0_combout\,
	cout => \instance_MA|OUTPUT[0]~1\);

-- Location: LCCOMB_X3_Y1_N8
\instance_MA|OUTPUT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|OUTPUT[1]~2_combout\ = (\instance_MA|Add0~6_combout\ & ((\instance_MA|Add1~6_combout\ & (\instance_MA|OUTPUT[0]~1\ & VCC)) # (!\instance_MA|Add1~6_combout\ & (!\instance_MA|OUTPUT[0]~1\)))) # (!\instance_MA|Add0~6_combout\ & 
-- ((\instance_MA|Add1~6_combout\ & (!\instance_MA|OUTPUT[0]~1\)) # (!\instance_MA|Add1~6_combout\ & ((\instance_MA|OUTPUT[0]~1\) # (GND)))))
-- \instance_MA|OUTPUT[1]~3\ = CARRY((\instance_MA|Add0~6_combout\ & (!\instance_MA|Add1~6_combout\ & !\instance_MA|OUTPUT[0]~1\)) # (!\instance_MA|Add0~6_combout\ & ((!\instance_MA|OUTPUT[0]~1\) # (!\instance_MA|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|Add0~6_combout\,
	datab => \instance_MA|Add1~6_combout\,
	datad => VCC,
	cin => \instance_MA|OUTPUT[0]~1\,
	combout => \instance_MA|OUTPUT[1]~2_combout\,
	cout => \instance_MA|OUTPUT[1]~3\);

-- Location: LCCOMB_X3_Y1_N16
\instance_Comp|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|LessThan0~1_combout\ = (\instance_Reg_E|Q\(1) & (((!\instance_MA|OUTPUT[0]~0_combout\ & \instance_Reg_E|Q\(0))) # (!\instance_MA|OUTPUT[1]~2_combout\))) # (!\instance_Reg_E|Q\(1) & (!\instance_MA|OUTPUT[0]~0_combout\ & 
-- (\instance_Reg_E|Q\(0) & !\instance_MA|OUTPUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[0]~0_combout\,
	datab => \instance_Reg_E|Q\(0),
	datac => \instance_Reg_E|Q\(1),
	datad => \instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_Comp|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y1_N22
\instance_MA|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|Add0~8_combout\ = !\instance_MA|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instance_MA|Add0~7\,
	combout => \instance_MA|Add0~8_combout\);

-- Location: LCCOMB_X3_Y1_N10
\instance_MA|OUTPUT[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|OUTPUT[2]~4_combout\ = ((\instance_MA|Add1~8_combout\ $ (\instance_MA|Add0~8_combout\ $ (!\instance_MA|OUTPUT[1]~3\)))) # (GND)
-- \instance_MA|OUTPUT[2]~5\ = CARRY((\instance_MA|Add1~8_combout\ & ((\instance_MA|Add0~8_combout\) # (!\instance_MA|OUTPUT[1]~3\))) # (!\instance_MA|Add1~8_combout\ & (\instance_MA|Add0~8_combout\ & !\instance_MA|OUTPUT[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|Add1~8_combout\,
	datab => \instance_MA|Add0~8_combout\,
	datad => VCC,
	cin => \instance_MA|OUTPUT[1]~3\,
	combout => \instance_MA|OUTPUT[2]~4_combout\,
	cout => \instance_MA|OUTPUT[2]~5\);

-- Location: LCCOMB_X3_Y1_N12
\instance_MA|OUTPUT[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_MA|OUTPUT[3]~6_combout\ = \instance_MA|OUTPUT[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instance_MA|OUTPUT[2]~5\,
	combout => \instance_MA|OUTPUT[3]~6_combout\);

-- Location: LCCOMB_X3_Y1_N28
\instance_Comp|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|LessThan0~0_combout\ = (\instance_MA|OUTPUT[3]~6_combout\ & (((\instance_Reg_E|Q\(2) & !\instance_MA|OUTPUT[2]~4_combout\)) # (!\instance_Reg_E|Q\(3)))) # (!\instance_MA|OUTPUT[3]~6_combout\ & (\instance_Reg_E|Q\(2) & 
-- (!\instance_Reg_E|Q\(3) & !\instance_MA|OUTPUT[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Reg_E|Q\(2),
	datab => \instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_Reg_E|Q\(3),
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_Comp|LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y1_N24
\instance_Comp|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|Equal0~0_combout\ = (\instance_Reg_E|Q\(2) & (\instance_MA|OUTPUT[2]~4_combout\ & (\instance_MA|OUTPUT[3]~6_combout\ $ (!\instance_Reg_E|Q\(3))))) # (!\instance_Reg_E|Q\(2) & (!\instance_MA|OUTPUT[2]~4_combout\ & 
-- (\instance_MA|OUTPUT[3]~6_combout\ $ (!\instance_Reg_E|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Reg_E|Q\(2),
	datab => \instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_Reg_E|Q\(3),
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_Comp|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y1_N14
\instance_Comp|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|LessThan0~2_combout\ = (\instance_Comp|LessThan0~0_combout\) # ((\instance_Comp|LessThan0~1_combout\ & \instance_Comp|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Comp|LessThan0~1_combout\,
	datab => \instance_Comp|LessThan0~0_combout\,
	datad => \instance_Comp|Equal0~0_combout\,
	combout => \instance_Comp|LessThan0~2_combout\);

-- Location: LCCOMB_X3_Y1_N26
\instance_Comp|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|Equal0~1_combout\ = (\instance_MA|OUTPUT[0]~0_combout\ & (\instance_Reg_E|Q\(0) & (\instance_Reg_E|Q\(1) $ (!\instance_MA|OUTPUT[1]~2_combout\)))) # (!\instance_MA|OUTPUT[0]~0_combout\ & (!\instance_Reg_E|Q\(0) & (\instance_Reg_E|Q\(1) $ 
-- (!\instance_MA|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[0]~0_combout\,
	datab => \instance_Reg_E|Q\(0),
	datac => \instance_Reg_E|Q\(1),
	datad => \instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_Comp|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y1_N20
\instance_Comp|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|LessThan0~3_combout\ = \instance_Reg_E|Q\(2) $ (\instance_MA|OUTPUT[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Reg_E|Q\(2),
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_Comp|LessThan0~3_combout\);

-- Location: LCCOMB_X3_Y1_N0
\instance_Comp|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|Equal0~2_combout\ = (\instance_Comp|Equal0~1_combout\ & (!\instance_Comp|LessThan0~3_combout\ & (\instance_MA|OUTPUT[3]~6_combout\ $ (!\instance_Reg_E|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_Comp|Equal0~1_combout\,
	datac => \instance_Reg_E|Q\(3),
	datad => \instance_Comp|LessThan0~3_combout\,
	combout => \instance_Comp|Equal0~2_combout\);

-- Location: LCCOMB_X3_Y1_N22
\instance_Comp|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|LessThan1~0_combout\ = (\instance_MA|OUTPUT[3]~6_combout\ & (!\instance_Reg_E|Q\(2) & (\instance_Reg_E|Q\(3) & \instance_MA|OUTPUT[2]~4_combout\))) # (!\instance_MA|OUTPUT[3]~6_combout\ & ((\instance_Reg_E|Q\(3)) # ((!\instance_Reg_E|Q\(2) 
-- & \instance_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Reg_E|Q\(2),
	datab => \instance_MA|OUTPUT[3]~6_combout\,
	datac => \instance_Reg_E|Q\(3),
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_Comp|LessThan1~0_combout\);

-- Location: LCCOMB_X3_Y1_N30
\instance_Comp|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|LessThan1~1_combout\ = (\instance_Reg_E|Q\(1) & (\instance_MA|OUTPUT[0]~0_combout\ & (!\instance_Reg_E|Q\(0) & \instance_MA|OUTPUT[1]~2_combout\))) # (!\instance_Reg_E|Q\(1) & ((\instance_MA|OUTPUT[1]~2_combout\) # 
-- ((\instance_MA|OUTPUT[0]~0_combout\ & !\instance_Reg_E|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[0]~0_combout\,
	datab => \instance_Reg_E|Q\(0),
	datac => \instance_Reg_E|Q\(1),
	datad => \instance_MA|OUTPUT[1]~2_combout\,
	combout => \instance_Comp|LessThan1~1_combout\);

-- Location: LCCOMB_X3_Y1_N18
\instance_Comp|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Comp|LessThan1~2_combout\ = (\instance_Comp|LessThan1~0_combout\) # ((\instance_Comp|Equal0~0_combout\ & \instance_Comp|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Comp|LessThan1~0_combout\,
	datab => \instance_Comp|Equal0~0_combout\,
	datad => \instance_Comp|LessThan1~1_combout\,
	combout => \instance_Comp|LessThan1~2_combout\);

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

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Subindo~I\ : cycloneii_io
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
	padio => ww_Fio_Subindo,
	combout => \Fio_Subindo~combout\);

-- Location: LCCOMB_X1_Y6_N16
\instance_Sobe|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Sobe|Q[0]~feeder_combout\ = \Fio_Subindo~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fio_Subindo~combout\,
	combout => \instance_Sobe|Q[0]~feeder_combout\);

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Atualizar~I\ : cycloneii_io
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
	padio => ww_Fio_Atualizar,
	combout => \Fio_Atualizar~combout\);

-- Location: LCFF_X1_Y6_N17
\instance_Sobe|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_Sobe|Q[0]~feeder_combout\,
	ena => \Fio_Atualizar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_Sobe|Q\(0));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Descendo~I\ : cycloneii_io
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
	padio => ww_Fio_Descendo,
	combout => \Fio_Descendo~combout\);

-- Location: LCCOMB_X1_Y6_N14
\instance_Desce|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Desce|Q[0]~feeder_combout\ = \Fio_Descendo~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fio_Descendo~combout\,
	combout => \instance_Desce|Q[0]~feeder_combout\);

-- Location: LCFF_X1_Y6_N15
\instance_Desce|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_Desce|Q[0]~feeder_combout\,
	ena => \Fio_Atualizar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_Desce|Q\(0));

-- Location: LCCOMB_X4_Y1_N28
\instance_BCD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_BCD|Mux6~0_combout\ = (\instance_MA|OUTPUT[3]~6_combout\ & (\instance_MA|OUTPUT[0]~0_combout\ & (\instance_MA|OUTPUT[1]~2_combout\ $ (\instance_MA|OUTPUT[2]~4_combout\)))) # (!\instance_MA|OUTPUT[3]~6_combout\ & 
-- (!\instance_MA|OUTPUT[1]~2_combout\ & (\instance_MA|OUTPUT[0]~0_combout\ $ (\instance_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_MA|OUTPUT[1]~2_combout\,
	datac => \instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_BCD|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y1_N26
\instance_BCD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_BCD|Mux5~0_combout\ = (\instance_MA|OUTPUT[3]~6_combout\ & ((\instance_MA|OUTPUT[0]~0_combout\ & (\instance_MA|OUTPUT[1]~2_combout\)) # (!\instance_MA|OUTPUT[0]~0_combout\ & ((\instance_MA|OUTPUT[2]~4_combout\))))) # 
-- (!\instance_MA|OUTPUT[3]~6_combout\ & (\instance_MA|OUTPUT[2]~4_combout\ & (\instance_MA|OUTPUT[1]~2_combout\ $ (\instance_MA|OUTPUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_MA|OUTPUT[1]~2_combout\,
	datac => \instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_BCD|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y1_N16
\instance_BCD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_BCD|Mux4~0_combout\ = (\instance_MA|OUTPUT[3]~6_combout\ & (\instance_MA|OUTPUT[2]~4_combout\ & ((\instance_MA|OUTPUT[1]~2_combout\) # (!\instance_MA|OUTPUT[0]~0_combout\)))) # (!\instance_MA|OUTPUT[3]~6_combout\ & 
-- (\instance_MA|OUTPUT[1]~2_combout\ & (!\instance_MA|OUTPUT[0]~0_combout\ & !\instance_MA|OUTPUT[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_MA|OUTPUT[1]~2_combout\,
	datac => \instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_BCD|Mux4~0_combout\);

-- Location: LCCOMB_X4_Y1_N18
\instance_BCD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_BCD|Mux3~0_combout\ = (\instance_MA|OUTPUT[1]~2_combout\ & ((\instance_MA|OUTPUT[0]~0_combout\ & ((\instance_MA|OUTPUT[2]~4_combout\))) # (!\instance_MA|OUTPUT[0]~0_combout\ & (\instance_MA|OUTPUT[3]~6_combout\ & 
-- !\instance_MA|OUTPUT[2]~4_combout\)))) # (!\instance_MA|OUTPUT[1]~2_combout\ & (!\instance_MA|OUTPUT[3]~6_combout\ & (\instance_MA|OUTPUT[0]~0_combout\ $ (\instance_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_MA|OUTPUT[1]~2_combout\,
	datac => \instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_BCD|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y1_N12
\instance_BCD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_BCD|Mux2~0_combout\ = (\instance_MA|OUTPUT[1]~2_combout\ & (!\instance_MA|OUTPUT[3]~6_combout\ & (\instance_MA|OUTPUT[0]~0_combout\))) # (!\instance_MA|OUTPUT[1]~2_combout\ & ((\instance_MA|OUTPUT[2]~4_combout\ & 
-- (!\instance_MA|OUTPUT[3]~6_combout\)) # (!\instance_MA|OUTPUT[2]~4_combout\ & ((\instance_MA|OUTPUT[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_MA|OUTPUT[1]~2_combout\,
	datac => \instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_BCD|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y1_N2
\instance_BCD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_BCD|Mux1~0_combout\ = (\instance_MA|OUTPUT[1]~2_combout\ & (!\instance_MA|OUTPUT[3]~6_combout\ & ((\instance_MA|OUTPUT[0]~0_combout\) # (!\instance_MA|OUTPUT[2]~4_combout\)))) # (!\instance_MA|OUTPUT[1]~2_combout\ & 
-- (\instance_MA|OUTPUT[0]~0_combout\ & (\instance_MA|OUTPUT[3]~6_combout\ $ (!\instance_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_MA|OUTPUT[1]~2_combout\,
	datac => \instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_BCD|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y1_N0
\instance_BCD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_BCD|Mux0~0_combout\ = (\instance_MA|OUTPUT[0]~0_combout\ & ((\instance_MA|OUTPUT[3]~6_combout\) # (\instance_MA|OUTPUT[1]~2_combout\ $ (\instance_MA|OUTPUT[2]~4_combout\)))) # (!\instance_MA|OUTPUT[0]~0_combout\ & 
-- ((\instance_MA|OUTPUT[1]~2_combout\) # (\instance_MA|OUTPUT[3]~6_combout\ $ (\instance_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_MA|OUTPUT[3]~6_combout\,
	datab => \instance_MA|OUTPUT[1]~2_combout\,
	datac => \instance_MA|OUTPUT[0]~0_combout\,
	datad => \instance_MA|OUTPUT[2]~4_combout\,
	combout => \instance_BCD|Mux0~0_combout\);

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Maior~I\ : cycloneii_io
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
	datain => \instance_Comp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Maior);

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Igual~I\ : cycloneii_io
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
	datain => \instance_Comp|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Igual);

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Menor~I\ : cycloneii_io
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
	datain => \instance_Comp|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Menor);

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_Sobe|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Subindo);

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_Desce|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Descendo);

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_BCD|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(0));

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_BCD|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(1));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_BCD|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(2));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_BCD|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(3));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_BCD|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(4));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_BCD|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(5));

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_BCD|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(6));
END structure;


