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

-- DATE "06/30/2024 23:30:37"

-- 
-- Device: Altera 5M160ZT100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	processador_ciclo_unico IS
    PORT (
	Leds_vermelhos_saida : BUFFER std_logic_vector(31 DOWNTO 0);
	Chave_reset : IN std_logic;
	Clock : IN std_logic
	);
END processador_ciclo_unico;

-- Design Ports Information


ARCHITECTURE structure OF processador_ciclo_unico IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Leds_vermelhos_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Chave_reset : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Chave_reset~combout\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[0]~17\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[1]~19\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[1]~19COUT1_27\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[2]~21\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[2]~21COUT1_28\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[3]~23\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[3]~23COUT1_29\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[4]~1\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[4]~1COUT1_30\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[5]~3\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[6]~5\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[6]~5COUT1_31\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux1~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[7]~7\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[7]~7COUT1_32\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[8]~9\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[8]~9COUT1_33\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[9]~11\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[9]~11COUT1_34\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[10]~13\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[11]~15\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[11]~15COUT1_35\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux1~1_combout\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux31~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux1~4_combout\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux1~2_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~38_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[0]~0\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~5_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~39_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[1]~1\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~2\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~6_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~11_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~40_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[2]~2\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~8\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~8COUT1_193\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~12_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~17_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~41_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[3]~3\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~14\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~14COUT1_194\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~18_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~23_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~42_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[4]~4\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~20\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~20COUT1_195\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~24_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~29_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[5]~5\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~43_regout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~26\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~26COUT1_196\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~30_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~35_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~44_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[6]~6\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~32\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~36_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~41_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~45_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[7]~7\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~38\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~38COUT1_197\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~42_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~47_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~46_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[8]~8\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~44\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~44COUT1_198\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~48_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~53_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[9]~9\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~47_regout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~50\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~50COUT1_199\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~54_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~59_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~48_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[10]~10\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~56\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~56COUT1_200\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~60_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~65_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~49_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[11]~11\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~62\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~66_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~71_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~50_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[12]~12\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~68\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~68COUT1_201\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~72_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~77_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~51_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[13]~13\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~74\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~74COUT1_202\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~78_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~83_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[14]~14\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~52_regout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~80\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~80COUT1_203\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~84_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~89_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~53_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[15]~15_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~86\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~86COUT1_204\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~90_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~95\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~54_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~92\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~96_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~101\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~55_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~98\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~98COUT1_205\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~102_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~107\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~56_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~104\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~104COUT1_206\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~108_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~113\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~57_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~110\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~110COUT1_207\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~114_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~119\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~58_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[20]~20_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~116\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~116COUT1_208\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~120_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~125\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~59_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~122\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~126_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~131\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~60_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~128\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~128COUT1_209\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~132_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~137\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~61_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~134\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~134COUT1_210\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~138_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~143\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~62_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~140\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~140COUT1_211\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~144_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~149\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~63_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[25]~25_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~146\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~146COUT1_212\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~150_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~155\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~64_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~152\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~156_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~161\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~65_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~158\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~158COUT1_213\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~162_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~167\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~66_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~164\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~164COUT1_214\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~168_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~173\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~67_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~170\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~170COUT1_215\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~174_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~179\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~68_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[30]~30_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~176\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~176COUT1_216\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~180_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~185\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~69_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[31]~31_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~182\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~186_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~191\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \via_dados|instancia_mem_instrucao|Instrucao\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Chave_reset~combout\ : std_logic;

BEGIN

Leds_vermelhos_saida <= ww_Leds_vermelhos_saida;
ww_Chave_reset <= Chave_reset;
ww_Clock <= Clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Chave_reset~combout\ <= NOT \Chave_reset~combout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Chave_reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Chave_reset,
	combout => \Chave_reset~combout\);

-- Location: LC_X3_Y1_N4
\via_dados|instancia_pc|saida[0]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(0) = DFFEAS((!\via_dados|instancia_pc|saida\(0)), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[0]~17\ = CARRY((\via_dados|instancia_pc|saida\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(0),
	aclr => \Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(0),
	cout => \via_dados|instancia_pc|saida[0]~17\);

-- Location: LC_X3_Y1_N5
\via_dados|instancia_pc|saida[1]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(1) = DFFEAS(\via_dados|instancia_pc|saida\(1) $ ((((\via_dados|instancia_pc|saida[0]~17\)))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[1]~19\ = CARRY(((!\via_dados|instancia_pc|saida[0]~17\)) # (!\via_dados|instancia_pc|saida\(1)))
-- \via_dados|instancia_pc|saida[1]~19COUT1_27\ = CARRY(((!\via_dados|instancia_pc|saida[0]~17\)) # (!\via_dados|instancia_pc|saida\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(1),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[0]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(1),
	cout0 => \via_dados|instancia_pc|saida[1]~19\,
	cout1 => \via_dados|instancia_pc|saida[1]~19COUT1_27\);

-- Location: LC_X3_Y1_N6
\via_dados|instancia_pc|saida[2]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(2) = DFFEAS(\via_dados|instancia_pc|saida\(2) $ ((((!(!\via_dados|instancia_pc|saida[0]~17\ & \via_dados|instancia_pc|saida[1]~19\) # (\via_dados|instancia_pc|saida[0]~17\ & \via_dados|instancia_pc|saida[1]~19COUT1_27\))))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[2]~21\ = CARRY((\via_dados|instancia_pc|saida\(2) & ((!\via_dados|instancia_pc|saida[1]~19\))))
-- \via_dados|instancia_pc|saida[2]~21COUT1_28\ = CARRY((\via_dados|instancia_pc|saida\(2) & ((!\via_dados|instancia_pc|saida[1]~19COUT1_27\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(2),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[0]~17\,
	cin0 => \via_dados|instancia_pc|saida[1]~19\,
	cin1 => \via_dados|instancia_pc|saida[1]~19COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(2),
	cout0 => \via_dados|instancia_pc|saida[2]~21\,
	cout1 => \via_dados|instancia_pc|saida[2]~21COUT1_28\);

-- Location: LC_X3_Y1_N7
\via_dados|instancia_pc|saida[3]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(3) = DFFEAS((\via_dados|instancia_pc|saida\(3) $ (((!\via_dados|instancia_pc|saida[0]~17\ & \via_dados|instancia_pc|saida[2]~21\) # (\via_dados|instancia_pc|saida[0]~17\ & \via_dados|instancia_pc|saida[2]~21COUT1_28\)))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[3]~23\ = CARRY(((!\via_dados|instancia_pc|saida[2]~21\) # (!\via_dados|instancia_pc|saida\(3))))
-- \via_dados|instancia_pc|saida[3]~23COUT1_29\ = CARRY(((!\via_dados|instancia_pc|saida[2]~21COUT1_28\) # (!\via_dados|instancia_pc|saida\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_pc|saida\(3),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[0]~17\,
	cin0 => \via_dados|instancia_pc|saida[2]~21\,
	cin1 => \via_dados|instancia_pc|saida[2]~21COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(3),
	cout0 => \via_dados|instancia_pc|saida[3]~23\,
	cout1 => \via_dados|instancia_pc|saida[3]~23COUT1_29\);

-- Location: LC_X3_Y1_N8
\via_dados|instancia_pc|saida[4]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(4) = DFFEAS(\via_dados|instancia_pc|saida\(4) $ ((((!(!\via_dados|instancia_pc|saida[0]~17\ & \via_dados|instancia_pc|saida[3]~23\) # (\via_dados|instancia_pc|saida[0]~17\ & \via_dados|instancia_pc|saida[3]~23COUT1_29\))))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[4]~1\ = CARRY((\via_dados|instancia_pc|saida\(4) & ((!\via_dados|instancia_pc|saida[3]~23\))))
-- \via_dados|instancia_pc|saida[4]~1COUT1_30\ = CARRY((\via_dados|instancia_pc|saida\(4) & ((!\via_dados|instancia_pc|saida[3]~23COUT1_29\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(4),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[0]~17\,
	cin0 => \via_dados|instancia_pc|saida[3]~23\,
	cin1 => \via_dados|instancia_pc|saida[3]~23COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(4),
	cout0 => \via_dados|instancia_pc|saida[4]~1\,
	cout1 => \via_dados|instancia_pc|saida[4]~1COUT1_30\);

-- Location: LC_X3_Y1_N9
\via_dados|instancia_pc|saida[5]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(5) = DFFEAS((\via_dados|instancia_pc|saida\(5) $ (((!\via_dados|instancia_pc|saida[0]~17\ & \via_dados|instancia_pc|saida[4]~1\) # (\via_dados|instancia_pc|saida[0]~17\ & \via_dados|instancia_pc|saida[4]~1COUT1_30\)))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[5]~3\ = CARRY(((!\via_dados|instancia_pc|saida[4]~1COUT1_30\) # (!\via_dados|instancia_pc|saida\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_pc|saida\(5),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[0]~17\,
	cin0 => \via_dados|instancia_pc|saida[4]~1\,
	cin1 => \via_dados|instancia_pc|saida[4]~1COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(5),
	cout => \via_dados|instancia_pc|saida[5]~3\);

-- Location: LC_X4_Y1_N0
\via_dados|instancia_pc|saida[6]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(6) = DFFEAS((\via_dados|instancia_pc|saida\(6) $ ((!\via_dados|instancia_pc|saida[5]~3\))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[6]~5\ = CARRY(((\via_dados|instancia_pc|saida\(6) & !\via_dados|instancia_pc|saida[5]~3\)))
-- \via_dados|instancia_pc|saida[6]~5COUT1_31\ = CARRY(((\via_dados|instancia_pc|saida\(6) & !\via_dados|instancia_pc|saida[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_pc|saida\(6),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(6),
	cout0 => \via_dados|instancia_pc|saida[6]~5\,
	cout1 => \via_dados|instancia_pc|saida[6]~5COUT1_31\);

-- Location: LC_X4_Y1_N1
\via_dados|instancia_pc|saida[7]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(7) = DFFEAS((\via_dados|instancia_pc|saida\(7) $ (((!\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[6]~5\) # (\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[6]~5COUT1_31\)))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[7]~7\ = CARRY(((!\via_dados|instancia_pc|saida[6]~5\) # (!\via_dados|instancia_pc|saida\(7))))
-- \via_dados|instancia_pc|saida[7]~7COUT1_32\ = CARRY(((!\via_dados|instancia_pc|saida[6]~5COUT1_31\) # (!\via_dados|instancia_pc|saida\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_pc|saida\(7),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[5]~3\,
	cin0 => \via_dados|instancia_pc|saida[6]~5\,
	cin1 => \via_dados|instancia_pc|saida[6]~5COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(7),
	cout0 => \via_dados|instancia_pc|saida[7]~7\,
	cout1 => \via_dados|instancia_pc|saida[7]~7COUT1_32\);

-- Location: LC_X4_Y1_N9
\via_dados|instancia_mem_instrucao|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux1~0_combout\ = (!\via_dados|instancia_pc|saida\(5) & (!\via_dados|instancia_pc|saida\(7) & (!\via_dados|instancia_pc|saida\(6) & !\via_dados|instancia_pc|saida\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_pc|saida\(5),
	datab => \via_dados|instancia_pc|saida\(7),
	datac => \via_dados|instancia_pc|saida\(6),
	datad => \via_dados|instancia_pc|saida\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux1~0_combout\);

-- Location: LC_X4_Y1_N2
\via_dados|instancia_pc|saida[8]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(8) = DFFEAS((\via_dados|instancia_pc|saida\(8) $ ((!(!\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[7]~7\) # (\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[7]~7COUT1_32\)))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[8]~9\ = CARRY(((\via_dados|instancia_pc|saida\(8) & !\via_dados|instancia_pc|saida[7]~7\)))
-- \via_dados|instancia_pc|saida[8]~9COUT1_33\ = CARRY(((\via_dados|instancia_pc|saida\(8) & !\via_dados|instancia_pc|saida[7]~7COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_pc|saida\(8),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[5]~3\,
	cin0 => \via_dados|instancia_pc|saida[7]~7\,
	cin1 => \via_dados|instancia_pc|saida[7]~7COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(8),
	cout0 => \via_dados|instancia_pc|saida[8]~9\,
	cout1 => \via_dados|instancia_pc|saida[8]~9COUT1_33\);

-- Location: LC_X4_Y1_N3
\via_dados|instancia_pc|saida[9]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(9) = DFFEAS(\via_dados|instancia_pc|saida\(9) $ (((((!\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[8]~9\) # (\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[8]~9COUT1_33\))))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[9]~11\ = CARRY(((!\via_dados|instancia_pc|saida[8]~9\)) # (!\via_dados|instancia_pc|saida\(9)))
-- \via_dados|instancia_pc|saida[9]~11COUT1_34\ = CARRY(((!\via_dados|instancia_pc|saida[8]~9COUT1_33\)) # (!\via_dados|instancia_pc|saida\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(9),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[5]~3\,
	cin0 => \via_dados|instancia_pc|saida[8]~9\,
	cin1 => \via_dados|instancia_pc|saida[8]~9COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(9),
	cout0 => \via_dados|instancia_pc|saida[9]~11\,
	cout1 => \via_dados|instancia_pc|saida[9]~11COUT1_34\);

-- Location: LC_X4_Y1_N4
\via_dados|instancia_pc|saida[10]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(10) = DFFEAS(\via_dados|instancia_pc|saida\(10) $ ((((!(!\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[9]~11\) # (\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[9]~11COUT1_34\))))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[10]~13\ = CARRY((\via_dados|instancia_pc|saida\(10) & ((!\via_dados|instancia_pc|saida[9]~11COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(10),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[5]~3\,
	cin0 => \via_dados|instancia_pc|saida[9]~11\,
	cin1 => \via_dados|instancia_pc|saida[9]~11COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(10),
	cout => \via_dados|instancia_pc|saida[10]~13\);

-- Location: LC_X4_Y1_N5
\via_dados|instancia_pc|saida[11]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(11) = DFFEAS(\via_dados|instancia_pc|saida\(11) $ ((((\via_dados|instancia_pc|saida[10]~13\)))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[11]~15\ = CARRY(((!\via_dados|instancia_pc|saida[10]~13\)) # (!\via_dados|instancia_pc|saida\(11)))
-- \via_dados|instancia_pc|saida[11]~15COUT1_35\ = CARRY(((!\via_dados|instancia_pc|saida[10]~13\)) # (!\via_dados|instancia_pc|saida\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(11),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[10]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(11),
	cout0 => \via_dados|instancia_pc|saida[11]~15\,
	cout1 => \via_dados|instancia_pc|saida[11]~15COUT1_35\);

-- Location: LC_X4_Y1_N6
\via_dados|instancia_pc|saida[12]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(12) = DFFEAS(\via_dados|instancia_pc|saida\(12) $ ((((!(!\via_dados|instancia_pc|saida[10]~13\ & \via_dados|instancia_pc|saida[11]~15\) # (\via_dados|instancia_pc|saida[10]~13\ & 
-- \via_dados|instancia_pc|saida[11]~15COUT1_35\))))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(12),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[10]~13\,
	cin0 => \via_dados|instancia_pc|saida[11]~15\,
	cin1 => \via_dados|instancia_pc|saida[11]~15COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(12));

-- Location: LC_X4_Y1_N7
\via_dados|instancia_mem_instrucao|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux1~1_combout\ = (!\via_dados|instancia_pc|saida\(10) & (!\via_dados|instancia_pc|saida\(8) & (!\via_dados|instancia_pc|saida\(11) & !\via_dados|instancia_pc|saida\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_pc|saida\(10),
	datab => \via_dados|instancia_pc|saida\(8),
	datac => \via_dados|instancia_pc|saida\(11),
	datad => \via_dados|instancia_pc|saida\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux1~1_combout\);

-- Location: LC_X3_Y1_N1
\via_dados|instancia_mem_instrucao|Mux31~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux31~0_combout\ = (\via_dados|instancia_pc|saida\(3)) # ((\via_dados|instancia_pc|saida\(2)) # ((\via_dados|instancia_pc|saida\(0) & \via_dados|instancia_pc|saida\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_pc|saida\(0),
	datab => \via_dados|instancia_pc|saida\(3),
	datac => \via_dados|instancia_pc|saida\(1),
	datad => \via_dados|instancia_pc|saida\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux31~0_combout\);

-- Location: LC_X3_Y2_N1
\via_dados|instancia_mem_instrucao|Instrucao[0]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(0) = DFFEAS((\via_dados|instancia_mem_instrucao|Mux1~0_combout\ & (!\via_dados|instancia_pc|saida\(12) & (\via_dados|instancia_mem_instrucao|Mux1~1_combout\ & 
-- !\via_dados|instancia_mem_instrucao|Mux31~0_combout\))), GLOBAL(\Clock~combout\), VCC, , !\Chave_reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Mux1~0_combout\,
	datab => \via_dados|instancia_pc|saida\(12),
	datac => \via_dados|instancia_mem_instrucao|Mux1~1_combout\,
	datad => \via_dados|instancia_mem_instrucao|Mux31~0_combout\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(0));

-- Location: LC_X3_Y1_N2
\via_dados|instancia_mem_instrucao|Mux1~4\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux1~4_combout\ = (!\via_dados|instancia_pc|saida\(2) & (((!\via_dados|instancia_pc|saida\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_pc|saida\(2),
	datac => \via_dados|instancia_pc|saida\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux1~4_combout\);

-- Location: LC_X4_Y1_N8
\via_dados|instancia_mem_instrucao|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux1~2_combout\ = ((\via_dados|instancia_mem_instrucao|Mux1~1_combout\ & (!\via_dados|instancia_pc|saida\(12) & \via_dados|instancia_mem_instrucao|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_mem_instrucao|Mux1~1_combout\,
	datac => \via_dados|instancia_pc|saida\(12),
	datad => \via_dados|instancia_mem_instrucao|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux1~2_combout\);

-- Location: LC_X3_Y1_N3
\via_dados|instancia_mem_instrucao|Instrucao[30]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(30) = DFFEAS((!\via_dados|instancia_pc|saida\(0) & (\via_dados|instancia_mem_instrucao|Mux1~4_combout\ & (\via_dados|instancia_pc|saida\(1) & \via_dados|instancia_mem_instrucao|Mux1~2_combout\))), 
-- GLOBAL(\Clock~combout\), VCC, , !\Chave_reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(0),
	datab => \via_dados|instancia_mem_instrucao|Mux1~4_combout\,
	datac => \via_dados|instancia_pc|saida\(1),
	datad => \via_dados|instancia_mem_instrucao|Mux1~2_combout\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(30));

-- Location: LC_X3_Y2_N6
\via_dados|instancia_mem_instrucao|Instrucao[5]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(5) = DFFEAS((!\via_dados|instancia_pc|saida\(0) & (!\via_dados|instancia_pc|saida\(3) & (!\via_dados|instancia_pc|saida\(2) & \via_dados|instancia_mem_instrucao|Mux1~2_combout\))), GLOBAL(\Clock~combout\), 
-- VCC, , !\Chave_reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(0),
	datab => \via_dados|instancia_pc|saida\(3),
	datac => \via_dados|instancia_pc|saida\(2),
	datad => \via_dados|instancia_mem_instrucao|Mux1~2_combout\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(5));

-- Location: LC_X3_Y3_N2
\via_dados|instancia_banco_registradores|banco~38\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[0]~0\ = (D1L1Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~38_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[0]~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0b0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[0]~0\,
	regout => \via_dados|instancia_banco_registradores|banco~38_regout\);

-- Location: LC_X3_Y3_N4
\via_dados|instancia_ula|Add0~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~0_combout\ = \via_dados|instancia_banco_registradores|banco~38_regout\ $ ((\via_dados|instancia_mux_ula|dado_sai[0]~0\))
-- \via_dados|instancia_ula|Add0~2\ = CARRY((\via_dados|instancia_banco_registradores|banco~38_regout\ & (\via_dados|instancia_mux_ula|dado_sai[0]~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~38_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~0_combout\,
	cout => \via_dados|instancia_ula|Add0~2\);

-- Location: LC_X2_Y3_N8
\via_dados|instancia_ula|Add0~5\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~5_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~0_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~5_combout\);

-- Location: LC_X3_Y2_N3
\via_dados|instancia_banco_registradores|banco~39\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[1]~1\ = ((D1L2Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~39_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[1]~1\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~11_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~11_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[1]~1\,
	regout => \via_dados|instancia_banco_registradores|banco~39_regout\);

-- Location: LC_X3_Y3_N5
\via_dados|instancia_ula|Add0~6\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~6_combout\ = \via_dados|instancia_banco_registradores|banco~39_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[1]~1\ $ ((\via_dados|instancia_ula|Add0~2\)))
-- \via_dados|instancia_ula|Add0~8\ = CARRY((\via_dados|instancia_banco_registradores|banco~39_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[1]~1\ & !\via_dados|instancia_ula|Add0~2\)) # (!\via_dados|instancia_banco_registradores|banco~39_regout\ & 
-- ((!\via_dados|instancia_ula|Add0~2\) # (!\via_dados|instancia_mux_ula|dado_sai[1]~1\))))
-- \via_dados|instancia_ula|Add0~8COUT1_193\ = CARRY((\via_dados|instancia_banco_registradores|banco~39_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[1]~1\ & !\via_dados|instancia_ula|Add0~2\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~39_regout\ & ((!\via_dados|instancia_ula|Add0~2\) # (!\via_dados|instancia_mux_ula|dado_sai[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~39_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[1]~1\,
	cin => \via_dados|instancia_ula|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~6_combout\,
	cout0 => \via_dados|instancia_ula|Add0~8\,
	cout1 => \via_dados|instancia_ula|Add0~8COUT1_193\);

-- Location: LC_X2_Y2_N6
\via_dados|instancia_ula|Add0~11\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~11_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~6_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~11_combout\);

-- Location: LC_X3_Y2_N8
\via_dados|instancia_banco_registradores|banco~40\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[2]~2\ = ((D1L3Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~40_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[2]~2\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~17_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~17_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[2]~2\,
	regout => \via_dados|instancia_banco_registradores|banco~40_regout\);

-- Location: LC_X3_Y3_N6
\via_dados|instancia_ula|Add0~12\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~12_combout\ = \via_dados|instancia_banco_registradores|banco~40_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[2]~2\ $ ((!(!\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~8\) # 
-- (\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~8COUT1_193\))))
-- \via_dados|instancia_ula|Add0~14\ = CARRY((\via_dados|instancia_banco_registradores|banco~40_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[2]~2\) # (!\via_dados|instancia_ula|Add0~8\))) # (!\via_dados|instancia_banco_registradores|banco~40_regout\ & 
-- (\via_dados|instancia_mux_ula|dado_sai[2]~2\ & !\via_dados|instancia_ula|Add0~8\)))
-- \via_dados|instancia_ula|Add0~14COUT1_194\ = CARRY((\via_dados|instancia_banco_registradores|banco~40_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[2]~2\) # (!\via_dados|instancia_ula|Add0~8COUT1_193\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~40_regout\ & (\via_dados|instancia_mux_ula|dado_sai[2]~2\ & !\via_dados|instancia_ula|Add0~8COUT1_193\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~40_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[2]~2\,
	cin => \via_dados|instancia_ula|Add0~2\,
	cin0 => \via_dados|instancia_ula|Add0~8\,
	cin1 => \via_dados|instancia_ula|Add0~8COUT1_193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~12_combout\,
	cout0 => \via_dados|instancia_ula|Add0~14\,
	cout1 => \via_dados|instancia_ula|Add0~14COUT1_194\);

-- Location: LC_X2_Y2_N9
\via_dados|instancia_ula|Add0~17\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~17_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~12_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~17_combout\);

-- Location: LC_X3_Y3_N0
\via_dados|instancia_banco_registradores|banco~41\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[3]~3\ = (D1L4Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~41_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[3]~3\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~23_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0b0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~23_combout\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[3]~3\,
	regout => \via_dados|instancia_banco_registradores|banco~41_regout\);

-- Location: LC_X3_Y3_N7
\via_dados|instancia_ula|Add0~18\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~18_combout\ = \via_dados|instancia_banco_registradores|banco~41_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[3]~3\ $ (((!\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~14\) # 
-- (\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~14COUT1_194\))))
-- \via_dados|instancia_ula|Add0~20\ = CARRY((\via_dados|instancia_banco_registradores|banco~41_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[3]~3\ & !\via_dados|instancia_ula|Add0~14\)) # (!\via_dados|instancia_banco_registradores|banco~41_regout\ & 
-- ((!\via_dados|instancia_ula|Add0~14\) # (!\via_dados|instancia_mux_ula|dado_sai[3]~3\))))
-- \via_dados|instancia_ula|Add0~20COUT1_195\ = CARRY((\via_dados|instancia_banco_registradores|banco~41_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[3]~3\ & !\via_dados|instancia_ula|Add0~14COUT1_194\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~41_regout\ & ((!\via_dados|instancia_ula|Add0~14COUT1_194\) # (!\via_dados|instancia_mux_ula|dado_sai[3]~3\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~41_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[3]~3\,
	cin => \via_dados|instancia_ula|Add0~2\,
	cin0 => \via_dados|instancia_ula|Add0~14\,
	cin1 => \via_dados|instancia_ula|Add0~14COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~18_combout\,
	cout0 => \via_dados|instancia_ula|Add0~20\,
	cout1 => \via_dados|instancia_ula|Add0~20COUT1_195\);

-- Location: LC_X3_Y3_N3
\via_dados|instancia_ula|Add0~23\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~23_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~18_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~18_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~23_combout\);

-- Location: LC_X3_Y3_N1
\via_dados|instancia_banco_registradores|banco~42\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[4]~4\ = (D1L5Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~42_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[4]~4\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~29_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0b0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~29_combout\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[4]~4\,
	regout => \via_dados|instancia_banco_registradores|banco~42_regout\);

-- Location: LC_X3_Y3_N8
\via_dados|instancia_ula|Add0~24\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~24_combout\ = \via_dados|instancia_banco_registradores|banco~42_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[4]~4\ $ ((!(!\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~20\) # 
-- (\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~20COUT1_195\))))
-- \via_dados|instancia_ula|Add0~26\ = CARRY((\via_dados|instancia_banco_registradores|banco~42_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[4]~4\) # (!\via_dados|instancia_ula|Add0~20\))) # (!\via_dados|instancia_banco_registradores|banco~42_regout\ & 
-- (\via_dados|instancia_mux_ula|dado_sai[4]~4\ & !\via_dados|instancia_ula|Add0~20\)))
-- \via_dados|instancia_ula|Add0~26COUT1_196\ = CARRY((\via_dados|instancia_banco_registradores|banco~42_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[4]~4\) # (!\via_dados|instancia_ula|Add0~20COUT1_195\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~42_regout\ & (\via_dados|instancia_mux_ula|dado_sai[4]~4\ & !\via_dados|instancia_ula|Add0~20COUT1_195\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~42_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[4]~4\,
	cin => \via_dados|instancia_ula|Add0~2\,
	cin0 => \via_dados|instancia_ula|Add0~20\,
	cin1 => \via_dados|instancia_ula|Add0~20COUT1_195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~24_combout\,
	cout0 => \via_dados|instancia_ula|Add0~26\,
	cout1 => \via_dados|instancia_ula|Add0~26COUT1_196\);

-- Location: LC_X2_Y3_N1
\via_dados|instancia_ula|Add0~29\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~29_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~24_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~29_combout\);

-- Location: LC_X2_Y3_N5
\via_dados|instancia_banco_registradores|banco~43\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[5]~5\ = ((D1L6Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~43_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[5]~5\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~35_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[5]~5\,
	regout => \via_dados|instancia_banco_registradores|banco~43_regout\);

-- Location: LC_X3_Y3_N9
\via_dados|instancia_ula|Add0~30\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~30_combout\ = \via_dados|instancia_mux_ula|dado_sai[5]~5\ $ (\via_dados|instancia_banco_registradores|banco~43_regout\ $ (((!\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~26\) # 
-- (\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~26COUT1_196\))))
-- \via_dados|instancia_ula|Add0~32\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[5]~5\ & (!\via_dados|instancia_banco_registradores|banco~43_regout\ & !\via_dados|instancia_ula|Add0~26COUT1_196\)) # (!\via_dados|instancia_mux_ula|dado_sai[5]~5\ & 
-- ((!\via_dados|instancia_ula|Add0~26COUT1_196\) # (!\via_dados|instancia_banco_registradores|banco~43_regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[5]~5\,
	datab => \via_dados|instancia_banco_registradores|banco~43_regout\,
	cin => \via_dados|instancia_ula|Add0~2\,
	cin0 => \via_dados|instancia_ula|Add0~26\,
	cin1 => \via_dados|instancia_ula|Add0~26COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~30_combout\,
	cout => \via_dados|instancia_ula|Add0~32\);

-- Location: LC_X2_Y3_N2
\via_dados|instancia_ula|Add0~35\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~35_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~30_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~30_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~35_combout\);

-- Location: LC_X4_Y2_N5
\via_dados|instancia_banco_registradores|banco~44\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[6]~6\ = ((D1L7Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~44_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[6]~6\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~41_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~41_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[6]~6\,
	regout => \via_dados|instancia_banco_registradores|banco~44_regout\);

-- Location: LC_X4_Y3_N0
\via_dados|instancia_ula|Add0~36\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~36_combout\ = \via_dados|instancia_banco_registradores|banco~44_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[6]~6\ $ ((!\via_dados|instancia_ula|Add0~32\)))
-- \via_dados|instancia_ula|Add0~38\ = CARRY((\via_dados|instancia_banco_registradores|banco~44_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[6]~6\) # (!\via_dados|instancia_ula|Add0~32\))) # (!\via_dados|instancia_banco_registradores|banco~44_regout\ & 
-- (\via_dados|instancia_mux_ula|dado_sai[6]~6\ & !\via_dados|instancia_ula|Add0~32\)))
-- \via_dados|instancia_ula|Add0~38COUT1_197\ = CARRY((\via_dados|instancia_banco_registradores|banco~44_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[6]~6\) # (!\via_dados|instancia_ula|Add0~32\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~44_regout\ & (\via_dados|instancia_mux_ula|dado_sai[6]~6\ & !\via_dados|instancia_ula|Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~44_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[6]~6\,
	cin => \via_dados|instancia_ula|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~36_combout\,
	cout0 => \via_dados|instancia_ula|Add0~38\,
	cout1 => \via_dados|instancia_ula|Add0~38COUT1_197\);

-- Location: LC_X4_Y2_N3
\via_dados|instancia_ula|Add0~41\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~41_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~36_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~41_combout\);

-- Location: LC_X4_Y2_N8
\via_dados|instancia_banco_registradores|banco~45\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[7]~7\ = ((D1L8Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~45_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[7]~7\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~47_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~47_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[7]~7\,
	regout => \via_dados|instancia_banco_registradores|banco~45_regout\);

-- Location: LC_X4_Y3_N1
\via_dados|instancia_ula|Add0~42\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~42_combout\ = \via_dados|instancia_banco_registradores|banco~45_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[7]~7\ $ (((!\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~38\) # 
-- (\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~38COUT1_197\))))
-- \via_dados|instancia_ula|Add0~44\ = CARRY((\via_dados|instancia_banco_registradores|banco~45_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[7]~7\ & !\via_dados|instancia_ula|Add0~38\)) # (!\via_dados|instancia_banco_registradores|banco~45_regout\ & 
-- ((!\via_dados|instancia_ula|Add0~38\) # (!\via_dados|instancia_mux_ula|dado_sai[7]~7\))))
-- \via_dados|instancia_ula|Add0~44COUT1_198\ = CARRY((\via_dados|instancia_banco_registradores|banco~45_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[7]~7\ & !\via_dados|instancia_ula|Add0~38COUT1_197\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~45_regout\ & ((!\via_dados|instancia_ula|Add0~38COUT1_197\) # (!\via_dados|instancia_mux_ula|dado_sai[7]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~45_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[7]~7\,
	cin => \via_dados|instancia_ula|Add0~32\,
	cin0 => \via_dados|instancia_ula|Add0~38\,
	cin1 => \via_dados|instancia_ula|Add0~38COUT1_197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~42_combout\,
	cout0 => \via_dados|instancia_ula|Add0~44\,
	cout1 => \via_dados|instancia_ula|Add0~44COUT1_198\);

-- Location: LC_X4_Y2_N4
\via_dados|instancia_ula|Add0~47\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~47_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~42_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~47_combout\);

-- Location: LC_X4_Y4_N5
\via_dados|instancia_banco_registradores|banco~46\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[8]~8\ = ((D1L9Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~46_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[8]~8\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~53_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~53_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[8]~8\,
	regout => \via_dados|instancia_banco_registradores|banco~46_regout\);

-- Location: LC_X4_Y3_N2
\via_dados|instancia_ula|Add0~48\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~48_combout\ = \via_dados|instancia_banco_registradores|banco~46_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[8]~8\ $ ((!(!\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~44\) # 
-- (\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~44COUT1_198\))))
-- \via_dados|instancia_ula|Add0~50\ = CARRY((\via_dados|instancia_banco_registradores|banco~46_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[8]~8\) # (!\via_dados|instancia_ula|Add0~44\))) # (!\via_dados|instancia_banco_registradores|banco~46_regout\ & 
-- (\via_dados|instancia_mux_ula|dado_sai[8]~8\ & !\via_dados|instancia_ula|Add0~44\)))
-- \via_dados|instancia_ula|Add0~50COUT1_199\ = CARRY((\via_dados|instancia_banco_registradores|banco~46_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[8]~8\) # (!\via_dados|instancia_ula|Add0~44COUT1_198\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~46_regout\ & (\via_dados|instancia_mux_ula|dado_sai[8]~8\ & !\via_dados|instancia_ula|Add0~44COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~46_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[8]~8\,
	cin => \via_dados|instancia_ula|Add0~32\,
	cin0 => \via_dados|instancia_ula|Add0~44\,
	cin1 => \via_dados|instancia_ula|Add0~44COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~48_combout\,
	cout0 => \via_dados|instancia_ula|Add0~50\,
	cout1 => \via_dados|instancia_ula|Add0~50COUT1_199\);

-- Location: LC_X4_Y4_N6
\via_dados|instancia_ula|Add0~53\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~53_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~48_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~53_combout\);

-- Location: LC_X3_Y2_N4
\via_dados|instancia_banco_registradores|banco~47\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[9]~9\ = ((D1L10Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~47_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[9]~9\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~59_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~59_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[9]~9\,
	regout => \via_dados|instancia_banco_registradores|banco~47_regout\);

-- Location: LC_X4_Y3_N3
\via_dados|instancia_ula|Add0~54\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~54_combout\ = \via_dados|instancia_mux_ula|dado_sai[9]~9\ $ (\via_dados|instancia_banco_registradores|banco~47_regout\ $ (((!\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~50\) # 
-- (\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~50COUT1_199\))))
-- \via_dados|instancia_ula|Add0~56\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[9]~9\ & (!\via_dados|instancia_banco_registradores|banco~47_regout\ & !\via_dados|instancia_ula|Add0~50\)) # (!\via_dados|instancia_mux_ula|dado_sai[9]~9\ & 
-- ((!\via_dados|instancia_ula|Add0~50\) # (!\via_dados|instancia_banco_registradores|banco~47_regout\))))
-- \via_dados|instancia_ula|Add0~56COUT1_200\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[9]~9\ & (!\via_dados|instancia_banco_registradores|banco~47_regout\ & !\via_dados|instancia_ula|Add0~50COUT1_199\)) # (!\via_dados|instancia_mux_ula|dado_sai[9]~9\ & 
-- ((!\via_dados|instancia_ula|Add0~50COUT1_199\) # (!\via_dados|instancia_banco_registradores|banco~47_regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[9]~9\,
	datab => \via_dados|instancia_banco_registradores|banco~47_regout\,
	cin => \via_dados|instancia_ula|Add0~32\,
	cin0 => \via_dados|instancia_ula|Add0~50\,
	cin1 => \via_dados|instancia_ula|Add0~50COUT1_199\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~54_combout\,
	cout0 => \via_dados|instancia_ula|Add0~56\,
	cout1 => \via_dados|instancia_ula|Add0~56COUT1_200\);

-- Location: LC_X3_Y2_N9
\via_dados|instancia_ula|Add0~59\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~59_combout\ = (\via_dados|instancia_ula|Add0~54_combout\ & (\via_dados|instancia_mem_instrucao|Instrucao\(0) & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_ula|Add0~54_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~59_combout\);

-- Location: LC_X3_Y2_N2
\via_dados|instancia_banco_registradores|banco~48\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[10]~10\ = ((D1L11Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~48_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[10]~10\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~65_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[10]~10\,
	regout => \via_dados|instancia_banco_registradores|banco~48_regout\);

-- Location: LC_X4_Y3_N4
\via_dados|instancia_ula|Add0~60\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~60_combout\ = \via_dados|instancia_banco_registradores|banco~48_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[10]~10\ $ ((!(!\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~56\) # 
-- (\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~56COUT1_200\))))
-- \via_dados|instancia_ula|Add0~62\ = CARRY((\via_dados|instancia_banco_registradores|banco~48_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[10]~10\) # (!\via_dados|instancia_ula|Add0~56COUT1_200\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~48_regout\ & (\via_dados|instancia_mux_ula|dado_sai[10]~10\ & !\via_dados|instancia_ula|Add0~56COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~48_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[10]~10\,
	cin => \via_dados|instancia_ula|Add0~32\,
	cin0 => \via_dados|instancia_ula|Add0~56\,
	cin1 => \via_dados|instancia_ula|Add0~56COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~60_combout\,
	cout => \via_dados|instancia_ula|Add0~62\);

-- Location: LC_X3_Y2_N7
\via_dados|instancia_ula|Add0~65\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~65_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~60_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datad => \via_dados|instancia_ula|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~65_combout\);

-- Location: LC_X3_Y2_N0
\via_dados|instancia_banco_registradores|banco~49\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[11]~11\ = ((D1L12Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~49_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[11]~11\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~71_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~71_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[11]~11\,
	regout => \via_dados|instancia_banco_registradores|banco~49_regout\);

-- Location: LC_X4_Y3_N5
\via_dados|instancia_ula|Add0~66\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~66_combout\ = \via_dados|instancia_banco_registradores|banco~49_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[11]~11\ $ ((\via_dados|instancia_ula|Add0~62\)))
-- \via_dados|instancia_ula|Add0~68\ = CARRY((\via_dados|instancia_banco_registradores|banco~49_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[11]~11\ & !\via_dados|instancia_ula|Add0~62\)) # (!\via_dados|instancia_banco_registradores|banco~49_regout\ & 
-- ((!\via_dados|instancia_ula|Add0~62\) # (!\via_dados|instancia_mux_ula|dado_sai[11]~11\))))
-- \via_dados|instancia_ula|Add0~68COUT1_201\ = CARRY((\via_dados|instancia_banco_registradores|banco~49_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[11]~11\ & !\via_dados|instancia_ula|Add0~62\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~49_regout\ & ((!\via_dados|instancia_ula|Add0~62\) # (!\via_dados|instancia_mux_ula|dado_sai[11]~11\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~49_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[11]~11\,
	cin => \via_dados|instancia_ula|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~66_combout\,
	cout0 => \via_dados|instancia_ula|Add0~68\,
	cout1 => \via_dados|instancia_ula|Add0~68COUT1_201\);

-- Location: LC_X3_Y2_N5
\via_dados|instancia_ula|Add0~71\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~71_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~66_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datad => \via_dados|instancia_ula|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~71_combout\);

-- Location: LC_X2_Y3_N3
\via_dados|instancia_banco_registradores|banco~50\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[12]~12\ = ((D1L13Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~50_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[12]~12\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~77_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~77_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[12]~12\,
	regout => \via_dados|instancia_banco_registradores|banco~50_regout\);

-- Location: LC_X4_Y3_N6
\via_dados|instancia_ula|Add0~72\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~72_combout\ = \via_dados|instancia_banco_registradores|banco~50_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[12]~12\ $ ((!(!\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~68\) # 
-- (\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~68COUT1_201\))))
-- \via_dados|instancia_ula|Add0~74\ = CARRY((\via_dados|instancia_banco_registradores|banco~50_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[12]~12\) # (!\via_dados|instancia_ula|Add0~68\))) # (!\via_dados|instancia_banco_registradores|banco~50_regout\ 
-- & (\via_dados|instancia_mux_ula|dado_sai[12]~12\ & !\via_dados|instancia_ula|Add0~68\)))
-- \via_dados|instancia_ula|Add0~74COUT1_202\ = CARRY((\via_dados|instancia_banco_registradores|banco~50_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[12]~12\) # (!\via_dados|instancia_ula|Add0~68COUT1_201\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~50_regout\ & (\via_dados|instancia_mux_ula|dado_sai[12]~12\ & !\via_dados|instancia_ula|Add0~68COUT1_201\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~50_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[12]~12\,
	cin => \via_dados|instancia_ula|Add0~62\,
	cin0 => \via_dados|instancia_ula|Add0~68\,
	cin1 => \via_dados|instancia_ula|Add0~68COUT1_201\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~72_combout\,
	cout0 => \via_dados|instancia_ula|Add0~74\,
	cout1 => \via_dados|instancia_ula|Add0~74COUT1_202\);

-- Location: LC_X2_Y3_N6
\via_dados|instancia_ula|Add0~77\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~77_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~72_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~77_combout\);

-- Location: LC_X2_Y3_N7
\via_dados|instancia_banco_registradores|banco~51\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[13]~13\ = ((D1L14Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~51_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[13]~13\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~83_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~83_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[13]~13\,
	regout => \via_dados|instancia_banco_registradores|banco~51_regout\);

-- Location: LC_X4_Y3_N7
\via_dados|instancia_ula|Add0~78\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~78_combout\ = \via_dados|instancia_banco_registradores|banco~51_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[13]~13\ $ (((!\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~74\) # 
-- (\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~74COUT1_202\))))
-- \via_dados|instancia_ula|Add0~80\ = CARRY((\via_dados|instancia_banco_registradores|banco~51_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[13]~13\ & !\via_dados|instancia_ula|Add0~74\)) # (!\via_dados|instancia_banco_registradores|banco~51_regout\ & 
-- ((!\via_dados|instancia_ula|Add0~74\) # (!\via_dados|instancia_mux_ula|dado_sai[13]~13\))))
-- \via_dados|instancia_ula|Add0~80COUT1_203\ = CARRY((\via_dados|instancia_banco_registradores|banco~51_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[13]~13\ & !\via_dados|instancia_ula|Add0~74COUT1_202\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~51_regout\ & ((!\via_dados|instancia_ula|Add0~74COUT1_202\) # (!\via_dados|instancia_mux_ula|dado_sai[13]~13\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~51_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[13]~13\,
	cin => \via_dados|instancia_ula|Add0~62\,
	cin0 => \via_dados|instancia_ula|Add0~74\,
	cin1 => \via_dados|instancia_ula|Add0~74COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~78_combout\,
	cout0 => \via_dados|instancia_ula|Add0~80\,
	cout1 => \via_dados|instancia_ula|Add0~80COUT1_203\);

-- Location: LC_X2_Y3_N0
\via_dados|instancia_ula|Add0~83\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~83_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~78_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~83_combout\);

-- Location: LC_X2_Y3_N9
\via_dados|instancia_banco_registradores|banco~52\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[14]~14\ = ((D1L15Q & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~52_regout\ = DFFEAS(\via_dados|instancia_mux_ula|dado_sai[14]~14\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~89_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f050",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~89_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[14]~14\,
	regout => \via_dados|instancia_banco_registradores|banco~52_regout\);

-- Location: LC_X4_Y3_N8
\via_dados|instancia_ula|Add0~84\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~84_combout\ = \via_dados|instancia_mux_ula|dado_sai[14]~14\ $ (\via_dados|instancia_banco_registradores|banco~52_regout\ $ ((!(!\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~80\) # 
-- (\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~80COUT1_203\))))
-- \via_dados|instancia_ula|Add0~86\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[14]~14\ & ((\via_dados|instancia_banco_registradores|banco~52_regout\) # (!\via_dados|instancia_ula|Add0~80\))) # (!\via_dados|instancia_mux_ula|dado_sai[14]~14\ & 
-- (\via_dados|instancia_banco_registradores|banco~52_regout\ & !\via_dados|instancia_ula|Add0~80\)))
-- \via_dados|instancia_ula|Add0~86COUT1_204\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[14]~14\ & ((\via_dados|instancia_banco_registradores|banco~52_regout\) # (!\via_dados|instancia_ula|Add0~80COUT1_203\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[14]~14\ & (\via_dados|instancia_banco_registradores|banco~52_regout\ & !\via_dados|instancia_ula|Add0~80COUT1_203\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[14]~14\,
	datab => \via_dados|instancia_banco_registradores|banco~52_regout\,
	cin => \via_dados|instancia_ula|Add0~62\,
	cin0 => \via_dados|instancia_ula|Add0~80\,
	cin1 => \via_dados|instancia_ula|Add0~80COUT1_203\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~84_combout\,
	cout0 => \via_dados|instancia_ula|Add0~86\,
	cout1 => \via_dados|instancia_ula|Add0~86COUT1_204\);

-- Location: LC_X2_Y3_N4
\via_dados|instancia_ula|Add0~89\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~89_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~84_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~89_combout\);

-- Location: LC_X4_Y4_N7
\via_dados|instancia_banco_registradores|banco~53\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~95\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~90_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))
-- \via_dados|instancia_banco_registradores|banco~53_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~95\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~90_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~95\,
	regout => \via_dados|instancia_banco_registradores|banco~53_regout\);

-- Location: LC_X4_Y4_N8
\via_dados|instancia_mux_ula|dado_sai[15]~15\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[15]~15_combout\ = ((\via_dados|instancia_banco_registradores|banco~53_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~53_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[15]~15_combout\);

-- Location: LC_X4_Y3_N9
\via_dados|instancia_ula|Add0~90\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~90_combout\ = \via_dados|instancia_banco_registradores|banco~53_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[15]~15_combout\ $ (((!\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~86\) # 
-- (\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~86COUT1_204\))))
-- \via_dados|instancia_ula|Add0~92\ = CARRY((\via_dados|instancia_banco_registradores|banco~53_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[15]~15_combout\ & !\via_dados|instancia_ula|Add0~86COUT1_204\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~53_regout\ & ((!\via_dados|instancia_ula|Add0~86COUT1_204\) # (!\via_dados|instancia_mux_ula|dado_sai[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~53_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[15]~15_combout\,
	cin => \via_dados|instancia_ula|Add0~62\,
	cin0 => \via_dados|instancia_ula|Add0~86\,
	cin1 => \via_dados|instancia_ula|Add0~86COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~90_combout\,
	cout => \via_dados|instancia_ula|Add0~92\);

-- Location: LC_X4_Y2_N9
\via_dados|instancia_banco_registradores|banco~54\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~101\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~96_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))
-- \via_dados|instancia_banco_registradores|banco~54_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~101\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~96_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~101\,
	regout => \via_dados|instancia_banco_registradores|banco~54_regout\);

-- Location: LC_X4_Y2_N6
\via_dados|instancia_mux_ula|dado_sai[16]~16\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ = ((\via_dados|instancia_banco_registradores|banco~54_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~54_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[16]~16_combout\);

-- Location: LC_X5_Y3_N0
\via_dados|instancia_ula|Add0~96\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~96_combout\ = \via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ $ (\via_dados|instancia_banco_registradores|banco~54_regout\ $ ((!\via_dados|instancia_ula|Add0~92\)))
-- \via_dados|instancia_ula|Add0~98\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ & ((\via_dados|instancia_banco_registradores|banco~54_regout\) # (!\via_dados|instancia_ula|Add0~92\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ & (\via_dados|instancia_banco_registradores|banco~54_regout\ & !\via_dados|instancia_ula|Add0~92\)))
-- \via_dados|instancia_ula|Add0~98COUT1_205\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ & ((\via_dados|instancia_banco_registradores|banco~54_regout\) # (!\via_dados|instancia_ula|Add0~92\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ & (\via_dados|instancia_banco_registradores|banco~54_regout\ & !\via_dados|instancia_ula|Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[16]~16_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~54_regout\,
	cin => \via_dados|instancia_ula|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~96_combout\,
	cout0 => \via_dados|instancia_ula|Add0~98\,
	cout1 => \via_dados|instancia_ula|Add0~98COUT1_205\);

-- Location: LC_X5_Y2_N8
\via_dados|instancia_banco_registradores|banco~55\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~107\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~102_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~55_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~107\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~102_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~107\,
	regout => \via_dados|instancia_banco_registradores|banco~55_regout\);

-- Location: LC_X4_Y2_N7
\via_dados|instancia_mux_ula|dado_sai[17]~17\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ = ((\via_dados|instancia_banco_registradores|banco~55_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~55_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[17]~17_combout\);

-- Location: LC_X5_Y3_N1
\via_dados|instancia_ula|Add0~102\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~102_combout\ = \via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ $ (\via_dados|instancia_banco_registradores|banco~55_regout\ $ (((!\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~98\) # 
-- (\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~98COUT1_205\))))
-- \via_dados|instancia_ula|Add0~104\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ & (!\via_dados|instancia_banco_registradores|banco~55_regout\ & !\via_dados|instancia_ula|Add0~98\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ & ((!\via_dados|instancia_ula|Add0~98\) # (!\via_dados|instancia_banco_registradores|banco~55_regout\))))
-- \via_dados|instancia_ula|Add0~104COUT1_206\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ & (!\via_dados|instancia_banco_registradores|banco~55_regout\ & !\via_dados|instancia_ula|Add0~98COUT1_205\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ & ((!\via_dados|instancia_ula|Add0~98COUT1_205\) # (!\via_dados|instancia_banco_registradores|banco~55_regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[17]~17_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~55_regout\,
	cin => \via_dados|instancia_ula|Add0~92\,
	cin0 => \via_dados|instancia_ula|Add0~98\,
	cin1 => \via_dados|instancia_ula|Add0~98COUT1_205\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~102_combout\,
	cout0 => \via_dados|instancia_ula|Add0~104\,
	cout1 => \via_dados|instancia_ula|Add0~104COUT1_206\);

-- Location: LC_X4_Y4_N3
\via_dados|instancia_banco_registradores|banco~56\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~113\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~108_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))
-- \via_dados|instancia_banco_registradores|banco~56_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~113\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~108_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~113\,
	regout => \via_dados|instancia_banco_registradores|banco~56_regout\);

-- Location: LC_X4_Y4_N2
\via_dados|instancia_mux_ula|dado_sai[18]~18\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ = (\via_dados|instancia_banco_registradores|banco~56_regout\ & (((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~56_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[18]~18_combout\);

-- Location: LC_X5_Y3_N2
\via_dados|instancia_ula|Add0~108\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~108_combout\ = \via_dados|instancia_banco_registradores|banco~56_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ $ ((!(!\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~104\) # 
-- (\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~104COUT1_206\))))
-- \via_dados|instancia_ula|Add0~110\ = CARRY((\via_dados|instancia_banco_registradores|banco~56_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\) # (!\via_dados|instancia_ula|Add0~104\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~56_regout\ & (\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ & !\via_dados|instancia_ula|Add0~104\)))
-- \via_dados|instancia_ula|Add0~110COUT1_207\ = CARRY((\via_dados|instancia_banco_registradores|banco~56_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\) # (!\via_dados|instancia_ula|Add0~104COUT1_206\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~56_regout\ & (\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ & !\via_dados|instancia_ula|Add0~104COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~56_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[18]~18_combout\,
	cin => \via_dados|instancia_ula|Add0~92\,
	cin0 => \via_dados|instancia_ula|Add0~104\,
	cin1 => \via_dados|instancia_ula|Add0~104COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~108_combout\,
	cout0 => \via_dados|instancia_ula|Add0~110\,
	cout1 => \via_dados|instancia_ula|Add0~110COUT1_207\);

-- Location: LC_X4_Y2_N2
\via_dados|instancia_banco_registradores|banco~57\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~119\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~114_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))
-- \via_dados|instancia_banco_registradores|banco~57_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~119\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~114_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~119\,
	regout => \via_dados|instancia_banco_registradores|banco~57_regout\);

-- Location: LC_X4_Y2_N1
\via_dados|instancia_mux_ula|dado_sai[19]~19\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ = ((\via_dados|instancia_banco_registradores|banco~57_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~57_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[19]~19_combout\);

-- Location: LC_X5_Y3_N3
\via_dados|instancia_ula|Add0~114\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~114_combout\ = \via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ $ (\via_dados|instancia_banco_registradores|banco~57_regout\ $ (((!\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~110\) # 
-- (\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~110COUT1_207\))))
-- \via_dados|instancia_ula|Add0~116\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ & (!\via_dados|instancia_banco_registradores|banco~57_regout\ & !\via_dados|instancia_ula|Add0~110\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ & ((!\via_dados|instancia_ula|Add0~110\) # (!\via_dados|instancia_banco_registradores|banco~57_regout\))))
-- \via_dados|instancia_ula|Add0~116COUT1_208\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ & (!\via_dados|instancia_banco_registradores|banco~57_regout\ & !\via_dados|instancia_ula|Add0~110COUT1_207\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ & ((!\via_dados|instancia_ula|Add0~110COUT1_207\) # (!\via_dados|instancia_banco_registradores|banco~57_regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[19]~19_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~57_regout\,
	cin => \via_dados|instancia_ula|Add0~92\,
	cin0 => \via_dados|instancia_ula|Add0~110\,
	cin1 => \via_dados|instancia_ula|Add0~110COUT1_207\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~114_combout\,
	cout0 => \via_dados|instancia_ula|Add0~116\,
	cout1 => \via_dados|instancia_ula|Add0~116COUT1_208\);

-- Location: LC_X5_Y2_N4
\via_dados|instancia_banco_registradores|banco~58\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~125\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~120_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~58_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~125\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~120_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~125\,
	regout => \via_dados|instancia_banco_registradores|banco~58_regout\);

-- Location: LC_X4_Y2_N0
\via_dados|instancia_mux_ula|dado_sai[20]~20\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[20]~20_combout\ = ((\via_dados|instancia_banco_registradores|banco~58_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_banco_registradores|banco~58_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[20]~20_combout\);

-- Location: LC_X5_Y3_N4
\via_dados|instancia_ula|Add0~120\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~120_combout\ = \via_dados|instancia_banco_registradores|banco~58_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[20]~20_combout\ $ ((!(!\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~116\) # 
-- (\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~116COUT1_208\))))
-- \via_dados|instancia_ula|Add0~122\ = CARRY((\via_dados|instancia_banco_registradores|banco~58_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[20]~20_combout\) # (!\via_dados|instancia_ula|Add0~116COUT1_208\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~58_regout\ & (\via_dados|instancia_mux_ula|dado_sai[20]~20_combout\ & !\via_dados|instancia_ula|Add0~116COUT1_208\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~58_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[20]~20_combout\,
	cin => \via_dados|instancia_ula|Add0~92\,
	cin0 => \via_dados|instancia_ula|Add0~116\,
	cin1 => \via_dados|instancia_ula|Add0~116COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~120_combout\,
	cout => \via_dados|instancia_ula|Add0~122\);

-- Location: LC_X5_Y2_N3
\via_dados|instancia_banco_registradores|banco~59\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~131\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~126_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~59_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~131\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~126_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~131\,
	regout => \via_dados|instancia_banco_registradores|banco~59_regout\);

-- Location: LC_X5_Y2_N6
\via_dados|instancia_mux_ula|dado_sai[21]~21\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ = (\via_dados|instancia_banco_registradores|banco~59_regout\ & (((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~59_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[21]~21_combout\);

-- Location: LC_X5_Y3_N5
\via_dados|instancia_ula|Add0~126\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~126_combout\ = \via_dados|instancia_banco_registradores|banco~59_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ $ ((\via_dados|instancia_ula|Add0~122\)))
-- \via_dados|instancia_ula|Add0~128\ = CARRY((\via_dados|instancia_banco_registradores|banco~59_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ & !\via_dados|instancia_ula|Add0~122\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~59_regout\ & ((!\via_dados|instancia_ula|Add0~122\) # (!\via_dados|instancia_mux_ula|dado_sai[21]~21_combout\))))
-- \via_dados|instancia_ula|Add0~128COUT1_209\ = CARRY((\via_dados|instancia_banco_registradores|banco~59_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ & !\via_dados|instancia_ula|Add0~122\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~59_regout\ & ((!\via_dados|instancia_ula|Add0~122\) # (!\via_dados|instancia_mux_ula|dado_sai[21]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~59_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[21]~21_combout\,
	cin => \via_dados|instancia_ula|Add0~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~126_combout\,
	cout0 => \via_dados|instancia_ula|Add0~128\,
	cout1 => \via_dados|instancia_ula|Add0~128COUT1_209\);

-- Location: LC_X5_Y2_N1
\via_dados|instancia_banco_registradores|banco~60\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~137\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~132_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~60_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~137\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~132_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~137\,
	regout => \via_dados|instancia_banco_registradores|banco~60_regout\);

-- Location: LC_X5_Y2_N2
\via_dados|instancia_mux_ula|dado_sai[22]~22\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ = ((\via_dados|instancia_banco_registradores|banco~60_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~60_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[22]~22_combout\);

-- Location: LC_X5_Y3_N6
\via_dados|instancia_ula|Add0~132\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~132_combout\ = \via_dados|instancia_banco_registradores|banco~60_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ $ ((!(!\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~128\) # 
-- (\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~128COUT1_209\))))
-- \via_dados|instancia_ula|Add0~134\ = CARRY((\via_dados|instancia_banco_registradores|banco~60_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\) # (!\via_dados|instancia_ula|Add0~128\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~60_regout\ & (\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ & !\via_dados|instancia_ula|Add0~128\)))
-- \via_dados|instancia_ula|Add0~134COUT1_210\ = CARRY((\via_dados|instancia_banco_registradores|banco~60_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\) # (!\via_dados|instancia_ula|Add0~128COUT1_209\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~60_regout\ & (\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ & !\via_dados|instancia_ula|Add0~128COUT1_209\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~60_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[22]~22_combout\,
	cin => \via_dados|instancia_ula|Add0~122\,
	cin0 => \via_dados|instancia_ula|Add0~128\,
	cin1 => \via_dados|instancia_ula|Add0~128COUT1_209\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~132_combout\,
	cout0 => \via_dados|instancia_ula|Add0~134\,
	cout1 => \via_dados|instancia_ula|Add0~134COUT1_210\);

-- Location: LC_X5_Y2_N7
\via_dados|instancia_banco_registradores|banco~61\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~143\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~138_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~61_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~143\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~138_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~143\,
	regout => \via_dados|instancia_banco_registradores|banco~61_regout\);

-- Location: LC_X5_Y2_N0
\via_dados|instancia_mux_ula|dado_sai[23]~23\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ = ((\via_dados|instancia_banco_registradores|banco~61_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~61_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[23]~23_combout\);

-- Location: LC_X5_Y3_N7
\via_dados|instancia_ula|Add0~138\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~138_combout\ = \via_dados|instancia_banco_registradores|banco~61_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ $ (((!\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~134\) # 
-- (\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~134COUT1_210\))))
-- \via_dados|instancia_ula|Add0~140\ = CARRY((\via_dados|instancia_banco_registradores|banco~61_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ & !\via_dados|instancia_ula|Add0~134\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~61_regout\ & ((!\via_dados|instancia_ula|Add0~134\) # (!\via_dados|instancia_mux_ula|dado_sai[23]~23_combout\))))
-- \via_dados|instancia_ula|Add0~140COUT1_211\ = CARRY((\via_dados|instancia_banco_registradores|banco~61_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ & !\via_dados|instancia_ula|Add0~134COUT1_210\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~61_regout\ & ((!\via_dados|instancia_ula|Add0~134COUT1_210\) # (!\via_dados|instancia_mux_ula|dado_sai[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~61_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[23]~23_combout\,
	cin => \via_dados|instancia_ula|Add0~122\,
	cin0 => \via_dados|instancia_ula|Add0~134\,
	cin1 => \via_dados|instancia_ula|Add0~134COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~138_combout\,
	cout0 => \via_dados|instancia_ula|Add0~140\,
	cout1 => \via_dados|instancia_ula|Add0~140COUT1_211\);

-- Location: LC_X5_Y2_N9
\via_dados|instancia_banco_registradores|banco~62\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~149\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~144_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~62_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~149\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~144_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~149\,
	regout => \via_dados|instancia_banco_registradores|banco~62_regout\);

-- Location: LC_X5_Y2_N5
\via_dados|instancia_mux_ula|dado_sai[24]~24\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ = ((\via_dados|instancia_banco_registradores|banco~62_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~62_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[24]~24_combout\);

-- Location: LC_X5_Y3_N8
\via_dados|instancia_ula|Add0~144\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~144_combout\ = \via_dados|instancia_banco_registradores|banco~62_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ $ ((!(!\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~140\) # 
-- (\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~140COUT1_211\))))
-- \via_dados|instancia_ula|Add0~146\ = CARRY((\via_dados|instancia_banco_registradores|banco~62_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[24]~24_combout\) # (!\via_dados|instancia_ula|Add0~140\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~62_regout\ & (\via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ & !\via_dados|instancia_ula|Add0~140\)))
-- \via_dados|instancia_ula|Add0~146COUT1_212\ = CARRY((\via_dados|instancia_banco_registradores|banco~62_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[24]~24_combout\) # (!\via_dados|instancia_ula|Add0~140COUT1_211\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~62_regout\ & (\via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ & !\via_dados|instancia_ula|Add0~140COUT1_211\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~62_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[24]~24_combout\,
	cin => \via_dados|instancia_ula|Add0~122\,
	cin0 => \via_dados|instancia_ula|Add0~140\,
	cin1 => \via_dados|instancia_ula|Add0~140COUT1_211\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~144_combout\,
	cout0 => \via_dados|instancia_ula|Add0~146\,
	cout1 => \via_dados|instancia_ula|Add0~146COUT1_212\);

-- Location: LC_X6_Y2_N8
\via_dados|instancia_banco_registradores|banco~63\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~155\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~150_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~63_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~155\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~150_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~155\,
	regout => \via_dados|instancia_banco_registradores|banco~63_regout\);

-- Location: LC_X6_Y2_N6
\via_dados|instancia_mux_ula|dado_sai[25]~25\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[25]~25_combout\ = (\via_dados|instancia_banco_registradores|banco~63_regout\ & (((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~63_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[25]~25_combout\);

-- Location: LC_X5_Y3_N9
\via_dados|instancia_ula|Add0~150\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~150_combout\ = \via_dados|instancia_banco_registradores|banco~63_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[25]~25_combout\ $ (((!\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~146\) # 
-- (\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~146COUT1_212\))))
-- \via_dados|instancia_ula|Add0~152\ = CARRY((\via_dados|instancia_banco_registradores|banco~63_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[25]~25_combout\ & !\via_dados|instancia_ula|Add0~146COUT1_212\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~63_regout\ & ((!\via_dados|instancia_ula|Add0~146COUT1_212\) # (!\via_dados|instancia_mux_ula|dado_sai[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~63_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[25]~25_combout\,
	cin => \via_dados|instancia_ula|Add0~122\,
	cin0 => \via_dados|instancia_ula|Add0~146\,
	cin1 => \via_dados|instancia_ula|Add0~146COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~150_combout\,
	cout => \via_dados|instancia_ula|Add0~152\);

-- Location: LC_X7_Y3_N3
\via_dados|instancia_banco_registradores|banco~64\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~161\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~156_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~64_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~161\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~156_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~161\,
	regout => \via_dados|instancia_banco_registradores|banco~64_regout\);

-- Location: LC_X7_Y3_N4
\via_dados|instancia_mux_ula|dado_sai[26]~26\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ = (\via_dados|instancia_banco_registradores|banco~64_regout\ & (((\via_dados|instancia_mem_instrucao|Instrucao\(5))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~64_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[26]~26_combout\);

-- Location: LC_X6_Y3_N0
\via_dados|instancia_ula|Add0~156\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~156_combout\ = \via_dados|instancia_banco_registradores|banco~64_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ $ ((!\via_dados|instancia_ula|Add0~152\)))
-- \via_dados|instancia_ula|Add0~158\ = CARRY((\via_dados|instancia_banco_registradores|banco~64_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\) # (!\via_dados|instancia_ula|Add0~152\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~64_regout\ & (\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ & !\via_dados|instancia_ula|Add0~152\)))
-- \via_dados|instancia_ula|Add0~158COUT1_213\ = CARRY((\via_dados|instancia_banco_registradores|banco~64_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\) # (!\via_dados|instancia_ula|Add0~152\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~64_regout\ & (\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ & !\via_dados|instancia_ula|Add0~152\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~64_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[26]~26_combout\,
	cin => \via_dados|instancia_ula|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~156_combout\,
	cout0 => \via_dados|instancia_ula|Add0~158\,
	cout1 => \via_dados|instancia_ula|Add0~158COUT1_213\);

-- Location: LC_X7_Y3_N6
\via_dados|instancia_banco_registradores|banco~65\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~167\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~162_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~65_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~167\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_ula|Add0~162_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~167\,
	regout => \via_dados|instancia_banco_registradores|banco~65_regout\);

-- Location: LC_X7_Y3_N2
\via_dados|instancia_mux_ula|dado_sai[27]~27\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ = (\via_dados|instancia_banco_registradores|banco~65_regout\ & (((\via_dados|instancia_mem_instrucao|Instrucao\(5))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~65_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[27]~27_combout\);

-- Location: LC_X6_Y3_N1
\via_dados|instancia_ula|Add0~162\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~162_combout\ = \via_dados|instancia_banco_registradores|banco~65_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ $ (((!\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~158\) # 
-- (\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~158COUT1_213\))))
-- \via_dados|instancia_ula|Add0~164\ = CARRY((\via_dados|instancia_banco_registradores|banco~65_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ & !\via_dados|instancia_ula|Add0~158\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~65_regout\ & ((!\via_dados|instancia_ula|Add0~158\) # (!\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\))))
-- \via_dados|instancia_ula|Add0~164COUT1_214\ = CARRY((\via_dados|instancia_banco_registradores|banco~65_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ & !\via_dados|instancia_ula|Add0~158COUT1_213\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~65_regout\ & ((!\via_dados|instancia_ula|Add0~158COUT1_213\) # (!\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~65_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[27]~27_combout\,
	cin => \via_dados|instancia_ula|Add0~152\,
	cin0 => \via_dados|instancia_ula|Add0~158\,
	cin1 => \via_dados|instancia_ula|Add0~158COUT1_213\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~162_combout\,
	cout0 => \via_dados|instancia_ula|Add0~164\,
	cout1 => \via_dados|instancia_ula|Add0~164COUT1_214\);

-- Location: LC_X6_Y3_N9
\via_dados|instancia_banco_registradores|banco~66\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~173\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~168_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~66_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~173\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~168_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~173\,
	regout => \via_dados|instancia_banco_registradores|banco~66_regout\);

-- Location: LC_X7_Y3_N8
\via_dados|instancia_mux_ula|dado_sai[28]~28\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ = ((\via_dados|instancia_banco_registradores|banco~66_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~66_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[28]~28_combout\);

-- Location: LC_X6_Y3_N2
\via_dados|instancia_ula|Add0~168\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~168_combout\ = \via_dados|instancia_banco_registradores|banco~66_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ $ ((!(!\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~164\) # 
-- (\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~164COUT1_214\))))
-- \via_dados|instancia_ula|Add0~170\ = CARRY((\via_dados|instancia_banco_registradores|banco~66_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[28]~28_combout\) # (!\via_dados|instancia_ula|Add0~164\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~66_regout\ & (\via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ & !\via_dados|instancia_ula|Add0~164\)))
-- \via_dados|instancia_ula|Add0~170COUT1_215\ = CARRY((\via_dados|instancia_banco_registradores|banco~66_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[28]~28_combout\) # (!\via_dados|instancia_ula|Add0~164COUT1_214\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~66_regout\ & (\via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ & !\via_dados|instancia_ula|Add0~164COUT1_214\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~66_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[28]~28_combout\,
	cin => \via_dados|instancia_ula|Add0~152\,
	cin0 => \via_dados|instancia_ula|Add0~164\,
	cin1 => \via_dados|instancia_ula|Add0~164COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~168_combout\,
	cout0 => \via_dados|instancia_ula|Add0~170\,
	cout1 => \via_dados|instancia_ula|Add0~170COUT1_215\);

-- Location: LC_X6_Y3_N8
\via_dados|instancia_banco_registradores|banco~67\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~179\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~174_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(30)))))
-- \via_dados|instancia_banco_registradores|banco~67_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~179\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datad => \via_dados|instancia_ula|Add0~174_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~179\,
	regout => \via_dados|instancia_banco_registradores|banco~67_regout\);

-- Location: LC_X7_Y3_N5
\via_dados|instancia_mux_ula|dado_sai[29]~29\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ = (\via_dados|instancia_banco_registradores|banco~67_regout\ & (((\via_dados|instancia_mem_instrucao|Instrucao\(5))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~67_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[29]~29_combout\);

-- Location: LC_X6_Y3_N3
\via_dados|instancia_ula|Add0~174\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~174_combout\ = \via_dados|instancia_banco_registradores|banco~67_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ $ (((!\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~170\) # 
-- (\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~170COUT1_215\))))
-- \via_dados|instancia_ula|Add0~176\ = CARRY((\via_dados|instancia_banco_registradores|banco~67_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ & !\via_dados|instancia_ula|Add0~170\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~67_regout\ & ((!\via_dados|instancia_ula|Add0~170\) # (!\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\))))
-- \via_dados|instancia_ula|Add0~176COUT1_216\ = CARRY((\via_dados|instancia_banco_registradores|banco~67_regout\ & (!\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ & !\via_dados|instancia_ula|Add0~170COUT1_215\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~67_regout\ & ((!\via_dados|instancia_ula|Add0~170COUT1_215\) # (!\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~67_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[29]~29_combout\,
	cin => \via_dados|instancia_ula|Add0~152\,
	cin0 => \via_dados|instancia_ula|Add0~170\,
	cin1 => \via_dados|instancia_ula|Add0~170COUT1_215\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~174_combout\,
	cout0 => \via_dados|instancia_ula|Add0~176\,
	cout1 => \via_dados|instancia_ula|Add0~176COUT1_216\);

-- Location: LC_X6_Y3_N6
\via_dados|instancia_banco_registradores|banco~68\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~185\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~180_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))
-- \via_dados|instancia_banco_registradores|banco~68_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~185\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~180_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~185\,
	regout => \via_dados|instancia_banco_registradores|banco~68_regout\);

-- Location: LC_X7_Y3_N9
\via_dados|instancia_mux_ula|dado_sai[30]~30\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[30]~30_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & ((\via_dados|instancia_mem_instrucao|Instrucao\(5) & ((\via_dados|instancia_banco_registradores|banco~68_regout\))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(5) & (\via_dados|instancia_mem_instrucao|Instrucao\(30))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0) & (((\via_dados|instancia_banco_registradores|banco~68_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	datab => \via_dados|instancia_banco_registradores|banco~68_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[30]~30_combout\);

-- Location: LC_X6_Y3_N4
\via_dados|instancia_ula|Add0~180\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~180_combout\ = \via_dados|instancia_banco_registradores|banco~68_regout\ $ (\via_dados|instancia_mux_ula|dado_sai[30]~30_combout\ $ ((!(!\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~176\) # 
-- (\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~176COUT1_216\))))
-- \via_dados|instancia_ula|Add0~182\ = CARRY((\via_dados|instancia_banco_registradores|banco~68_regout\ & ((\via_dados|instancia_mux_ula|dado_sai[30]~30_combout\) # (!\via_dados|instancia_ula|Add0~176COUT1_216\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~68_regout\ & (\via_dados|instancia_mux_ula|dado_sai[30]~30_combout\ & !\via_dados|instancia_ula|Add0~176COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~68_regout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[30]~30_combout\,
	cin => \via_dados|instancia_ula|Add0~152\,
	cin0 => \via_dados|instancia_ula|Add0~176\,
	cin1 => \via_dados|instancia_ula|Add0~176COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~180_combout\,
	cout => \via_dados|instancia_ula|Add0~182\);

-- Location: LC_X6_Y3_N7
\via_dados|instancia_banco_registradores|banco~69\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~191\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~186_combout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(30)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(5)))))
-- \via_dados|instancia_banco_registradores|banco~69_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~191\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	datac => \via_dados|instancia_ula|Add0~186_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(30),
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~191\,
	regout => \via_dados|instancia_banco_registradores|banco~69_regout\);

-- Location: LC_X7_Y3_N7
\via_dados|instancia_mux_ula|dado_sai[31]~31\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[31]~31_combout\ = ((\via_dados|instancia_banco_registradores|banco~69_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(5)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~69_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[31]~31_combout\);

-- Location: LC_X6_Y3_N5
\via_dados|instancia_ula|Add0~186\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~186_combout\ = (\via_dados|instancia_banco_registradores|banco~69_regout\ $ (\via_dados|instancia_ula|Add0~182\ $ (\via_dados|instancia_mux_ula|dado_sai[31]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~69_regout\,
	datad => \via_dados|instancia_mux_ula|dado_sai[31]~31_combout\,
	cin => \via_dados|instancia_ula|Add0~182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~186_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~5_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(0));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~11_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(1));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~17_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(2));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~23_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(3));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~29_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(4));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~35_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(5));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~41_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(6));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~47_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(7));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~53_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(8));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~59_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(9));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~65_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(10));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~71_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(11));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~77_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(12));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~83_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(13));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~89_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(14));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~95\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(15));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~101\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(16));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~107\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(17));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~113\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(18));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~119\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(19));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~125\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(20));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~131\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(21));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~137\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(22));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~143\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(23));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~149\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(24));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~155\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(25));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~161\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(26));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~167\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(27));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~173\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(28));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~179\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(29));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~185\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(30));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~191\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(31));
END structure;


