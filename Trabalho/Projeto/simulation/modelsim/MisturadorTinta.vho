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

-- DATE "12/02/2023 15:23:55"

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

ENTITY 	MisturadorTinta IS
    PORT (
	Iniciar : IN std_logic;
	Reset : IN std_logic;
	Recipiente : IN std_logic;
	Clock : IN std_logic;
	Sensor_de_cor : IN std_logic_vector(31 DOWNTO 0);
	Codigo_de_cor : IN std_logic_vector(31 DOWNTO 0);
	Saida_Ciano : OUT std_logic;
	Saida_Magenta : OUT std_logic;
	Saida_Amarelo : OUT std_logic;
	Saida_Preto : OUT std_logic;
	Misturando : OUT std_logic;
	Fim : OUT std_logic;
	Codigo_de_erro : OUT std_logic_vector(15 DOWNTO 0);
	Codigo_cor_misturada : OUT std_logic_vector(31 DOWNTO 0)
	);
END MisturadorTinta;

-- Design Ports Information
-- Saida_Ciano	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Saida_Magenta	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Saida_Amarelo	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Saida_Preto	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Misturando	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fim	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[0]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[1]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[2]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[3]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[4]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[8]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[9]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[10]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[11]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[12]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[13]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[14]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_erro[15]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[0]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[1]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[2]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[3]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[4]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[5]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[6]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[7]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[8]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[9]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[10]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[11]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[12]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[13]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[14]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[15]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[16]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[17]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[18]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[19]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[20]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[21]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[22]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[23]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[24]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[25]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[26]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[27]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[28]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[29]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[30]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_cor_misturada[31]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Codigo_de_cor[29]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[30]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[26]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[27]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[28]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[23]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[24]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[25]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[19]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[21]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[22]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[20]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[18]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[15]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[16]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[17]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[13]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[14]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[11]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[12]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[10]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[7]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[8]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[9]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[5]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[6]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[4]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[2]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[0]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[1]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[0]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[1]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[2]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[3]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[4]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[5]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[6]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[7]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[8]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[9]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[10]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[11]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[12]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[13]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[14]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[15]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[16]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[17]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[18]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[19]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[20]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[21]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[22]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[23]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[24]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[25]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[26]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[27]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[28]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[29]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[30]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sensor_de_cor[31]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Codigo_de_cor[31]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Recipiente	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Iniciar	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MisturadorTinta IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Iniciar : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Recipiente : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Sensor_de_cor : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Codigo_de_cor : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Saida_Ciano : std_logic;
SIGNAL ww_Saida_Magenta : std_logic;
SIGNAL ww_Saida_Amarelo : std_logic;
SIGNAL ww_Saida_Preto : std_logic;
SIGNAL ww_Misturando : std_logic;
SIGNAL ww_Fim : std_logic;
SIGNAL ww_Codigo_de_erro : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Codigo_cor_misturada : std_logic_vector(31 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instance_ContC|Count[6]~25_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[14]~43\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[15]~44_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[4]~21_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~7_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~8_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~9_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~10_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~3_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~5_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~6_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~7_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~8_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~9_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~11_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~16_combout\ : std_logic;
SIGNAL \instance_datapath|instance_compmist|LessThan0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[0]~45_combout\ : std_logic;
SIGNAL \Recipiente~combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~1_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~2_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~3_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~4_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~6_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~5_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CodValid|LessThan0~11_combout\ : std_logic;
SIGNAL \instance_controladora|Codigo_de_erro[0]~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[1]~15_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[1]~15_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[1]~16\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[2]~17_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[2]~18\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[3]~19_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[3]~20\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[4]~22\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[5]~23_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[5]~24\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[6]~26\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[7]~28\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[8]~30_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[8]~31\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[9]~33\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[10]~34_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[10]~35\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[11]~36_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[9]~32_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~16_combout\ : std_logic;
SIGNAL \instance_datapath|instance_RegC|Q[7]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[4]~21_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~1_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~3_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~5_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~7_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~9_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~11_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~13_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~14_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[7]~27_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[0]~29_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CompM|LessThan1~1_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompM|LessThan1~3_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompM|LessThan1~5_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompM|LessThan1~7_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompM|LessThan1~9_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompM|LessThan1~11_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompM|LessThan1~13_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompM|LessThan1~14_combout\ : std_logic;
SIGNAL \instance_controladora|Selector3~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CompY|LessThan1~1_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompY|LessThan1~3_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompY|LessThan1~5_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompY|LessThan1~7_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompY|LessThan1~9_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompY|LessThan1~11_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompY|LessThan1~13_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompY|LessThan1~14_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CompK|LessThan1~1_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompK|LessThan1~3_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompK|LessThan1~5_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompK|LessThan1~7_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompK|LessThan1~9_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompK|LessThan1~11_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompK|LessThan1~13_cout\ : std_logic;
SIGNAL \instance_datapath|instance_CompK|LessThan1~14_combout\ : std_logic;
SIGNAL \instance_controladora|Selector3~1_combout\ : std_logic;
SIGNAL \instance_controladora|Selector3~2_combout\ : std_logic;
SIGNAL \instance_controladora|Selector3~3_combout\ : std_logic;
SIGNAL \instance_controladora|estado.mistura~regout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[1]~16\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[2]~17_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[2]~18\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[3]~19_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[3]~20\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[4]~22\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[5]~23_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[5]~24\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[6]~26\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[7]~28\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[8]~29_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[8]~30\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[9]~32\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[10]~33_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[10]~34\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[11]~36\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[12]~37_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[12]~38\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[13]~39_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[13]~40\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[14]~41_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[14]~42\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[15]~43_combout\ : std_logic;
SIGNAL \instance_datapath|instance_compmist|LessThan0~3_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[9]~31_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[11]~35_combout\ : std_logic;
SIGNAL \instance_datapath|instance_compmist|LessThan0~2_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[7]~27_combout\ : std_logic;
SIGNAL \instance_datapath|instance_contmist|Count[6]~25_combout\ : std_logic;
SIGNAL \instance_datapath|instance_compmist|LessThan0~1_combout\ : std_logic;
SIGNAL \instance_datapath|instance_compmist|LessThan0~4_combout\ : std_logic;
SIGNAL \instance_controladora|estado~11_combout\ : std_logic;
SIGNAL \instance_controladora|estado.valida~regout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~13_combout\ : std_logic;
SIGNAL \instance_datapath|instance_RegM|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~10_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~12_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~14_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~2_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~1_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~4_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~18_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~15_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~17_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~19_combout\ : std_logic;
SIGNAL \instance_datapath|instance_Compcor|Equal0~20_combout\ : std_logic;
SIGNAL \instance_controladora|Selector5~0_combout\ : std_logic;
SIGNAL \instance_controladora|Selector5~1_combout\ : std_logic;
SIGNAL \instance_controladora|estado.erro~regout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \instance_controladora|Selector4~0_combout\ : std_logic;
SIGNAL \instance_controladora|estado.pronto~regout\ : std_logic;
SIGNAL \instance_controladora|Selector0~0_combout\ : std_logic;
SIGNAL \instance_controladora|Selector0~1_combout\ : std_logic;
SIGNAL \instance_controladora|estado.inicio~regout\ : std_logic;
SIGNAL \Iniciar~combout\ : std_logic;
SIGNAL \instance_controladora|Selector1~0_combout\ : std_logic;
SIGNAL \instance_controladora|estado.espera~regout\ : std_logic;
SIGNAL \instance_controladora|estado~10_combout\ : std_logic;
SIGNAL \instance_controladora|estado.verifica~regout\ : std_logic;
SIGNAL \instance_controladora|Selector2~0_combout\ : std_logic;
SIGNAL \instance_controladora|Selector2~1_combout\ : std_logic;
SIGNAL \instance_controladora|estado.pigmento~regout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[11]~37\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[12]~38_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[12]~39\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[13]~41\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[14]~42_combout\ : std_logic;
SIGNAL \instance_datapath|instance_ContC|Count[13]~40_combout\ : std_logic;
SIGNAL \instance_datapath|instance_CompC|LessThan1~17_combout\ : std_logic;
SIGNAL \instance_controladora|Saida_ciano~0_combout\ : std_logic;
SIGNAL \instance_controladora|Saida_magenta~0_combout\ : std_logic;
SIGNAL \instance_controladora|Saida_amarelo~0_combout\ : std_logic;
SIGNAL \instance_controladora|Saida_preto~0_combout\ : std_logic;
SIGNAL \instance_controladora|Codigo_de_erro[0]~1_combout\ : std_logic;
SIGNAL \instance_controladora|Codigo_de_erro[1]~2_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \instance_datapath|instance_RegY|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_RegY|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instance_RegM|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Sensor_de_cor~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Codigo_de_cor~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instance_datapath|instance_RegY|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_datapath|instance_ContC|Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instance_datapath|instance_RegM|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_datapath|instance_RegK|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_datapath|instance_RegC|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_datapath|instance_contmist|Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instance_controladora|ALT_INV_estado.inicio~regout\ : std_logic;
SIGNAL \instance_controladora|ALT_INV_Saida_preto~0_combout\ : std_logic;
SIGNAL \instance_controladora|ALT_INV_Saida_amarelo~0_combout\ : std_logic;
SIGNAL \instance_controladora|ALT_INV_Saida_magenta~0_combout\ : std_logic;
SIGNAL \instance_controladora|ALT_INV_Saida_ciano~0_combout\ : std_logic;

BEGIN

ww_Iniciar <= Iniciar;
ww_Reset <= Reset;
ww_Recipiente <= Recipiente;
ww_Clock <= Clock;
ww_Sensor_de_cor <= Sensor_de_cor;
ww_Codigo_de_cor <= Codigo_de_cor;
Saida_Ciano <= ww_Saida_Ciano;
Saida_Magenta <= ww_Saida_Magenta;
Saida_Amarelo <= ww_Saida_Amarelo;
Saida_Preto <= ww_Saida_Preto;
Misturando <= ww_Misturando;
Fim <= ww_Fim;
Codigo_de_erro <= ww_Codigo_de_erro;
Codigo_cor_misturada <= ww_Codigo_cor_misturada;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);
\instance_controladora|ALT_INV_estado.inicio~regout\ <= NOT \instance_controladora|estado.inicio~regout\;
\instance_controladora|ALT_INV_Saida_preto~0_combout\ <= NOT \instance_controladora|Saida_preto~0_combout\;
\instance_controladora|ALT_INV_Saida_amarelo~0_combout\ <= NOT \instance_controladora|Saida_amarelo~0_combout\;
\instance_controladora|ALT_INV_Saida_magenta~0_combout\ <= NOT \instance_controladora|Saida_magenta~0_combout\;
\instance_controladora|ALT_INV_Saida_ciano~0_combout\ <= NOT \instance_controladora|Saida_ciano~0_combout\;

-- Location: LCFF_X62_Y23_N11
\instance_datapath|instance_ContC|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[6]~25_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(6));

-- Location: LCFF_X62_Y23_N29
\instance_datapath|instance_ContC|Count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[15]~44_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(15));

-- Location: LCCOMB_X62_Y23_N10
\instance_datapath|instance_ContC|Count[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[6]~25_combout\ = (\instance_datapath|instance_ContC|Count\(6) & (!\instance_datapath|instance_ContC|Count[5]~24\)) # (!\instance_datapath|instance_ContC|Count\(6) & ((\instance_datapath|instance_ContC|Count[5]~24\) 
-- # (GND)))
-- \instance_datapath|instance_ContC|Count[6]~26\ = CARRY((!\instance_datapath|instance_ContC|Count[5]~24\) # (!\instance_datapath|instance_ContC|Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(6),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[5]~24\,
	combout => \instance_datapath|instance_ContC|Count[6]~25_combout\,
	cout => \instance_datapath|instance_ContC|Count[6]~26\);

-- Location: LCCOMB_X62_Y23_N26
\instance_datapath|instance_ContC|Count[14]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[14]~42_combout\ = (\instance_datapath|instance_ContC|Count\(14) & (!\instance_datapath|instance_ContC|Count[13]~41\)) # (!\instance_datapath|instance_ContC|Count\(14) & 
-- ((\instance_datapath|instance_ContC|Count[13]~41\) # (GND)))
-- \instance_datapath|instance_ContC|Count[14]~43\ = CARRY((!\instance_datapath|instance_ContC|Count[13]~41\) # (!\instance_datapath|instance_ContC|Count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_ContC|Count\(14),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[13]~41\,
	combout => \instance_datapath|instance_ContC|Count[14]~42_combout\,
	cout => \instance_datapath|instance_ContC|Count[14]~43\);

-- Location: LCCOMB_X62_Y23_N28
\instance_datapath|instance_ContC|Count[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[15]~44_combout\ = \instance_datapath|instance_ContC|Count[14]~43\ $ (!\instance_datapath|instance_ContC|Count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instance_ContC|Count\(15),
	cin => \instance_datapath|instance_ContC|Count[14]~43\,
	combout => \instance_datapath|instance_ContC|Count[15]~44_combout\);

-- Location: LCFF_X62_Y25_N7
\instance_datapath|instance_contmist|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[4]~21_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(4));

-- Location: LCCOMB_X62_Y25_N6
\instance_datapath|instance_contmist|Count[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[4]~21_combout\ = (\instance_datapath|instance_contmist|Count\(4) & (!\instance_datapath|instance_contmist|Count[3]~20\)) # (!\instance_datapath|instance_contmist|Count\(4) & 
-- ((\instance_datapath|instance_contmist|Count[3]~20\) # (GND)))
-- \instance_datapath|instance_contmist|Count[4]~22\ = CARRY((!\instance_datapath|instance_contmist|Count[3]~20\) # (!\instance_datapath|instance_contmist|Count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(4),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[3]~20\,
	combout => \instance_datapath|instance_contmist|Count[4]~21_combout\,
	cout => \instance_datapath|instance_contmist|Count[4]~22\);

-- Location: LCCOMB_X64_Y24_N6
\instance_datapath|instance_CodValid|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~7_combout\ = (\Codigo_de_cor~combout\(10) & ((\Codigo_de_cor~combout\(7)) # ((\Codigo_de_cor~combout\(8)) # (\Codigo_de_cor~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(7),
	datab => \Codigo_de_cor~combout\(8),
	datac => \Codigo_de_cor~combout\(10),
	datad => \Codigo_de_cor~combout\(9),
	combout => \instance_datapath|instance_CodValid|LessThan0~7_combout\);

-- Location: LCCOMB_X64_Y24_N28
\instance_datapath|instance_CodValid|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~8_combout\ = (\Codigo_de_cor~combout\(5) & (\Codigo_de_cor~combout\(6) & \Codigo_de_cor~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(5),
	datab => \Codigo_de_cor~combout\(6),
	datad => \Codigo_de_cor~combout\(10),
	combout => \instance_datapath|instance_CodValid|LessThan0~8_combout\);

-- Location: LCCOMB_X64_Y24_N24
\instance_datapath|instance_CodValid|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~9_combout\ = (\Codigo_de_cor~combout\(3)) # ((\Codigo_de_cor~combout\(2) & ((\Codigo_de_cor~combout\(1)) # (\Codigo_de_cor~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(3),
	datab => \Codigo_de_cor~combout\(1),
	datac => \Codigo_de_cor~combout\(2),
	datad => \Codigo_de_cor~combout\(0),
	combout => \instance_datapath|instance_CodValid|LessThan0~9_combout\);

-- Location: LCCOMB_X64_Y24_N0
\instance_datapath|instance_CodValid|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~10_combout\ = (\instance_datapath|instance_CodValid|LessThan0~7_combout\) # ((\instance_datapath|instance_CodValid|LessThan0~8_combout\ & ((\Codigo_de_cor~combout\(4)) # 
-- (\instance_datapath|instance_CodValid|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_CodValid|LessThan0~7_combout\,
	datab => \instance_datapath|instance_CodValid|LessThan0~8_combout\,
	datac => \Codigo_de_cor~combout\(4),
	datad => \instance_datapath|instance_CodValid|LessThan0~9_combout\,
	combout => \instance_datapath|instance_CodValid|LessThan0~10_combout\);

-- Location: LCCOMB_X64_Y24_N4
\instance_datapath|instance_Compcor|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~3_combout\ = (\Sensor_de_cor~combout\(6) & (\instance_datapath|instance_RegK|Q\(6) & (\Sensor_de_cor~combout\(7) $ (!\instance_datapath|instance_RegK|Q\(7))))) # (!\Sensor_de_cor~combout\(6) & 
-- (!\instance_datapath|instance_RegK|Q\(6) & (\Sensor_de_cor~combout\(7) $ (!\instance_datapath|instance_RegK|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(6),
	datab => \Sensor_de_cor~combout\(7),
	datac => \instance_datapath|instance_RegK|Q\(7),
	datad => \instance_datapath|instance_RegK|Q\(6),
	combout => \instance_datapath|instance_Compcor|Equal0~3_combout\);

-- Location: LCCOMB_X64_Y23_N30
\instance_datapath|instance_Compcor|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~5_combout\ = (\Sensor_de_cor~combout\(8) & (\instance_datapath|instance_RegY|Q\(0) & (\Sensor_de_cor~combout\(9) $ (!\instance_datapath|instance_RegY|Q\(1))))) # (!\Sensor_de_cor~combout\(8) & 
-- (!\instance_datapath|instance_RegY|Q\(0) & (\Sensor_de_cor~combout\(9) $ (!\instance_datapath|instance_RegY|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(8),
	datab => \Sensor_de_cor~combout\(9),
	datac => \instance_datapath|instance_RegY|Q\(0),
	datad => \instance_datapath|instance_RegY|Q\(1),
	combout => \instance_datapath|instance_Compcor|Equal0~5_combout\);

-- Location: LCCOMB_X64_Y23_N28
\instance_datapath|instance_Compcor|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~6_combout\ = (\Sensor_de_cor~combout\(10) & (\instance_datapath|instance_RegY|Q\(2) & (\instance_datapath|instance_RegY|Q\(3) $ (!\Sensor_de_cor~combout\(11))))) # (!\Sensor_de_cor~combout\(10) & 
-- (!\instance_datapath|instance_RegY|Q\(2) & (\instance_datapath|instance_RegY|Q\(3) $ (!\Sensor_de_cor~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(10),
	datab => \instance_datapath|instance_RegY|Q\(3),
	datac => \instance_datapath|instance_RegY|Q\(2),
	datad => \Sensor_de_cor~combout\(11),
	combout => \instance_datapath|instance_Compcor|Equal0~6_combout\);

-- Location: LCCOMB_X64_Y23_N8
\instance_datapath|instance_Compcor|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~7_combout\ = (\Sensor_de_cor~combout\(13) & (\instance_datapath|instance_RegY|Q\(5) & (\Sensor_de_cor~combout\(12) $ (!\instance_datapath|instance_RegY|Q\(4))))) # (!\Sensor_de_cor~combout\(13) & 
-- (!\instance_datapath|instance_RegY|Q\(5) & (\Sensor_de_cor~combout\(12) $ (!\instance_datapath|instance_RegY|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(13),
	datab => \Sensor_de_cor~combout\(12),
	datac => \instance_datapath|instance_RegY|Q\(4),
	datad => \instance_datapath|instance_RegY|Q\(5),
	combout => \instance_datapath|instance_Compcor|Equal0~7_combout\);

-- Location: LCCOMB_X64_Y23_N4
\instance_datapath|instance_Compcor|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~8_combout\ = (\Sensor_de_cor~combout\(14) & (\instance_datapath|instance_RegY|Q\(6) & (\instance_datapath|instance_RegY|Q\(7) $ (!\Sensor_de_cor~combout\(15))))) # (!\Sensor_de_cor~combout\(14) & 
-- (!\instance_datapath|instance_RegY|Q\(6) & (\instance_datapath|instance_RegY|Q\(7) $ (!\Sensor_de_cor~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(14),
	datab => \instance_datapath|instance_RegY|Q\(7),
	datac => \instance_datapath|instance_RegY|Q\(6),
	datad => \Sensor_de_cor~combout\(15),
	combout => \instance_datapath|instance_Compcor|Equal0~8_combout\);

-- Location: LCCOMB_X62_Y23_N30
\instance_datapath|instance_Compcor|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~9_combout\ = (\instance_datapath|instance_Compcor|Equal0~6_combout\ & (\instance_datapath|instance_Compcor|Equal0~5_combout\ & (\instance_datapath|instance_Compcor|Equal0~8_combout\ & 
-- \instance_datapath|instance_Compcor|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Compcor|Equal0~6_combout\,
	datab => \instance_datapath|instance_Compcor|Equal0~5_combout\,
	datac => \instance_datapath|instance_Compcor|Equal0~8_combout\,
	datad => \instance_datapath|instance_Compcor|Equal0~7_combout\,
	combout => \instance_datapath|instance_Compcor|Equal0~9_combout\);

-- Location: LCCOMB_X62_Y24_N10
\instance_datapath|instance_Compcor|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~11_combout\ = (\Sensor_de_cor~combout\(19) & (\instance_datapath|instance_RegM|Q\(3) & (\instance_datapath|instance_RegM|Q\(2) $ (!\Sensor_de_cor~combout\(18))))) # (!\Sensor_de_cor~combout\(19) & 
-- (!\instance_datapath|instance_RegM|Q\(3) & (\instance_datapath|instance_RegM|Q\(2) $ (!\Sensor_de_cor~combout\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(19),
	datab => \instance_datapath|instance_RegM|Q\(3),
	datac => \instance_datapath|instance_RegM|Q\(2),
	datad => \Sensor_de_cor~combout\(18),
	combout => \instance_datapath|instance_Compcor|Equal0~11_combout\);

-- Location: LCCOMB_X64_Y25_N12
\instance_datapath|instance_Compcor|Equal0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~16_combout\ = (\Sensor_de_cor~combout\(27) & (\instance_datapath|instance_RegC|Q\(3) & (\Sensor_de_cor~combout\(26) $ (!\instance_datapath|instance_RegC|Q\(2))))) # (!\Sensor_de_cor~combout\(27) & 
-- (!\instance_datapath|instance_RegC|Q\(3) & (\Sensor_de_cor~combout\(26) $ (!\instance_datapath|instance_RegC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(27),
	datab => \Sensor_de_cor~combout\(26),
	datac => \instance_datapath|instance_RegC|Q\(3),
	datad => \instance_datapath|instance_RegC|Q\(2),
	combout => \instance_datapath|instance_Compcor|Equal0~16_combout\);

-- Location: LCCOMB_X62_Y25_N30
\instance_datapath|instance_compmist|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_compmist|LessThan0~0_combout\ = (\instance_datapath|instance_contmist|Count\(4)) # ((\instance_datapath|instance_contmist|Count\(3) & ((\instance_datapath|instance_contmist|Count\(1)) # 
-- (\instance_datapath|instance_contmist|Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(4),
	datab => \instance_datapath|instance_contmist|Count\(1),
	datac => \instance_datapath|instance_contmist|Count\(3),
	datad => \instance_datapath|instance_contmist|Count\(2),
	combout => \instance_datapath|instance_compmist|LessThan0~0_combout\);

-- Location: LCFF_X63_Y23_N31
\instance_datapath|instance_contmist|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[0]~45_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(0));

-- Location: LCCOMB_X63_Y23_N30
\instance_datapath|instance_contmist|Count[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[0]~45_combout\ = \instance_controladora|estado.mistura~regout\ $ (\instance_datapath|instance_contmist|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|estado.mistura~regout\,
	datac => \instance_datapath|instance_contmist|Count\(0),
	combout => \instance_datapath|instance_contmist|Count[0]~45_combout\);

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Recipiente~I\ : cycloneii_io
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
	padio => ww_Recipiente,
	combout => \Recipiente~combout\);

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X62_Y24_N8
\instance_datapath|instance_CodValid|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~0_combout\ = (\Codigo_de_cor~combout\(21) & (\Codigo_de_cor~combout\(22) & ((\Codigo_de_cor~combout\(19)) # (\Codigo_de_cor~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(21),
	datab => \Codigo_de_cor~combout\(22),
	datac => \Codigo_de_cor~combout\(19),
	datad => \Codigo_de_cor~combout\(20),
	combout => \instance_datapath|instance_CodValid|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y24_N20
\instance_datapath|instance_CodValid|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~1_combout\ = (\Codigo_de_cor~combout\(24)) # ((\Codigo_de_cor~combout\(23)) # ((\Codigo_de_cor~combout\(25)) # (\instance_datapath|instance_CodValid|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(24),
	datab => \Codigo_de_cor~combout\(23),
	datac => \Codigo_de_cor~combout\(25),
	datad => \instance_datapath|instance_CodValid|LessThan0~0_combout\,
	combout => \instance_datapath|instance_CodValid|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y25_N26
\instance_datapath|instance_CodValid|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~2_combout\ = (\Codigo_de_cor~combout\(27)) # ((\Codigo_de_cor~combout\(28)) # ((\Codigo_de_cor~combout\(26) & \instance_datapath|instance_CodValid|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(26),
	datab => \Codigo_de_cor~combout\(27),
	datac => \Codigo_de_cor~combout\(28),
	datad => \instance_datapath|instance_CodValid|LessThan0~1_combout\,
	combout => \instance_datapath|instance_CodValid|LessThan0~2_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y26_N0
\instance_datapath|instance_CodValid|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~3_combout\ = (\Codigo_de_cor~combout\(22) & (\Codigo_de_cor~combout\(18) & (\Codigo_de_cor~combout\(21) & \Codigo_de_cor~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(22),
	datab => \Codigo_de_cor~combout\(18),
	datac => \Codigo_de_cor~combout\(21),
	datad => \Codigo_de_cor~combout\(26),
	combout => \instance_datapath|instance_CodValid|LessThan0~3_combout\);

-- Location: LCCOMB_X64_Y26_N2
\instance_datapath|instance_CodValid|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~4_combout\ = (\instance_datapath|instance_CodValid|LessThan0~3_combout\ & ((\Codigo_de_cor~combout\(17)) # ((\Codigo_de_cor~combout\(16)) # (\Codigo_de_cor~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(17),
	datab => \Codigo_de_cor~combout\(16),
	datac => \Codigo_de_cor~combout\(15),
	datad => \instance_datapath|instance_CodValid|LessThan0~3_combout\,
	combout => \instance_datapath|instance_CodValid|LessThan0~4_combout\);

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y23_N6
\instance_datapath|instance_CodValid|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~6_combout\ = (\Codigo_de_cor~combout\(12)) # (\Codigo_de_cor~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Codigo_de_cor~combout\(12),
	datad => \Codigo_de_cor~combout\(11),
	combout => \instance_datapath|instance_CodValid|LessThan0~6_combout\);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y26_N12
\instance_datapath|instance_CodValid|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~5_combout\ = (\Codigo_de_cor~combout\(14) & (\Codigo_de_cor~combout\(13) & \instance_datapath|instance_CodValid|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Codigo_de_cor~combout\(14),
	datac => \Codigo_de_cor~combout\(13),
	datad => \instance_datapath|instance_CodValid|LessThan0~3_combout\,
	combout => \instance_datapath|instance_CodValid|LessThan0~5_combout\);

-- Location: LCCOMB_X64_Y26_N10
\instance_datapath|instance_CodValid|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CodValid|LessThan0~11_combout\ = (\instance_datapath|instance_CodValid|LessThan0~4_combout\) # ((\instance_datapath|instance_CodValid|LessThan0~5_combout\ & ((\instance_datapath|instance_CodValid|LessThan0~10_combout\) # 
-- (\instance_datapath|instance_CodValid|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_CodValid|LessThan0~10_combout\,
	datab => \instance_datapath|instance_CodValid|LessThan0~4_combout\,
	datac => \instance_datapath|instance_CodValid|LessThan0~6_combout\,
	datad => \instance_datapath|instance_CodValid|LessThan0~5_combout\,
	combout => \instance_datapath|instance_CodValid|LessThan0~11_combout\);

-- Location: LCCOMB_X63_Y25_N0
\instance_controladora|Codigo_de_erro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Codigo_de_erro[0]~0_combout\ = (\Codigo_de_cor~combout\(29) & (\Codigo_de_cor~combout\(30) & ((\instance_datapath|instance_CodValid|LessThan0~2_combout\) # (\instance_datapath|instance_CodValid|LessThan0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Codigo_de_cor~combout\(29),
	datab => \instance_datapath|instance_CodValid|LessThan0~2_combout\,
	datac => \Codigo_de_cor~combout\(30),
	datad => \instance_datapath|instance_CodValid|LessThan0~11_combout\,
	combout => \instance_controladora|Codigo_de_erro[0]~0_combout\);

-- Location: LCCOMB_X62_Y25_N0
\instance_datapath|instance_contmist|Count[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[1]~15_combout\ = (\instance_datapath|instance_contmist|Count\(0) & (\instance_datapath|instance_contmist|Count\(1) $ (VCC))) # (!\instance_datapath|instance_contmist|Count\(0) & 
-- (\instance_datapath|instance_contmist|Count\(1) & VCC))
-- \instance_datapath|instance_contmist|Count[1]~16\ = CARRY((\instance_datapath|instance_contmist|Count\(0) & \instance_datapath|instance_contmist|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(0),
	datab => \instance_datapath|instance_contmist|Count\(1),
	datad => VCC,
	combout => \instance_datapath|instance_contmist|Count[1]~15_combout\,
	cout => \instance_datapath|instance_contmist|Count[1]~16\);

-- Location: LCCOMB_X62_Y23_N0
\instance_datapath|instance_ContC|Count[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[1]~15_combout\ = (\instance_datapath|instance_ContC|Count\(0) & (\instance_datapath|instance_ContC|Count\(1) $ (VCC))) # (!\instance_datapath|instance_ContC|Count\(0) & (\instance_datapath|instance_ContC|Count\(1) & 
-- VCC))
-- \instance_datapath|instance_ContC|Count[1]~16\ = CARRY((\instance_datapath|instance_ContC|Count\(0) & \instance_datapath|instance_ContC|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(0),
	datab => \instance_datapath|instance_ContC|Count\(1),
	datad => VCC,
	combout => \instance_datapath|instance_ContC|Count[1]~15_combout\,
	cout => \instance_datapath|instance_ContC|Count[1]~16\);

-- Location: LCFF_X62_Y23_N1
\instance_datapath|instance_ContC|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[1]~15_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(1));

-- Location: LCCOMB_X62_Y23_N2
\instance_datapath|instance_ContC|Count[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[2]~17_combout\ = (\instance_datapath|instance_ContC|Count\(2) & (!\instance_datapath|instance_ContC|Count[1]~16\)) # (!\instance_datapath|instance_ContC|Count\(2) & ((\instance_datapath|instance_ContC|Count[1]~16\) 
-- # (GND)))
-- \instance_datapath|instance_ContC|Count[2]~18\ = CARRY((!\instance_datapath|instance_ContC|Count[1]~16\) # (!\instance_datapath|instance_ContC|Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_ContC|Count\(2),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[1]~16\,
	combout => \instance_datapath|instance_ContC|Count[2]~17_combout\,
	cout => \instance_datapath|instance_ContC|Count[2]~18\);

-- Location: LCFF_X62_Y23_N3
\instance_datapath|instance_ContC|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[2]~17_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(2));

-- Location: LCCOMB_X62_Y23_N4
\instance_datapath|instance_ContC|Count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[3]~19_combout\ = (\instance_datapath|instance_ContC|Count\(3) & (\instance_datapath|instance_ContC|Count[2]~18\ $ (GND))) # (!\instance_datapath|instance_ContC|Count\(3) & 
-- (!\instance_datapath|instance_ContC|Count[2]~18\ & VCC))
-- \instance_datapath|instance_ContC|Count[3]~20\ = CARRY((\instance_datapath|instance_ContC|Count\(3) & !\instance_datapath|instance_ContC|Count[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_ContC|Count\(3),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[2]~18\,
	combout => \instance_datapath|instance_ContC|Count[3]~19_combout\,
	cout => \instance_datapath|instance_ContC|Count[3]~20\);

-- Location: LCFF_X62_Y23_N5
\instance_datapath|instance_ContC|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[3]~19_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(3));

-- Location: LCCOMB_X62_Y23_N6
\instance_datapath|instance_ContC|Count[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[4]~21_combout\ = (\instance_datapath|instance_ContC|Count\(4) & (!\instance_datapath|instance_ContC|Count[3]~20\)) # (!\instance_datapath|instance_ContC|Count\(4) & ((\instance_datapath|instance_ContC|Count[3]~20\) 
-- # (GND)))
-- \instance_datapath|instance_ContC|Count[4]~22\ = CARRY((!\instance_datapath|instance_ContC|Count[3]~20\) # (!\instance_datapath|instance_ContC|Count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(4),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[3]~20\,
	combout => \instance_datapath|instance_ContC|Count[4]~21_combout\,
	cout => \instance_datapath|instance_ContC|Count[4]~22\);

-- Location: LCCOMB_X62_Y23_N8
\instance_datapath|instance_ContC|Count[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[5]~23_combout\ = (\instance_datapath|instance_ContC|Count\(5) & (\instance_datapath|instance_ContC|Count[4]~22\ $ (GND))) # (!\instance_datapath|instance_ContC|Count\(5) & 
-- (!\instance_datapath|instance_ContC|Count[4]~22\ & VCC))
-- \instance_datapath|instance_ContC|Count[5]~24\ = CARRY((\instance_datapath|instance_ContC|Count\(5) & !\instance_datapath|instance_ContC|Count[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_ContC|Count\(5),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[4]~22\,
	combout => \instance_datapath|instance_ContC|Count[5]~23_combout\,
	cout => \instance_datapath|instance_ContC|Count[5]~24\);

-- Location: LCFF_X62_Y23_N9
\instance_datapath|instance_ContC|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[5]~23_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(5));

-- Location: LCCOMB_X62_Y23_N12
\instance_datapath|instance_ContC|Count[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[7]~27_combout\ = (\instance_datapath|instance_ContC|Count\(7) & (\instance_datapath|instance_ContC|Count[6]~26\ $ (GND))) # (!\instance_datapath|instance_ContC|Count\(7) & 
-- (!\instance_datapath|instance_ContC|Count[6]~26\ & VCC))
-- \instance_datapath|instance_ContC|Count[7]~28\ = CARRY((\instance_datapath|instance_ContC|Count\(7) & !\instance_datapath|instance_ContC|Count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(7),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[6]~26\,
	combout => \instance_datapath|instance_ContC|Count[7]~27_combout\,
	cout => \instance_datapath|instance_ContC|Count[7]~28\);

-- Location: LCCOMB_X62_Y23_N14
\instance_datapath|instance_ContC|Count[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[8]~30_combout\ = (\instance_datapath|instance_ContC|Count\(8) & (!\instance_datapath|instance_ContC|Count[7]~28\)) # (!\instance_datapath|instance_ContC|Count\(8) & ((\instance_datapath|instance_ContC|Count[7]~28\) 
-- # (GND)))
-- \instance_datapath|instance_ContC|Count[8]~31\ = CARRY((!\instance_datapath|instance_ContC|Count[7]~28\) # (!\instance_datapath|instance_ContC|Count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_ContC|Count\(8),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[7]~28\,
	combout => \instance_datapath|instance_ContC|Count[8]~30_combout\,
	cout => \instance_datapath|instance_ContC|Count[8]~31\);

-- Location: LCFF_X62_Y23_N15
\instance_datapath|instance_ContC|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[8]~30_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(8));

-- Location: LCCOMB_X62_Y23_N16
\instance_datapath|instance_ContC|Count[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[9]~32_combout\ = (\instance_datapath|instance_ContC|Count\(9) & (\instance_datapath|instance_ContC|Count[8]~31\ $ (GND))) # (!\instance_datapath|instance_ContC|Count\(9) & 
-- (!\instance_datapath|instance_ContC|Count[8]~31\ & VCC))
-- \instance_datapath|instance_ContC|Count[9]~33\ = CARRY((\instance_datapath|instance_ContC|Count\(9) & !\instance_datapath|instance_ContC|Count[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(9),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[8]~31\,
	combout => \instance_datapath|instance_ContC|Count[9]~32_combout\,
	cout => \instance_datapath|instance_ContC|Count[9]~33\);

-- Location: LCCOMB_X62_Y23_N18
\instance_datapath|instance_ContC|Count[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[10]~34_combout\ = (\instance_datapath|instance_ContC|Count\(10) & (!\instance_datapath|instance_ContC|Count[9]~33\)) # (!\instance_datapath|instance_ContC|Count\(10) & 
-- ((\instance_datapath|instance_ContC|Count[9]~33\) # (GND)))
-- \instance_datapath|instance_ContC|Count[10]~35\ = CARRY((!\instance_datapath|instance_ContC|Count[9]~33\) # (!\instance_datapath|instance_ContC|Count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_ContC|Count\(10),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[9]~33\,
	combout => \instance_datapath|instance_ContC|Count[10]~34_combout\,
	cout => \instance_datapath|instance_ContC|Count[10]~35\);

-- Location: LCFF_X62_Y23_N19
\instance_datapath|instance_ContC|Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[10]~34_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(10));

-- Location: LCCOMB_X62_Y23_N20
\instance_datapath|instance_ContC|Count[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[11]~36_combout\ = (\instance_datapath|instance_ContC|Count\(11) & (\instance_datapath|instance_ContC|Count[10]~35\ $ (GND))) # (!\instance_datapath|instance_ContC|Count\(11) & 
-- (!\instance_datapath|instance_ContC|Count[10]~35\ & VCC))
-- \instance_datapath|instance_ContC|Count[11]~37\ = CARRY((\instance_datapath|instance_ContC|Count\(11) & !\instance_datapath|instance_ContC|Count[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(11),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[10]~35\,
	combout => \instance_datapath|instance_ContC|Count[11]~36_combout\,
	cout => \instance_datapath|instance_ContC|Count[11]~37\);

-- Location: LCFF_X62_Y23_N21
\instance_datapath|instance_ContC|Count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[11]~36_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(11));

-- Location: LCFF_X62_Y23_N17
\instance_datapath|instance_ContC|Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[9]~32_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(9));

-- Location: LCCOMB_X63_Y24_N4
\instance_datapath|instance_CompC|LessThan1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~16_combout\ = (!\instance_datapath|instance_ContC|Count\(8) & (!\instance_datapath|instance_ContC|Count\(11) & (!\instance_datapath|instance_ContC|Count\(9) & !\instance_datapath|instance_ContC|Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(8),
	datab => \instance_datapath|instance_ContC|Count\(11),
	datac => \instance_datapath|instance_ContC|Count\(9),
	datad => \instance_datapath|instance_ContC|Count\(10),
	combout => \instance_datapath|instance_CompC|LessThan1~16_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y25_N28
\instance_datapath|instance_RegC|Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_RegC|Q[7]~feeder_combout\ = \Codigo_de_cor~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(31),
	combout => \instance_datapath|instance_RegC|Q[7]~feeder_combout\);

-- Location: LCFF_X64_Y25_N29
\instance_datapath|instance_RegC|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_RegC|Q[7]~feeder_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegC|Q\(7));

-- Location: LCFF_X63_Y25_N29
\instance_datapath|instance_RegC|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(30),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegC|Q\(6));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X63_Y23_N19
\instance_datapath|instance_RegC|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(29),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegC|Q\(5));

-- Location: LCFF_X62_Y23_N7
\instance_datapath|instance_ContC|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[4]~21_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(4));

-- Location: LCFF_X63_Y23_N13
\instance_datapath|instance_RegC|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(26),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegC|Q\(2));

-- Location: LCFF_X63_Y23_N11
\instance_datapath|instance_RegC|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(25),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegC|Q\(1));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X63_Y23_N9
\instance_datapath|instance_RegC|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(24),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegC|Q\(0));

-- Location: LCCOMB_X63_Y23_N8
\instance_datapath|instance_CompC|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~1_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(0) & !\instance_datapath|instance_RegC|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(0),
	datab => \instance_datapath|instance_RegC|Q\(0),
	datad => VCC,
	cout => \instance_datapath|instance_CompC|LessThan1~1_cout\);

-- Location: LCCOMB_X63_Y23_N10
\instance_datapath|instance_CompC|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~3_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(1) & (\instance_datapath|instance_RegC|Q\(1) & !\instance_datapath|instance_CompC|LessThan1~1_cout\)) # (!\instance_datapath|instance_ContC|Count\(1) & 
-- ((\instance_datapath|instance_RegC|Q\(1)) # (!\instance_datapath|instance_CompC|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(1),
	datab => \instance_datapath|instance_RegC|Q\(1),
	datad => VCC,
	cin => \instance_datapath|instance_CompC|LessThan1~1_cout\,
	cout => \instance_datapath|instance_CompC|LessThan1~3_cout\);

-- Location: LCCOMB_X63_Y23_N12
\instance_datapath|instance_CompC|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~5_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(2) & ((!\instance_datapath|instance_CompC|LessThan1~3_cout\) # (!\instance_datapath|instance_RegC|Q\(2)))) # 
-- (!\instance_datapath|instance_ContC|Count\(2) & (!\instance_datapath|instance_RegC|Q\(2) & !\instance_datapath|instance_CompC|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(2),
	datab => \instance_datapath|instance_RegC|Q\(2),
	datad => VCC,
	cin => \instance_datapath|instance_CompC|LessThan1~3_cout\,
	cout => \instance_datapath|instance_CompC|LessThan1~5_cout\);

-- Location: LCCOMB_X63_Y23_N14
\instance_datapath|instance_CompC|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~7_cout\ = CARRY((\instance_datapath|instance_RegC|Q\(3) & ((!\instance_datapath|instance_CompC|LessThan1~5_cout\) # (!\instance_datapath|instance_ContC|Count\(3)))) # (!\instance_datapath|instance_RegC|Q\(3) & 
-- (!\instance_datapath|instance_ContC|Count\(3) & !\instance_datapath|instance_CompC|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegC|Q\(3),
	datab => \instance_datapath|instance_ContC|Count\(3),
	datad => VCC,
	cin => \instance_datapath|instance_CompC|LessThan1~5_cout\,
	cout => \instance_datapath|instance_CompC|LessThan1~7_cout\);

-- Location: LCCOMB_X63_Y23_N16
\instance_datapath|instance_CompC|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~9_cout\ = CARRY((\instance_datapath|instance_RegC|Q\(4) & (\instance_datapath|instance_ContC|Count\(4) & !\instance_datapath|instance_CompC|LessThan1~7_cout\)) # (!\instance_datapath|instance_RegC|Q\(4) & 
-- ((\instance_datapath|instance_ContC|Count\(4)) # (!\instance_datapath|instance_CompC|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegC|Q\(4),
	datab => \instance_datapath|instance_ContC|Count\(4),
	datad => VCC,
	cin => \instance_datapath|instance_CompC|LessThan1~7_cout\,
	cout => \instance_datapath|instance_CompC|LessThan1~9_cout\);

-- Location: LCCOMB_X63_Y23_N18
\instance_datapath|instance_CompC|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~11_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(5) & (\instance_datapath|instance_RegC|Q\(5) & !\instance_datapath|instance_CompC|LessThan1~9_cout\)) # (!\instance_datapath|instance_ContC|Count\(5) & 
-- ((\instance_datapath|instance_RegC|Q\(5)) # (!\instance_datapath|instance_CompC|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(5),
	datab => \instance_datapath|instance_RegC|Q\(5),
	datad => VCC,
	cin => \instance_datapath|instance_CompC|LessThan1~9_cout\,
	cout => \instance_datapath|instance_CompC|LessThan1~11_cout\);

-- Location: LCCOMB_X63_Y23_N20
\instance_datapath|instance_CompC|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~13_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(6) & ((!\instance_datapath|instance_CompC|LessThan1~11_cout\) # (!\instance_datapath|instance_RegC|Q\(6)))) # 
-- (!\instance_datapath|instance_ContC|Count\(6) & (!\instance_datapath|instance_RegC|Q\(6) & !\instance_datapath|instance_CompC|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(6),
	datab => \instance_datapath|instance_RegC|Q\(6),
	datad => VCC,
	cin => \instance_datapath|instance_CompC|LessThan1~11_cout\,
	cout => \instance_datapath|instance_CompC|LessThan1~13_cout\);

-- Location: LCCOMB_X63_Y23_N22
\instance_datapath|instance_CompC|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~14_combout\ = (\instance_datapath|instance_ContC|Count\(7) & ((\instance_datapath|instance_CompC|LessThan1~13_cout\) # (!\instance_datapath|instance_RegC|Q\(7)))) # (!\instance_datapath|instance_ContC|Count\(7) 
-- & (\instance_datapath|instance_CompC|LessThan1~13_cout\ & !\instance_datapath|instance_RegC|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(7),
	datad => \instance_datapath|instance_RegC|Q\(7),
	cin => \instance_datapath|instance_CompC|LessThan1~13_cout\,
	combout => \instance_datapath|instance_CompC|LessThan1~14_combout\);

-- Location: LCFF_X62_Y23_N13
\instance_datapath|instance_ContC|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[7]~27_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(7));

-- Location: LCFF_X62_Y24_N29
\instance_datapath|instance_RegM|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(22),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegM|Q\(6));

-- Location: LCFF_X62_Y24_N15
\instance_datapath|instance_RegM|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(20),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegM|Q\(4));

-- Location: LCFF_X62_Y24_N9
\instance_datapath|instance_RegM|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(19),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegM|Q\(3));

-- Location: LCCOMB_X63_Y23_N24
\instance_datapath|instance_ContC|Count[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[0]~29_combout\ = \instance_datapath|instance_ContC|Count\(0) $ (\instance_controladora|estado.pigmento~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instance_ContC|Count\(0),
	datad => \instance_controladora|estado.pigmento~regout\,
	combout => \instance_datapath|instance_ContC|Count[0]~29_combout\);

-- Location: LCFF_X63_Y23_N25
\instance_datapath|instance_ContC|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[0]~29_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(0));

-- Location: LCCOMB_X62_Y24_N14
\instance_datapath|instance_CompM|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompM|LessThan1~1_cout\ = CARRY((!\instance_datapath|instance_RegM|Q\(0) & \instance_datapath|instance_ContC|Count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegM|Q\(0),
	datab => \instance_datapath|instance_ContC|Count\(0),
	datad => VCC,
	cout => \instance_datapath|instance_CompM|LessThan1~1_cout\);

-- Location: LCCOMB_X62_Y24_N16
\instance_datapath|instance_CompM|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompM|LessThan1~3_cout\ = CARRY((\instance_datapath|instance_RegM|Q\(1) & ((!\instance_datapath|instance_CompM|LessThan1~1_cout\) # (!\instance_datapath|instance_ContC|Count\(1)))) # (!\instance_datapath|instance_RegM|Q\(1) & 
-- (!\instance_datapath|instance_ContC|Count\(1) & !\instance_datapath|instance_CompM|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegM|Q\(1),
	datab => \instance_datapath|instance_ContC|Count\(1),
	datad => VCC,
	cin => \instance_datapath|instance_CompM|LessThan1~1_cout\,
	cout => \instance_datapath|instance_CompM|LessThan1~3_cout\);

-- Location: LCCOMB_X62_Y24_N18
\instance_datapath|instance_CompM|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompM|LessThan1~5_cout\ = CARRY((\instance_datapath|instance_RegM|Q\(2) & (\instance_datapath|instance_ContC|Count\(2) & !\instance_datapath|instance_CompM|LessThan1~3_cout\)) # (!\instance_datapath|instance_RegM|Q\(2) & 
-- ((\instance_datapath|instance_ContC|Count\(2)) # (!\instance_datapath|instance_CompM|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegM|Q\(2),
	datab => \instance_datapath|instance_ContC|Count\(2),
	datad => VCC,
	cin => \instance_datapath|instance_CompM|LessThan1~3_cout\,
	cout => \instance_datapath|instance_CompM|LessThan1~5_cout\);

-- Location: LCCOMB_X62_Y24_N20
\instance_datapath|instance_CompM|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompM|LessThan1~7_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(3) & (\instance_datapath|instance_RegM|Q\(3) & !\instance_datapath|instance_CompM|LessThan1~5_cout\)) # (!\instance_datapath|instance_ContC|Count\(3) & 
-- ((\instance_datapath|instance_RegM|Q\(3)) # (!\instance_datapath|instance_CompM|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(3),
	datab => \instance_datapath|instance_RegM|Q\(3),
	datad => VCC,
	cin => \instance_datapath|instance_CompM|LessThan1~5_cout\,
	cout => \instance_datapath|instance_CompM|LessThan1~7_cout\);

-- Location: LCCOMB_X62_Y24_N22
\instance_datapath|instance_CompM|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompM|LessThan1~9_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(4) & ((!\instance_datapath|instance_CompM|LessThan1~7_cout\) # (!\instance_datapath|instance_RegM|Q\(4)))) # 
-- (!\instance_datapath|instance_ContC|Count\(4) & (!\instance_datapath|instance_RegM|Q\(4) & !\instance_datapath|instance_CompM|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(4),
	datab => \instance_datapath|instance_RegM|Q\(4),
	datad => VCC,
	cin => \instance_datapath|instance_CompM|LessThan1~7_cout\,
	cout => \instance_datapath|instance_CompM|LessThan1~9_cout\);

-- Location: LCCOMB_X62_Y24_N24
\instance_datapath|instance_CompM|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompM|LessThan1~11_cout\ = CARRY((\instance_datapath|instance_RegM|Q\(5) & ((!\instance_datapath|instance_CompM|LessThan1~9_cout\) # (!\instance_datapath|instance_ContC|Count\(5)))) # (!\instance_datapath|instance_RegM|Q\(5) & 
-- (!\instance_datapath|instance_ContC|Count\(5) & !\instance_datapath|instance_CompM|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegM|Q\(5),
	datab => \instance_datapath|instance_ContC|Count\(5),
	datad => VCC,
	cin => \instance_datapath|instance_CompM|LessThan1~9_cout\,
	cout => \instance_datapath|instance_CompM|LessThan1~11_cout\);

-- Location: LCCOMB_X62_Y24_N26
\instance_datapath|instance_CompM|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompM|LessThan1~13_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(6) & ((!\instance_datapath|instance_CompM|LessThan1~11_cout\) # (!\instance_datapath|instance_RegM|Q\(6)))) # 
-- (!\instance_datapath|instance_ContC|Count\(6) & (!\instance_datapath|instance_RegM|Q\(6) & !\instance_datapath|instance_CompM|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(6),
	datab => \instance_datapath|instance_RegM|Q\(6),
	datad => VCC,
	cin => \instance_datapath|instance_CompM|LessThan1~11_cout\,
	cout => \instance_datapath|instance_CompM|LessThan1~13_cout\);

-- Location: LCCOMB_X62_Y24_N28
\instance_datapath|instance_CompM|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompM|LessThan1~14_combout\ = (\instance_datapath|instance_RegM|Q\(7) & (\instance_datapath|instance_ContC|Count\(7) & \instance_datapath|instance_CompM|LessThan1~13_cout\)) # (!\instance_datapath|instance_RegM|Q\(7) & 
-- ((\instance_datapath|instance_ContC|Count\(7)) # (\instance_datapath|instance_CompM|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegM|Q\(7),
	datab => \instance_datapath|instance_ContC|Count\(7),
	cin => \instance_datapath|instance_CompM|LessThan1~13_cout\,
	combout => \instance_datapath|instance_CompM|LessThan1~14_combout\);

-- Location: LCCOMB_X63_Y24_N14
\instance_controladora|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector3~0_combout\ = (((\instance_datapath|instance_CompC|LessThan1~14_combout\ & \instance_datapath|instance_CompM|LessThan1~14_combout\)) # (!\instance_datapath|instance_CompC|LessThan1~16_combout\)) # 
-- (!\instance_datapath|instance_CompC|LessThan1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_CompC|LessThan1~17_combout\,
	datab => \instance_datapath|instance_CompC|LessThan1~16_combout\,
	datac => \instance_datapath|instance_CompC|LessThan1~14_combout\,
	datad => \instance_datapath|instance_CompM|LessThan1~14_combout\,
	combout => \instance_controladora|Selector3~0_combout\);

-- Location: LCFF_X64_Y23_N15
\instance_datapath|instance_RegY|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(15),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegY|Q\(7));

-- Location: LCFF_X64_Y23_N5
\instance_datapath|instance_RegY|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(14),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegY|Q\(6));

-- Location: LCFF_X64_Y23_N3
\instance_datapath|instance_RegY|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(13),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegY|Q\(5));

-- Location: LCFF_X64_Y23_N9
\instance_datapath|instance_RegY|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(12),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegY|Q\(4));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y23_N29
\instance_datapath|instance_RegY|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(10),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegY|Q\(2));

-- Location: LCCOMB_X64_Y23_N10
\instance_datapath|instance_CompY|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompY|LessThan1~1_cout\ = CARRY((!\instance_datapath|instance_RegY|Q\(0) & \instance_datapath|instance_ContC|Count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegY|Q\(0),
	datab => \instance_datapath|instance_ContC|Count\(0),
	datad => VCC,
	cout => \instance_datapath|instance_CompY|LessThan1~1_cout\);

-- Location: LCCOMB_X64_Y23_N12
\instance_datapath|instance_CompY|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompY|LessThan1~3_cout\ = CARRY((\instance_datapath|instance_RegY|Q\(1) & ((!\instance_datapath|instance_CompY|LessThan1~1_cout\) # (!\instance_datapath|instance_ContC|Count\(1)))) # (!\instance_datapath|instance_RegY|Q\(1) & 
-- (!\instance_datapath|instance_ContC|Count\(1) & !\instance_datapath|instance_CompY|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegY|Q\(1),
	datab => \instance_datapath|instance_ContC|Count\(1),
	datad => VCC,
	cin => \instance_datapath|instance_CompY|LessThan1~1_cout\,
	cout => \instance_datapath|instance_CompY|LessThan1~3_cout\);

-- Location: LCCOMB_X64_Y23_N14
\instance_datapath|instance_CompY|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompY|LessThan1~5_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(2) & ((!\instance_datapath|instance_CompY|LessThan1~3_cout\) # (!\instance_datapath|instance_RegY|Q\(2)))) # 
-- (!\instance_datapath|instance_ContC|Count\(2) & (!\instance_datapath|instance_RegY|Q\(2) & !\instance_datapath|instance_CompY|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(2),
	datab => \instance_datapath|instance_RegY|Q\(2),
	datad => VCC,
	cin => \instance_datapath|instance_CompY|LessThan1~3_cout\,
	cout => \instance_datapath|instance_CompY|LessThan1~5_cout\);

-- Location: LCCOMB_X64_Y23_N16
\instance_datapath|instance_CompY|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompY|LessThan1~7_cout\ = CARRY((\instance_datapath|instance_RegY|Q\(3) & ((!\instance_datapath|instance_CompY|LessThan1~5_cout\) # (!\instance_datapath|instance_ContC|Count\(3)))) # (!\instance_datapath|instance_RegY|Q\(3) & 
-- (!\instance_datapath|instance_ContC|Count\(3) & !\instance_datapath|instance_CompY|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegY|Q\(3),
	datab => \instance_datapath|instance_ContC|Count\(3),
	datad => VCC,
	cin => \instance_datapath|instance_CompY|LessThan1~5_cout\,
	cout => \instance_datapath|instance_CompY|LessThan1~7_cout\);

-- Location: LCCOMB_X64_Y23_N18
\instance_datapath|instance_CompY|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompY|LessThan1~9_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(4) & ((!\instance_datapath|instance_CompY|LessThan1~7_cout\) # (!\instance_datapath|instance_RegY|Q\(4)))) # 
-- (!\instance_datapath|instance_ContC|Count\(4) & (!\instance_datapath|instance_RegY|Q\(4) & !\instance_datapath|instance_CompY|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(4),
	datab => \instance_datapath|instance_RegY|Q\(4),
	datad => VCC,
	cin => \instance_datapath|instance_CompY|LessThan1~7_cout\,
	cout => \instance_datapath|instance_CompY|LessThan1~9_cout\);

-- Location: LCCOMB_X64_Y23_N20
\instance_datapath|instance_CompY|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompY|LessThan1~11_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(5) & (\instance_datapath|instance_RegY|Q\(5) & !\instance_datapath|instance_CompY|LessThan1~9_cout\)) # (!\instance_datapath|instance_ContC|Count\(5) & 
-- ((\instance_datapath|instance_RegY|Q\(5)) # (!\instance_datapath|instance_CompY|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(5),
	datab => \instance_datapath|instance_RegY|Q\(5),
	datad => VCC,
	cin => \instance_datapath|instance_CompY|LessThan1~9_cout\,
	cout => \instance_datapath|instance_CompY|LessThan1~11_cout\);

-- Location: LCCOMB_X64_Y23_N22
\instance_datapath|instance_CompY|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompY|LessThan1~13_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(6) & ((!\instance_datapath|instance_CompY|LessThan1~11_cout\) # (!\instance_datapath|instance_RegY|Q\(6)))) # 
-- (!\instance_datapath|instance_ContC|Count\(6) & (!\instance_datapath|instance_RegY|Q\(6) & !\instance_datapath|instance_CompY|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(6),
	datab => \instance_datapath|instance_RegY|Q\(6),
	datad => VCC,
	cin => \instance_datapath|instance_CompY|LessThan1~11_cout\,
	cout => \instance_datapath|instance_CompY|LessThan1~13_cout\);

-- Location: LCCOMB_X64_Y23_N24
\instance_datapath|instance_CompY|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompY|LessThan1~14_combout\ = (\instance_datapath|instance_RegY|Q\(7) & (\instance_datapath|instance_CompY|LessThan1~13_cout\ & \instance_datapath|instance_ContC|Count\(7))) # (!\instance_datapath|instance_RegY|Q\(7) & 
-- ((\instance_datapath|instance_CompY|LessThan1~13_cout\) # (\instance_datapath|instance_ContC|Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_RegY|Q\(7),
	datad => \instance_datapath|instance_ContC|Count\(7),
	cin => \instance_datapath|instance_CompY|LessThan1~13_cout\,
	combout => \instance_datapath|instance_CompY|LessThan1~14_combout\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y24_N5
\instance_datapath|instance_RegK|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(7),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegK|Q\(7));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y24_N23
\instance_datapath|instance_RegK|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(6),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegK|Q\(6));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y24_N31
\instance_datapath|instance_RegK|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(5),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegK|Q\(5));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y24_N1
\instance_datapath|instance_RegK|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(4),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegK|Q\(4));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y24_N27
\instance_datapath|instance_RegK|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(3),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegK|Q\(3));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y24_N3
\instance_datapath|instance_RegK|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(1),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegK|Q\(1));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y24_N29
\instance_datapath|instance_RegK|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(0),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegK|Q\(0));

-- Location: LCCOMB_X64_Y24_N8
\instance_datapath|instance_CompK|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompK|LessThan1~1_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(0) & !\instance_datapath|instance_RegK|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(0),
	datab => \instance_datapath|instance_RegK|Q\(0),
	datad => VCC,
	cout => \instance_datapath|instance_CompK|LessThan1~1_cout\);

-- Location: LCCOMB_X64_Y24_N10
\instance_datapath|instance_CompK|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompK|LessThan1~3_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(1) & (\instance_datapath|instance_RegK|Q\(1) & !\instance_datapath|instance_CompK|LessThan1~1_cout\)) # (!\instance_datapath|instance_ContC|Count\(1) & 
-- ((\instance_datapath|instance_RegK|Q\(1)) # (!\instance_datapath|instance_CompK|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(1),
	datab => \instance_datapath|instance_RegK|Q\(1),
	datad => VCC,
	cin => \instance_datapath|instance_CompK|LessThan1~1_cout\,
	cout => \instance_datapath|instance_CompK|LessThan1~3_cout\);

-- Location: LCCOMB_X64_Y24_N12
\instance_datapath|instance_CompK|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompK|LessThan1~5_cout\ = CARRY((\instance_datapath|instance_RegK|Q\(2) & (\instance_datapath|instance_ContC|Count\(2) & !\instance_datapath|instance_CompK|LessThan1~3_cout\)) # (!\instance_datapath|instance_RegK|Q\(2) & 
-- ((\instance_datapath|instance_ContC|Count\(2)) # (!\instance_datapath|instance_CompK|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegK|Q\(2),
	datab => \instance_datapath|instance_ContC|Count\(2),
	datad => VCC,
	cin => \instance_datapath|instance_CompK|LessThan1~3_cout\,
	cout => \instance_datapath|instance_CompK|LessThan1~5_cout\);

-- Location: LCCOMB_X64_Y24_N14
\instance_datapath|instance_CompK|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompK|LessThan1~7_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(3) & (\instance_datapath|instance_RegK|Q\(3) & !\instance_datapath|instance_CompK|LessThan1~5_cout\)) # (!\instance_datapath|instance_ContC|Count\(3) & 
-- ((\instance_datapath|instance_RegK|Q\(3)) # (!\instance_datapath|instance_CompK|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(3),
	datab => \instance_datapath|instance_RegK|Q\(3),
	datad => VCC,
	cin => \instance_datapath|instance_CompK|LessThan1~5_cout\,
	cout => \instance_datapath|instance_CompK|LessThan1~7_cout\);

-- Location: LCCOMB_X64_Y24_N16
\instance_datapath|instance_CompK|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompK|LessThan1~9_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(4) & ((!\instance_datapath|instance_CompK|LessThan1~7_cout\) # (!\instance_datapath|instance_RegK|Q\(4)))) # 
-- (!\instance_datapath|instance_ContC|Count\(4) & (!\instance_datapath|instance_RegK|Q\(4) & !\instance_datapath|instance_CompK|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(4),
	datab => \instance_datapath|instance_RegK|Q\(4),
	datad => VCC,
	cin => \instance_datapath|instance_CompK|LessThan1~7_cout\,
	cout => \instance_datapath|instance_CompK|LessThan1~9_cout\);

-- Location: LCCOMB_X64_Y24_N18
\instance_datapath|instance_CompK|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompK|LessThan1~11_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(5) & (\instance_datapath|instance_RegK|Q\(5) & !\instance_datapath|instance_CompK|LessThan1~9_cout\)) # (!\instance_datapath|instance_ContC|Count\(5) & 
-- ((\instance_datapath|instance_RegK|Q\(5)) # (!\instance_datapath|instance_CompK|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(5),
	datab => \instance_datapath|instance_RegK|Q\(5),
	datad => VCC,
	cin => \instance_datapath|instance_CompK|LessThan1~9_cout\,
	cout => \instance_datapath|instance_CompK|LessThan1~11_cout\);

-- Location: LCCOMB_X64_Y24_N20
\instance_datapath|instance_CompK|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompK|LessThan1~13_cout\ = CARRY((\instance_datapath|instance_ContC|Count\(6) & ((!\instance_datapath|instance_CompK|LessThan1~11_cout\) # (!\instance_datapath|instance_RegK|Q\(6)))) # 
-- (!\instance_datapath|instance_ContC|Count\(6) & (!\instance_datapath|instance_RegK|Q\(6) & !\instance_datapath|instance_CompK|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(6),
	datab => \instance_datapath|instance_RegK|Q\(6),
	datad => VCC,
	cin => \instance_datapath|instance_CompK|LessThan1~11_cout\,
	cout => \instance_datapath|instance_CompK|LessThan1~13_cout\);

-- Location: LCCOMB_X64_Y24_N22
\instance_datapath|instance_CompK|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompK|LessThan1~14_combout\ = (\instance_datapath|instance_RegK|Q\(7) & (\instance_datapath|instance_CompK|LessThan1~13_cout\ & \instance_datapath|instance_ContC|Count\(7))) # (!\instance_datapath|instance_RegK|Q\(7) & 
-- ((\instance_datapath|instance_CompK|LessThan1~13_cout\) # (\instance_datapath|instance_ContC|Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_RegK|Q\(7),
	datad => \instance_datapath|instance_ContC|Count\(7),
	cin => \instance_datapath|instance_CompK|LessThan1~13_cout\,
	combout => \instance_datapath|instance_CompK|LessThan1~14_combout\);

-- Location: LCCOMB_X63_Y24_N0
\instance_controladora|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector3~1_combout\ = (((\instance_datapath|instance_CompY|LessThan1~14_combout\ & \instance_datapath|instance_CompK|LessThan1~14_combout\)) # (!\instance_datapath|instance_CompC|LessThan1~16_combout\)) # 
-- (!\instance_datapath|instance_CompC|LessThan1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_CompC|LessThan1~17_combout\,
	datab => \instance_datapath|instance_CompC|LessThan1~16_combout\,
	datac => \instance_datapath|instance_CompY|LessThan1~14_combout\,
	datad => \instance_datapath|instance_CompK|LessThan1~14_combout\,
	combout => \instance_controladora|Selector3~1_combout\);

-- Location: LCCOMB_X63_Y24_N28
\instance_controladora|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector3~2_combout\ = (\instance_controladora|estado.pigmento~regout\ & (\instance_controladora|Selector3~0_combout\ & \instance_controladora|Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|estado.pigmento~regout\,
	datac => \instance_controladora|Selector3~0_combout\,
	datad => \instance_controladora|Selector3~1_combout\,
	combout => \instance_controladora|Selector3~2_combout\);

-- Location: LCCOMB_X63_Y24_N10
\instance_controladora|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector3~3_combout\ = (\instance_controladora|Selector3~2_combout\) # ((!\instance_datapath|instance_compmist|LessThan0~4_combout\ & \instance_controladora|estado.mistura~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_compmist|LessThan0~4_combout\,
	datac => \instance_controladora|estado.mistura~regout\,
	datad => \instance_controladora|Selector3~2_combout\,
	combout => \instance_controladora|Selector3~3_combout\);

-- Location: LCFF_X63_Y24_N11
\instance_controladora|estado.mistura\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.mistura~regout\);

-- Location: LCFF_X62_Y25_N1
\instance_datapath|instance_contmist|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[1]~15_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(1));

-- Location: LCCOMB_X62_Y25_N2
\instance_datapath|instance_contmist|Count[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[2]~17_combout\ = (\instance_datapath|instance_contmist|Count\(2) & (!\instance_datapath|instance_contmist|Count[1]~16\)) # (!\instance_datapath|instance_contmist|Count\(2) & 
-- ((\instance_datapath|instance_contmist|Count[1]~16\) # (GND)))
-- \instance_datapath|instance_contmist|Count[2]~18\ = CARRY((!\instance_datapath|instance_contmist|Count[1]~16\) # (!\instance_datapath|instance_contmist|Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_contmist|Count\(2),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[1]~16\,
	combout => \instance_datapath|instance_contmist|Count[2]~17_combout\,
	cout => \instance_datapath|instance_contmist|Count[2]~18\);

-- Location: LCFF_X62_Y25_N3
\instance_datapath|instance_contmist|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[2]~17_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(2));

-- Location: LCCOMB_X62_Y25_N4
\instance_datapath|instance_contmist|Count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[3]~19_combout\ = (\instance_datapath|instance_contmist|Count\(3) & (\instance_datapath|instance_contmist|Count[2]~18\ $ (GND))) # (!\instance_datapath|instance_contmist|Count\(3) & 
-- (!\instance_datapath|instance_contmist|Count[2]~18\ & VCC))
-- \instance_datapath|instance_contmist|Count[3]~20\ = CARRY((\instance_datapath|instance_contmist|Count\(3) & !\instance_datapath|instance_contmist|Count[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_contmist|Count\(3),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[2]~18\,
	combout => \instance_datapath|instance_contmist|Count[3]~19_combout\,
	cout => \instance_datapath|instance_contmist|Count[3]~20\);

-- Location: LCFF_X62_Y25_N5
\instance_datapath|instance_contmist|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[3]~19_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(3));

-- Location: LCCOMB_X62_Y25_N8
\instance_datapath|instance_contmist|Count[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[5]~23_combout\ = (\instance_datapath|instance_contmist|Count\(5) & (\instance_datapath|instance_contmist|Count[4]~22\ $ (GND))) # (!\instance_datapath|instance_contmist|Count\(5) & 
-- (!\instance_datapath|instance_contmist|Count[4]~22\ & VCC))
-- \instance_datapath|instance_contmist|Count[5]~24\ = CARRY((\instance_datapath|instance_contmist|Count\(5) & !\instance_datapath|instance_contmist|Count[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_contmist|Count\(5),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[4]~22\,
	combout => \instance_datapath|instance_contmist|Count[5]~23_combout\,
	cout => \instance_datapath|instance_contmist|Count[5]~24\);

-- Location: LCFF_X62_Y25_N9
\instance_datapath|instance_contmist|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[5]~23_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(5));

-- Location: LCCOMB_X62_Y25_N10
\instance_datapath|instance_contmist|Count[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[6]~25_combout\ = (\instance_datapath|instance_contmist|Count\(6) & (!\instance_datapath|instance_contmist|Count[5]~24\)) # (!\instance_datapath|instance_contmist|Count\(6) & 
-- ((\instance_datapath|instance_contmist|Count[5]~24\) # (GND)))
-- \instance_datapath|instance_contmist|Count[6]~26\ = CARRY((!\instance_datapath|instance_contmist|Count[5]~24\) # (!\instance_datapath|instance_contmist|Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(6),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[5]~24\,
	combout => \instance_datapath|instance_contmist|Count[6]~25_combout\,
	cout => \instance_datapath|instance_contmist|Count[6]~26\);

-- Location: LCCOMB_X62_Y25_N12
\instance_datapath|instance_contmist|Count[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[7]~27_combout\ = (\instance_datapath|instance_contmist|Count\(7) & (\instance_datapath|instance_contmist|Count[6]~26\ $ (GND))) # (!\instance_datapath|instance_contmist|Count\(7) & 
-- (!\instance_datapath|instance_contmist|Count[6]~26\ & VCC))
-- \instance_datapath|instance_contmist|Count[7]~28\ = CARRY((\instance_datapath|instance_contmist|Count\(7) & !\instance_datapath|instance_contmist|Count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(7),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[6]~26\,
	combout => \instance_datapath|instance_contmist|Count[7]~27_combout\,
	cout => \instance_datapath|instance_contmist|Count[7]~28\);

-- Location: LCCOMB_X62_Y25_N14
\instance_datapath|instance_contmist|Count[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[8]~29_combout\ = (\instance_datapath|instance_contmist|Count\(8) & (!\instance_datapath|instance_contmist|Count[7]~28\)) # (!\instance_datapath|instance_contmist|Count\(8) & 
-- ((\instance_datapath|instance_contmist|Count[7]~28\) # (GND)))
-- \instance_datapath|instance_contmist|Count[8]~30\ = CARRY((!\instance_datapath|instance_contmist|Count[7]~28\) # (!\instance_datapath|instance_contmist|Count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_contmist|Count\(8),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[7]~28\,
	combout => \instance_datapath|instance_contmist|Count[8]~29_combout\,
	cout => \instance_datapath|instance_contmist|Count[8]~30\);

-- Location: LCFF_X62_Y25_N15
\instance_datapath|instance_contmist|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[8]~29_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(8));

-- Location: LCCOMB_X62_Y25_N16
\instance_datapath|instance_contmist|Count[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[9]~31_combout\ = (\instance_datapath|instance_contmist|Count\(9) & (\instance_datapath|instance_contmist|Count[8]~30\ $ (GND))) # (!\instance_datapath|instance_contmist|Count\(9) & 
-- (!\instance_datapath|instance_contmist|Count[8]~30\ & VCC))
-- \instance_datapath|instance_contmist|Count[9]~32\ = CARRY((\instance_datapath|instance_contmist|Count\(9) & !\instance_datapath|instance_contmist|Count[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(9),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[8]~30\,
	combout => \instance_datapath|instance_contmist|Count[9]~31_combout\,
	cout => \instance_datapath|instance_contmist|Count[9]~32\);

-- Location: LCCOMB_X62_Y25_N18
\instance_datapath|instance_contmist|Count[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[10]~33_combout\ = (\instance_datapath|instance_contmist|Count\(10) & (!\instance_datapath|instance_contmist|Count[9]~32\)) # (!\instance_datapath|instance_contmist|Count\(10) & 
-- ((\instance_datapath|instance_contmist|Count[9]~32\) # (GND)))
-- \instance_datapath|instance_contmist|Count[10]~34\ = CARRY((!\instance_datapath|instance_contmist|Count[9]~32\) # (!\instance_datapath|instance_contmist|Count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_contmist|Count\(10),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[9]~32\,
	combout => \instance_datapath|instance_contmist|Count[10]~33_combout\,
	cout => \instance_datapath|instance_contmist|Count[10]~34\);

-- Location: LCFF_X62_Y25_N19
\instance_datapath|instance_contmist|Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[10]~33_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(10));

-- Location: LCCOMB_X62_Y25_N20
\instance_datapath|instance_contmist|Count[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[11]~35_combout\ = (\instance_datapath|instance_contmist|Count\(11) & (\instance_datapath|instance_contmist|Count[10]~34\ $ (GND))) # (!\instance_datapath|instance_contmist|Count\(11) & 
-- (!\instance_datapath|instance_contmist|Count[10]~34\ & VCC))
-- \instance_datapath|instance_contmist|Count[11]~36\ = CARRY((\instance_datapath|instance_contmist|Count\(11) & !\instance_datapath|instance_contmist|Count[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(11),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[10]~34\,
	combout => \instance_datapath|instance_contmist|Count[11]~35_combout\,
	cout => \instance_datapath|instance_contmist|Count[11]~36\);

-- Location: LCCOMB_X62_Y25_N22
\instance_datapath|instance_contmist|Count[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[12]~37_combout\ = (\instance_datapath|instance_contmist|Count\(12) & (!\instance_datapath|instance_contmist|Count[11]~36\)) # (!\instance_datapath|instance_contmist|Count\(12) & 
-- ((\instance_datapath|instance_contmist|Count[11]~36\) # (GND)))
-- \instance_datapath|instance_contmist|Count[12]~38\ = CARRY((!\instance_datapath|instance_contmist|Count[11]~36\) # (!\instance_datapath|instance_contmist|Count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_contmist|Count\(12),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[11]~36\,
	combout => \instance_datapath|instance_contmist|Count[12]~37_combout\,
	cout => \instance_datapath|instance_contmist|Count[12]~38\);

-- Location: LCFF_X62_Y25_N23
\instance_datapath|instance_contmist|Count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[12]~37_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(12));

-- Location: LCCOMB_X62_Y25_N24
\instance_datapath|instance_contmist|Count[13]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[13]~39_combout\ = (\instance_datapath|instance_contmist|Count\(13) & (\instance_datapath|instance_contmist|Count[12]~38\ $ (GND))) # (!\instance_datapath|instance_contmist|Count\(13) & 
-- (!\instance_datapath|instance_contmist|Count[12]~38\ & VCC))
-- \instance_datapath|instance_contmist|Count[13]~40\ = CARRY((\instance_datapath|instance_contmist|Count\(13) & !\instance_datapath|instance_contmist|Count[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(13),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[12]~38\,
	combout => \instance_datapath|instance_contmist|Count[13]~39_combout\,
	cout => \instance_datapath|instance_contmist|Count[13]~40\);

-- Location: LCFF_X62_Y25_N25
\instance_datapath|instance_contmist|Count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[13]~39_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(13));

-- Location: LCCOMB_X62_Y25_N26
\instance_datapath|instance_contmist|Count[14]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[14]~41_combout\ = (\instance_datapath|instance_contmist|Count\(14) & (!\instance_datapath|instance_contmist|Count[13]~40\)) # (!\instance_datapath|instance_contmist|Count\(14) & 
-- ((\instance_datapath|instance_contmist|Count[13]~40\) # (GND)))
-- \instance_datapath|instance_contmist|Count[14]~42\ = CARRY((!\instance_datapath|instance_contmist|Count[13]~40\) # (!\instance_datapath|instance_contmist|Count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_contmist|Count\(14),
	datad => VCC,
	cin => \instance_datapath|instance_contmist|Count[13]~40\,
	combout => \instance_datapath|instance_contmist|Count[14]~41_combout\,
	cout => \instance_datapath|instance_contmist|Count[14]~42\);

-- Location: LCFF_X62_Y25_N27
\instance_datapath|instance_contmist|Count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[14]~41_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(14));

-- Location: LCCOMB_X62_Y25_N28
\instance_datapath|instance_contmist|Count[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_contmist|Count[15]~43_combout\ = \instance_datapath|instance_contmist|Count[14]~42\ $ (!\instance_datapath|instance_contmist|Count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instance_contmist|Count\(15),
	cin => \instance_datapath|instance_contmist|Count[14]~42\,
	combout => \instance_datapath|instance_contmist|Count[15]~43_combout\);

-- Location: LCFF_X62_Y25_N29
\instance_datapath|instance_contmist|Count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[15]~43_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(15));

-- Location: LCCOMB_X63_Y25_N22
\instance_datapath|instance_compmist|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_compmist|LessThan0~3_combout\ = (\instance_datapath|instance_contmist|Count\(13)) # ((\instance_datapath|instance_contmist|Count\(14)) # (\instance_datapath|instance_contmist|Count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_contmist|Count\(13),
	datac => \instance_datapath|instance_contmist|Count\(14),
	datad => \instance_datapath|instance_contmist|Count\(15),
	combout => \instance_datapath|instance_compmist|LessThan0~3_combout\);

-- Location: LCFF_X62_Y25_N17
\instance_datapath|instance_contmist|Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[9]~31_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(9));

-- Location: LCFF_X62_Y25_N21
\instance_datapath|instance_contmist|Count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[11]~35_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(11));

-- Location: LCCOMB_X63_Y25_N20
\instance_datapath|instance_compmist|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_compmist|LessThan0~2_combout\ = (\instance_datapath|instance_contmist|Count\(12)) # ((\instance_datapath|instance_contmist|Count\(9)) # ((\instance_datapath|instance_contmist|Count\(11)) # 
-- (\instance_datapath|instance_contmist|Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(12),
	datab => \instance_datapath|instance_contmist|Count\(9),
	datac => \instance_datapath|instance_contmist|Count\(11),
	datad => \instance_datapath|instance_contmist|Count\(10),
	combout => \instance_datapath|instance_compmist|LessThan0~2_combout\);

-- Location: LCFF_X62_Y25_N13
\instance_datapath|instance_contmist|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[7]~27_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(7));

-- Location: LCFF_X62_Y25_N11
\instance_datapath|instance_contmist|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_contmist|Count[6]~25_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_contmist|Count\(6));

-- Location: LCCOMB_X63_Y25_N30
\instance_datapath|instance_compmist|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_compmist|LessThan0~1_combout\ = (\instance_datapath|instance_contmist|Count\(8)) # ((\instance_datapath|instance_contmist|Count\(7)) # ((\instance_datapath|instance_contmist|Count\(6)) # 
-- (\instance_datapath|instance_contmist|Count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_contmist|Count\(8),
	datab => \instance_datapath|instance_contmist|Count\(7),
	datac => \instance_datapath|instance_contmist|Count\(6),
	datad => \instance_datapath|instance_contmist|Count\(5),
	combout => \instance_datapath|instance_compmist|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y25_N24
\instance_datapath|instance_compmist|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_compmist|LessThan0~4_combout\ = (\instance_datapath|instance_compmist|LessThan0~0_combout\) # ((\instance_datapath|instance_compmist|LessThan0~3_combout\) # ((\instance_datapath|instance_compmist|LessThan0~2_combout\) # 
-- (\instance_datapath|instance_compmist|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_compmist|LessThan0~0_combout\,
	datab => \instance_datapath|instance_compmist|LessThan0~3_combout\,
	datac => \instance_datapath|instance_compmist|LessThan0~2_combout\,
	datad => \instance_datapath|instance_compmist|LessThan0~1_combout\,
	combout => \instance_datapath|instance_compmist|LessThan0~4_combout\);

-- Location: LCCOMB_X63_Y25_N6
\instance_controladora|estado~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|estado~11_combout\ = (\instance_datapath|instance_compmist|LessThan0~4_combout\ & \instance_controladora|estado.mistura~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instance_compmist|LessThan0~4_combout\,
	datad => \instance_controladora|estado.mistura~regout\,
	combout => \instance_controladora|estado~11_combout\);

-- Location: LCFF_X63_Y25_N7
\instance_controladora|estado.valida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|estado~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.valida~regout\);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N1
\instance_datapath|instance_RegM|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(23),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegM|Q\(7));

-- Location: LCCOMB_X62_Y24_N0
\instance_datapath|instance_Compcor|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~13_combout\ = (\Sensor_de_cor~combout\(23) & (\instance_datapath|instance_RegM|Q\(7) & (\Sensor_de_cor~combout\(22) $ (!\instance_datapath|instance_RegM|Q\(6))))) # (!\Sensor_de_cor~combout\(23) & 
-- (!\instance_datapath|instance_RegM|Q\(7) & (\Sensor_de_cor~combout\(22) $ (!\instance_datapath|instance_RegM|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(23),
	datab => \Sensor_de_cor~combout\(22),
	datac => \instance_datapath|instance_RegM|Q\(7),
	datad => \instance_datapath|instance_RegM|Q\(6),
	combout => \instance_datapath|instance_Compcor|Equal0~13_combout\);

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X62_Y24_N6
\instance_datapath|instance_RegM|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_RegM|Q[0]~feeder_combout\ = \Codigo_de_cor~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(16),
	combout => \instance_datapath|instance_RegM|Q[0]~feeder_combout\);

-- Location: LCFF_X62_Y24_N7
\instance_datapath|instance_RegM|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_RegM|Q[0]~feeder_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegM|Q\(0));

-- Location: LCCOMB_X62_Y24_N4
\instance_datapath|instance_Compcor|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~10_combout\ = (\instance_datapath|instance_RegM|Q\(1) & (\Sensor_de_cor~combout\(17) & (\Sensor_de_cor~combout\(16) $ (!\instance_datapath|instance_RegM|Q\(0))))) # (!\instance_datapath|instance_RegM|Q\(1) & 
-- (!\Sensor_de_cor~combout\(17) & (\Sensor_de_cor~combout\(16) $ (!\instance_datapath|instance_RegM|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegM|Q\(1),
	datab => \Sensor_de_cor~combout\(16),
	datac => \Sensor_de_cor~combout\(17),
	datad => \instance_datapath|instance_RegM|Q\(0),
	combout => \instance_datapath|instance_Compcor|Equal0~10_combout\);

-- Location: LCFF_X62_Y24_N31
\instance_datapath|instance_RegM|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(21),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegM|Q\(5));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X62_Y24_N30
\instance_datapath|instance_Compcor|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~12_combout\ = (\Sensor_de_cor~combout\(20) & (\instance_datapath|instance_RegM|Q\(4) & (\instance_datapath|instance_RegM|Q\(5) $ (!\Sensor_de_cor~combout\(21))))) # (!\Sensor_de_cor~combout\(20) & 
-- (!\instance_datapath|instance_RegM|Q\(4) & (\instance_datapath|instance_RegM|Q\(5) $ (!\Sensor_de_cor~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(20),
	datab => \instance_datapath|instance_RegM|Q\(4),
	datac => \instance_datapath|instance_RegM|Q\(5),
	datad => \Sensor_de_cor~combout\(21),
	combout => \instance_datapath|instance_Compcor|Equal0~12_combout\);

-- Location: LCCOMB_X62_Y24_N2
\instance_datapath|instance_Compcor|Equal0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~14_combout\ = (\instance_datapath|instance_Compcor|Equal0~11_combout\ & (\instance_datapath|instance_Compcor|Equal0~13_combout\ & (\instance_datapath|instance_Compcor|Equal0~10_combout\ & 
-- \instance_datapath|instance_Compcor|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Compcor|Equal0~11_combout\,
	datab => \instance_datapath|instance_Compcor|Equal0~13_combout\,
	datac => \instance_datapath|instance_Compcor|Equal0~10_combout\,
	datad => \instance_datapath|instance_Compcor|Equal0~12_combout\,
	combout => \instance_datapath|instance_Compcor|Equal0~14_combout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y24_N30
\instance_datapath|instance_Compcor|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~2_combout\ = (\Sensor_de_cor~combout\(5) & (\instance_datapath|instance_RegK|Q\(5) & (\Sensor_de_cor~combout\(4) $ (!\instance_datapath|instance_RegK|Q\(4))))) # (!\Sensor_de_cor~combout\(5) & 
-- (!\instance_datapath|instance_RegK|Q\(5) & (\Sensor_de_cor~combout\(4) $ (!\instance_datapath|instance_RegK|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(5),
	datab => \Sensor_de_cor~combout\(4),
	datac => \instance_datapath|instance_RegK|Q\(5),
	datad => \instance_datapath|instance_RegK|Q\(4),
	combout => \instance_datapath|instance_Compcor|Equal0~2_combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y24_N25
\instance_datapath|instance_RegK|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(2),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegK|Q\(2));

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X63_Y24_N6
\instance_datapath|instance_Compcor|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~1_combout\ = (\instance_datapath|instance_RegK|Q\(3) & (\Sensor_de_cor~combout\(3) & (\Sensor_de_cor~combout\(2) $ (!\instance_datapath|instance_RegK|Q\(2))))) # (!\instance_datapath|instance_RegK|Q\(3) & 
-- (!\Sensor_de_cor~combout\(3) & (\Sensor_de_cor~combout\(2) $ (!\instance_datapath|instance_RegK|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegK|Q\(3),
	datab => \Sensor_de_cor~combout\(2),
	datac => \instance_datapath|instance_RegK|Q\(2),
	datad => \Sensor_de_cor~combout\(3),
	combout => \instance_datapath|instance_Compcor|Equal0~1_combout\);

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y24_N2
\instance_datapath|instance_Compcor|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~0_combout\ = (\Sensor_de_cor~combout\(0) & (\instance_datapath|instance_RegK|Q\(0) & (\Sensor_de_cor~combout\(1) $ (!\instance_datapath|instance_RegK|Q\(1))))) # (!\Sensor_de_cor~combout\(0) & 
-- (!\instance_datapath|instance_RegK|Q\(0) & (\Sensor_de_cor~combout\(1) $ (!\instance_datapath|instance_RegK|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(0),
	datab => \Sensor_de_cor~combout\(1),
	datac => \instance_datapath|instance_RegK|Q\(1),
	datad => \instance_datapath|instance_RegK|Q\(0),
	combout => \instance_datapath|instance_Compcor|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y24_N16
\instance_datapath|instance_Compcor|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~4_combout\ = (\instance_datapath|instance_Compcor|Equal0~3_combout\ & (\instance_datapath|instance_Compcor|Equal0~2_combout\ & (\instance_datapath|instance_Compcor|Equal0~1_combout\ & 
-- \instance_datapath|instance_Compcor|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Compcor|Equal0~3_combout\,
	datab => \instance_datapath|instance_Compcor|Equal0~2_combout\,
	datac => \instance_datapath|instance_Compcor|Equal0~1_combout\,
	datad => \instance_datapath|instance_Compcor|Equal0~0_combout\,
	combout => \instance_datapath|instance_Compcor|Equal0~4_combout\);

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y25_N0
\instance_datapath|instance_Compcor|Equal0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~18_combout\ = (\Sensor_de_cor~combout\(31) & (\instance_datapath|instance_RegC|Q\(7) & (\Sensor_de_cor~combout\(30) $ (!\instance_datapath|instance_RegC|Q\(6))))) # (!\Sensor_de_cor~combout\(31) & 
-- (!\instance_datapath|instance_RegC|Q\(7) & (\Sensor_de_cor~combout\(30) $ (!\instance_datapath|instance_RegC|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(31),
	datab => \Sensor_de_cor~combout\(30),
	datac => \instance_datapath|instance_RegC|Q\(6),
	datad => \instance_datapath|instance_RegC|Q\(7),
	combout => \instance_datapath|instance_Compcor|Equal0~18_combout\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y25_N14
\instance_datapath|instance_Compcor|Equal0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~15_combout\ = (\Sensor_de_cor~combout\(24) & (\instance_datapath|instance_RegC|Q\(0) & (\Sensor_de_cor~combout\(25) $ (!\instance_datapath|instance_RegC|Q\(1))))) # (!\Sensor_de_cor~combout\(24) & 
-- (!\instance_datapath|instance_RegC|Q\(0) & (\Sensor_de_cor~combout\(25) $ (!\instance_datapath|instance_RegC|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_de_cor~combout\(24),
	datab => \Sensor_de_cor~combout\(25),
	datac => \instance_datapath|instance_RegC|Q\(0),
	datad => \instance_datapath|instance_RegC|Q\(1),
	combout => \instance_datapath|instance_Compcor|Equal0~15_combout\);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X63_Y23_N17
\instance_datapath|instance_RegC|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(28),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegC|Q\(4));

-- Location: LCCOMB_X64_Y25_N18
\instance_datapath|instance_Compcor|Equal0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~17_combout\ = (\instance_datapath|instance_RegC|Q\(5) & (\Sensor_de_cor~combout\(29) & (\Sensor_de_cor~combout\(28) $ (!\instance_datapath|instance_RegC|Q\(4))))) # (!\instance_datapath|instance_RegC|Q\(5) & 
-- (!\Sensor_de_cor~combout\(29) & (\Sensor_de_cor~combout\(28) $ (!\instance_datapath|instance_RegC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_RegC|Q\(5),
	datab => \Sensor_de_cor~combout\(28),
	datac => \Sensor_de_cor~combout\(29),
	datad => \instance_datapath|instance_RegC|Q\(4),
	combout => \instance_datapath|instance_Compcor|Equal0~17_combout\);

-- Location: LCCOMB_X64_Y25_N26
\instance_datapath|instance_Compcor|Equal0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~19_combout\ = (\instance_datapath|instance_Compcor|Equal0~16_combout\ & (\instance_datapath|instance_Compcor|Equal0~18_combout\ & (\instance_datapath|instance_Compcor|Equal0~15_combout\ & 
-- \instance_datapath|instance_Compcor|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Compcor|Equal0~16_combout\,
	datab => \instance_datapath|instance_Compcor|Equal0~18_combout\,
	datac => \instance_datapath|instance_Compcor|Equal0~15_combout\,
	datad => \instance_datapath|instance_Compcor|Equal0~17_combout\,
	combout => \instance_datapath|instance_Compcor|Equal0~19_combout\);

-- Location: LCCOMB_X63_Y23_N2
\instance_datapath|instance_Compcor|Equal0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_Compcor|Equal0~20_combout\ = (\instance_datapath|instance_Compcor|Equal0~9_combout\ & (\instance_datapath|instance_Compcor|Equal0~14_combout\ & (\instance_datapath|instance_Compcor|Equal0~4_combout\ & 
-- \instance_datapath|instance_Compcor|Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_Compcor|Equal0~9_combout\,
	datab => \instance_datapath|instance_Compcor|Equal0~14_combout\,
	datac => \instance_datapath|instance_Compcor|Equal0~4_combout\,
	datad => \instance_datapath|instance_Compcor|Equal0~19_combout\,
	combout => \instance_datapath|instance_Compcor|Equal0~20_combout\);

-- Location: LCCOMB_X63_Y23_N6
\instance_controladora|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector5~0_combout\ = (\Reset~combout\ & (\instance_controladora|estado.valida~regout\ & ((!\instance_datapath|instance_Compcor|Equal0~20_combout\)))) # (!\Reset~combout\ & ((\instance_controladora|estado.erro~regout\) # 
-- ((\instance_controladora|estado.valida~regout\ & !\instance_datapath|instance_Compcor|Equal0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~combout\,
	datab => \instance_controladora|estado.valida~regout\,
	datac => \instance_controladora|estado.erro~regout\,
	datad => \instance_datapath|instance_Compcor|Equal0~20_combout\,
	combout => \instance_controladora|Selector5~0_combout\);

-- Location: LCCOMB_X63_Y23_N4
\instance_controladora|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector5~1_combout\ = (\instance_controladora|Selector5~0_combout\) # ((\instance_controladora|estado.verifica~regout\ & \instance_controladora|Codigo_de_erro[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_controladora|estado.verifica~regout\,
	datac => \instance_controladora|Codigo_de_erro[0]~0_combout\,
	datad => \instance_controladora|Selector5~0_combout\,
	combout => \instance_controladora|Selector5~1_combout\);

-- Location: LCFF_X63_Y23_N5
\instance_controladora|estado.erro\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.erro~regout\);

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X63_Y23_N26
\instance_controladora|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector4~0_combout\ = (\Recipiente~combout\ & ((\instance_controladora|estado.pronto~regout\) # ((\instance_controladora|estado.valida~regout\ & \instance_datapath|instance_Compcor|Equal0~20_combout\)))) # (!\Recipiente~combout\ & 
-- (\instance_controladora|estado.valida~regout\ & ((\instance_datapath|instance_Compcor|Equal0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recipiente~combout\,
	datab => \instance_controladora|estado.valida~regout\,
	datac => \instance_controladora|estado.pronto~regout\,
	datad => \instance_datapath|instance_Compcor|Equal0~20_combout\,
	combout => \instance_controladora|Selector4~0_combout\);

-- Location: LCFF_X63_Y23_N27
\instance_controladora|estado.pronto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.pronto~regout\);

-- Location: LCCOMB_X63_Y23_N28
\instance_controladora|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector0~0_combout\ = (\Recipiente~combout\ & (\instance_controladora|estado.erro~regout\ & (\Reset~combout\))) # (!\Recipiente~combout\ & ((\instance_controladora|estado.pronto~regout\) # 
-- ((\instance_controladora|estado.erro~regout\ & \Reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recipiente~combout\,
	datab => \instance_controladora|estado.erro~regout\,
	datac => \Reset~combout\,
	datad => \instance_controladora|estado.pronto~regout\,
	combout => \instance_controladora|Selector0~0_combout\);

-- Location: LCCOMB_X63_Y23_N0
\instance_controladora|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector0~1_combout\ = (!\instance_controladora|Selector0~0_combout\ & ((\instance_controladora|Codigo_de_erro[0]~0_combout\) # ((!\instance_controladora|estado.verifica~regout\) # (!\Reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|Codigo_de_erro[0]~0_combout\,
	datab => \instance_controladora|Selector0~0_combout\,
	datac => \Reset~combout\,
	datad => \instance_controladora|estado.verifica~regout\,
	combout => \instance_controladora|Selector0~1_combout\);

-- Location: LCFF_X63_Y23_N1
\instance_controladora|estado.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.inicio~regout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Iniciar~I\ : cycloneii_io
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
	padio => ww_Iniciar,
	combout => \Iniciar~combout\);

-- Location: LCCOMB_X63_Y25_N18
\instance_controladora|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector1~0_combout\ = ((\instance_controladora|estado.espera~regout\ & ((!\Iniciar~combout\) # (!\Recipiente~combout\)))) # (!\instance_controladora|estado.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recipiente~combout\,
	datab => \instance_controladora|estado.inicio~regout\,
	datac => \instance_controladora|estado.espera~regout\,
	datad => \Iniciar~combout\,
	combout => \instance_controladora|Selector1~0_combout\);

-- Location: LCFF_X63_Y25_N19
\instance_controladora|estado.espera\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.espera~regout\);

-- Location: LCCOMB_X63_Y25_N8
\instance_controladora|estado~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|estado~10_combout\ = (\Recipiente~combout\ & (\instance_controladora|estado.espera~regout\ & \Iniciar~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recipiente~combout\,
	datab => \instance_controladora|estado.espera~regout\,
	datad => \Iniciar~combout\,
	combout => \instance_controladora|estado~10_combout\);

-- Location: LCFF_X63_Y25_N9
\instance_controladora|estado.verifica\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|estado~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.verifica~regout\);

-- Location: LCCOMB_X63_Y24_N2
\instance_controladora|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector2~0_combout\ = (\instance_controladora|estado.pigmento~regout\ & ((!\instance_controladora|Selector3~1_combout\) # (!\instance_controladora|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|estado.pigmento~regout\,
	datac => \instance_controladora|Selector3~0_combout\,
	datad => \instance_controladora|Selector3~1_combout\,
	combout => \instance_controladora|Selector2~0_combout\);

-- Location: LCCOMB_X63_Y24_N24
\instance_controladora|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Selector2~1_combout\ = (\instance_controladora|Selector2~0_combout\) # ((!\Reset~combout\ & (\instance_controladora|estado.verifica~regout\ & !\instance_controladora|Codigo_de_erro[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~combout\,
	datab => \instance_controladora|estado.verifica~regout\,
	datac => \instance_controladora|Codigo_de_erro[0]~0_combout\,
	datad => \instance_controladora|Selector2~0_combout\,
	combout => \instance_controladora|Selector2~1_combout\);

-- Location: LCFF_X63_Y24_N25
\instance_controladora|estado.pigmento\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_controladora|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_controladora|estado.pigmento~regout\);

-- Location: LCCOMB_X62_Y23_N22
\instance_datapath|instance_ContC|Count[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[12]~38_combout\ = (\instance_datapath|instance_ContC|Count\(12) & (!\instance_datapath|instance_ContC|Count[11]~37\)) # (!\instance_datapath|instance_ContC|Count\(12) & 
-- ((\instance_datapath|instance_ContC|Count[11]~37\) # (GND)))
-- \instance_datapath|instance_ContC|Count[12]~39\ = CARRY((!\instance_datapath|instance_ContC|Count[11]~37\) # (!\instance_datapath|instance_ContC|Count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instance_ContC|Count\(12),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[11]~37\,
	combout => \instance_datapath|instance_ContC|Count[12]~38_combout\,
	cout => \instance_datapath|instance_ContC|Count[12]~39\);

-- Location: LCFF_X62_Y23_N23
\instance_datapath|instance_ContC|Count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[12]~38_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(12));

-- Location: LCCOMB_X62_Y23_N24
\instance_datapath|instance_ContC|Count[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_ContC|Count[13]~40_combout\ = (\instance_datapath|instance_ContC|Count\(13) & (\instance_datapath|instance_ContC|Count[12]~39\ $ (GND))) # (!\instance_datapath|instance_ContC|Count\(13) & 
-- (!\instance_datapath|instance_ContC|Count[12]~39\ & VCC))
-- \instance_datapath|instance_ContC|Count[13]~41\ = CARRY((\instance_datapath|instance_ContC|Count\(13) & !\instance_datapath|instance_ContC|Count[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(13),
	datad => VCC,
	cin => \instance_datapath|instance_ContC|Count[12]~39\,
	combout => \instance_datapath|instance_ContC|Count[13]~40_combout\,
	cout => \instance_datapath|instance_ContC|Count[13]~41\);

-- Location: LCFF_X62_Y23_N27
\instance_datapath|instance_ContC|Count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[14]~42_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(14));

-- Location: LCFF_X62_Y23_N25
\instance_datapath|instance_ContC|Count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_ContC|Count[13]~40_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.pigmento~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_ContC|Count\(13));

-- Location: LCCOMB_X63_Y24_N18
\instance_datapath|instance_CompC|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_CompC|LessThan1~17_combout\ = (!\instance_datapath|instance_ContC|Count\(15) & (!\instance_datapath|instance_ContC|Count\(14) & (!\instance_datapath|instance_ContC|Count\(13) & !\instance_datapath|instance_ContC|Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_ContC|Count\(15),
	datab => \instance_datapath|instance_ContC|Count\(14),
	datac => \instance_datapath|instance_ContC|Count\(13),
	datad => \instance_datapath|instance_ContC|Count\(12),
	combout => \instance_datapath|instance_CompC|LessThan1~17_combout\);

-- Location: LCCOMB_X63_Y24_N26
\instance_controladora|Saida_ciano~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Saida_ciano~0_combout\ = (((\instance_datapath|instance_CompC|LessThan1~14_combout\) # (!\instance_datapath|instance_CompC|LessThan1~17_combout\)) # (!\instance_datapath|instance_CompC|LessThan1~16_combout\)) # 
-- (!\instance_controladora|estado.pigmento~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|estado.pigmento~regout\,
	datab => \instance_datapath|instance_CompC|LessThan1~16_combout\,
	datac => \instance_datapath|instance_CompC|LessThan1~14_combout\,
	datad => \instance_datapath|instance_CompC|LessThan1~17_combout\,
	combout => \instance_controladora|Saida_ciano~0_combout\);

-- Location: LCCOMB_X63_Y24_N8
\instance_controladora|Saida_magenta~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Saida_magenta~0_combout\ = (((\instance_datapath|instance_CompM|LessThan1~14_combout\) # (!\instance_controladora|estado.pigmento~regout\)) # (!\instance_datapath|instance_CompC|LessThan1~16_combout\)) # 
-- (!\instance_datapath|instance_CompC|LessThan1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_CompC|LessThan1~17_combout\,
	datab => \instance_datapath|instance_CompC|LessThan1~16_combout\,
	datac => \instance_controladora|estado.pigmento~regout\,
	datad => \instance_datapath|instance_CompM|LessThan1~14_combout\,
	combout => \instance_controladora|Saida_magenta~0_combout\);

-- Location: LCCOMB_X63_Y24_N30
\instance_controladora|Saida_amarelo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Saida_amarelo~0_combout\ = ((\instance_datapath|instance_CompY|LessThan1~14_combout\) # ((!\instance_datapath|instance_CompC|LessThan1~17_combout\) # (!\instance_datapath|instance_CompC|LessThan1~16_combout\))) # 
-- (!\instance_controladora|estado.pigmento~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|estado.pigmento~regout\,
	datab => \instance_datapath|instance_CompY|LessThan1~14_combout\,
	datac => \instance_datapath|instance_CompC|LessThan1~16_combout\,
	datad => \instance_datapath|instance_CompC|LessThan1~17_combout\,
	combout => \instance_controladora|Saida_amarelo~0_combout\);

-- Location: LCCOMB_X63_Y24_N12
\instance_controladora|Saida_preto~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Saida_preto~0_combout\ = (((\instance_datapath|instance_CompK|LessThan1~14_combout\) # (!\instance_controladora|estado.pigmento~regout\)) # (!\instance_datapath|instance_CompC|LessThan1~16_combout\)) # 
-- (!\instance_datapath|instance_CompC|LessThan1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instance_CompC|LessThan1~17_combout\,
	datab => \instance_datapath|instance_CompC|LessThan1~16_combout\,
	datac => \instance_controladora|estado.pigmento~regout\,
	datad => \instance_datapath|instance_CompK|LessThan1~14_combout\,
	combout => \instance_controladora|Saida_preto~0_combout\);

-- Location: LCCOMB_X64_Y21_N4
\instance_controladora|Codigo_de_erro[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Codigo_de_erro[0]~1_combout\ = (\instance_controladora|estado.erro~regout\ & ((\instance_controladora|Codigo_de_erro[0]~0_combout\) # (\instance_datapath|instance_Compcor|Equal0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|estado.erro~regout\,
	datab => \instance_controladora|Codigo_de_erro[0]~0_combout\,
	datac => \instance_datapath|instance_Compcor|Equal0~20_combout\,
	combout => \instance_controladora|Codigo_de_erro[0]~1_combout\);

-- Location: LCCOMB_X64_Y21_N6
\instance_controladora|Codigo_de_erro[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_controladora|Codigo_de_erro[1]~2_combout\ = (\instance_controladora|estado.erro~regout\ & ((!\instance_datapath|instance_Compcor|Equal0~20_combout\) # (!\instance_controladora|Codigo_de_erro[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_controladora|estado.erro~regout\,
	datab => \instance_controladora|Codigo_de_erro[0]~0_combout\,
	datac => \instance_datapath|instance_Compcor|Equal0~20_combout\,
	combout => \instance_controladora|Codigo_de_erro[1]~2_combout\);

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

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y23_N0
\instance_datapath|instance_RegY|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_RegY|Q[0]~feeder_combout\ = \Codigo_de_cor~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(8),
	combout => \instance_datapath|instance_RegY|Q[0]~feeder_combout\);

-- Location: LCFF_X64_Y23_N1
\instance_datapath|instance_RegY|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_RegY|Q[0]~feeder_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegY|Q\(0));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y23_N7
\instance_datapath|instance_RegY|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(9),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegY|Q\(1));

-- Location: LCCOMB_X64_Y23_N26
\instance_datapath|instance_RegY|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_RegY|Q[3]~feeder_combout\ = \Codigo_de_cor~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(11),
	combout => \instance_datapath|instance_RegY|Q[3]~feeder_combout\);

-- Location: LCFF_X64_Y23_N27
\instance_datapath|instance_RegY|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_RegY|Q[3]~feeder_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegY|Q\(3));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X62_Y24_N12
\instance_datapath|instance_RegM|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instance_RegM|Q[1]~feeder_combout\ = \Codigo_de_cor~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Codigo_de_cor~combout\(17),
	combout => \instance_datapath|instance_RegM|Q[1]~feeder_combout\);

-- Location: LCFF_X62_Y24_N13
\instance_datapath|instance_RegM|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \instance_datapath|instance_RegM|Q[1]~feeder_combout\,
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegM|Q\(1));

-- Location: LCFF_X62_Y24_N11
\instance_datapath|instance_RegM|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(18),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegM|Q\(2));

-- Location: LCFF_X63_Y23_N21
\instance_datapath|instance_RegC|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \Codigo_de_cor~combout\(27),
	aclr => \instance_controladora|ALT_INV_estado.inicio~regout\,
	sload => VCC,
	ena => \instance_controladora|estado.espera~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instance_RegC|Q\(3));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Saida_Ciano~I\ : cycloneii_io
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
	datain => \instance_controladora|ALT_INV_Saida_ciano~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Saida_Ciano);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Saida_Magenta~I\ : cycloneii_io
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
	datain => \instance_controladora|ALT_INV_Saida_magenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Saida_Magenta);

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Saida_Amarelo~I\ : cycloneii_io
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
	datain => \instance_controladora|ALT_INV_Saida_amarelo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Saida_Amarelo);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Saida_Preto~I\ : cycloneii_io
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
	datain => \instance_controladora|ALT_INV_Saida_preto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Saida_Preto);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_controladora|estado.mistura~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Misturando);

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fim~I\ : cycloneii_io
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
	datain => \instance_controladora|estado.pronto~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fim);

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[0]~I\ : cycloneii_io
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
	datain => \instance_controladora|Codigo_de_erro[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(0));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[1]~I\ : cycloneii_io
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
	datain => \instance_controladora|Codigo_de_erro[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(1));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(2));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(3));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(5));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(7));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(8));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(9));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(10));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[11]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(11));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[12]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(12));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[13]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(13));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[14]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(14));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Codigo_de_erro[15]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_de_erro(15));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegK|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(0));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegK|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(1));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegK|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(2));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegK|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(3));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegK|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(4));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegK|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(5));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegK|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(6));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegK|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(7));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegY|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(8));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegY|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(9));

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegY|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(10));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegY|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(11));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegY|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(12));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegY|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(13));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegY|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(14));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegY|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(15));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegM|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(16));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegM|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(17));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegM|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(18));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegM|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(19));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegM|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(20));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegM|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(21));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegM|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(22));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegM|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(23));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegC|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(24));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegC|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(25));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegC|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(26));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegC|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(27));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegC|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(28));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegC|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(29));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegC|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(30));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instance_RegC|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Codigo_cor_misturada(31));
END structure;


