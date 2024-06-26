-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "06/24/2024 19:50:13"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux_2_1 IS
    PORT (
	in0 : IN std_logic_vector(31 DOWNTO 0);
	in1 : IN std_logic_vector(31 DOWNTO 0);
	s0 : IN std_logic_vector(6 DOWNTO 0);
	out1 : OUT std_logic_vector(31 DOWNTO 0)
	);
END mux_2_1;

-- Design Ports Information
-- out1[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[4]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[6]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[7]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[8]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[9]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[10]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[11]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[12]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[13]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[16]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[17]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[18]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[19]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[20]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[21]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[22]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[23]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[24]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[25]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[27]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[28]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[29]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[30]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[31]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[1]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[5]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[6]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[7]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[9]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[9]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[11]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[11]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[12]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[13]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[14]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[14]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[15]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[15]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[16]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[16]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[17]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[17]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[18]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[18]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[19]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[19]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[20]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[20]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[21]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[21]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[22]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[22]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[23]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[23]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[24]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[24]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[25]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[25]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[26]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[26]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[27]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[27]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[28]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[28]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[29]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[29]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[30]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[30]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[31]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[31]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_2_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_in1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_out1 : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \out1[0]~output_o\ : std_logic;
SIGNAL \out1[1]~output_o\ : std_logic;
SIGNAL \out1[2]~output_o\ : std_logic;
SIGNAL \out1[3]~output_o\ : std_logic;
SIGNAL \out1[4]~output_o\ : std_logic;
SIGNAL \out1[5]~output_o\ : std_logic;
SIGNAL \out1[6]~output_o\ : std_logic;
SIGNAL \out1[7]~output_o\ : std_logic;
SIGNAL \out1[8]~output_o\ : std_logic;
SIGNAL \out1[9]~output_o\ : std_logic;
SIGNAL \out1[10]~output_o\ : std_logic;
SIGNAL \out1[11]~output_o\ : std_logic;
SIGNAL \out1[12]~output_o\ : std_logic;
SIGNAL \out1[13]~output_o\ : std_logic;
SIGNAL \out1[14]~output_o\ : std_logic;
SIGNAL \out1[15]~output_o\ : std_logic;
SIGNAL \out1[16]~output_o\ : std_logic;
SIGNAL \out1[17]~output_o\ : std_logic;
SIGNAL \out1[18]~output_o\ : std_logic;
SIGNAL \out1[19]~output_o\ : std_logic;
SIGNAL \out1[20]~output_o\ : std_logic;
SIGNAL \out1[21]~output_o\ : std_logic;
SIGNAL \out1[22]~output_o\ : std_logic;
SIGNAL \out1[23]~output_o\ : std_logic;
SIGNAL \out1[24]~output_o\ : std_logic;
SIGNAL \out1[25]~output_o\ : std_logic;
SIGNAL \out1[26]~output_o\ : std_logic;
SIGNAL \out1[27]~output_o\ : std_logic;
SIGNAL \out1[28]~output_o\ : std_logic;
SIGNAL \out1[29]~output_o\ : std_logic;
SIGNAL \out1[30]~output_o\ : std_logic;
SIGNAL \out1[31]~output_o\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \in0[0]~input_o\ : std_logic;
SIGNAL \s0[6]~input_o\ : std_logic;
SIGNAL \s0[5]~input_o\ : std_logic;
SIGNAL \s0[4]~input_o\ : std_logic;
SIGNAL \s0[2]~input_o\ : std_logic;
SIGNAL \s0[1]~input_o\ : std_logic;
SIGNAL \s0[3]~input_o\ : std_logic;
SIGNAL \s0[0]~input_o\ : std_logic;
SIGNAL \out1~0_combout\ : std_logic;
SIGNAL \out1~1_combout\ : std_logic;
SIGNAL \out1~2_combout\ : std_logic;
SIGNAL \in0[1]~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \out1~3_combout\ : std_logic;
SIGNAL \in0[2]~input_o\ : std_logic;
SIGNAL \in1[2]~input_o\ : std_logic;
SIGNAL \out1~4_combout\ : std_logic;
SIGNAL \in0[3]~input_o\ : std_logic;
SIGNAL \in1[3]~input_o\ : std_logic;
SIGNAL \out1~5_combout\ : std_logic;
SIGNAL \in0[4]~input_o\ : std_logic;
SIGNAL \in1[4]~input_o\ : std_logic;
SIGNAL \out1~6_combout\ : std_logic;
SIGNAL \in0[5]~input_o\ : std_logic;
SIGNAL \in1[5]~input_o\ : std_logic;
SIGNAL \out1~7_combout\ : std_logic;
SIGNAL \in0[6]~input_o\ : std_logic;
SIGNAL \in1[6]~input_o\ : std_logic;
SIGNAL \out1~8_combout\ : std_logic;
SIGNAL \in0[7]~input_o\ : std_logic;
SIGNAL \in1[7]~input_o\ : std_logic;
SIGNAL \out1~9_combout\ : std_logic;
SIGNAL \in0[8]~input_o\ : std_logic;
SIGNAL \in1[8]~input_o\ : std_logic;
SIGNAL \out1~10_combout\ : std_logic;
SIGNAL \in0[9]~input_o\ : std_logic;
SIGNAL \in1[9]~input_o\ : std_logic;
SIGNAL \out1~11_combout\ : std_logic;
SIGNAL \in0[10]~input_o\ : std_logic;
SIGNAL \in1[10]~input_o\ : std_logic;
SIGNAL \out1~12_combout\ : std_logic;
SIGNAL \in0[11]~input_o\ : std_logic;
SIGNAL \in1[11]~input_o\ : std_logic;
SIGNAL \out1~13_combout\ : std_logic;
SIGNAL \in1[12]~input_o\ : std_logic;
SIGNAL \in0[12]~input_o\ : std_logic;
SIGNAL \out1~14_combout\ : std_logic;
SIGNAL \in1[13]~input_o\ : std_logic;
SIGNAL \in0[13]~input_o\ : std_logic;
SIGNAL \out1~15_combout\ : std_logic;
SIGNAL \in0[14]~input_o\ : std_logic;
SIGNAL \in1[14]~input_o\ : std_logic;
SIGNAL \out1~16_combout\ : std_logic;
SIGNAL \in1[15]~input_o\ : std_logic;
SIGNAL \in0[15]~input_o\ : std_logic;
SIGNAL \out1~17_combout\ : std_logic;
SIGNAL \in1[16]~input_o\ : std_logic;
SIGNAL \in0[16]~input_o\ : std_logic;
SIGNAL \out1~18_combout\ : std_logic;
SIGNAL \in1[17]~input_o\ : std_logic;
SIGNAL \in0[17]~input_o\ : std_logic;
SIGNAL \out1~19_combout\ : std_logic;
SIGNAL \in1[18]~input_o\ : std_logic;
SIGNAL \in0[18]~input_o\ : std_logic;
SIGNAL \out1~20_combout\ : std_logic;
SIGNAL \in1[19]~input_o\ : std_logic;
SIGNAL \in0[19]~input_o\ : std_logic;
SIGNAL \out1~21_combout\ : std_logic;
SIGNAL \in1[20]~input_o\ : std_logic;
SIGNAL \in0[20]~input_o\ : std_logic;
SIGNAL \out1~22_combout\ : std_logic;
SIGNAL \in0[21]~input_o\ : std_logic;
SIGNAL \in1[21]~input_o\ : std_logic;
SIGNAL \out1~23_combout\ : std_logic;
SIGNAL \in0[22]~input_o\ : std_logic;
SIGNAL \in1[22]~input_o\ : std_logic;
SIGNAL \out1~24_combout\ : std_logic;
SIGNAL \in1[23]~input_o\ : std_logic;
SIGNAL \in0[23]~input_o\ : std_logic;
SIGNAL \out1~25_combout\ : std_logic;
SIGNAL \in1[24]~input_o\ : std_logic;
SIGNAL \in0[24]~input_o\ : std_logic;
SIGNAL \out1~26_combout\ : std_logic;
SIGNAL \in0[25]~input_o\ : std_logic;
SIGNAL \in1[25]~input_o\ : std_logic;
SIGNAL \out1~27_combout\ : std_logic;
SIGNAL \in1[26]~input_o\ : std_logic;
SIGNAL \in0[26]~input_o\ : std_logic;
SIGNAL \out1~28_combout\ : std_logic;
SIGNAL \in0[27]~input_o\ : std_logic;
SIGNAL \in1[27]~input_o\ : std_logic;
SIGNAL \out1~29_combout\ : std_logic;
SIGNAL \in0[28]~input_o\ : std_logic;
SIGNAL \in1[28]~input_o\ : std_logic;
SIGNAL \out1~30_combout\ : std_logic;
SIGNAL \in0[29]~input_o\ : std_logic;
SIGNAL \in1[29]~input_o\ : std_logic;
SIGNAL \out1~31_combout\ : std_logic;
SIGNAL \in1[30]~input_o\ : std_logic;
SIGNAL \in0[30]~input_o\ : std_logic;
SIGNAL \out1~32_combout\ : std_logic;
SIGNAL \in1[31]~input_o\ : std_logic;
SIGNAL \in0[31]~input_o\ : std_logic;
SIGNAL \out1~33_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_in0 <= in0;
ww_in1 <= in1;
ww_s0 <= s0;
out1 <= ww_out1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y14_N16
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

-- Location: IOOBUF_X17_Y0_N9
\out1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~2_combout\,
	devoe => ww_devoe,
	o => \out1[0]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\out1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~3_combout\,
	devoe => ww_devoe,
	o => \out1[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\out1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~4_combout\,
	devoe => ww_devoe,
	o => \out1[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\out1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~5_combout\,
	devoe => ww_devoe,
	o => \out1[3]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\out1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~6_combout\,
	devoe => ww_devoe,
	o => \out1[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\out1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~7_combout\,
	devoe => ww_devoe,
	o => \out1[5]~output_o\);

-- Location: IOOBUF_X17_Y25_N30
\out1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~8_combout\,
	devoe => ww_devoe,
	o => \out1[6]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\out1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~9_combout\,
	devoe => ww_devoe,
	o => \out1[7]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\out1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~10_combout\,
	devoe => ww_devoe,
	o => \out1[8]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\out1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~11_combout\,
	devoe => ww_devoe,
	o => \out1[9]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\out1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~12_combout\,
	devoe => ww_devoe,
	o => \out1[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\out1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~13_combout\,
	devoe => ww_devoe,
	o => \out1[11]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\out1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~14_combout\,
	devoe => ww_devoe,
	o => \out1[12]~output_o\);

-- Location: IOOBUF_X10_Y18_N9
\out1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~15_combout\,
	devoe => ww_devoe,
	o => \out1[13]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\out1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~16_combout\,
	devoe => ww_devoe,
	o => \out1[14]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\out1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~17_combout\,
	devoe => ww_devoe,
	o => \out1[15]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\out1[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~18_combout\,
	devoe => ww_devoe,
	o => \out1[16]~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\out1[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~19_combout\,
	devoe => ww_devoe,
	o => \out1[17]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\out1[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~20_combout\,
	devoe => ww_devoe,
	o => \out1[18]~output_o\);

-- Location: IOOBUF_X10_Y22_N16
\out1[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~21_combout\,
	devoe => ww_devoe,
	o => \out1[19]~output_o\);

-- Location: IOOBUF_X31_Y21_N23
\out1[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~22_combout\,
	devoe => ww_devoe,
	o => \out1[20]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\out1[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~23_combout\,
	devoe => ww_devoe,
	o => \out1[21]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\out1[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~24_combout\,
	devoe => ww_devoe,
	o => \out1[22]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\out1[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~25_combout\,
	devoe => ww_devoe,
	o => \out1[23]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\out1[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~26_combout\,
	devoe => ww_devoe,
	o => \out1[24]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\out1[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~27_combout\,
	devoe => ww_devoe,
	o => \out1[25]~output_o\);

-- Location: IOOBUF_X15_Y0_N30
\out1[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~28_combout\,
	devoe => ww_devoe,
	o => \out1[26]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\out1[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~29_combout\,
	devoe => ww_devoe,
	o => \out1[27]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\out1[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~30_combout\,
	devoe => ww_devoe,
	o => \out1[28]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\out1[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~31_combout\,
	devoe => ww_devoe,
	o => \out1[29]~output_o\);

-- Location: IOOBUF_X17_Y25_N23
\out1[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~32_combout\,
	devoe => ww_devoe,
	o => \out1[30]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\out1[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~33_combout\,
	devoe => ww_devoe,
	o => \out1[31]~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\in1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: IOIBUF_X17_Y0_N15
\in0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(0),
	o => \in0[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N22
\s0[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0(6),
	o => \s0[6]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\s0[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0(5),
	o => \s0[5]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\s0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0(4),
	o => \s0[4]~input_o\);

-- Location: IOIBUF_X0_Y3_N15
\s0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0(2),
	o => \s0[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\s0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0(1),
	o => \s0[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\s0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0(3),
	o => \s0[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\s0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0(0),
	o => \s0[0]~input_o\);

-- Location: LCCOMB_X10_Y4_N16
\out1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~0_combout\ = (!\s0[2]~input_o\ & (!\s0[1]~input_o\ & (!\s0[3]~input_o\ & !\s0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0[2]~input_o\,
	datab => \s0[1]~input_o\,
	datac => \s0[3]~input_o\,
	datad => \s0[0]~input_o\,
	combout => \out1~0_combout\);

-- Location: LCCOMB_X10_Y4_N18
\out1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~1_combout\ = (\s0[6]~input_o\ & (!\s0[5]~input_o\ & (!\s0[4]~input_o\ & \out1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0[6]~input_o\,
	datab => \s0[5]~input_o\,
	datac => \s0[4]~input_o\,
	datad => \out1~0_combout\,
	combout => \out1~1_combout\);

-- Location: LCCOMB_X18_Y1_N24
\out1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~2_combout\ = (\out1~1_combout\ & (\in1[0]~input_o\)) # (!\out1~1_combout\ & ((\in0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in0[0]~input_o\,
	datac => \out1~1_combout\,
	combout => \out1~2_combout\);

-- Location: IOIBUF_X19_Y0_N15
\in0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(1),
	o => \in0[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\in1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: LCCOMB_X18_Y1_N2
\out1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~3_combout\ = (\out1~1_combout\ & ((\in1[1]~input_o\))) # (!\out1~1_combout\ & (\in0[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0[1]~input_o\,
	datac => \out1~1_combout\,
	datad => \in1[1]~input_o\,
	combout => \out1~3_combout\);

-- Location: IOIBUF_X6_Y10_N29
\in0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(2),
	o => \in0[2]~input_o\);

-- Location: IOIBUF_X31_Y4_N8
\in1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(2),
	o => \in1[2]~input_o\);

-- Location: LCCOMB_X10_Y4_N28
\out1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~4_combout\ = (\out1~1_combout\ & ((\in1[2]~input_o\))) # (!\out1~1_combout\ & (\in0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0[2]~input_o\,
	datac => \in1[2]~input_o\,
	datad => \out1~1_combout\,
	combout => \out1~4_combout\);

-- Location: IOIBUF_X0_Y4_N15
\in0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(3),
	o => \in0[3]~input_o\);

-- Location: IOIBUF_X15_Y0_N22
\in1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(3),
	o => \in1[3]~input_o\);

-- Location: LCCOMB_X10_Y4_N6
\out1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~5_combout\ = (\out1~1_combout\ & ((\in1[3]~input_o\))) # (!\out1~1_combout\ & (\in0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out1~1_combout\,
	datac => \in0[3]~input_o\,
	datad => \in1[3]~input_o\,
	combout => \out1~5_combout\);

-- Location: IOIBUF_X17_Y0_N1
\in0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(4),
	o => \in0[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\in1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(4),
	o => \in1[4]~input_o\);

-- Location: LCCOMB_X18_Y1_N28
\out1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~6_combout\ = (\out1~1_combout\ & ((\in1[4]~input_o\))) # (!\out1~1_combout\ & (\in0[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0[4]~input_o\,
	datac => \out1~1_combout\,
	datad => \in1[4]~input_o\,
	combout => \out1~6_combout\);

-- Location: IOIBUF_X10_Y20_N1
\in0[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(5),
	o => \in0[5]~input_o\);

-- Location: IOIBUF_X19_Y25_N1
\in1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(5),
	o => \in1[5]~input_o\);

-- Location: LCCOMB_X11_Y21_N24
\out1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~7_combout\ = (\out1~1_combout\ & ((\in1[5]~input_o\))) # (!\out1~1_combout\ & (\in0[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[5]~input_o\,
	datac => \out1~1_combout\,
	datad => \in1[5]~input_o\,
	combout => \out1~7_combout\);

-- Location: IOIBUF_X10_Y18_N22
\in0[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(6),
	o => \in0[6]~input_o\);

-- Location: IOIBUF_X10_Y21_N22
\in1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(6),
	o => \in1[6]~input_o\);

-- Location: LCCOMB_X11_Y21_N18
\out1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~8_combout\ = (\out1~1_combout\ & ((\in1[6]~input_o\))) # (!\out1~1_combout\ & (\in0[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[6]~input_o\,
	datac => \out1~1_combout\,
	datad => \in1[6]~input_o\,
	combout => \out1~8_combout\);

-- Location: IOIBUF_X15_Y25_N22
\in0[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(7),
	o => \in0[7]~input_o\);

-- Location: IOIBUF_X10_Y20_N8
\in1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(7),
	o => \in1[7]~input_o\);

-- Location: LCCOMB_X11_Y21_N20
\out1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~9_combout\ = (\out1~1_combout\ & ((\in1[7]~input_o\))) # (!\out1~1_combout\ & (\in0[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out1~1_combout\,
	datac => \in0[7]~input_o\,
	datad => \in1[7]~input_o\,
	combout => \out1~9_combout\);

-- Location: IOIBUF_X13_Y0_N8
\in0[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(8),
	o => \in0[8]~input_o\);

-- Location: IOIBUF_X15_Y0_N8
\in1[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(8),
	o => \in1[8]~input_o\);

-- Location: LCCOMB_X10_Y4_N24
\out1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~10_combout\ = (\out1~1_combout\ & ((\in1[8]~input_o\))) # (!\out1~1_combout\ & (\in0[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[8]~input_o\,
	datab => \out1~1_combout\,
	datad => \in1[8]~input_o\,
	combout => \out1~10_combout\);

-- Location: IOIBUF_X0_Y5_N8
\in0[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(9),
	o => \in0[9]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\in1[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(9),
	o => \in1[9]~input_o\);

-- Location: LCCOMB_X10_Y4_N10
\out1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~11_combout\ = (\out1~1_combout\ & ((\in1[9]~input_o\))) # (!\out1~1_combout\ & (\in0[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[9]~input_o\,
	datac => \in1[9]~input_o\,
	datad => \out1~1_combout\,
	combout => \out1~11_combout\);

-- Location: IOIBUF_X6_Y10_N1
\in0[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(10),
	o => \in0[10]~input_o\);

-- Location: IOIBUF_X6_Y10_N22
\in1[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(10),
	o => \in1[10]~input_o\);

-- Location: LCCOMB_X10_Y4_N4
\out1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~12_combout\ = (\out1~1_combout\ & ((\in1[10]~input_o\))) # (!\out1~1_combout\ & (\in0[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0[10]~input_o\,
	datac => \in1[10]~input_o\,
	datad => \out1~1_combout\,
	combout => \out1~12_combout\);

-- Location: IOIBUF_X15_Y0_N15
\in0[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(11),
	o => \in0[11]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\in1[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(11),
	o => \in1[11]~input_o\);

-- Location: LCCOMB_X10_Y4_N30
\out1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~13_combout\ = (\out1~1_combout\ & ((\in1[11]~input_o\))) # (!\out1~1_combout\ & (\in0[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[11]~input_o\,
	datac => \in1[11]~input_o\,
	datad => \out1~1_combout\,
	combout => \out1~13_combout\);

-- Location: IOIBUF_X0_Y4_N22
\in1[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(12),
	o => \in1[12]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\in0[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(12),
	o => \in0[12]~input_o\);

-- Location: LCCOMB_X10_Y4_N0
\out1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~14_combout\ = (\out1~1_combout\ & (\in1[12]~input_o\)) # (!\out1~1_combout\ & ((\in0[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[12]~input_o\,
	datac => \in0[12]~input_o\,
	datad => \out1~1_combout\,
	combout => \out1~14_combout\);

-- Location: IOIBUF_X17_Y25_N1
\in1[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(13),
	o => \in1[13]~input_o\);

-- Location: IOIBUF_X19_Y25_N8
\in0[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(13),
	o => \in0[13]~input_o\);

-- Location: LCCOMB_X11_Y21_N22
\out1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~15_combout\ = (\out1~1_combout\ & (\in1[13]~input_o\)) # (!\out1~1_combout\ & ((\in0[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[13]~input_o\,
	datac => \out1~1_combout\,
	datad => \in0[13]~input_o\,
	combout => \out1~15_combout\);

-- Location: IOIBUF_X10_Y21_N15
\in0[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(14),
	o => \in0[14]~input_o\);

-- Location: IOIBUF_X15_Y25_N1
\in1[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(14),
	o => \in1[14]~input_o\);

-- Location: LCCOMB_X11_Y21_N8
\out1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~16_combout\ = (\out1~1_combout\ & ((\in1[14]~input_o\))) # (!\out1~1_combout\ & (\in0[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[14]~input_o\,
	datab => \in1[14]~input_o\,
	datac => \out1~1_combout\,
	combout => \out1~16_combout\);

-- Location: IOIBUF_X10_Y16_N1
\in1[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(15),
	o => \in1[15]~input_o\);

-- Location: IOIBUF_X24_Y25_N22
\in0[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(15),
	o => \in0[15]~input_o\);

-- Location: LCCOMB_X11_Y21_N10
\out1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~17_combout\ = (\out1~1_combout\ & (\in1[15]~input_o\)) # (!\out1~1_combout\ & ((\in0[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[15]~input_o\,
	datab => \out1~1_combout\,
	datac => \in0[15]~input_o\,
	combout => \out1~17_combout\);

-- Location: IOIBUF_X6_Y0_N29
\in1[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(16),
	o => \in1[16]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\in0[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(16),
	o => \in0[16]~input_o\);

-- Location: LCCOMB_X10_Y4_N26
\out1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~18_combout\ = (\out1~1_combout\ & (\in1[16]~input_o\)) # (!\out1~1_combout\ & ((\in0[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out1~1_combout\,
	datac => \in1[16]~input_o\,
	datad => \in0[16]~input_o\,
	combout => \out1~18_combout\);

-- Location: IOIBUF_X10_Y22_N8
\in1[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(17),
	o => \in1[17]~input_o\);

-- Location: IOIBUF_X31_Y21_N15
\in0[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(17),
	o => \in0[17]~input_o\);

-- Location: LCCOMB_X11_Y21_N12
\out1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~19_combout\ = (\out1~1_combout\ & (\in1[17]~input_o\)) # (!\out1~1_combout\ & ((\in0[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[17]~input_o\,
	datac => \out1~1_combout\,
	datad => \in0[17]~input_o\,
	combout => \out1~19_combout\);

-- Location: IOIBUF_X13_Y25_N15
\in1[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(18),
	o => \in1[18]~input_o\);

-- Location: IOIBUF_X15_Y25_N15
\in0[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(18),
	o => \in0[18]~input_o\);

-- Location: LCCOMB_X11_Y21_N30
\out1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~20_combout\ = (\out1~1_combout\ & (\in1[18]~input_o\)) # (!\out1~1_combout\ & ((\in0[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[18]~input_o\,
	datac => \out1~1_combout\,
	datad => \in0[18]~input_o\,
	combout => \out1~20_combout\);

-- Location: IOIBUF_X10_Y19_N1
\in1[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(19),
	o => \in1[19]~input_o\);

-- Location: IOIBUF_X10_Y21_N8
\in0[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(19),
	o => \in0[19]~input_o\);

-- Location: LCCOMB_X11_Y21_N0
\out1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~21_combout\ = (\out1~1_combout\ & (\in1[19]~input_o\)) # (!\out1~1_combout\ & ((\in0[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[19]~input_o\,
	datac => \out1~1_combout\,
	datad => \in0[19]~input_o\,
	combout => \out1~21_combout\);

-- Location: IOIBUF_X10_Y18_N1
\in1[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(20),
	o => \in1[20]~input_o\);

-- Location: IOIBUF_X15_Y25_N8
\in0[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(20),
	o => \in0[20]~input_o\);

-- Location: LCCOMB_X11_Y21_N2
\out1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~22_combout\ = (\out1~1_combout\ & (\in1[20]~input_o\)) # (!\out1~1_combout\ & ((\in0[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[20]~input_o\,
	datab => \out1~1_combout\,
	datac => \in0[20]~input_o\,
	combout => \out1~22_combout\);

-- Location: IOIBUF_X10_Y19_N22
\in0[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(21),
	o => \in0[21]~input_o\);

-- Location: IOIBUF_X31_Y21_N8
\in1[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(21),
	o => \in1[21]~input_o\);

-- Location: LCCOMB_X11_Y21_N4
\out1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~23_combout\ = (\out1~1_combout\ & ((\in1[21]~input_o\))) # (!\out1~1_combout\ & (\in0[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0[21]~input_o\,
	datac => \out1~1_combout\,
	datad => \in1[21]~input_o\,
	combout => \out1~23_combout\);

-- Location: IOIBUF_X9_Y0_N8
\in0[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(22),
	o => \in0[22]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\in1[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(22),
	o => \in1[22]~input_o\);

-- Location: LCCOMB_X10_Y4_N12
\out1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~24_combout\ = (\out1~1_combout\ & ((\in1[22]~input_o\))) # (!\out1~1_combout\ & (\in0[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0[22]~input_o\,
	datac => \in1[22]~input_o\,
	datad => \out1~1_combout\,
	combout => \out1~24_combout\);

-- Location: IOIBUF_X11_Y25_N29
\in1[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(23),
	o => \in1[23]~input_o\);

-- Location: IOIBUF_X10_Y22_N22
\in0[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(23),
	o => \in0[23]~input_o\);

-- Location: LCCOMB_X11_Y21_N14
\out1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~25_combout\ = (\out1~1_combout\ & (\in1[23]~input_o\)) # (!\out1~1_combout\ & ((\in0[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[23]~input_o\,
	datab => \in0[23]~input_o\,
	datac => \out1~1_combout\,
	combout => \out1~25_combout\);

-- Location: IOIBUF_X3_Y0_N1
\in1[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(24),
	o => \in1[24]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\in0[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(24),
	o => \in0[24]~input_o\);

-- Location: LCCOMB_X10_Y4_N22
\out1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~26_combout\ = (\out1~1_combout\ & (\in1[24]~input_o\)) # (!\out1~1_combout\ & ((\in0[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out1~1_combout\,
	datac => \in1[24]~input_o\,
	datad => \in0[24]~input_o\,
	combout => \out1~26_combout\);

-- Location: IOIBUF_X10_Y17_N8
\in0[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(25),
	o => \in0[25]~input_o\);

-- Location: IOIBUF_X10_Y21_N1
\in1[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(25),
	o => \in1[25]~input_o\);

-- Location: LCCOMB_X11_Y21_N16
\out1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~27_combout\ = (\out1~1_combout\ & ((\in1[25]~input_o\))) # (!\out1~1_combout\ & (\in0[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0[25]~input_o\,
	datac => \out1~1_combout\,
	datad => \in1[25]~input_o\,
	combout => \out1~27_combout\);

-- Location: IOIBUF_X11_Y0_N15
\in1[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(26),
	o => \in1[26]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\in0[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(26),
	o => \in0[26]~input_o\);

-- Location: LCCOMB_X10_Y4_N8
\out1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~28_combout\ = (\out1~1_combout\ & (\in1[26]~input_o\)) # (!\out1~1_combout\ & ((\in0[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out1~1_combout\,
	datac => \in1[26]~input_o\,
	datad => \in0[26]~input_o\,
	combout => \out1~28_combout\);

-- Location: IOIBUF_X10_Y19_N8
\in0[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(27),
	o => \in0[27]~input_o\);

-- Location: IOIBUF_X17_Y25_N8
\in1[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(27),
	o => \in1[27]~input_o\);

-- Location: LCCOMB_X11_Y21_N26
\out1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~29_combout\ = (\out1~1_combout\ & ((\in1[27]~input_o\))) # (!\out1~1_combout\ & (\in0[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0[27]~input_o\,
	datac => \out1~1_combout\,
	datad => \in1[27]~input_o\,
	combout => \out1~29_combout\);

-- Location: IOIBUF_X19_Y0_N8
\in0[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(28),
	o => \in0[28]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\in1[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(28),
	o => \in1[28]~input_o\);

-- Location: LCCOMB_X10_Y4_N2
\out1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~30_combout\ = (\out1~1_combout\ & ((\in1[28]~input_o\))) # (!\out1~1_combout\ & (\in0[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[28]~input_o\,
	datac => \in1[28]~input_o\,
	datad => \out1~1_combout\,
	combout => \out1~30_combout\);

-- Location: IOIBUF_X10_Y20_N15
\in0[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(29),
	o => \in0[29]~input_o\);

-- Location: IOIBUF_X10_Y20_N22
\in1[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(29),
	o => \in1[29]~input_o\);

-- Location: LCCOMB_X11_Y21_N28
\out1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~31_combout\ = (\out1~1_combout\ & ((\in1[29]~input_o\))) # (!\out1~1_combout\ & (\in0[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0[29]~input_o\,
	datac => \out1~1_combout\,
	datad => \in1[29]~input_o\,
	combout => \out1~31_combout\);

-- Location: IOIBUF_X10_Y15_N22
\in1[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(30),
	o => \in1[30]~input_o\);

-- Location: IOIBUF_X11_Y25_N15
\in0[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(30),
	o => \in0[30]~input_o\);

-- Location: LCCOMB_X11_Y21_N6
\out1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~32_combout\ = (\out1~1_combout\ & (\in1[30]~input_o\)) # (!\out1~1_combout\ & ((\in0[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[30]~input_o\,
	datab => \in0[30]~input_o\,
	datac => \out1~1_combout\,
	combout => \out1~32_combout\);

-- Location: IOIBUF_X9_Y0_N22
\in1[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(31),
	o => \in1[31]~input_o\);

-- Location: IOIBUF_X31_Y4_N15
\in0[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(31),
	o => \in0[31]~input_o\);

-- Location: LCCOMB_X10_Y4_N20
\out1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out1~33_combout\ = (\out1~1_combout\ & (\in1[31]~input_o\)) # (!\out1~1_combout\ & ((\in0[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[31]~input_o\,
	datab => \out1~1_combout\,
	datad => \in0[31]~input_o\,
	combout => \out1~33_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

ww_out1(0) <= \out1[0]~output_o\;

ww_out1(1) <= \out1[1]~output_o\;

ww_out1(2) <= \out1[2]~output_o\;

ww_out1(3) <= \out1[3]~output_o\;

ww_out1(4) <= \out1[4]~output_o\;

ww_out1(5) <= \out1[5]~output_o\;

ww_out1(6) <= \out1[6]~output_o\;

ww_out1(7) <= \out1[7]~output_o\;

ww_out1(8) <= \out1[8]~output_o\;

ww_out1(9) <= \out1[9]~output_o\;

ww_out1(10) <= \out1[10]~output_o\;

ww_out1(11) <= \out1[11]~output_o\;

ww_out1(12) <= \out1[12]~output_o\;

ww_out1(13) <= \out1[13]~output_o\;

ww_out1(14) <= \out1[14]~output_o\;

ww_out1(15) <= \out1[15]~output_o\;

ww_out1(16) <= \out1[16]~output_o\;

ww_out1(17) <= \out1[17]~output_o\;

ww_out1(18) <= \out1[18]~output_o\;

ww_out1(19) <= \out1[19]~output_o\;

ww_out1(20) <= \out1[20]~output_o\;

ww_out1(21) <= \out1[21]~output_o\;

ww_out1(22) <= \out1[22]~output_o\;

ww_out1(23) <= \out1[23]~output_o\;

ww_out1(24) <= \out1[24]~output_o\;

ww_out1(25) <= \out1[25]~output_o\;

ww_out1(26) <= \out1[26]~output_o\;

ww_out1(27) <= \out1[27]~output_o\;

ww_out1(28) <= \out1[28]~output_o\;

ww_out1(29) <= \out1[29]~output_o\;

ww_out1(30) <= \out1[30]~output_o\;

ww_out1(31) <= \out1[31]~output_o\;
END structure;


