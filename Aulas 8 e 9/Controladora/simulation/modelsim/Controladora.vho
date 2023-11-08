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

-- DATE "10/22/2023 14:28:13"

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

ENTITY 	Controladora IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	Fio_Maior : IN std_logic;
	Fio_Igual : IN std_logic;
	Fio_Menor : IN std_logic;
	Fio_Load_E : OUT std_logic;
	Reset_MA : OUT std_logic;
	Fio_Descendo : OUT std_logic;
	Fio_Subindo : OUT std_logic;
	Fio_Atualizar : OUT std_logic
	);
END Controladora;

-- Design Ports Information
-- Fio_Load_E	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reset_MA	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Descendo	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Subindo	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Atualizar	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Igual	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Maior	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Menor	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Controladora IS
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
SIGNAL ww_Fio_Maior : std_logic;
SIGNAL ww_Fio_Igual : std_logic;
SIGNAL ww_Fio_Menor : std_logic;
SIGNAL ww_Fio_Load_E : std_logic;
SIGNAL ww_Reset_MA : std_logic;
SIGNAL ww_Fio_Descendo : std_logic;
SIGNAL ww_Fio_Subindo : std_logic;
SIGNAL ww_Fio_Atualizar : std_logic;
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Fio_Igual~combout\ : std_logic;
SIGNAL \Fio_Maior~combout\ : std_logic;
SIGNAL \estado~9_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \estado.s1~regout\ : std_logic;
SIGNAL \estado.s0~feeder_combout\ : std_logic;
SIGNAL \estado.s0~regout\ : std_logic;
SIGNAL \Fio_Menor~combout\ : std_logic;
SIGNAL \estado~10_combout\ : std_logic;
SIGNAL \estado.s3~regout\ : std_logic;
SIGNAL \Fio_Descendo~2_combout\ : std_logic;
SIGNAL \estado~11_combout\ : std_logic;
SIGNAL \estado.s2~regout\ : std_logic;
SIGNAL \Fio_Subindo~1_combout\ : std_logic;
SIGNAL \ALT_INV_estado.s0~regout\ : std_logic;
SIGNAL \ALT_INV_estado.s1~regout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Fio_Maior <= Fio_Maior;
ww_Fio_Igual <= Fio_Igual;
ww_Fio_Menor <= Fio_Menor;
Fio_Load_E <= ww_Fio_Load_E;
Reset_MA <= ww_Reset_MA;
Fio_Descendo <= ww_Fio_Descendo;
Fio_Subindo <= ww_Fio_Subindo;
Fio_Atualizar <= ww_Fio_Atualizar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);
\ALT_INV_estado.s0~regout\ <= NOT \estado.s0~regout\;
\ALT_INV_estado.s1~regout\ <= NOT \estado.s1~regout\;

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
	padio => ww_Fio_Igual,
	combout => \Fio_Igual~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_Fio_Maior,
	combout => \Fio_Maior~combout\);

-- Location: LCCOMB_X28_Y35_N28
\estado~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado~9_combout\ = ((\Fio_Menor~combout\ & ((\Fio_Igual~combout\) # (\Fio_Maior~combout\))) # (!\Fio_Menor~combout\ & (\Fio_Igual~combout\ $ (!\Fio_Maior~combout\)))) # (!\estado.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fio_Menor~combout\,
	datab => \Fio_Igual~combout\,
	datac => \estado.s1~regout\,
	datad => \Fio_Maior~combout\,
	combout => \estado~9_combout\);

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

-- Location: LCFF_X28_Y35_N29
\estado.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \estado~9_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.s1~regout\);

-- Location: LCCOMB_X28_Y35_N18
\estado.s0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \estado.s0~feeder_combout\);

-- Location: LCFF_X28_Y35_N19
\estado.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \estado.s0~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.s0~regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_Fio_Menor,
	combout => \Fio_Menor~combout\);

-- Location: LCCOMB_X28_Y35_N0
\estado~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado~10_combout\ = (!\Fio_Maior~combout\ & (!\Fio_Igual~combout\ & (\Fio_Menor~combout\ & \estado.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fio_Maior~combout\,
	datab => \Fio_Igual~combout\,
	datac => \Fio_Menor~combout\,
	datad => \estado.s1~regout\,
	combout => \estado~10_combout\);

-- Location: LCFF_X28_Y35_N1
\estado.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \estado~10_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.s3~regout\);

-- Location: LCCOMB_X28_Y35_N26
\Fio_Descendo~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Fio_Descendo~2_combout\ = (\estado.s3~regout\) # (!\estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.s3~regout\,
	datad => \estado.s0~regout\,
	combout => \Fio_Descendo~2_combout\);

-- Location: LCCOMB_X28_Y35_N20
\estado~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado~11_combout\ = (\Fio_Maior~combout\ & (!\Fio_Igual~combout\ & (!\Fio_Menor~combout\ & \estado.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fio_Maior~combout\,
	datab => \Fio_Igual~combout\,
	datac => \Fio_Menor~combout\,
	datad => \estado.s1~regout\,
	combout => \estado~11_combout\);

-- Location: LCFF_X28_Y35_N21
\estado.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \estado~11_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.s2~regout\);

-- Location: LCCOMB_X28_Y35_N2
\Fio_Subindo~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Fio_Subindo~1_combout\ = (\estado.s2~regout\) # (!\estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.s2~regout\,
	datad => \estado.s0~regout\,
	combout => \Fio_Subindo~1_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_estado.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Load_E);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_estado.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Reset_MA);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Fio_Descendo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Descendo);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Fio_Subindo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Subindo);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_estado.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Atualizar);
END structure;


