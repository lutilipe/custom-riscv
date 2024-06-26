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
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "06/26/2024 10:42:53"

-- 
-- Device: Altera 5M570ZF256C4 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	mux21 IS
    PORT (
	dado_ent_0 : IN std_logic_vector(31 DOWNTO 0);
	dado_ent_1 : IN std_logic_vector(31 DOWNTO 0);
	sele_ent : IN std_logic;
	dado_sai : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mux21;

-- Design Ports Information


ARCHITECTURE structure OF mux21 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dado_ent_0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dado_ent_1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sele_ent : std_logic;
SIGNAL ww_dado_sai : std_logic_vector(31 DOWNTO 0);
SIGNAL \sele_ent~combout\ : std_logic;
SIGNAL \dado_sai~0_combout\ : std_logic;
SIGNAL \dado_sai~1_combout\ : std_logic;
SIGNAL \dado_sai~2_combout\ : std_logic;
SIGNAL \dado_sai~3_combout\ : std_logic;
SIGNAL \dado_sai~4_combout\ : std_logic;
SIGNAL \dado_sai~5_combout\ : std_logic;
SIGNAL \dado_sai~6_combout\ : std_logic;
SIGNAL \dado_sai~7_combout\ : std_logic;
SIGNAL \dado_sai~8_combout\ : std_logic;
SIGNAL \dado_sai~9_combout\ : std_logic;
SIGNAL \dado_sai~10_combout\ : std_logic;
SIGNAL \dado_sai~11_combout\ : std_logic;
SIGNAL \dado_sai~12_combout\ : std_logic;
SIGNAL \dado_sai~13_combout\ : std_logic;
SIGNAL \dado_sai~14_combout\ : std_logic;
SIGNAL \dado_sai~15_combout\ : std_logic;
SIGNAL \dado_sai~16_combout\ : std_logic;
SIGNAL \dado_sai~17_combout\ : std_logic;
SIGNAL \dado_sai~18_combout\ : std_logic;
SIGNAL \dado_sai~19_combout\ : std_logic;
SIGNAL \dado_sai~20_combout\ : std_logic;
SIGNAL \dado_sai~21_combout\ : std_logic;
SIGNAL \dado_sai~22_combout\ : std_logic;
SIGNAL \dado_sai~23_combout\ : std_logic;
SIGNAL \dado_sai~24_combout\ : std_logic;
SIGNAL \dado_sai~25_combout\ : std_logic;
SIGNAL \dado_sai~26_combout\ : std_logic;
SIGNAL \dado_sai~27_combout\ : std_logic;
SIGNAL \dado_sai~28_combout\ : std_logic;
SIGNAL \dado_sai~29_combout\ : std_logic;
SIGNAL \dado_sai~30_combout\ : std_logic;
SIGNAL \dado_sai~31_combout\ : std_logic;
SIGNAL \dado_ent_1~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dado_ent_0~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_dado_ent_0 <= dado_ent_0;
ww_dado_ent_1 <= dado_ent_1;
ww_sele_ent <= sele_ent;
dado_sai <= ww_dado_sai;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sele_ent~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sele_ent,
	combout => \sele_ent~combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(0),
	combout => \dado_ent_0~combout\(0));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(0),
	combout => \dado_ent_1~combout\(0));

-- Location: LC_X12_Y4_N5
\dado_sai~0\ : maxv_lcell
-- Equation(s):
-- \dado_sai~0_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(0)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sele_ent~combout\,
	datac => \dado_ent_0~combout\(0),
	datad => \dado_ent_1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~0_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(1),
	combout => \dado_ent_1~combout\(1));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(1),
	combout => \dado_ent_0~combout\(1));

-- Location: LC_X1_Y6_N8
\dado_sai~1\ : maxv_lcell
-- Equation(s):
-- \dado_sai~1_combout\ = ((\sele_ent~combout\ & (\dado_ent_1~combout\(1))) # (!\sele_ent~combout\ & ((\dado_ent_0~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_1~combout\(1),
	datac => \dado_ent_0~combout\(1),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~1_combout\);

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(2),
	combout => \dado_ent_1~combout\(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(2),
	combout => \dado_ent_0~combout\(2));

-- Location: LC_X7_Y4_N3
\dado_sai~2\ : maxv_lcell
-- Equation(s):
-- \dado_sai~2_combout\ = (\sele_ent~combout\ & (\dado_ent_1~combout\(2))) # (!\sele_ent~combout\ & (((\dado_ent_0~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sele_ent~combout\,
	datab => \dado_ent_1~combout\(2),
	datac => \dado_ent_0~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~2_combout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(3),
	combout => \dado_ent_1~combout\(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(3),
	combout => \dado_ent_0~combout\(3));

-- Location: LC_X7_Y4_N1
\dado_sai~3\ : maxv_lcell
-- Equation(s):
-- \dado_sai~3_combout\ = (\sele_ent~combout\ & (\dado_ent_1~combout\(3))) # (!\sele_ent~combout\ & (((\dado_ent_0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_1~combout\(3),
	datab => \dado_ent_0~combout\(3),
	datac => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~3_combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(4),
	combout => \dado_ent_0~combout\(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(4),
	combout => \dado_ent_1~combout\(4));

-- Location: LC_X1_Y6_N1
\dado_sai~4\ : maxv_lcell
-- Equation(s):
-- \dado_sai~4_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(4)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_0~combout\(4),
	datac => \dado_ent_1~combout\(4),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~4_combout\);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(5),
	combout => \dado_ent_0~combout\(5));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(5),
	combout => \dado_ent_1~combout\(5));

-- Location: LC_X1_Y6_N0
\dado_sai~5\ : maxv_lcell
-- Equation(s):
-- \dado_sai~5_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(5)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_0~combout\(5),
	datac => \dado_ent_1~combout\(5),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~5_combout\);

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(6),
	combout => \dado_ent_1~combout\(6));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(6),
	combout => \dado_ent_0~combout\(6));

-- Location: LC_X7_Y4_N9
\dado_sai~6\ : maxv_lcell
-- Equation(s):
-- \dado_sai~6_combout\ = ((\sele_ent~combout\ & (\dado_ent_1~combout\(6))) # (!\sele_ent~combout\ & ((\dado_ent_0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_1~combout\(6),
	datac => \sele_ent~combout\,
	datad => \dado_ent_0~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~6_combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(7),
	combout => \dado_ent_0~combout\(7));

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(7),
	combout => \dado_ent_1~combout\(7));

-- Location: LC_X7_Y4_N7
\dado_sai~7\ : maxv_lcell
-- Equation(s):
-- \dado_sai~7_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(7)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_0~combout\(7),
	datac => \sele_ent~combout\,
	datad => \dado_ent_1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~7_combout\);

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(8),
	combout => \dado_ent_0~combout\(8));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(8),
	combout => \dado_ent_1~combout\(8));

-- Location: LC_X7_Y4_N4
\dado_sai~8\ : maxv_lcell
-- Equation(s):
-- \dado_sai~8_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(8)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_0~combout\(8),
	datac => \sele_ent~combout\,
	datad => \dado_ent_1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~8_combout\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(9),
	combout => \dado_ent_0~combout\(9));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(9),
	combout => \dado_ent_1~combout\(9));

-- Location: LC_X1_Y6_N7
\dado_sai~9\ : maxv_lcell
-- Equation(s):
-- \dado_sai~9_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(9)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_0~combout\(9),
	datac => \dado_ent_1~combout\(9),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~9_combout\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(10),
	combout => \dado_ent_0~combout\(10));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(10),
	combout => \dado_ent_1~combout\(10));

-- Location: LC_X12_Y5_N8
\dado_sai~10\ : maxv_lcell
-- Equation(s):
-- \dado_sai~10_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(10)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sele_ent~combout\,
	datac => \dado_ent_0~combout\(10),
	datad => \dado_ent_1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~10_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(11),
	combout => \dado_ent_1~combout\(11));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(11),
	combout => \dado_ent_0~combout\(11));

-- Location: LC_X12_Y4_N9
\dado_sai~11\ : maxv_lcell
-- Equation(s):
-- \dado_sai~11_combout\ = ((\sele_ent~combout\ & (\dado_ent_1~combout\(11))) # (!\sele_ent~combout\ & ((\dado_ent_0~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sele_ent~combout\,
	datac => \dado_ent_1~combout\(11),
	datad => \dado_ent_0~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~11_combout\);

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(12),
	combout => \dado_ent_0~combout\(12));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(12),
	combout => \dado_ent_1~combout\(12));

-- Location: LC_X12_Y4_N3
\dado_sai~12\ : maxv_lcell
-- Equation(s):
-- \dado_sai~12_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(12)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sele_ent~combout\,
	datac => \dado_ent_0~combout\(12),
	datad => \dado_ent_1~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~12_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(13),
	combout => \dado_ent_0~combout\(13));

-- Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(13),
	combout => \dado_ent_1~combout\(13));

-- Location: LC_X12_Y4_N6
\dado_sai~13\ : maxv_lcell
-- Equation(s):
-- \dado_sai~13_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(13)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sele_ent~combout\,
	datac => \dado_ent_0~combout\(13),
	datad => \dado_ent_1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~13_combout\);

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(14),
	combout => \dado_ent_0~combout\(14));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(14),
	combout => \dado_ent_1~combout\(14));

-- Location: LC_X12_Y4_N1
\dado_sai~14\ : maxv_lcell
-- Equation(s):
-- \dado_sai~14_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(14)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sele_ent~combout\,
	datac => \dado_ent_0~combout\(14),
	datad => \dado_ent_1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~14_combout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(15),
	combout => \dado_ent_0~combout\(15));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(15),
	combout => \dado_ent_1~combout\(15));

-- Location: LC_X4_Y4_N8
\dado_sai~15\ : maxv_lcell
-- Equation(s):
-- \dado_sai~15_combout\ = (\sele_ent~combout\ & (((\dado_ent_1~combout\(15))))) # (!\sele_ent~combout\ & (((\dado_ent_0~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sele_ent~combout\,
	datac => \dado_ent_0~combout\(15),
	datad => \dado_ent_1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~15_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(16),
	combout => \dado_ent_1~combout\(16));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(16),
	combout => \dado_ent_0~combout\(16));

-- Location: LC_X1_Y6_N9
\dado_sai~16\ : maxv_lcell
-- Equation(s):
-- \dado_sai~16_combout\ = ((\sele_ent~combout\ & (\dado_ent_1~combout\(16))) # (!\sele_ent~combout\ & ((\dado_ent_0~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_1~combout\(16),
	datac => \dado_ent_0~combout\(16),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~16_combout\);

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(17),
	combout => \dado_ent_1~combout\(17));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(17),
	combout => \dado_ent_0~combout\(17));

-- Location: LC_X7_Y4_N8
\dado_sai~17\ : maxv_lcell
-- Equation(s):
-- \dado_sai~17_combout\ = (\sele_ent~combout\ & (\dado_ent_1~combout\(17))) # (!\sele_ent~combout\ & (((\dado_ent_0~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_1~combout\(17),
	datab => \dado_ent_0~combout\(17),
	datac => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~17_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(18),
	combout => \dado_ent_0~combout\(18));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(18),
	combout => \dado_ent_1~combout\(18));

-- Location: LC_X12_Y4_N4
\dado_sai~18\ : maxv_lcell
-- Equation(s):
-- \dado_sai~18_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(18)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sele_ent~combout\,
	datac => \dado_ent_0~combout\(18),
	datad => \dado_ent_1~combout\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~18_combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(19),
	combout => \dado_ent_1~combout\(19));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(19),
	combout => \dado_ent_0~combout\(19));

-- Location: LC_X1_Y6_N6
\dado_sai~19\ : maxv_lcell
-- Equation(s):
-- \dado_sai~19_combout\ = ((\sele_ent~combout\ & (\dado_ent_1~combout\(19))) # (!\sele_ent~combout\ & ((\dado_ent_0~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_1~combout\(19),
	datac => \dado_ent_0~combout\(19),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~19_combout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(20),
	combout => \dado_ent_1~combout\(20));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(20),
	combout => \dado_ent_0~combout\(20));

-- Location: LC_X12_Y4_N8
\dado_sai~20\ : maxv_lcell
-- Equation(s):
-- \dado_sai~20_combout\ = (\sele_ent~combout\ & (\dado_ent_1~combout\(20))) # (!\sele_ent~combout\ & (((\dado_ent_0~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_1~combout\(20),
	datab => \sele_ent~combout\,
	datad => \dado_ent_0~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~20_combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(21),
	combout => \dado_ent_1~combout\(21));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(21),
	combout => \dado_ent_0~combout\(21));

-- Location: LC_X1_Y6_N4
\dado_sai~21\ : maxv_lcell
-- Equation(s):
-- \dado_sai~21_combout\ = ((\sele_ent~combout\ & (\dado_ent_1~combout\(21))) # (!\sele_ent~combout\ & ((\dado_ent_0~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_1~combout\(21),
	datac => \dado_ent_0~combout\(21),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~21_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(22),
	combout => \dado_ent_1~combout\(22));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(22),
	combout => \dado_ent_0~combout\(22));

-- Location: LC_X1_Y6_N3
\dado_sai~22\ : maxv_lcell
-- Equation(s):
-- \dado_sai~22_combout\ = ((\sele_ent~combout\ & (\dado_ent_1~combout\(22))) # (!\sele_ent~combout\ & ((\dado_ent_0~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_1~combout\(22),
	datac => \dado_ent_0~combout\(22),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~22_combout\);

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(23),
	combout => \dado_ent_1~combout\(23));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(23),
	combout => \dado_ent_0~combout\(23));

-- Location: LC_X7_Y4_N6
\dado_sai~23\ : maxv_lcell
-- Equation(s):
-- \dado_sai~23_combout\ = ((\sele_ent~combout\ & (\dado_ent_1~combout\(23))) # (!\sele_ent~combout\ & ((\dado_ent_0~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_1~combout\(23),
	datac => \sele_ent~combout\,
	datad => \dado_ent_0~combout\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~23_combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(24),
	combout => \dado_ent_1~combout\(24));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(24),
	combout => \dado_ent_0~combout\(24));

-- Location: LC_X1_Y6_N5
\dado_sai~24\ : maxv_lcell
-- Equation(s):
-- \dado_sai~24_combout\ = ((\sele_ent~combout\ & (\dado_ent_1~combout\(24))) # (!\sele_ent~combout\ & ((\dado_ent_0~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_1~combout\(24),
	datac => \dado_ent_0~combout\(24),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~24_combout\);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(25),
	combout => \dado_ent_0~combout\(25));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(25),
	combout => \dado_ent_1~combout\(25));

-- Location: LC_X1_Y6_N2
\dado_sai~25\ : maxv_lcell
-- Equation(s):
-- \dado_sai~25_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(25)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_0~combout\(25),
	datac => \dado_ent_1~combout\(25),
	datad => \sele_ent~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~25_combout\);

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(26),
	combout => \dado_ent_0~combout\(26));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(26),
	combout => \dado_ent_1~combout\(26));

-- Location: LC_X7_Y4_N2
\dado_sai~26\ : maxv_lcell
-- Equation(s):
-- \dado_sai~26_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(26)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_0~combout\(26),
	datac => \sele_ent~combout\,
	datad => \dado_ent_1~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~26_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(27),
	combout => \dado_ent_0~combout\(27));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(27),
	combout => \dado_ent_1~combout\(27));

-- Location: LC_X12_Y4_N2
\dado_sai~27\ : maxv_lcell
-- Equation(s):
-- \dado_sai~27_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(27)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sele_ent~combout\,
	datac => \dado_ent_0~combout\(27),
	datad => \dado_ent_1~combout\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~27_combout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(28),
	combout => \dado_ent_0~combout\(28));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(28),
	combout => \dado_ent_1~combout\(28));

-- Location: LC_X7_Y4_N0
\dado_sai~28\ : maxv_lcell
-- Equation(s):
-- \dado_sai~28_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(28)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_0~combout\(28),
	datac => \sele_ent~combout\,
	datad => \dado_ent_1~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~28_combout\);

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(29),
	combout => \dado_ent_0~combout\(29));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(29),
	combout => \dado_ent_1~combout\(29));

-- Location: LC_X7_Y4_N5
\dado_sai~29\ : maxv_lcell
-- Equation(s):
-- \dado_sai~29_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(29)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dado_ent_0~combout\(29),
	datac => \sele_ent~combout\,
	datad => \dado_ent_1~combout\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~29_combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(30),
	combout => \dado_ent_0~combout\(30));

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(30),
	combout => \dado_ent_1~combout\(30));

-- Location: LC_X12_Y4_N7
\dado_sai~30\ : maxv_lcell
-- Equation(s):
-- \dado_sai~30_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(30)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sele_ent~combout\,
	datac => \dado_ent_0~combout\(30),
	datad => \dado_ent_1~combout\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~30_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_0[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_0(31),
	combout => \dado_ent_0~combout\(31));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ent_1[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado_ent_1(31),
	combout => \dado_ent_1~combout\(31));

-- Location: LC_X4_Y4_N7
\dado_sai~31\ : maxv_lcell
-- Equation(s):
-- \dado_sai~31_combout\ = ((\sele_ent~combout\ & ((\dado_ent_1~combout\(31)))) # (!\sele_ent~combout\ & (\dado_ent_0~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dado_ent_0~combout\(31),
	datac => \sele_ent~combout\,
	datad => \dado_ent_1~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dado_sai~31_combout\);

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~0_combout\,
	oe => VCC,
	padio => ww_dado_sai(0));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~1_combout\,
	oe => VCC,
	padio => ww_dado_sai(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~2_combout\,
	oe => VCC,
	padio => ww_dado_sai(2));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~3_combout\,
	oe => VCC,
	padio => ww_dado_sai(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~4_combout\,
	oe => VCC,
	padio => ww_dado_sai(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~5_combout\,
	oe => VCC,
	padio => ww_dado_sai(5));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~6_combout\,
	oe => VCC,
	padio => ww_dado_sai(6));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~7_combout\,
	oe => VCC,
	padio => ww_dado_sai(7));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~8_combout\,
	oe => VCC,
	padio => ww_dado_sai(8));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~9_combout\,
	oe => VCC,
	padio => ww_dado_sai(9));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~10_combout\,
	oe => VCC,
	padio => ww_dado_sai(10));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~11_combout\,
	oe => VCC,
	padio => ww_dado_sai(11));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~12_combout\,
	oe => VCC,
	padio => ww_dado_sai(12));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~13_combout\,
	oe => VCC,
	padio => ww_dado_sai(13));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~14_combout\,
	oe => VCC,
	padio => ww_dado_sai(14));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~15_combout\,
	oe => VCC,
	padio => ww_dado_sai(15));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~16_combout\,
	oe => VCC,
	padio => ww_dado_sai(16));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~17_combout\,
	oe => VCC,
	padio => ww_dado_sai(17));

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~18_combout\,
	oe => VCC,
	padio => ww_dado_sai(18));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~19_combout\,
	oe => VCC,
	padio => ww_dado_sai(19));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~20_combout\,
	oe => VCC,
	padio => ww_dado_sai(20));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~21_combout\,
	oe => VCC,
	padio => ww_dado_sai(21));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~22_combout\,
	oe => VCC,
	padio => ww_dado_sai(22));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~23_combout\,
	oe => VCC,
	padio => ww_dado_sai(23));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~24_combout\,
	oe => VCC,
	padio => ww_dado_sai(24));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~25_combout\,
	oe => VCC,
	padio => ww_dado_sai(25));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~26_combout\,
	oe => VCC,
	padio => ww_dado_sai(26));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~27_combout\,
	oe => VCC,
	padio => ww_dado_sai(27));

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~28_combout\,
	oe => VCC,
	padio => ww_dado_sai(28));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~29_combout\,
	oe => VCC,
	padio => ww_dado_sai(29));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~30_combout\,
	oe => VCC,
	padio => ww_dado_sai(30));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dado_sai[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dado_sai~31_combout\,
	oe => VCC,
	padio => ww_dado_sai(31));
END structure;


