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

-- DATE "12/02/2023 14:57:14"

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

ENTITY 	CaminhoDados IS
    PORT (
	Sensor_de_cor : IN std_logic_vector(31 DOWNTO 0);
	Codigo_de_cor : IN std_logic_vector(31 DOWNTO 0);
	Clock : IN std_logic;
	Reset : IN std_logic;
	Habilita_escrita : IN std_logic;
	Habilita_pigmento : IN std_logic;
	Habilita_mistura : IN std_logic;
	Misturando : OUT std_logic;
	Ciano : OUT std_logic;
	Magenta : OUT std_logic;
	Amarelo : OUT std_logic;
	Preto : OUT std_logic;
	Codigo_valido : OUT std_logic;
	Cor_valida : OUT std_logic;
	Codigo_cor_misturada : OUT std_logic_vector(31 DOWNTO 0)
	);
END CaminhoDados;

-- Design Ports Information
-- Misturando	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Ciano	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Magenta	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Amarelo	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Preto	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_valido	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cor_valida	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[0]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[6]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[7]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[8]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[9]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[10]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[11]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[12]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[13]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[14]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[15]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[16]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[17]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[18]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[19]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[20]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[21]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[22]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[23]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[24]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[25]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[26]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[27]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[28]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[29]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[30]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[31]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_cor[29]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[30]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[26]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[27]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[28]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[23]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[24]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[25]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[19]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[21]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[22]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[20]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[18]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[15]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[16]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[17]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[13]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[14]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[11]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[12]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[10]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[7]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[8]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[9]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[5]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[6]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[4]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[3]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[2]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[0]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[4]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[5]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[6]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[7]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[8]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[9]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[10]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[11]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[12]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[13]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[14]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[15]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[16]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[17]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[18]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[19]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[20]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[21]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[22]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[23]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[24]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[25]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[26]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[27]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[28]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[29]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[30]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[31]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Habilita_mistura	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[31]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Habilita_escrita	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Habilita_pigmento	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CaminhoDados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sensor_de_cor : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Codigo_de_cor : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Habilita_escrita : std_logic;
SIGNAL ww_Habilita_pigmento : std_logic;
SIGNAL ww_Habilita_mistura : std_logic;
SIGNAL ww_Misturando : std_logic;
SIGNAL ww_Ciano : std_logic;
SIGNAL ww_Magenta : std_logic;
SIGNAL ww_Amarelo : std_logic;
SIGNAL ww_Preto : std_logic;
SIGNAL ww_Codigo_valido : std_logic;
SIGNAL ww_Cor_valida : std_logic;
SIGNAL ww_Codigo_cor_misturada : std_logic_vector(31 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_contmist|Count[7]~27_combout\ : std_logic;
SIGNAL \instance_ContC|Count[14]~43\ : std_logic;
SIGNAL \instance_ContC|Count[15]~44_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~0_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~1_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~3_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~5_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~9_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~3_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~8_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~11_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~17_combout\ : std_logic;
SIGNAL \instance_contmist|Count[0]~45_combout\ : std_logic;
SIGNAL \instance_contmist|Count[1]~15_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \Habilita_mistura~combout\ : std_logic;
SIGNAL \instance_contmist|Count[1]~16\ : std_logic;
SIGNAL \instance_contmist|Count[2]~17_combout\ : std_logic;
SIGNAL \instance_contmist|Count[2]~18\ : std_logic;
SIGNAL \instance_contmist|Count[3]~19_combout\ : std_logic;
SIGNAL \instance_contmist|Count[3]~20\ : std_logic;
SIGNAL \instance_contmist|Count[4]~21_combout\ : std_logic;
SIGNAL \instance_compmist|LessThan0~0_combout\ : std_logic;
SIGNAL \instance_contmist|Count[4]~22\ : std_logic;
SIGNAL \instance_contmist|Count[5]~23_combout\ : std_logic;
SIGNAL \instance_contmist|Count[5]~24\ : std_logic;
SIGNAL \instance_contmist|Count[6]~25_combout\ : std_logic;
SIGNAL \instance_contmist|Count[6]~26\ : std_logic;
SIGNAL \instance_contmist|Count[7]~28\ : std_logic;
SIGNAL \instance_contmist|Count[8]~29_combout\ : std_logic;
SIGNAL \instance_contmist|Count[8]~30\ : std_logic;
SIGNAL \instance_contmist|Count[9]~32\ : std_logic;
SIGNAL \instance_contmist|Count[10]~33_combout\ : std_logic;
SIGNAL \instance_contmist|Count[10]~34\ : std_logic;
SIGNAL \instance_contmist|Count[11]~35_combout\ : std_logic;
SIGNAL \instance_contmist|Count[9]~31_combout\ : std_logic;
SIGNAL \instance_compmist|LessThan0~2_combout\ : std_logic;
SIGNAL \instance_contmist|Count[11]~36\ : std_logic;
SIGNAL \instance_contmist|Count[12]~37_combout\ : std_logic;
SIGNAL \instance_contmist|Count[12]~38\ : std_logic;
SIGNAL \instance_contmist|Count[13]~40\ : std_logic;
SIGNAL \instance_contmist|Count[14]~41_combout\ : std_logic;
SIGNAL \instance_contmist|Count[14]~42\ : std_logic;
SIGNAL \instance_contmist|Count[15]~43_combout\ : std_logic;
SIGNAL \instance_contmist|Count[13]~39_combout\ : std_logic;
SIGNAL \instance_compmist|LessThan0~3_combout\ : std_logic;
SIGNAL \instance_compmist|LessThan0~1_combout\ : std_logic;
SIGNAL \instance_compmist|LessThan0~4_combout\ : std_logic;
SIGNAL \Habilita_pigmento~combout\ : std_logic;
SIGNAL \instance_ContC|Count[0]~29_combout\ : std_logic;
SIGNAL \instance_ContC|Count[1]~16\ : std_logic;
SIGNAL \instance_ContC|Count[2]~17_combout\ : std_logic;
SIGNAL \instance_ContC|Count[2]~18\ : std_logic;
SIGNAL \instance_ContC|Count[3]~20\ : std_logic;
SIGNAL \instance_ContC|Count[4]~21_combout\ : std_logic;
SIGNAL \instance_ContC|Count[4]~22\ : std_logic;
SIGNAL \instance_ContC|Count[5]~24\ : std_logic;
SIGNAL \instance_ContC|Count[6]~25_combout\ : std_logic;
SIGNAL \instance_ContC|Count[6]~26\ : std_logic;
SIGNAL \instance_ContC|Count[7]~27_combout\ : std_logic;
SIGNAL \instance_ContC|Count[7]~28\ : std_logic;
SIGNAL \instance_ContC|Count[8]~30_combout\ : std_logic;
SIGNAL \instance_ContC|Count[8]~31\ : std_logic;
SIGNAL \instance_ContC|Count[9]~32_combout\ : std_logic;
SIGNAL \instance_ContC|Count[9]~33\ : std_logic;
SIGNAL \instance_ContC|Count[10]~34_combout\ : std_logic;
SIGNAL \instance_ContC|Count[10]~35\ : std_logic;
SIGNAL \instance_ContC|Count[11]~36_combout\ : std_logic;
SIGNAL \instance_ContC|Count[11]~37\ : std_logic;
SIGNAL \instance_ContC|Count[12]~38_combout\ : std_logic;
SIGNAL \instance_ContC|Count[12]~39\ : std_logic;
SIGNAL \instance_ContC|Count[13]~40_combout\ : std_logic;
SIGNAL \instance_ContC|Count[13]~41\ : std_logic;
SIGNAL \instance_ContC|Count[14]~42_combout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~17_combout\ : std_logic;
SIGNAL \Habilita_escrita~combout\ : std_logic;
SIGNAL \instance_RegC|process_0~0_combout\ : std_logic;
SIGNAL \instance_ContC|Count[5]~23_combout\ : std_logic;
SIGNAL \instance_ContC|Count[3]~19_combout\ : std_logic;
SIGNAL \instance_RegC|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~1_cout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~3_cout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~5_cout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~7_cout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~9_cout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~11_cout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~13_cout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~14_combout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~16_combout\ : std_logic;
SIGNAL \instance_CompC|LessThan1~18_combout\ : std_logic;
SIGNAL \instance_ContC|Count[1]~15_combout\ : std_logic;
SIGNAL \instance_RegM|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instance_CompM|LessThan1~1_cout\ : std_logic;
SIGNAL \instance_CompM|LessThan1~3_cout\ : std_logic;
SIGNAL \instance_CompM|LessThan1~5_cout\ : std_logic;
SIGNAL \instance_CompM|LessThan1~7_cout\ : std_logic;
SIGNAL \instance_CompM|LessThan1~9_cout\ : std_logic;
SIGNAL \instance_CompM|LessThan1~11_cout\ : std_logic;
SIGNAL \instance_CompM|LessThan1~13_cout\ : std_logic;
SIGNAL \instance_CompM|LessThan1~14_combout\ : std_logic;
SIGNAL \instance_CompM|LessThan1~16_combout\ : std_logic;
SIGNAL \instance_RegY|Q[5]~feeder_combout\ : std_logic;
SIGNAL \instance_RegY|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instance_RegY|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instance_CompY|LessThan1~1_cout\ : std_logic;
SIGNAL \instance_CompY|LessThan1~3_cout\ : std_logic;
SIGNAL \instance_CompY|LessThan1~5_cout\ : std_logic;
SIGNAL \instance_CompY|LessThan1~7_cout\ : std_logic;
SIGNAL \instance_CompY|LessThan1~9_cout\ : std_logic;
SIGNAL \instance_CompY|LessThan1~11_cout\ : std_logic;
SIGNAL \instance_CompY|LessThan1~13_cout\ : std_logic;
SIGNAL \instance_CompY|LessThan1~14_combout\ : std_logic;
SIGNAL \instance_CompY|LessThan1~16_combout\ : std_logic;
SIGNAL \instance_CompK|LessThan1~1_cout\ : std_logic;
SIGNAL \instance_CompK|LessThan1~3_cout\ : std_logic;
SIGNAL \instance_CompK|LessThan1~5_cout\ : std_logic;
SIGNAL \instance_CompK|LessThan1~7_cout\ : std_logic;
SIGNAL \instance_CompK|LessThan1~9_cout\ : std_logic;
SIGNAL \instance_CompK|LessThan1~11_cout\ : std_logic;
SIGNAL \instance_CompK|LessThan1~13_cout\ : std_logic;
SIGNAL \instance_CompK|LessThan1~14_combout\ : std_logic;
SIGNAL \instance_CompK|LessThan1~16_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~8_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~7_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~10_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~6_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~4_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~11_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~2_combout\ : std_logic;
SIGNAL \instance_CodValid|LessThan0~12_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~1_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~0_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~2_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~4_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~10_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~13_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~12_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~14_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~15_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~18_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~16_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~19_combout\ : std_logic;
SIGNAL \instance_RegY|Q[4]~feeder_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~7_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~5_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~6_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~9_combout\ : std_logic;
SIGNAL \instance_Compcor|Equal0~20_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \instance_RegM|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instance_RegM|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_RegY|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_RegK|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_contmist|Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instance_RegC|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_ContC|Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Sensor_de_cor~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Codigo_de_cor~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instance_CodValid|ALT_INV_LessThan0~12_combout\ : std_logic;

BEGIN

ww_Sensor_de_cor <= Sensor_de_cor;
ww_Codigo_de_cor <= Codigo_de_cor;
ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Habilita_escrita <= Habilita_escrita;
ww_Habilita_pigmento <= Habilita_pigmento;
ww_Habilita_mistura <= Habilita_mistura;
Misturando <= ww_Misturando;
Ciano <= ww_Ciano;
Magenta <= ww_Magenta;
Amarelo <= ww_Amarelo;
Preto <= ww_Preto;
Codigo_valido <= ww_Codigo_valido;
Cor_valida <= ww_Cor_valida;
Codigo_cor_misturada <= ww_Codigo_cor_misturada;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);
\instance_CodValid|ALT_INV_LessThan0~12_combout\ <= NOT \instance_CodValid|LessThan0~12_combout\;

-- Location: LCFF_X59_Y34_N13
\instance_contmist|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[7]~27_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(7));

-- Location: LCFF_X24_Y35_N31
\instance_ContC|Count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[15]~44_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(15));

-- Location: LCCOMB_X59_Y34_N12
\instance_contmist|Count[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[7]~27_combout\ = (\instance_contmist|Count\(7) & (\instance_contmist|Count[6]~26\ $ (GND))) # (!\instance_contmist|Count\(7) & (!\instance_contmist|Count[6]~26\ & VCC))
-- \instance_contmist|Count[7]~28\ = CARRY((\instance_contmist|Count\(7) & !\instance_contmist|Count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_contmist|Count\(7),
	datad => VCC,
	cin => \instance_contmist|Count[6]~26\,
	combout => \instance_contmist|Count[7]~27_combout\,
	cout => \instance_contmist|Count[7]~28\);

-- Location: LCCOMB_X24_Y35_N28
\instance_ContC|Count[14]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[14]~42_combout\ = (\instance_ContC|Count\(14) & (!\instance_ContC|Count[13]~41\)) # (!\instance_ContC|Count\(14) & ((\instance_ContC|Count[13]~41\) # (GND)))
-- \instance_ContC|Count[14]~43\ = CARRY((!\instance_ContC|Count[13]~41\) # (!\instance_ContC|Count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(14),
	datad => VCC,
	cin => \instance_ContC|Count[13]~41\,
	combout => \instance_ContC|Count[14]~42_combout\,
	cout => \instance_ContC|Count[14]~43\);

-- Location: LCCOMB_X24_Y35_N30
\instance_ContC|Count[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[15]~44_combout\ = \instance_ContC|Count[14]~43\ $ (!\instance_ContC|Count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instance_ContC|Count\(15),
	cin => \instance_ContC|Count[14]~43\,
	combout => \instance_ContC|Count[15]~44_combout\);

-- Location: LCCOMB_X15_Y35_N10
\instance_CodValid|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~0_combout\ = (\Codigo_de_cor~combout\(21) & (\Codigo_de_cor~combout\(22) & ((\Codigo_de_cor~combout\(19)) # (\Codigo_de_cor~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(19),
	datab => \Codigo_de_cor~combout\(21),
	datac => \Codigo_de_cor~combout\(20),
	datad => \Codigo_de_cor~combout\(22),
	combout => \instance_CodValid|LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y35_N16
\instance_CodValid|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~1_combout\ = (\instance_CodValid|LessThan0~0_combout\) # ((\Codigo_de_cor~combout\(23)) # ((\Codigo_de_cor~combout\(24)) # (\Codigo_de_cor~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_CodValid|LessThan0~0_combout\,
	datab => \Codigo_de_cor~combout\(23),
	datac => \Codigo_de_cor~combout\(24),
	datad => \Codigo_de_cor~combout\(25),
	combout => \instance_CodValid|LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y35_N8
\instance_CodValid|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~3_combout\ = (\Codigo_de_cor~combout\(22) & (\Codigo_de_cor~combout\(21) & (\Codigo_de_cor~combout\(18) & \Codigo_de_cor~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(22),
	datab => \Codigo_de_cor~combout\(21),
	datac => \Codigo_de_cor~combout\(18),
	datad => \Codigo_de_cor~combout\(26),
	combout => \instance_CodValid|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y35_N24
\instance_CodValid|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~5_combout\ = (\Codigo_de_cor~combout\(14) & (\instance_CodValid|LessThan0~3_combout\ & \Codigo_de_cor~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(14),
	datac => \instance_CodValid|LessThan0~3_combout\,
	datad => \Codigo_de_cor~combout\(13),
	combout => \instance_CodValid|LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y35_N6
\instance_CodValid|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~9_combout\ = (\Codigo_de_cor~combout\(3)) # ((\Codigo_de_cor~combout\(2) & ((\Codigo_de_cor~combout\(0)) # (\Codigo_de_cor~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(2),
	datab => \Codigo_de_cor~combout\(0),
	datac => \Codigo_de_cor~combout\(1),
	datad => \Codigo_de_cor~combout\(3),
	combout => \instance_CodValid|LessThan0~9_combout\);

-- Location: LCCOMB_X28_Y35_N12
\instance_Compcor|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~3_combout\ = (\instance_RegK|Q\(6) & (\Sensor_de_cor~combout\(6) & (\instance_RegK|Q\(7) $ (!\Sensor_de_cor~combout\(7))))) # (!\instance_RegK|Q\(6) & (!\Sensor_de_cor~combout\(6) & (\instance_RegK|Q\(7) $ 
-- (!\Sensor_de_cor~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegK|Q\(6),
	datab => \Sensor_de_cor~combout\(6),
	datac => \instance_RegK|Q\(7),
	datad => \Sensor_de_cor~combout\(7),
	combout => \instance_Compcor|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y35_N4
\instance_Compcor|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~8_combout\ = (\instance_RegY|Q\(6) & (\Sensor_de_cor~combout\(14) & (\Sensor_de_cor~combout\(15) $ (!\instance_RegY|Q\(7))))) # (!\instance_RegY|Q\(6) & (!\Sensor_de_cor~combout\(14) & (\Sensor_de_cor~combout\(15) $ 
-- (!\instance_RegY|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegY|Q\(6),
	datab => \Sensor_de_cor~combout\(15),
	datac => \instance_RegY|Q\(7),
	datad => \Sensor_de_cor~combout\(14),
	combout => \instance_Compcor|Equal0~8_combout\);

-- Location: LCCOMB_X15_Y35_N2
\instance_Compcor|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~11_combout\ = (\Sensor_de_cor~combout\(19) & (\instance_RegM|Q\(3) & (\instance_RegM|Q\(2) $ (!\Sensor_de_cor~combout\(18))))) # (!\Sensor_de_cor~combout\(19) & (!\instance_RegM|Q\(3) & (\instance_RegM|Q\(2) $ 
-- (!\Sensor_de_cor~combout\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(19),
	datab => \instance_RegM|Q\(2),
	datac => \Sensor_de_cor~combout\(18),
	datad => \instance_RegM|Q\(3),
	combout => \instance_Compcor|Equal0~11_combout\);

-- Location: LCCOMB_X1_Y33_N24
\instance_Compcor|Equal0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~17_combout\ = (\Sensor_de_cor~combout\(28) & (\instance_RegC|Q\(4) & (\Sensor_de_cor~combout\(29) $ (!\instance_RegC|Q\(5))))) # (!\Sensor_de_cor~combout\(28) & (!\instance_RegC|Q\(4) & (\Sensor_de_cor~combout\(29) $ 
-- (!\instance_RegC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(28),
	datab => \Sensor_de_cor~combout\(29),
	datac => \instance_RegC|Q\(5),
	datad => \instance_RegC|Q\(4),
	combout => \instance_Compcor|Equal0~17_combout\);

-- Location: LCFF_X59_Y34_N31
\instance_contmist|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[0]~45_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(0));

-- Location: LCCOMB_X59_Y34_N30
\instance_contmist|Count[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[0]~45_combout\ = \instance_contmist|Count\(0) $ (\Habilita_mistura~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_contmist|Count\(0),
	datad => \Habilita_mistura~combout\,
	combout => \instance_contmist|Count[0]~45_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[0]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(0),
	combout => \Sensor_de_cor~combout\(0));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[4]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(4),
	combout => \Sensor_de_cor~combout\(4));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[6]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(6),
	combout => \Sensor_de_cor~combout\(6));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[7]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(7),
	combout => \Sensor_de_cor~combout\(7));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[8]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(8),
	combout => \Sensor_de_cor~combout\(8));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[11]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(11),
	combout => \Sensor_de_cor~combout\(11));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[13]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(13),
	combout => \Sensor_de_cor~combout\(13));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[14]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(14),
	combout => \Sensor_de_cor~combout\(14));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[15]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(15),
	combout => \Sensor_de_cor~combout\(15));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[18]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(18),
	combout => \Sensor_de_cor~combout\(18));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[19]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(19),
	combout => \Sensor_de_cor~combout\(19));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[24]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(24),
	combout => \Sensor_de_cor~combout\(24));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[28]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(28),
	combout => \Sensor_de_cor~combout\(28));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[29]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(29),
	combout => \Sensor_de_cor~combout\(29));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[31]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(31),
	combout => \Sensor_de_cor~combout\(31));

-- Location: LCCOMB_X59_Y34_N0
\instance_contmist|Count[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[1]~15_combout\ = (\instance_contmist|Count\(0) & (\instance_contmist|Count\(1) $ (VCC))) # (!\instance_contmist|Count\(0) & (\instance_contmist|Count\(1) & VCC))
-- \instance_contmist|Count[1]~16\ = CARRY((\instance_contmist|Count\(0) & \instance_contmist|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_contmist|Count\(0),
	datab => \instance_contmist|Count\(1),
	datad => VCC,
	combout => \instance_contmist|Count[1]~15_combout\,
	cout => \instance_contmist|Count[1]~16\);

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

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Habilita_mistura~I\ : cycloneii_io
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
	padio => ww_Habilita_mistura,
	combout => \Habilita_mistura~combout\);

-- Location: LCFF_X59_Y34_N1
\instance_contmist|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[1]~15_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(1));

-- Location: LCCOMB_X59_Y34_N2
\instance_contmist|Count[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[2]~17_combout\ = (\instance_contmist|Count\(2) & (!\instance_contmist|Count[1]~16\)) # (!\instance_contmist|Count\(2) & ((\instance_contmist|Count[1]~16\) # (GND)))
-- \instance_contmist|Count[2]~18\ = CARRY((!\instance_contmist|Count[1]~16\) # (!\instance_contmist|Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(2),
	datad => VCC,
	cin => \instance_contmist|Count[1]~16\,
	combout => \instance_contmist|Count[2]~17_combout\,
	cout => \instance_contmist|Count[2]~18\);

-- Location: LCFF_X59_Y34_N3
\instance_contmist|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[2]~17_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(2));

-- Location: LCCOMB_X59_Y34_N4
\instance_contmist|Count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[3]~19_combout\ = (\instance_contmist|Count\(3) & (\instance_contmist|Count[2]~18\ $ (GND))) # (!\instance_contmist|Count\(3) & (!\instance_contmist|Count[2]~18\ & VCC))
-- \instance_contmist|Count[3]~20\ = CARRY((\instance_contmist|Count\(3) & !\instance_contmist|Count[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(3),
	datad => VCC,
	cin => \instance_contmist|Count[2]~18\,
	combout => \instance_contmist|Count[3]~19_combout\,
	cout => \instance_contmist|Count[3]~20\);

-- Location: LCFF_X59_Y34_N5
\instance_contmist|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[3]~19_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(3));

-- Location: LCCOMB_X59_Y34_N6
\instance_contmist|Count[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[4]~21_combout\ = (\instance_contmist|Count\(4) & (!\instance_contmist|Count[3]~20\)) # (!\instance_contmist|Count\(4) & ((\instance_contmist|Count[3]~20\) # (GND)))
-- \instance_contmist|Count[4]~22\ = CARRY((!\instance_contmist|Count[3]~20\) # (!\instance_contmist|Count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(4),
	datad => VCC,
	cin => \instance_contmist|Count[3]~20\,
	combout => \instance_contmist|Count[4]~21_combout\,
	cout => \instance_contmist|Count[4]~22\);

-- Location: LCFF_X59_Y34_N7
\instance_contmist|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[4]~21_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(4));

-- Location: LCCOMB_X58_Y34_N12
\instance_compmist|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_compmist|LessThan0~0_combout\ = (!\instance_contmist|Count\(4) & (((!\instance_contmist|Count\(2) & !\instance_contmist|Count\(1))) # (!\instance_contmist|Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_contmist|Count\(3),
	datab => \instance_contmist|Count\(2),
	datac => \instance_contmist|Count\(1),
	datad => \instance_contmist|Count\(4),
	combout => \instance_compmist|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y34_N8
\instance_contmist|Count[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[5]~23_combout\ = (\instance_contmist|Count\(5) & (\instance_contmist|Count[4]~22\ $ (GND))) # (!\instance_contmist|Count\(5) & (!\instance_contmist|Count[4]~22\ & VCC))
-- \instance_contmist|Count[5]~24\ = CARRY((\instance_contmist|Count\(5) & !\instance_contmist|Count[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(5),
	datad => VCC,
	cin => \instance_contmist|Count[4]~22\,
	combout => \instance_contmist|Count[5]~23_combout\,
	cout => \instance_contmist|Count[5]~24\);

-- Location: LCFF_X59_Y34_N9
\instance_contmist|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[5]~23_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(5));

-- Location: LCCOMB_X59_Y34_N10
\instance_contmist|Count[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[6]~25_combout\ = (\instance_contmist|Count\(6) & (!\instance_contmist|Count[5]~24\)) # (!\instance_contmist|Count\(6) & ((\instance_contmist|Count[5]~24\) # (GND)))
-- \instance_contmist|Count[6]~26\ = CARRY((!\instance_contmist|Count[5]~24\) # (!\instance_contmist|Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(6),
	datad => VCC,
	cin => \instance_contmist|Count[5]~24\,
	combout => \instance_contmist|Count[6]~25_combout\,
	cout => \instance_contmist|Count[6]~26\);

-- Location: LCFF_X59_Y34_N11
\instance_contmist|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[6]~25_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(6));

-- Location: LCCOMB_X59_Y34_N14
\instance_contmist|Count[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[8]~29_combout\ = (\instance_contmist|Count\(8) & (!\instance_contmist|Count[7]~28\)) # (!\instance_contmist|Count\(8) & ((\instance_contmist|Count[7]~28\) # (GND)))
-- \instance_contmist|Count[8]~30\ = CARRY((!\instance_contmist|Count[7]~28\) # (!\instance_contmist|Count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(8),
	datad => VCC,
	cin => \instance_contmist|Count[7]~28\,
	combout => \instance_contmist|Count[8]~29_combout\,
	cout => \instance_contmist|Count[8]~30\);

-- Location: LCFF_X59_Y34_N15
\instance_contmist|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[8]~29_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(8));

-- Location: LCCOMB_X59_Y34_N16
\instance_contmist|Count[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[9]~31_combout\ = (\instance_contmist|Count\(9) & (\instance_contmist|Count[8]~30\ $ (GND))) # (!\instance_contmist|Count\(9) & (!\instance_contmist|Count[8]~30\ & VCC))
-- \instance_contmist|Count[9]~32\ = CARRY((\instance_contmist|Count\(9) & !\instance_contmist|Count[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_contmist|Count\(9),
	datad => VCC,
	cin => \instance_contmist|Count[8]~30\,
	combout => \instance_contmist|Count[9]~31_combout\,
	cout => \instance_contmist|Count[9]~32\);

-- Location: LCCOMB_X59_Y34_N18
\instance_contmist|Count[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[10]~33_combout\ = (\instance_contmist|Count\(10) & (!\instance_contmist|Count[9]~32\)) # (!\instance_contmist|Count\(10) & ((\instance_contmist|Count[9]~32\) # (GND)))
-- \instance_contmist|Count[10]~34\ = CARRY((!\instance_contmist|Count[9]~32\) # (!\instance_contmist|Count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(10),
	datad => VCC,
	cin => \instance_contmist|Count[9]~32\,
	combout => \instance_contmist|Count[10]~33_combout\,
	cout => \instance_contmist|Count[10]~34\);

-- Location: LCFF_X59_Y34_N19
\instance_contmist|Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[10]~33_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(10));

-- Location: LCCOMB_X59_Y34_N20
\instance_contmist|Count[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[11]~35_combout\ = (\instance_contmist|Count\(11) & (\instance_contmist|Count[10]~34\ $ (GND))) # (!\instance_contmist|Count\(11) & (!\instance_contmist|Count[10]~34\ & VCC))
-- \instance_contmist|Count[11]~36\ = CARRY((\instance_contmist|Count\(11) & !\instance_contmist|Count[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_contmist|Count\(11),
	datad => VCC,
	cin => \instance_contmist|Count[10]~34\,
	combout => \instance_contmist|Count[11]~35_combout\,
	cout => \instance_contmist|Count[11]~36\);

-- Location: LCFF_X59_Y34_N21
\instance_contmist|Count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[11]~35_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(11));

-- Location: LCFF_X59_Y34_N17
\instance_contmist|Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[9]~31_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(9));

-- Location: LCCOMB_X58_Y34_N0
\instance_compmist|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_compmist|LessThan0~2_combout\ = (!\instance_contmist|Count\(12) & (!\instance_contmist|Count\(11) & (!\instance_contmist|Count\(9) & !\instance_contmist|Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_contmist|Count\(12),
	datab => \instance_contmist|Count\(11),
	datac => \instance_contmist|Count\(9),
	datad => \instance_contmist|Count\(10),
	combout => \instance_compmist|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y34_N22
\instance_contmist|Count[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[12]~37_combout\ = (\instance_contmist|Count\(12) & (!\instance_contmist|Count[11]~36\)) # (!\instance_contmist|Count\(12) & ((\instance_contmist|Count[11]~36\) # (GND)))
-- \instance_contmist|Count[12]~38\ = CARRY((!\instance_contmist|Count[11]~36\) # (!\instance_contmist|Count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(12),
	datad => VCC,
	cin => \instance_contmist|Count[11]~36\,
	combout => \instance_contmist|Count[12]~37_combout\,
	cout => \instance_contmist|Count[12]~38\);

-- Location: LCFF_X59_Y34_N23
\instance_contmist|Count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[12]~37_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(12));

-- Location: LCCOMB_X59_Y34_N24
\instance_contmist|Count[13]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[13]~39_combout\ = (\instance_contmist|Count\(13) & (\instance_contmist|Count[12]~38\ $ (GND))) # (!\instance_contmist|Count\(13) & (!\instance_contmist|Count[12]~38\ & VCC))
-- \instance_contmist|Count[13]~40\ = CARRY((\instance_contmist|Count\(13) & !\instance_contmist|Count[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_contmist|Count\(13),
	datad => VCC,
	cin => \instance_contmist|Count[12]~38\,
	combout => \instance_contmist|Count[13]~39_combout\,
	cout => \instance_contmist|Count[13]~40\);

-- Location: LCCOMB_X59_Y34_N26
\instance_contmist|Count[14]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[14]~41_combout\ = (\instance_contmist|Count\(14) & (!\instance_contmist|Count[13]~40\)) # (!\instance_contmist|Count\(14) & ((\instance_contmist|Count[13]~40\) # (GND)))
-- \instance_contmist|Count[14]~42\ = CARRY((!\instance_contmist|Count[13]~40\) # (!\instance_contmist|Count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(14),
	datad => VCC,
	cin => \instance_contmist|Count[13]~40\,
	combout => \instance_contmist|Count[14]~41_combout\,
	cout => \instance_contmist|Count[14]~42\);

-- Location: LCFF_X59_Y34_N27
\instance_contmist|Count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[14]~41_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(14));

-- Location: LCCOMB_X59_Y34_N28
\instance_contmist|Count[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_contmist|Count[15]~43_combout\ = \instance_contmist|Count[14]~42\ $ (!\instance_contmist|Count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instance_contmist|Count\(15),
	cin => \instance_contmist|Count[14]~42\,
	combout => \instance_contmist|Count[15]~43_combout\);

-- Location: LCFF_X59_Y34_N29
\instance_contmist|Count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[15]~43_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(15));

-- Location: LCFF_X59_Y34_N25
\instance_contmist|Count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_contmist|Count[13]~39_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_mistura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_contmist|Count\(13));

-- Location: LCCOMB_X58_Y34_N14
\instance_compmist|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_compmist|LessThan0~3_combout\ = (!\instance_contmist|Count\(15) & (!\instance_contmist|Count\(14) & !\instance_contmist|Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_contmist|Count\(15),
	datac => \instance_contmist|Count\(14),
	datad => \instance_contmist|Count\(13),
	combout => \instance_compmist|LessThan0~3_combout\);

-- Location: LCCOMB_X58_Y34_N18
\instance_compmist|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_compmist|LessThan0~1_combout\ = (!\instance_contmist|Count\(7) & (!\instance_contmist|Count\(6) & (!\instance_contmist|Count\(8) & !\instance_contmist|Count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_contmist|Count\(7),
	datab => \instance_contmist|Count\(6),
	datac => \instance_contmist|Count\(8),
	datad => \instance_contmist|Count\(5),
	combout => \instance_compmist|LessThan0~1_combout\);

-- Location: LCCOMB_X58_Y34_N28
\instance_compmist|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_compmist|LessThan0~4_combout\ = (\instance_compmist|LessThan0~0_combout\ & (\instance_compmist|LessThan0~2_combout\ & (\instance_compmist|LessThan0~3_combout\ & \instance_compmist|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_compmist|LessThan0~0_combout\,
	datab => \instance_compmist|LessThan0~2_combout\,
	datac => \instance_compmist|LessThan0~3_combout\,
	datad => \instance_compmist|LessThan0~1_combout\,
	combout => \instance_compmist|LessThan0~4_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Habilita_pigmento~I\ : cycloneii_io
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
	padio => ww_Habilita_pigmento,
	combout => \Habilita_pigmento~combout\);

-- Location: LCCOMB_X24_Y35_N0
\instance_ContC|Count[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[0]~29_combout\ = \instance_ContC|Count\(0) $ (\Habilita_pigmento~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_ContC|Count\(0),
	datad => \Habilita_pigmento~combout\,
	combout => \instance_ContC|Count[0]~29_combout\);

-- Location: LCFF_X24_Y35_N1
\instance_ContC|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[0]~29_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(0));

-- Location: LCCOMB_X24_Y35_N2
\instance_ContC|Count[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[1]~15_combout\ = (\instance_ContC|Count\(1) & (\instance_ContC|Count\(0) $ (VCC))) # (!\instance_ContC|Count\(1) & (\instance_ContC|Count\(0) & VCC))
-- \instance_ContC|Count[1]~16\ = CARRY((\instance_ContC|Count\(1) & \instance_ContC|Count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(1),
	datab => \instance_ContC|Count\(0),
	datad => VCC,
	combout => \instance_ContC|Count[1]~15_combout\,
	cout => \instance_ContC|Count[1]~16\);

-- Location: LCCOMB_X24_Y35_N4
\instance_ContC|Count[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[2]~17_combout\ = (\instance_ContC|Count\(2) & (!\instance_ContC|Count[1]~16\)) # (!\instance_ContC|Count\(2) & ((\instance_ContC|Count[1]~16\) # (GND)))
-- \instance_ContC|Count[2]~18\ = CARRY((!\instance_ContC|Count[1]~16\) # (!\instance_ContC|Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(2),
	datad => VCC,
	cin => \instance_ContC|Count[1]~16\,
	combout => \instance_ContC|Count[2]~17_combout\,
	cout => \instance_ContC|Count[2]~18\);

-- Location: LCFF_X24_Y35_N5
\instance_ContC|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[2]~17_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(2));

-- Location: LCCOMB_X24_Y35_N6
\instance_ContC|Count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[3]~19_combout\ = (\instance_ContC|Count\(3) & (\instance_ContC|Count[2]~18\ $ (GND))) # (!\instance_ContC|Count\(3) & (!\instance_ContC|Count[2]~18\ & VCC))
-- \instance_ContC|Count[3]~20\ = CARRY((\instance_ContC|Count\(3) & !\instance_ContC|Count[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(3),
	datad => VCC,
	cin => \instance_ContC|Count[2]~18\,
	combout => \instance_ContC|Count[3]~19_combout\,
	cout => \instance_ContC|Count[3]~20\);

-- Location: LCCOMB_X24_Y35_N8
\instance_ContC|Count[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[4]~21_combout\ = (\instance_ContC|Count\(4) & (!\instance_ContC|Count[3]~20\)) # (!\instance_ContC|Count\(4) & ((\instance_ContC|Count[3]~20\) # (GND)))
-- \instance_ContC|Count[4]~22\ = CARRY((!\instance_ContC|Count[3]~20\) # (!\instance_ContC|Count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(4),
	datad => VCC,
	cin => \instance_ContC|Count[3]~20\,
	combout => \instance_ContC|Count[4]~21_combout\,
	cout => \instance_ContC|Count[4]~22\);

-- Location: LCFF_X24_Y35_N9
\instance_ContC|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[4]~21_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(4));

-- Location: LCCOMB_X24_Y35_N10
\instance_ContC|Count[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[5]~23_combout\ = (\instance_ContC|Count\(5) & (\instance_ContC|Count[4]~22\ $ (GND))) # (!\instance_ContC|Count\(5) & (!\instance_ContC|Count[4]~22\ & VCC))
-- \instance_ContC|Count[5]~24\ = CARRY((\instance_ContC|Count\(5) & !\instance_ContC|Count[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(5),
	datad => VCC,
	cin => \instance_ContC|Count[4]~22\,
	combout => \instance_ContC|Count[5]~23_combout\,
	cout => \instance_ContC|Count[5]~24\);

-- Location: LCCOMB_X24_Y35_N12
\instance_ContC|Count[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[6]~25_combout\ = (\instance_ContC|Count\(6) & (!\instance_ContC|Count[5]~24\)) # (!\instance_ContC|Count\(6) & ((\instance_ContC|Count[5]~24\) # (GND)))
-- \instance_ContC|Count[6]~26\ = CARRY((!\instance_ContC|Count[5]~24\) # (!\instance_ContC|Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(6),
	datad => VCC,
	cin => \instance_ContC|Count[5]~24\,
	combout => \instance_ContC|Count[6]~25_combout\,
	cout => \instance_ContC|Count[6]~26\);

-- Location: LCFF_X24_Y35_N13
\instance_ContC|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[6]~25_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(6));

-- Location: LCCOMB_X24_Y35_N14
\instance_ContC|Count[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[7]~27_combout\ = (\instance_ContC|Count\(7) & (\instance_ContC|Count[6]~26\ $ (GND))) # (!\instance_ContC|Count\(7) & (!\instance_ContC|Count[6]~26\ & VCC))
-- \instance_ContC|Count[7]~28\ = CARRY((\instance_ContC|Count\(7) & !\instance_ContC|Count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(7),
	datad => VCC,
	cin => \instance_ContC|Count[6]~26\,
	combout => \instance_ContC|Count[7]~27_combout\,
	cout => \instance_ContC|Count[7]~28\);

-- Location: LCFF_X24_Y35_N15
\instance_ContC|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[7]~27_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(7));

-- Location: LCCOMB_X24_Y35_N16
\instance_ContC|Count[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[8]~30_combout\ = (\instance_ContC|Count\(8) & (!\instance_ContC|Count[7]~28\)) # (!\instance_ContC|Count\(8) & ((\instance_ContC|Count[7]~28\) # (GND)))
-- \instance_ContC|Count[8]~31\ = CARRY((!\instance_ContC|Count[7]~28\) # (!\instance_ContC|Count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(8),
	datad => VCC,
	cin => \instance_ContC|Count[7]~28\,
	combout => \instance_ContC|Count[8]~30_combout\,
	cout => \instance_ContC|Count[8]~31\);

-- Location: LCFF_X24_Y35_N17
\instance_ContC|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[8]~30_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(8));

-- Location: LCCOMB_X24_Y35_N18
\instance_ContC|Count[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[9]~32_combout\ = (\instance_ContC|Count\(9) & (\instance_ContC|Count[8]~31\ $ (GND))) # (!\instance_ContC|Count\(9) & (!\instance_ContC|Count[8]~31\ & VCC))
-- \instance_ContC|Count[9]~33\ = CARRY((\instance_ContC|Count\(9) & !\instance_ContC|Count[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(9),
	datad => VCC,
	cin => \instance_ContC|Count[8]~31\,
	combout => \instance_ContC|Count[9]~32_combout\,
	cout => \instance_ContC|Count[9]~33\);

-- Location: LCFF_X24_Y35_N19
\instance_ContC|Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[9]~32_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(9));

-- Location: LCCOMB_X24_Y35_N20
\instance_ContC|Count[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[10]~34_combout\ = (\instance_ContC|Count\(10) & (!\instance_ContC|Count[9]~33\)) # (!\instance_ContC|Count\(10) & ((\instance_ContC|Count[9]~33\) # (GND)))
-- \instance_ContC|Count[10]~35\ = CARRY((!\instance_ContC|Count[9]~33\) # (!\instance_ContC|Count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(10),
	datad => VCC,
	cin => \instance_ContC|Count[9]~33\,
	combout => \instance_ContC|Count[10]~34_combout\,
	cout => \instance_ContC|Count[10]~35\);

-- Location: LCFF_X24_Y35_N21
\instance_ContC|Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[10]~34_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(10));

-- Location: LCCOMB_X24_Y35_N22
\instance_ContC|Count[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[11]~36_combout\ = (\instance_ContC|Count\(11) & (\instance_ContC|Count[10]~35\ $ (GND))) # (!\instance_ContC|Count\(11) & (!\instance_ContC|Count[10]~35\ & VCC))
-- \instance_ContC|Count[11]~37\ = CARRY((\instance_ContC|Count\(11) & !\instance_ContC|Count[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(11),
	datad => VCC,
	cin => \instance_ContC|Count[10]~35\,
	combout => \instance_ContC|Count[11]~36_combout\,
	cout => \instance_ContC|Count[11]~37\);

-- Location: LCFF_X24_Y35_N23
\instance_ContC|Count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[11]~36_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(11));

-- Location: LCCOMB_X24_Y35_N24
\instance_ContC|Count[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[12]~38_combout\ = (\instance_ContC|Count\(12) & (!\instance_ContC|Count[11]~37\)) # (!\instance_ContC|Count\(12) & ((\instance_ContC|Count[11]~37\) # (GND)))
-- \instance_ContC|Count[12]~39\ = CARRY((!\instance_ContC|Count[11]~37\) # (!\instance_ContC|Count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(12),
	datad => VCC,
	cin => \instance_ContC|Count[11]~37\,
	combout => \instance_ContC|Count[12]~38_combout\,
	cout => \instance_ContC|Count[12]~39\);

-- Location: LCFF_X24_Y35_N25
\instance_ContC|Count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[12]~38_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(12));

-- Location: LCCOMB_X24_Y35_N26
\instance_ContC|Count[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_ContC|Count[13]~40_combout\ = (\instance_ContC|Count\(13) & (\instance_ContC|Count[12]~39\ $ (GND))) # (!\instance_ContC|Count\(13) & (!\instance_ContC|Count[12]~39\ & VCC))
-- \instance_ContC|Count[13]~41\ = CARRY((\instance_ContC|Count\(13) & !\instance_ContC|Count[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_ContC|Count\(13),
	datad => VCC,
	cin => \instance_ContC|Count[12]~39\,
	combout => \instance_ContC|Count[13]~40_combout\,
	cout => \instance_ContC|Count[13]~41\);

-- Location: LCFF_X24_Y35_N27
\instance_ContC|Count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[13]~40_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(13));

-- Location: LCFF_X24_Y35_N29
\instance_ContC|Count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[14]~42_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(14));

-- Location: LCCOMB_X23_Y35_N30
\instance_CompC|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~17_combout\ = (!\instance_ContC|Count\(15) & (!\instance_ContC|Count\(14) & (!\instance_ContC|Count\(13) & !\instance_ContC|Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(15),
	datab => \instance_ContC|Count\(14),
	datac => \instance_ContC|Count\(13),
	datad => \instance_ContC|Count\(12),
	combout => \instance_CompC|LessThan1~17_combout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[31]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(31),
	combout => \Codigo_de_cor~combout\(31));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Habilita_escrita~I\ : cycloneii_io
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
	padio => ww_Habilita_escrita,
	combout => \Habilita_escrita~combout\);

-- Location: LCCOMB_X4_Y35_N4
\instance_RegC|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_RegC|process_0~0_combout\ = (!\Reset~combout\ & \Habilita_escrita~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~combout\,
	datad => \Habilita_escrita~combout\,
	combout => \instance_RegC|process_0~0_combout\);

-- Location: LCFF_X8_Y35_N15
\instance_RegC|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(31),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegC|Q\(7));

-- Location: LCFF_X24_Y35_N11
\instance_ContC|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[5]~23_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(5));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[28]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(28),
	combout => \Codigo_de_cor~combout\(28));

-- Location: LCFF_X8_Y35_N9
\instance_RegC|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(28),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegC|Q\(4));

-- Location: LCFF_X24_Y35_N7
\instance_ContC|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[3]~19_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(3));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[26]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(26),
	combout => \Codigo_de_cor~combout\(26));

-- Location: LCFF_X8_Y35_N29
\instance_RegC|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(26),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegC|Q\(2));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[25]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(25),
	combout => \Codigo_de_cor~combout\(25));

-- Location: LCCOMB_X8_Y35_N18
\instance_RegC|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_RegC|Q[1]~feeder_combout\ = \Codigo_de_cor~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(25),
	combout => \instance_RegC|Q[1]~feeder_combout\);

-- Location: LCFF_X8_Y35_N19
\instance_RegC|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_RegC|Q[1]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegC|Q\(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[24]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(24),
	combout => \Codigo_de_cor~combout\(24));

-- Location: LCFF_X8_Y35_N17
\instance_RegC|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(24),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegC|Q\(0));

-- Location: LCCOMB_X8_Y35_N0
\instance_CompC|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~1_cout\ = CARRY((\instance_ContC|Count\(0) & !\instance_RegC|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(0),
	datab => \instance_RegC|Q\(0),
	datad => VCC,
	cout => \instance_CompC|LessThan1~1_cout\);

-- Location: LCCOMB_X8_Y35_N2
\instance_CompC|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~3_cout\ = CARRY((\instance_ContC|Count\(1) & (\instance_RegC|Q\(1) & !\instance_CompC|LessThan1~1_cout\)) # (!\instance_ContC|Count\(1) & ((\instance_RegC|Q\(1)) # (!\instance_CompC|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(1),
	datab => \instance_RegC|Q\(1),
	datad => VCC,
	cin => \instance_CompC|LessThan1~1_cout\,
	cout => \instance_CompC|LessThan1~3_cout\);

-- Location: LCCOMB_X8_Y35_N4
\instance_CompC|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~5_cout\ = CARRY((\instance_ContC|Count\(2) & ((!\instance_CompC|LessThan1~3_cout\) # (!\instance_RegC|Q\(2)))) # (!\instance_ContC|Count\(2) & (!\instance_RegC|Q\(2) & !\instance_CompC|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(2),
	datab => \instance_RegC|Q\(2),
	datad => VCC,
	cin => \instance_CompC|LessThan1~3_cout\,
	cout => \instance_CompC|LessThan1~5_cout\);

-- Location: LCCOMB_X8_Y35_N6
\instance_CompC|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~7_cout\ = CARRY((\instance_RegC|Q\(3) & ((!\instance_CompC|LessThan1~5_cout\) # (!\instance_ContC|Count\(3)))) # (!\instance_RegC|Q\(3) & (!\instance_ContC|Count\(3) & !\instance_CompC|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegC|Q\(3),
	datab => \instance_ContC|Count\(3),
	datad => VCC,
	cin => \instance_CompC|LessThan1~5_cout\,
	cout => \instance_CompC|LessThan1~7_cout\);

-- Location: LCCOMB_X8_Y35_N8
\instance_CompC|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~9_cout\ = CARRY((\instance_ContC|Count\(4) & ((!\instance_CompC|LessThan1~7_cout\) # (!\instance_RegC|Q\(4)))) # (!\instance_ContC|Count\(4) & (!\instance_RegC|Q\(4) & !\instance_CompC|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(4),
	datab => \instance_RegC|Q\(4),
	datad => VCC,
	cin => \instance_CompC|LessThan1~7_cout\,
	cout => \instance_CompC|LessThan1~9_cout\);

-- Location: LCCOMB_X8_Y35_N10
\instance_CompC|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~11_cout\ = CARRY((\instance_RegC|Q\(5) & ((!\instance_CompC|LessThan1~9_cout\) # (!\instance_ContC|Count\(5)))) # (!\instance_RegC|Q\(5) & (!\instance_ContC|Count\(5) & !\instance_CompC|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegC|Q\(5),
	datab => \instance_ContC|Count\(5),
	datad => VCC,
	cin => \instance_CompC|LessThan1~9_cout\,
	cout => \instance_CompC|LessThan1~11_cout\);

-- Location: LCCOMB_X8_Y35_N12
\instance_CompC|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~13_cout\ = CARRY((\instance_RegC|Q\(6) & (\instance_ContC|Count\(6) & !\instance_CompC|LessThan1~11_cout\)) # (!\instance_RegC|Q\(6) & ((\instance_ContC|Count\(6)) # (!\instance_CompC|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegC|Q\(6),
	datab => \instance_ContC|Count\(6),
	datad => VCC,
	cin => \instance_CompC|LessThan1~11_cout\,
	cout => \instance_CompC|LessThan1~13_cout\);

-- Location: LCCOMB_X8_Y35_N14
\instance_CompC|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~14_combout\ = (\instance_ContC|Count\(7) & ((\instance_CompC|LessThan1~13_cout\) # (!\instance_RegC|Q\(7)))) # (!\instance_ContC|Count\(7) & (!\instance_RegC|Q\(7) & \instance_CompC|LessThan1~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(7),
	datab => \instance_RegC|Q\(7),
	cin => \instance_CompC|LessThan1~13_cout\,
	combout => \instance_CompC|LessThan1~14_combout\);

-- Location: LCCOMB_X23_Y35_N4
\instance_CompC|LessThan1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~16_combout\ = (!\instance_ContC|Count\(11) & (!\instance_ContC|Count\(10) & (!\instance_ContC|Count\(8) & !\instance_ContC|Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(11),
	datab => \instance_ContC|Count\(10),
	datac => \instance_ContC|Count\(8),
	datad => \instance_ContC|Count\(9),
	combout => \instance_CompC|LessThan1~16_combout\);

-- Location: LCCOMB_X22_Y35_N0
\instance_CompC|LessThan1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompC|LessThan1~18_combout\ = ((\instance_CompC|LessThan1~14_combout\) # (!\instance_CompC|LessThan1~16_combout\)) # (!\instance_CompC|LessThan1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_CompC|LessThan1~17_combout\,
	datac => \instance_CompC|LessThan1~14_combout\,
	datad => \instance_CompC|LessThan1~16_combout\,
	combout => \instance_CompC|LessThan1~18_combout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[23]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(23),
	combout => \Codigo_de_cor~combout\(23));

-- Location: LCFF_X8_Y35_N5
\instance_RegM|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(23),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegM|Q\(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[21]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(21),
	combout => \Codigo_de_cor~combout\(21));

-- Location: LCFF_X15_Y35_N23
\instance_RegM|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(21),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegM|Q\(5));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[19]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(19),
	combout => \Codigo_de_cor~combout\(19));

-- Location: LCFF_X15_Y35_N19
\instance_RegM|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(19),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegM|Q\(3));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[18]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(18),
	combout => \Codigo_de_cor~combout\(18));

-- Location: LCFF_X15_Y35_N9
\instance_RegM|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(18),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegM|Q\(2));

-- Location: LCFF_X24_Y35_N3
\instance_ContC|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_ContC|Count[1]~15_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Habilita_pigmento~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_ContC|Count\(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[16]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(16),
	combout => \Codigo_de_cor~combout\(16));

-- Location: LCCOMB_X15_Y35_N0
\instance_RegM|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_RegM|Q[0]~feeder_combout\ = \Codigo_de_cor~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(16),
	combout => \instance_RegM|Q[0]~feeder_combout\);

-- Location: LCFF_X15_Y35_N1
\instance_RegM|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_RegM|Q[0]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegM|Q\(0));

-- Location: LCCOMB_X15_Y35_N12
\instance_CompM|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompM|LessThan1~1_cout\ = CARRY((\instance_ContC|Count\(0) & !\instance_RegM|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(0),
	datab => \instance_RegM|Q\(0),
	datad => VCC,
	cout => \instance_CompM|LessThan1~1_cout\);

-- Location: LCCOMB_X15_Y35_N14
\instance_CompM|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompM|LessThan1~3_cout\ = CARRY((\instance_RegM|Q\(1) & ((!\instance_CompM|LessThan1~1_cout\) # (!\instance_ContC|Count\(1)))) # (!\instance_RegM|Q\(1) & (!\instance_ContC|Count\(1) & !\instance_CompM|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegM|Q\(1),
	datab => \instance_ContC|Count\(1),
	datad => VCC,
	cin => \instance_CompM|LessThan1~1_cout\,
	cout => \instance_CompM|LessThan1~3_cout\);

-- Location: LCCOMB_X15_Y35_N16
\instance_CompM|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompM|LessThan1~5_cout\ = CARRY((\instance_ContC|Count\(2) & ((!\instance_CompM|LessThan1~3_cout\) # (!\instance_RegM|Q\(2)))) # (!\instance_ContC|Count\(2) & (!\instance_RegM|Q\(2) & !\instance_CompM|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(2),
	datab => \instance_RegM|Q\(2),
	datad => VCC,
	cin => \instance_CompM|LessThan1~3_cout\,
	cout => \instance_CompM|LessThan1~5_cout\);

-- Location: LCCOMB_X15_Y35_N18
\instance_CompM|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompM|LessThan1~7_cout\ = CARRY((\instance_ContC|Count\(3) & (\instance_RegM|Q\(3) & !\instance_CompM|LessThan1~5_cout\)) # (!\instance_ContC|Count\(3) & ((\instance_RegM|Q\(3)) # (!\instance_CompM|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(3),
	datab => \instance_RegM|Q\(3),
	datad => VCC,
	cin => \instance_CompM|LessThan1~5_cout\,
	cout => \instance_CompM|LessThan1~7_cout\);

-- Location: LCCOMB_X15_Y35_N20
\instance_CompM|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompM|LessThan1~9_cout\ = CARRY((\instance_RegM|Q\(4) & (\instance_ContC|Count\(4) & !\instance_CompM|LessThan1~7_cout\)) # (!\instance_RegM|Q\(4) & ((\instance_ContC|Count\(4)) # (!\instance_CompM|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegM|Q\(4),
	datab => \instance_ContC|Count\(4),
	datad => VCC,
	cin => \instance_CompM|LessThan1~7_cout\,
	cout => \instance_CompM|LessThan1~9_cout\);

-- Location: LCCOMB_X15_Y35_N22
\instance_CompM|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompM|LessThan1~11_cout\ = CARRY((\instance_ContC|Count\(5) & (\instance_RegM|Q\(5) & !\instance_CompM|LessThan1~9_cout\)) # (!\instance_ContC|Count\(5) & ((\instance_RegM|Q\(5)) # (!\instance_CompM|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(5),
	datab => \instance_RegM|Q\(5),
	datad => VCC,
	cin => \instance_CompM|LessThan1~9_cout\,
	cout => \instance_CompM|LessThan1~11_cout\);

-- Location: LCCOMB_X15_Y35_N24
\instance_CompM|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompM|LessThan1~13_cout\ = CARRY((\instance_RegM|Q\(6) & (\instance_ContC|Count\(6) & !\instance_CompM|LessThan1~11_cout\)) # (!\instance_RegM|Q\(6) & ((\instance_ContC|Count\(6)) # (!\instance_CompM|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegM|Q\(6),
	datab => \instance_ContC|Count\(6),
	datad => VCC,
	cin => \instance_CompM|LessThan1~11_cout\,
	cout => \instance_CompM|LessThan1~13_cout\);

-- Location: LCCOMB_X15_Y35_N26
\instance_CompM|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompM|LessThan1~14_combout\ = (\instance_ContC|Count\(7) & ((\instance_CompM|LessThan1~13_cout\) # (!\instance_RegM|Q\(7)))) # (!\instance_ContC|Count\(7) & (\instance_CompM|LessThan1~13_cout\ & !\instance_RegM|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(7),
	datad => \instance_RegM|Q\(7),
	cin => \instance_CompM|LessThan1~13_cout\,
	combout => \instance_CompM|LessThan1~14_combout\);

-- Location: LCCOMB_X22_Y35_N26
\instance_CompM|LessThan1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompM|LessThan1~16_combout\ = ((\instance_CompM|LessThan1~14_combout\) # (!\instance_CompC|LessThan1~16_combout\)) # (!\instance_CompC|LessThan1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_CompC|LessThan1~17_combout\,
	datac => \instance_CompM|LessThan1~14_combout\,
	datad => \instance_CompC|LessThan1~16_combout\,
	combout => \instance_CompM|LessThan1~16_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[14]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(14),
	combout => \Codigo_de_cor~combout\(14));

-- Location: LCFF_X32_Y35_N15
\instance_RegY|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegY|Q\(6));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[13]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(13),
	combout => \Codigo_de_cor~combout\(13));

-- Location: LCCOMB_X32_Y35_N0
\instance_RegY|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_RegY|Q[5]~feeder_combout\ = \Codigo_de_cor~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(13),
	combout => \instance_RegY|Q[5]~feeder_combout\);

-- Location: LCFF_X32_Y35_N1
\instance_RegY|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_RegY|Q[5]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegY|Q\(5));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[10]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(10),
	combout => \Codigo_de_cor~combout\(10));

-- Location: LCCOMB_X32_Y35_N18
\instance_RegY|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_RegY|Q[2]~feeder_combout\ = \Codigo_de_cor~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(10),
	combout => \instance_RegY|Q[2]~feeder_combout\);

-- Location: LCFF_X32_Y35_N19
\instance_RegY|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_RegY|Q[2]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegY|Q\(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[9]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(9),
	combout => \Codigo_de_cor~combout\(9));

-- Location: LCFF_X32_Y35_N29
\instance_RegY|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegY|Q\(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[8]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(8),
	combout => \Codigo_de_cor~combout\(8));

-- Location: LCCOMB_X32_Y35_N22
\instance_RegY|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_RegY|Q[0]~feeder_combout\ = \Codigo_de_cor~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(8),
	combout => \instance_RegY|Q[0]~feeder_combout\);

-- Location: LCFF_X32_Y35_N23
\instance_RegY|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_RegY|Q[0]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegY|Q\(0));

-- Location: LCCOMB_X32_Y35_N2
\instance_CompY|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompY|LessThan1~1_cout\ = CARRY((\instance_ContC|Count\(0) & !\instance_RegY|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(0),
	datab => \instance_RegY|Q\(0),
	datad => VCC,
	cout => \instance_CompY|LessThan1~1_cout\);

-- Location: LCCOMB_X32_Y35_N4
\instance_CompY|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompY|LessThan1~3_cout\ = CARRY((\instance_ContC|Count\(1) & (\instance_RegY|Q\(1) & !\instance_CompY|LessThan1~1_cout\)) # (!\instance_ContC|Count\(1) & ((\instance_RegY|Q\(1)) # (!\instance_CompY|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(1),
	datab => \instance_RegY|Q\(1),
	datad => VCC,
	cin => \instance_CompY|LessThan1~1_cout\,
	cout => \instance_CompY|LessThan1~3_cout\);

-- Location: LCCOMB_X32_Y35_N6
\instance_CompY|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompY|LessThan1~5_cout\ = CARRY((\instance_ContC|Count\(2) & ((!\instance_CompY|LessThan1~3_cout\) # (!\instance_RegY|Q\(2)))) # (!\instance_ContC|Count\(2) & (!\instance_RegY|Q\(2) & !\instance_CompY|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(2),
	datab => \instance_RegY|Q\(2),
	datad => VCC,
	cin => \instance_CompY|LessThan1~3_cout\,
	cout => \instance_CompY|LessThan1~5_cout\);

-- Location: LCCOMB_X32_Y35_N8
\instance_CompY|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompY|LessThan1~7_cout\ = CARRY((\instance_RegY|Q\(3) & ((!\instance_CompY|LessThan1~5_cout\) # (!\instance_ContC|Count\(3)))) # (!\instance_RegY|Q\(3) & (!\instance_ContC|Count\(3) & !\instance_CompY|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegY|Q\(3),
	datab => \instance_ContC|Count\(3),
	datad => VCC,
	cin => \instance_CompY|LessThan1~5_cout\,
	cout => \instance_CompY|LessThan1~7_cout\);

-- Location: LCCOMB_X32_Y35_N10
\instance_CompY|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompY|LessThan1~9_cout\ = CARRY((\instance_RegY|Q\(4) & (\instance_ContC|Count\(4) & !\instance_CompY|LessThan1~7_cout\)) # (!\instance_RegY|Q\(4) & ((\instance_ContC|Count\(4)) # (!\instance_CompY|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegY|Q\(4),
	datab => \instance_ContC|Count\(4),
	datad => VCC,
	cin => \instance_CompY|LessThan1~7_cout\,
	cout => \instance_CompY|LessThan1~9_cout\);

-- Location: LCCOMB_X32_Y35_N12
\instance_CompY|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompY|LessThan1~11_cout\ = CARRY((\instance_ContC|Count\(5) & (\instance_RegY|Q\(5) & !\instance_CompY|LessThan1~9_cout\)) # (!\instance_ContC|Count\(5) & ((\instance_RegY|Q\(5)) # (!\instance_CompY|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(5),
	datab => \instance_RegY|Q\(5),
	datad => VCC,
	cin => \instance_CompY|LessThan1~9_cout\,
	cout => \instance_CompY|LessThan1~11_cout\);

-- Location: LCCOMB_X32_Y35_N14
\instance_CompY|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompY|LessThan1~13_cout\ = CARRY((\instance_ContC|Count\(6) & ((!\instance_CompY|LessThan1~11_cout\) # (!\instance_RegY|Q\(6)))) # (!\instance_ContC|Count\(6) & (!\instance_RegY|Q\(6) & !\instance_CompY|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(6),
	datab => \instance_RegY|Q\(6),
	datad => VCC,
	cin => \instance_CompY|LessThan1~11_cout\,
	cout => \instance_CompY|LessThan1~13_cout\);

-- Location: LCCOMB_X32_Y35_N16
\instance_CompY|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompY|LessThan1~14_combout\ = (\instance_RegY|Q\(7) & (\instance_ContC|Count\(7) & \instance_CompY|LessThan1~13_cout\)) # (!\instance_RegY|Q\(7) & ((\instance_ContC|Count\(7)) # (\instance_CompY|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegY|Q\(7),
	datab => \instance_ContC|Count\(7),
	cin => \instance_CompY|LessThan1~13_cout\,
	combout => \instance_CompY|LessThan1~14_combout\);

-- Location: LCCOMB_X23_Y35_N0
\instance_CompY|LessThan1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompY|LessThan1~16_combout\ = ((\instance_CompY|LessThan1~14_combout\) # (!\instance_CompC|LessThan1~16_combout\)) # (!\instance_CompC|LessThan1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_CompC|LessThan1~17_combout\,
	datac => \instance_CompC|LessThan1~16_combout\,
	datad => \instance_CompY|LessThan1~14_combout\,
	combout => \instance_CompY|LessThan1~16_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[7]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(7),
	combout => \Codigo_de_cor~combout\(7));

-- Location: LCFF_X32_Y35_N5
\instance_RegK|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegK|Q\(7));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[4]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(4),
	combout => \Codigo_de_cor~combout\(4));

-- Location: LCFF_X31_Y35_N19
\instance_RegK|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegK|Q\(4));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[2]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(2),
	combout => \Codigo_de_cor~combout\(2));

-- Location: LCFF_X31_Y35_N15
\instance_RegK|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegK|Q\(2));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[1]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(1),
	combout => \Codigo_de_cor~combout\(1));

-- Location: LCFF_X31_Y35_N1
\instance_RegK|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegK|Q\(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[0]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(0),
	combout => \Codigo_de_cor~combout\(0));

-- Location: LCFF_X31_Y35_N27
\instance_RegK|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegK|Q\(0));

-- Location: LCCOMB_X31_Y35_N10
\instance_CompK|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompK|LessThan1~1_cout\ = CARRY((\instance_ContC|Count\(0) & !\instance_RegK|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(0),
	datab => \instance_RegK|Q\(0),
	datad => VCC,
	cout => \instance_CompK|LessThan1~1_cout\);

-- Location: LCCOMB_X31_Y35_N12
\instance_CompK|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompK|LessThan1~3_cout\ = CARRY((\instance_ContC|Count\(1) & (\instance_RegK|Q\(1) & !\instance_CompK|LessThan1~1_cout\)) # (!\instance_ContC|Count\(1) & ((\instance_RegK|Q\(1)) # (!\instance_CompK|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(1),
	datab => \instance_RegK|Q\(1),
	datad => VCC,
	cin => \instance_CompK|LessThan1~1_cout\,
	cout => \instance_CompK|LessThan1~3_cout\);

-- Location: LCCOMB_X31_Y35_N14
\instance_CompK|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompK|LessThan1~5_cout\ = CARRY((\instance_ContC|Count\(2) & ((!\instance_CompK|LessThan1~3_cout\) # (!\instance_RegK|Q\(2)))) # (!\instance_ContC|Count\(2) & (!\instance_RegK|Q\(2) & !\instance_CompK|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(2),
	datab => \instance_RegK|Q\(2),
	datad => VCC,
	cin => \instance_CompK|LessThan1~3_cout\,
	cout => \instance_CompK|LessThan1~5_cout\);

-- Location: LCCOMB_X31_Y35_N16
\instance_CompK|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompK|LessThan1~7_cout\ = CARRY((\instance_RegK|Q\(3) & ((!\instance_CompK|LessThan1~5_cout\) # (!\instance_ContC|Count\(3)))) # (!\instance_RegK|Q\(3) & (!\instance_ContC|Count\(3) & !\instance_CompK|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegK|Q\(3),
	datab => \instance_ContC|Count\(3),
	datad => VCC,
	cin => \instance_CompK|LessThan1~5_cout\,
	cout => \instance_CompK|LessThan1~7_cout\);

-- Location: LCCOMB_X31_Y35_N18
\instance_CompK|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompK|LessThan1~9_cout\ = CARRY((\instance_ContC|Count\(4) & ((!\instance_CompK|LessThan1~7_cout\) # (!\instance_RegK|Q\(4)))) # (!\instance_ContC|Count\(4) & (!\instance_RegK|Q\(4) & !\instance_CompK|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(4),
	datab => \instance_RegK|Q\(4),
	datad => VCC,
	cin => \instance_CompK|LessThan1~7_cout\,
	cout => \instance_CompK|LessThan1~9_cout\);

-- Location: LCCOMB_X31_Y35_N20
\instance_CompK|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompK|LessThan1~11_cout\ = CARRY((\instance_RegK|Q\(5) & ((!\instance_CompK|LessThan1~9_cout\) # (!\instance_ContC|Count\(5)))) # (!\instance_RegK|Q\(5) & (!\instance_ContC|Count\(5) & !\instance_CompK|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegK|Q\(5),
	datab => \instance_ContC|Count\(5),
	datad => VCC,
	cin => \instance_CompK|LessThan1~9_cout\,
	cout => \instance_CompK|LessThan1~11_cout\);

-- Location: LCCOMB_X31_Y35_N22
\instance_CompK|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompK|LessThan1~13_cout\ = CARRY((\instance_RegK|Q\(6) & (\instance_ContC|Count\(6) & !\instance_CompK|LessThan1~11_cout\)) # (!\instance_RegK|Q\(6) & ((\instance_ContC|Count\(6)) # (!\instance_CompK|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegK|Q\(6),
	datab => \instance_ContC|Count\(6),
	datad => VCC,
	cin => \instance_CompK|LessThan1~11_cout\,
	cout => \instance_CompK|LessThan1~13_cout\);

-- Location: LCCOMB_X31_Y35_N24
\instance_CompK|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompK|LessThan1~14_combout\ = (\instance_ContC|Count\(7) & ((\instance_CompK|LessThan1~13_cout\) # (!\instance_RegK|Q\(7)))) # (!\instance_ContC|Count\(7) & (\instance_CompK|LessThan1~13_cout\ & !\instance_RegK|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_ContC|Count\(7),
	datad => \instance_RegK|Q\(7),
	cin => \instance_CompK|LessThan1~13_cout\,
	combout => \instance_CompK|LessThan1~14_combout\);

-- Location: LCCOMB_X23_Y35_N2
\instance_CompK|LessThan1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CompK|LessThan1~16_combout\ = ((\instance_CompK|LessThan1~14_combout\) # (!\instance_CompC|LessThan1~16_combout\)) # (!\instance_CompC|LessThan1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_CompC|LessThan1~17_combout\,
	datac => \instance_CompC|LessThan1~16_combout\,
	datad => \instance_CompK|LessThan1~14_combout\,
	combout => \instance_CompK|LessThan1~16_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[5]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(5),
	combout => \Codigo_de_cor~combout\(5));

-- Location: LCCOMB_X31_Y35_N4
\instance_CodValid|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~8_combout\ = (\Codigo_de_cor~combout\(6) & (\Codigo_de_cor~combout\(5) & \Codigo_de_cor~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(6),
	datac => \Codigo_de_cor~combout\(5),
	datad => \Codigo_de_cor~combout\(10),
	combout => \instance_CodValid|LessThan0~8_combout\);

-- Location: LCCOMB_X32_Y35_N30
\instance_CodValid|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~7_combout\ = (\Codigo_de_cor~combout\(10) & ((\Codigo_de_cor~combout\(7)) # ((\Codigo_de_cor~combout\(9)) # (\Codigo_de_cor~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(7),
	datab => \Codigo_de_cor~combout\(10),
	datac => \Codigo_de_cor~combout\(9),
	datad => \Codigo_de_cor~combout\(8),
	combout => \instance_CodValid|LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y35_N8
\instance_CodValid|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~10_combout\ = (\instance_CodValid|LessThan0~7_combout\) # ((\instance_CodValid|LessThan0~8_combout\ & ((\instance_CodValid|LessThan0~9_combout\) # (\Codigo_de_cor~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_CodValid|LessThan0~9_combout\,
	datab => \instance_CodValid|LessThan0~8_combout\,
	datac => \Codigo_de_cor~combout\(4),
	datad => \instance_CodValid|LessThan0~7_combout\,
	combout => \instance_CodValid|LessThan0~10_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[11]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(11),
	combout => \Codigo_de_cor~combout\(11));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[12]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(12),
	combout => \Codigo_de_cor~combout\(12));

-- Location: LCCOMB_X32_Y35_N20
\instance_CodValid|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~6_combout\ = (\Codigo_de_cor~combout\(11)) # (\Codigo_de_cor~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Codigo_de_cor~combout\(11),
	datad => \Codigo_de_cor~combout\(12),
	combout => \instance_CodValid|LessThan0~6_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[15]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(15),
	combout => \Codigo_de_cor~combout\(15));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[17]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(17),
	combout => \Codigo_de_cor~combout\(17));

-- Location: LCCOMB_X20_Y35_N12
\instance_CodValid|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~4_combout\ = (\instance_CodValid|LessThan0~3_combout\ & ((\Codigo_de_cor~combout\(16)) # ((\Codigo_de_cor~combout\(15)) # (\Codigo_de_cor~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_CodValid|LessThan0~3_combout\,
	datab => \Codigo_de_cor~combout\(16),
	datac => \Codigo_de_cor~combout\(15),
	datad => \Codigo_de_cor~combout\(17),
	combout => \instance_CodValid|LessThan0~4_combout\);

-- Location: LCCOMB_X20_Y35_N6
\instance_CodValid|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~11_combout\ = (\instance_CodValid|LessThan0~4_combout\) # ((\instance_CodValid|LessThan0~5_combout\ & ((\instance_CodValid|LessThan0~10_combout\) # (\instance_CodValid|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_CodValid|LessThan0~5_combout\,
	datab => \instance_CodValid|LessThan0~10_combout\,
	datac => \instance_CodValid|LessThan0~6_combout\,
	datad => \instance_CodValid|LessThan0~4_combout\,
	combout => \instance_CodValid|LessThan0~11_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[29]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(29),
	combout => \Codigo_de_cor~combout\(29));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[30]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(30),
	combout => \Codigo_de_cor~combout\(30));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[27]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(27),
	combout => \Codigo_de_cor~combout\(27));

-- Location: LCCOMB_X8_Y35_N26
\instance_CodValid|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~2_combout\ = (\Codigo_de_cor~combout\(28)) # ((\Codigo_de_cor~combout\(27)) # ((\instance_CodValid|LessThan0~1_combout\ & \Codigo_de_cor~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_CodValid|LessThan0~1_combout\,
	datab => \Codigo_de_cor~combout\(26),
	datac => \Codigo_de_cor~combout\(28),
	datad => \Codigo_de_cor~combout\(27),
	combout => \instance_CodValid|LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y35_N24
\instance_CodValid|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_CodValid|LessThan0~12_combout\ = (\Codigo_de_cor~combout\(29) & (\Codigo_de_cor~combout\(30) & ((\instance_CodValid|LessThan0~11_combout\) # (\instance_CodValid|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_CodValid|LessThan0~11_combout\,
	datab => \Codigo_de_cor~combout\(29),
	datac => \Codigo_de_cor~combout\(30),
	datad => \instance_CodValid|LessThan0~2_combout\,
	combout => \instance_CodValid|LessThan0~12_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[2]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(2),
	combout => \Sensor_de_cor~combout\(2));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[3]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(3),
	combout => \Sensor_de_cor~combout\(3));

-- Location: LCCOMB_X31_Y35_N28
\instance_Compcor|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~1_combout\ = (\instance_RegK|Q\(3) & (\Sensor_de_cor~combout\(3) & (\Sensor_de_cor~combout\(2) $ (!\instance_RegK|Q\(2))))) # (!\instance_RegK|Q\(3) & (!\Sensor_de_cor~combout\(3) & (\Sensor_de_cor~combout\(2) $ 
-- (!\instance_RegK|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegK|Q\(3),
	datab => \Sensor_de_cor~combout\(2),
	datac => \instance_RegK|Q\(2),
	datad => \Sensor_de_cor~combout\(3),
	combout => \instance_Compcor|Equal0~1_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[1]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(1),
	combout => \Sensor_de_cor~combout\(1));

-- Location: LCCOMB_X31_Y35_N30
\instance_Compcor|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~0_combout\ = (\Sensor_de_cor~combout\(0) & (\instance_RegK|Q\(0) & (\Sensor_de_cor~combout\(1) $ (!\instance_RegK|Q\(1))))) # (!\Sensor_de_cor~combout\(0) & (!\instance_RegK|Q\(0) & (\Sensor_de_cor~combout\(1) $ 
-- (!\instance_RegK|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(0),
	datab => \instance_RegK|Q\(0),
	datac => \Sensor_de_cor~combout\(1),
	datad => \instance_RegK|Q\(1),
	combout => \instance_Compcor|Equal0~0_combout\);

-- Location: LCFF_X31_Y35_N21
\instance_RegK|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegK|Q\(5));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[5]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(5),
	combout => \Sensor_de_cor~combout\(5));

-- Location: LCCOMB_X37_Y35_N0
\instance_Compcor|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~2_combout\ = (\Sensor_de_cor~combout\(4) & (\instance_RegK|Q\(4) & (\instance_RegK|Q\(5) $ (!\Sensor_de_cor~combout\(5))))) # (!\Sensor_de_cor~combout\(4) & (!\instance_RegK|Q\(4) & (\instance_RegK|Q\(5) $ 
-- (!\Sensor_de_cor~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(4),
	datab => \instance_RegK|Q\(5),
	datac => \instance_RegK|Q\(4),
	datad => \Sensor_de_cor~combout\(5),
	combout => \instance_Compcor|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y35_N2
\instance_Compcor|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~4_combout\ = (\instance_Compcor|Equal0~3_combout\ & (\instance_Compcor|Equal0~1_combout\ & (\instance_Compcor|Equal0~0_combout\ & \instance_Compcor|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Compcor|Equal0~3_combout\,
	datab => \instance_Compcor|Equal0~1_combout\,
	datac => \instance_Compcor|Equal0~0_combout\,
	datad => \instance_Compcor|Equal0~2_combout\,
	combout => \instance_Compcor|Equal0~4_combout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[16]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(16),
	combout => \Sensor_de_cor~combout\(16));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[17]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(17),
	combout => \Sensor_de_cor~combout\(17));

-- Location: LCCOMB_X15_Y35_N4
\instance_Compcor|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~10_combout\ = (\instance_RegM|Q\(1) & (\Sensor_de_cor~combout\(17) & (\instance_RegM|Q\(0) $ (!\Sensor_de_cor~combout\(16))))) # (!\instance_RegM|Q\(1) & (!\Sensor_de_cor~combout\(17) & (\instance_RegM|Q\(0) $ 
-- (!\Sensor_de_cor~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegM|Q\(1),
	datab => \instance_RegM|Q\(0),
	datac => \Sensor_de_cor~combout\(16),
	datad => \Sensor_de_cor~combout\(17),
	combout => \instance_Compcor|Equal0~10_combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[23]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(23),
	combout => \Sensor_de_cor~combout\(23));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[22]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(22),
	combout => \Sensor_de_cor~combout\(22));

-- Location: LCCOMB_X15_Y35_N30
\instance_Compcor|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~13_combout\ = (\instance_RegM|Q\(6) & (\Sensor_de_cor~combout\(22) & (\instance_RegM|Q\(7) $ (!\Sensor_de_cor~combout\(23))))) # (!\instance_RegM|Q\(6) & (!\Sensor_de_cor~combout\(22) & (\instance_RegM|Q\(7) $ 
-- (!\Sensor_de_cor~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegM|Q\(6),
	datab => \instance_RegM|Q\(7),
	datac => \Sensor_de_cor~combout\(23),
	datad => \Sensor_de_cor~combout\(22),
	combout => \instance_Compcor|Equal0~13_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[21]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(21),
	combout => \Sensor_de_cor~combout\(21));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[20]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(20),
	combout => \Sensor_de_cor~combout\(20));

-- Location: LCCOMB_X15_Y35_N28
\instance_Compcor|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~12_combout\ = (\instance_RegM|Q\(4) & (\Sensor_de_cor~combout\(20) & (\instance_RegM|Q\(5) $ (!\Sensor_de_cor~combout\(21))))) # (!\instance_RegM|Q\(4) & (!\Sensor_de_cor~combout\(20) & (\instance_RegM|Q\(5) $ 
-- (!\Sensor_de_cor~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegM|Q\(4),
	datab => \instance_RegM|Q\(5),
	datac => \Sensor_de_cor~combout\(21),
	datad => \Sensor_de_cor~combout\(20),
	combout => \instance_Compcor|Equal0~12_combout\);

-- Location: LCCOMB_X16_Y35_N24
\instance_Compcor|Equal0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~14_combout\ = (\instance_Compcor|Equal0~11_combout\ & (\instance_Compcor|Equal0~10_combout\ & (\instance_Compcor|Equal0~13_combout\ & \instance_Compcor|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Compcor|Equal0~11_combout\,
	datab => \instance_Compcor|Equal0~10_combout\,
	datac => \instance_Compcor|Equal0~13_combout\,
	datad => \instance_Compcor|Equal0~12_combout\,
	combout => \instance_Compcor|Equal0~14_combout\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[25]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(25),
	combout => \Sensor_de_cor~combout\(25));

-- Location: LCCOMB_X1_Y34_N0
\instance_Compcor|Equal0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~15_combout\ = (\Sensor_de_cor~combout\(24) & (\instance_RegC|Q\(0) & (\instance_RegC|Q\(1) $ (!\Sensor_de_cor~combout\(25))))) # (!\Sensor_de_cor~combout\(24) & (!\instance_RegC|Q\(0) & (\instance_RegC|Q\(1) $ 
-- (!\Sensor_de_cor~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(24),
	datab => \instance_RegC|Q\(1),
	datac => \Sensor_de_cor~combout\(25),
	datad => \instance_RegC|Q\(0),
	combout => \instance_Compcor|Equal0~15_combout\);

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[30]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(30),
	combout => \Sensor_de_cor~combout\(30));

-- Location: LCFF_X8_Y35_N13
\instance_RegC|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(30),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegC|Q\(6));

-- Location: LCCOMB_X8_Y35_N20
\instance_Compcor|Equal0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~18_combout\ = (\Sensor_de_cor~combout\(31) & (\instance_RegC|Q\(7) & (\Sensor_de_cor~combout\(30) $ (!\instance_RegC|Q\(6))))) # (!\Sensor_de_cor~combout\(31) & (!\instance_RegC|Q\(7) & (\Sensor_de_cor~combout\(30) $ 
-- (!\instance_RegC|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(31),
	datab => \Sensor_de_cor~combout\(30),
	datac => \instance_RegC|Q\(7),
	datad => \instance_RegC|Q\(6),
	combout => \instance_Compcor|Equal0~18_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[26]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(26),
	combout => \Sensor_de_cor~combout\(26));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[27]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(27),
	combout => \Sensor_de_cor~combout\(27));

-- Location: LCCOMB_X8_Y35_N30
\instance_Compcor|Equal0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~16_combout\ = (\instance_RegC|Q\(3) & (\Sensor_de_cor~combout\(27) & (\Sensor_de_cor~combout\(26) $ (!\instance_RegC|Q\(2))))) # (!\instance_RegC|Q\(3) & (!\Sensor_de_cor~combout\(27) & (\Sensor_de_cor~combout\(26) $ 
-- (!\instance_RegC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_RegC|Q\(3),
	datab => \Sensor_de_cor~combout\(26),
	datac => \Sensor_de_cor~combout\(27),
	datad => \instance_RegC|Q\(2),
	combout => \instance_Compcor|Equal0~16_combout\);

-- Location: LCCOMB_X8_Y35_N22
\instance_Compcor|Equal0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~19_combout\ = (\instance_Compcor|Equal0~17_combout\ & (\instance_Compcor|Equal0~15_combout\ & (\instance_Compcor|Equal0~18_combout\ & \instance_Compcor|Equal0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Compcor|Equal0~17_combout\,
	datab => \instance_Compcor|Equal0~15_combout\,
	datac => \instance_Compcor|Equal0~18_combout\,
	datad => \instance_Compcor|Equal0~16_combout\,
	combout => \instance_Compcor|Equal0~19_combout\);

-- Location: LCCOMB_X32_Y35_N26
\instance_RegY|Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_RegY|Q[4]~feeder_combout\ = \Codigo_de_cor~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(12),
	combout => \instance_RegY|Q[4]~feeder_combout\);

-- Location: LCFF_X32_Y35_N27
\instance_RegY|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_RegY|Q[4]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegY|Q\(4));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[12]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(12),
	combout => \Sensor_de_cor~combout\(12));

-- Location: LCCOMB_X46_Y35_N0
\instance_Compcor|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~7_combout\ = (\Sensor_de_cor~combout\(13) & (\instance_RegY|Q\(5) & (\instance_RegY|Q\(4) $ (!\Sensor_de_cor~combout\(12))))) # (!\Sensor_de_cor~combout\(13) & (!\instance_RegY|Q\(5) & (\instance_RegY|Q\(4) $ 
-- (!\Sensor_de_cor~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(13),
	datab => \instance_RegY|Q\(5),
	datac => \instance_RegY|Q\(4),
	datad => \Sensor_de_cor~combout\(12),
	combout => \instance_Compcor|Equal0~7_combout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[9]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(9),
	combout => \Sensor_de_cor~combout\(9));

-- Location: LCCOMB_X50_Y35_N20
\instance_Compcor|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~5_combout\ = (\Sensor_de_cor~combout\(8) & (\instance_RegY|Q\(0) & (\instance_RegY|Q\(1) $ (!\Sensor_de_cor~combout\(9))))) # (!\Sensor_de_cor~combout\(8) & (!\instance_RegY|Q\(0) & (\instance_RegY|Q\(1) $ 
-- (!\Sensor_de_cor~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(8),
	datab => \instance_RegY|Q\(0),
	datac => \instance_RegY|Q\(1),
	datad => \Sensor_de_cor~combout\(9),
	combout => \instance_Compcor|Equal0~5_combout\);

-- Location: LCFF_X32_Y35_N25
\instance_RegY|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegY|Q\(3));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensor_de_cor[10]~I\ : cycloneii_io
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
	padio => ww_Sensor_de_cor(10),
	combout => \Sensor_de_cor~combout\(10));

-- Location: LCCOMB_X45_Y35_N16
\instance_Compcor|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~6_combout\ = (\Sensor_de_cor~combout\(11) & (\instance_RegY|Q\(3) & (\instance_RegY|Q\(2) $ (!\Sensor_de_cor~combout\(10))))) # (!\Sensor_de_cor~combout\(11) & (!\instance_RegY|Q\(3) & (\instance_RegY|Q\(2) $ 
-- (!\Sensor_de_cor~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(11),
	datab => \instance_RegY|Q\(2),
	datac => \instance_RegY|Q\(3),
	datad => \Sensor_de_cor~combout\(10),
	combout => \instance_Compcor|Equal0~6_combout\);

-- Location: LCCOMB_X46_Y35_N10
\instance_Compcor|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~9_combout\ = (\instance_Compcor|Equal0~8_combout\ & (\instance_Compcor|Equal0~7_combout\ & (\instance_Compcor|Equal0~5_combout\ & \instance_Compcor|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Compcor|Equal0~8_combout\,
	datab => \instance_Compcor|Equal0~7_combout\,
	datac => \instance_Compcor|Equal0~5_combout\,
	datad => \instance_Compcor|Equal0~6_combout\,
	combout => \instance_Compcor|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y35_N0
\instance_Compcor|Equal0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_Compcor|Equal0~20_combout\ = (\instance_Compcor|Equal0~4_combout\ & (\instance_Compcor|Equal0~14_combout\ & (\instance_Compcor|Equal0~19_combout\ & \instance_Compcor|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_Compcor|Equal0~4_combout\,
	datab => \instance_Compcor|Equal0~14_combout\,
	datac => \instance_Compcor|Equal0~19_combout\,
	datad => \instance_Compcor|Equal0~9_combout\,
	combout => \instance_Compcor|Equal0~20_combout\);

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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[3]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(3),
	combout => \Codigo_de_cor~combout\(3));

-- Location: LCFF_X31_Y35_N17
\instance_RegK|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegK|Q\(3));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[6]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(6),
	combout => \Codigo_de_cor~combout\(6));

-- Location: LCFF_X31_Y35_N23
\instance_RegK|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegK|Q\(6));

-- Location: LCFF_X32_Y35_N17
\instance_RegY|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegY|Q\(7));

-- Location: LCCOMB_X15_Y35_N6
\instance_RegM|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_RegM|Q[1]~feeder_combout\ = \Codigo_de_cor~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(17),
	combout => \instance_RegM|Q[1]~feeder_combout\);

-- Location: LCFF_X15_Y35_N7
\instance_RegM|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_RegM|Q[1]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegM|Q\(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[20]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(20),
	combout => \Codigo_de_cor~combout\(20));

-- Location: LCFF_X15_Y35_N21
\instance_RegM|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(20),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegM|Q\(4));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Codigo_de_cor[22]~I\ : cycloneii_io
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
	padio => ww_Codigo_de_cor(22),
	combout => \Codigo_de_cor~combout\(22));

-- Location: LCFF_X15_Y35_N25
\instance_RegM|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(22),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegM|Q\(6));

-- Location: LCFF_X8_Y35_N7
\instance_RegC|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(27),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegC|Q\(3));

-- Location: LCFF_X8_Y35_N11
\instance_RegC|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(29),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \instance_RegC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_RegC|Q\(5));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Misturando~I\ : cycloneii_io
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
	datain => \instance_compmist|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Misturando);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Ciano~I\ : cycloneii_io
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
	datain => \instance_CompC|LessThan1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Ciano);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Magenta~I\ : cycloneii_io
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
	datain => \instance_CompM|LessThan1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Magenta);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Amarelo~I\ : cycloneii_io
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
	datain => \instance_CompY|LessThan1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Amarelo);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Preto~I\ : cycloneii_io
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
	datain => \instance_CompK|LessThan1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Preto);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_valido~I\ : cycloneii_io
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
	datain => \instance_CodValid|ALT_INV_LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_valido);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cor_valida~I\ : cycloneii_io
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
	datain => \instance_Compcor|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cor_valida);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[0]~I\ : cycloneii_io
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
	datain => \instance_RegK|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[1]~I\ : cycloneii_io
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
	datain => \instance_RegK|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[2]~I\ : cycloneii_io
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
	datain => \instance_RegK|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(2));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[3]~I\ : cycloneii_io
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
	datain => \instance_RegK|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(3));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[4]~I\ : cycloneii_io
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
	datain => \instance_RegK|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[5]~I\ : cycloneii_io
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
	datain => \instance_RegK|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(5));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[6]~I\ : cycloneii_io
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
	datain => \instance_RegK|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(6));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[7]~I\ : cycloneii_io
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
	datain => \instance_RegK|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(7));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[8]~I\ : cycloneii_io
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
	datain => \instance_RegY|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(8));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[9]~I\ : cycloneii_io
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
	datain => \instance_RegY|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(9));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[10]~I\ : cycloneii_io
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
	datain => \instance_RegY|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(10));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[11]~I\ : cycloneii_io
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
	datain => \instance_RegY|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(11));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[12]~I\ : cycloneii_io
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
	datain => \instance_RegY|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(12));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[13]~I\ : cycloneii_io
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
	datain => \instance_RegY|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(13));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[14]~I\ : cycloneii_io
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
	datain => \instance_RegY|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(14));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[15]~I\ : cycloneii_io
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
	datain => \instance_RegY|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(15));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[16]~I\ : cycloneii_io
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
	datain => \instance_RegM|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(16));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[17]~I\ : cycloneii_io
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
	datain => \instance_RegM|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(17));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[18]~I\ : cycloneii_io
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
	datain => \instance_RegM|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(18));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[19]~I\ : cycloneii_io
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
	datain => \instance_RegM|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(19));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[20]~I\ : cycloneii_io
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
	datain => \instance_RegM|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(20));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[21]~I\ : cycloneii_io
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
	datain => \instance_RegM|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(21));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[22]~I\ : cycloneii_io
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
	datain => \instance_RegM|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(22));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[23]~I\ : cycloneii_io
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
	datain => \instance_RegM|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(23));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[24]~I\ : cycloneii_io
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
	datain => \instance_RegC|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(24));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[25]~I\ : cycloneii_io
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
	datain => \instance_RegC|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(25));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[26]~I\ : cycloneii_io
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
	datain => \instance_RegC|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(26));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[27]~I\ : cycloneii_io
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
	datain => \instance_RegC|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(27));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[28]~I\ : cycloneii_io
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
	datain => \instance_RegC|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(28));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[29]~I\ : cycloneii_io
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
	datain => \instance_RegC|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(29));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[30]~I\ : cycloneii_io
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
	datain => \instance_RegC|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(30));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_cor_misturada[31]~I\ : cycloneii_io
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
	datain => \instance_RegC|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(31));
END structure;


