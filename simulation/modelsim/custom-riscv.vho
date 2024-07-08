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

-- DATE "07/08/2024 18:02:19"

-- 
-- Device: Altera 5M240ZM100C4 Package MBGA100
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
SIGNAL \via_dados|instancia_pc|saida[0]~25\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[1]~1\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[1]~1COUT1_27\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[2]~3\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[2]~3COUT1_28\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[3]~5\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[3]~5COUT1_29\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[4]~7\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[4]~7COUT1_30\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[5]~9\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[6]~11\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[6]~11COUT1_31\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[7]~13\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[7]~13COUT1_32\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux15~1_combout\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux15~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[8]~15\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[8]~15COUT1_33\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[9]~17\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[9]~17COUT1_34\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[10]~19\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[11]~21\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[11]~21COUT1_35\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux15~2_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~230_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[0]~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1062\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~5_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~231_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[1]~1_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1063\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~2\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~6_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~11_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1064\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~232_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[2]~2_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~8\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~8COUT1_193\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~12_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~17_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~233_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[3]~3_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1065\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~14\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~14COUT1_194\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~18_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~23_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~234_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[4]~4_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1066\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~20\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~20COUT1_195\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~24_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~29_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~235_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[5]~5_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1067\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~26\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~26COUT1_196\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~30_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~35_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1068\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~236_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[6]~6_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~32\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~36_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~41_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1069\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~237_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[7]~7_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~38\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~38COUT1_197\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~42_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~47_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1070\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~238_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[8]~8_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~44\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~44COUT1_198\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~48_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~53_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1071\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~239_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[9]~9_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~50\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~50COUT1_199\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~54_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~59_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~240_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[10]~10_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1072\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~56\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~56COUT1_200\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~60_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~65_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1073\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~241_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[11]~11_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~62\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~66_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~71_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~242_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[12]~12_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1074\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~68\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~68COUT1_201\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~72_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~77_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~243_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[13]~13_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1075\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~74\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~74COUT1_202\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~78_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~83_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~244_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[14]~14_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1076\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~80\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~80COUT1_203\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~84_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~89_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1077_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~86\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~86COUT1_204\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~245_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[15]~15_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~90\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~95_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~92\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~246_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1078_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~96\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~101_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~98\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~98COUT1_205\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~247_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1079_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~102\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~107_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~104\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~104COUT1_206\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~248_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1080_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~108\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~113_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~110\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~110COUT1_207\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~249_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1081_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~114\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~119_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[20]~20_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~116\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~116COUT1_208\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~250_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1082_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~120\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~125_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1083_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~122\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~251_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~126\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~131_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~128\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~128COUT1_209\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~252_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1084_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~132\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~137_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1085_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~134\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~134COUT1_210\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~253_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~138\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~143_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1086_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~140\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~140COUT1_211\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~254_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~144\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~149_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[25]~25_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~146\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~146COUT1_212\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~255_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1087_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~150\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~155_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~152\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~256_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1088_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~156\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~161_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~158\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~158COUT1_213\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~257_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1089_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~162\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~167_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1090_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~164\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~164COUT1_214\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~258_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~168\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~173_combout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~170\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~170COUT1_215\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~259_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1091_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~174\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~179_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1092_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~176\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~176COUT1_216\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~260_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[30]~30_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~180\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~185_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1093_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~182\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~261_regout\ : std_logic;
SIGNAL \via_dados|instancia_mux_ula|dado_sai[31]~31_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~186\ : std_logic;
SIGNAL \via_dados|instancia_ula|Add0~191_combout\ : std_logic;
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

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Chave_reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Chave_reset,
	combout => \Chave_reset~combout\);

-- Location: LC_X6_Y4_N4
\via_dados|instancia_pc|saida[0]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(0) = DFFEAS((!\via_dados|instancia_pc|saida\(0)), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[0]~25\ = CARRY((\via_dados|instancia_pc|saida\(0)))

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
	cout => \via_dados|instancia_pc|saida[0]~25\);

-- Location: LC_X6_Y4_N5
\via_dados|instancia_pc|saida[1]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(1) = DFFEAS(\via_dados|instancia_pc|saida\(1) $ ((((\via_dados|instancia_pc|saida[0]~25\)))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[1]~1\ = CARRY(((!\via_dados|instancia_pc|saida[0]~25\)) # (!\via_dados|instancia_pc|saida\(1)))
-- \via_dados|instancia_pc|saida[1]~1COUT1_27\ = CARRY(((!\via_dados|instancia_pc|saida[0]~25\)) # (!\via_dados|instancia_pc|saida\(1)))

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
	cin => \via_dados|instancia_pc|saida[0]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(1),
	cout0 => \via_dados|instancia_pc|saida[1]~1\,
	cout1 => \via_dados|instancia_pc|saida[1]~1COUT1_27\);

-- Location: LC_X6_Y4_N6
\via_dados|instancia_pc|saida[2]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(2) = DFFEAS(\via_dados|instancia_pc|saida\(2) $ ((((!(!\via_dados|instancia_pc|saida[0]~25\ & \via_dados|instancia_pc|saida[1]~1\) # (\via_dados|instancia_pc|saida[0]~25\ & \via_dados|instancia_pc|saida[1]~1COUT1_27\))))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[2]~3\ = CARRY((\via_dados|instancia_pc|saida\(2) & ((!\via_dados|instancia_pc|saida[1]~1\))))
-- \via_dados|instancia_pc|saida[2]~3COUT1_28\ = CARRY((\via_dados|instancia_pc|saida\(2) & ((!\via_dados|instancia_pc|saida[1]~1COUT1_27\))))

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
	cin => \via_dados|instancia_pc|saida[0]~25\,
	cin0 => \via_dados|instancia_pc|saida[1]~1\,
	cin1 => \via_dados|instancia_pc|saida[1]~1COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(2),
	cout0 => \via_dados|instancia_pc|saida[2]~3\,
	cout1 => \via_dados|instancia_pc|saida[2]~3COUT1_28\);

-- Location: LC_X6_Y4_N7
\via_dados|instancia_pc|saida[3]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(3) = DFFEAS((\via_dados|instancia_pc|saida\(3) $ (((!\via_dados|instancia_pc|saida[0]~25\ & \via_dados|instancia_pc|saida[2]~3\) # (\via_dados|instancia_pc|saida[0]~25\ & \via_dados|instancia_pc|saida[2]~3COUT1_28\)))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[3]~5\ = CARRY(((!\via_dados|instancia_pc|saida[2]~3\) # (!\via_dados|instancia_pc|saida\(3))))
-- \via_dados|instancia_pc|saida[3]~5COUT1_29\ = CARRY(((!\via_dados|instancia_pc|saida[2]~3COUT1_28\) # (!\via_dados|instancia_pc|saida\(3))))

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
	cin => \via_dados|instancia_pc|saida[0]~25\,
	cin0 => \via_dados|instancia_pc|saida[2]~3\,
	cin1 => \via_dados|instancia_pc|saida[2]~3COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(3),
	cout0 => \via_dados|instancia_pc|saida[3]~5\,
	cout1 => \via_dados|instancia_pc|saida[3]~5COUT1_29\);

-- Location: LC_X6_Y4_N8
\via_dados|instancia_pc|saida[4]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(4) = DFFEAS(\via_dados|instancia_pc|saida\(4) $ ((((!(!\via_dados|instancia_pc|saida[0]~25\ & \via_dados|instancia_pc|saida[3]~5\) # (\via_dados|instancia_pc|saida[0]~25\ & \via_dados|instancia_pc|saida[3]~5COUT1_29\))))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[4]~7\ = CARRY((\via_dados|instancia_pc|saida\(4) & ((!\via_dados|instancia_pc|saida[3]~5\))))
-- \via_dados|instancia_pc|saida[4]~7COUT1_30\ = CARRY((\via_dados|instancia_pc|saida\(4) & ((!\via_dados|instancia_pc|saida[3]~5COUT1_29\))))

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
	cin => \via_dados|instancia_pc|saida[0]~25\,
	cin0 => \via_dados|instancia_pc|saida[3]~5\,
	cin1 => \via_dados|instancia_pc|saida[3]~5COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(4),
	cout0 => \via_dados|instancia_pc|saida[4]~7\,
	cout1 => \via_dados|instancia_pc|saida[4]~7COUT1_30\);

-- Location: LC_X6_Y4_N9
\via_dados|instancia_pc|saida[5]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(5) = DFFEAS((\via_dados|instancia_pc|saida\(5) $ (((!\via_dados|instancia_pc|saida[0]~25\ & \via_dados|instancia_pc|saida[4]~7\) # (\via_dados|instancia_pc|saida[0]~25\ & \via_dados|instancia_pc|saida[4]~7COUT1_30\)))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[5]~9\ = CARRY(((!\via_dados|instancia_pc|saida[4]~7COUT1_30\) # (!\via_dados|instancia_pc|saida\(5))))

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
	cin => \via_dados|instancia_pc|saida[0]~25\,
	cin0 => \via_dados|instancia_pc|saida[4]~7\,
	cin1 => \via_dados|instancia_pc|saida[4]~7COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(5),
	cout => \via_dados|instancia_pc|saida[5]~9\);

-- Location: LC_X7_Y4_N0
\via_dados|instancia_pc|saida[6]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(6) = DFFEAS((\via_dados|instancia_pc|saida\(6) $ ((!\via_dados|instancia_pc|saida[5]~9\))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[6]~11\ = CARRY(((\via_dados|instancia_pc|saida\(6) & !\via_dados|instancia_pc|saida[5]~9\)))
-- \via_dados|instancia_pc|saida[6]~11COUT1_31\ = CARRY(((\via_dados|instancia_pc|saida\(6) & !\via_dados|instancia_pc|saida[5]~9\)))

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
	cin => \via_dados|instancia_pc|saida[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(6),
	cout0 => \via_dados|instancia_pc|saida[6]~11\,
	cout1 => \via_dados|instancia_pc|saida[6]~11COUT1_31\);

-- Location: LC_X7_Y4_N1
\via_dados|instancia_pc|saida[7]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(7) = DFFEAS((\via_dados|instancia_pc|saida\(7) $ (((!\via_dados|instancia_pc|saida[5]~9\ & \via_dados|instancia_pc|saida[6]~11\) # (\via_dados|instancia_pc|saida[5]~9\ & \via_dados|instancia_pc|saida[6]~11COUT1_31\)))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[7]~13\ = CARRY(((!\via_dados|instancia_pc|saida[6]~11\) # (!\via_dados|instancia_pc|saida\(7))))
-- \via_dados|instancia_pc|saida[7]~13COUT1_32\ = CARRY(((!\via_dados|instancia_pc|saida[6]~11COUT1_31\) # (!\via_dados|instancia_pc|saida\(7))))

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
	cin => \via_dados|instancia_pc|saida[5]~9\,
	cin0 => \via_dados|instancia_pc|saida[6]~11\,
	cin1 => \via_dados|instancia_pc|saida[6]~11COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(7),
	cout0 => \via_dados|instancia_pc|saida[7]~13\,
	cout1 => \via_dados|instancia_pc|saida[7]~13COUT1_32\);

-- Location: LC_X7_Y4_N2
\via_dados|instancia_pc|saida[8]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(8) = DFFEAS((\via_dados|instancia_pc|saida\(8) $ ((!(!\via_dados|instancia_pc|saida[5]~9\ & \via_dados|instancia_pc|saida[7]~13\) # (\via_dados|instancia_pc|saida[5]~9\ & \via_dados|instancia_pc|saida[7]~13COUT1_32\)))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[8]~15\ = CARRY(((\via_dados|instancia_pc|saida\(8) & !\via_dados|instancia_pc|saida[7]~13\)))
-- \via_dados|instancia_pc|saida[8]~15COUT1_33\ = CARRY(((\via_dados|instancia_pc|saida\(8) & !\via_dados|instancia_pc|saida[7]~13COUT1_32\)))

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
	cin => \via_dados|instancia_pc|saida[5]~9\,
	cin0 => \via_dados|instancia_pc|saida[7]~13\,
	cin1 => \via_dados|instancia_pc|saida[7]~13COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(8),
	cout0 => \via_dados|instancia_pc|saida[8]~15\,
	cout1 => \via_dados|instancia_pc|saida[8]~15COUT1_33\);

-- Location: LC_X7_Y4_N9
\via_dados|instancia_mem_instrucao|Mux15~1\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux15~1_combout\ = (!\via_dados|instancia_pc|saida\(5) & (!\via_dados|instancia_pc|saida\(8) & (!\via_dados|instancia_pc|saida\(6) & !\via_dados|instancia_pc|saida\(7))))

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
	datab => \via_dados|instancia_pc|saida\(8),
	datac => \via_dados|instancia_pc|saida\(6),
	datad => \via_dados|instancia_pc|saida\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux15~1_combout\);

-- Location: LC_X6_Y4_N0
\via_dados|instancia_mem_instrucao|Mux15~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux15~0_combout\ = (!\via_dados|instancia_pc|saida\(2) & (!\via_dados|instancia_pc|saida\(3) & (!\via_dados|instancia_pc|saida\(1) & !\via_dados|instancia_pc|saida\(4))))

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
	dataa => \via_dados|instancia_pc|saida\(2),
	datab => \via_dados|instancia_pc|saida\(3),
	datac => \via_dados|instancia_pc|saida\(1),
	datad => \via_dados|instancia_pc|saida\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux15~0_combout\);

-- Location: LC_X7_Y4_N3
\via_dados|instancia_pc|saida[9]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(9) = DFFEAS(\via_dados|instancia_pc|saida\(9) $ (((((!\via_dados|instancia_pc|saida[5]~9\ & \via_dados|instancia_pc|saida[8]~15\) # (\via_dados|instancia_pc|saida[5]~9\ & \via_dados|instancia_pc|saida[8]~15COUT1_33\))))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[9]~17\ = CARRY(((!\via_dados|instancia_pc|saida[8]~15\)) # (!\via_dados|instancia_pc|saida\(9)))
-- \via_dados|instancia_pc|saida[9]~17COUT1_34\ = CARRY(((!\via_dados|instancia_pc|saida[8]~15COUT1_33\)) # (!\via_dados|instancia_pc|saida\(9)))

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
	cin => \via_dados|instancia_pc|saida[5]~9\,
	cin0 => \via_dados|instancia_pc|saida[8]~15\,
	cin1 => \via_dados|instancia_pc|saida[8]~15COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(9),
	cout0 => \via_dados|instancia_pc|saida[9]~17\,
	cout1 => \via_dados|instancia_pc|saida[9]~17COUT1_34\);

-- Location: LC_X7_Y4_N4
\via_dados|instancia_pc|saida[10]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(10) = DFFEAS(\via_dados|instancia_pc|saida\(10) $ ((((!(!\via_dados|instancia_pc|saida[5]~9\ & \via_dados|instancia_pc|saida[9]~17\) # (\via_dados|instancia_pc|saida[5]~9\ & \via_dados|instancia_pc|saida[9]~17COUT1_34\))))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[10]~19\ = CARRY((\via_dados|instancia_pc|saida\(10) & ((!\via_dados|instancia_pc|saida[9]~17COUT1_34\))))

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
	cin => \via_dados|instancia_pc|saida[5]~9\,
	cin0 => \via_dados|instancia_pc|saida[9]~17\,
	cin1 => \via_dados|instancia_pc|saida[9]~17COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(10),
	cout => \via_dados|instancia_pc|saida[10]~19\);

-- Location: LC_X7_Y4_N5
\via_dados|instancia_pc|saida[11]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(11) = DFFEAS(\via_dados|instancia_pc|saida\(11) $ ((((\via_dados|instancia_pc|saida[10]~19\)))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[11]~21\ = CARRY(((!\via_dados|instancia_pc|saida[10]~19\)) # (!\via_dados|instancia_pc|saida\(11)))
-- \via_dados|instancia_pc|saida[11]~21COUT1_35\ = CARRY(((!\via_dados|instancia_pc|saida[10]~19\)) # (!\via_dados|instancia_pc|saida\(11)))

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
	cin => \via_dados|instancia_pc|saida[10]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(11),
	cout0 => \via_dados|instancia_pc|saida[11]~21\,
	cout1 => \via_dados|instancia_pc|saida[11]~21COUT1_35\);

-- Location: LC_X7_Y4_N6
\via_dados|instancia_pc|saida[12]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(12) = DFFEAS(\via_dados|instancia_pc|saida\(12) $ ((((!(!\via_dados|instancia_pc|saida[10]~19\ & \via_dados|instancia_pc|saida[11]~21\) # (\via_dados|instancia_pc|saida[10]~19\ & 
-- \via_dados|instancia_pc|saida[11]~21COUT1_35\))))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )

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
	cin => \via_dados|instancia_pc|saida[10]~19\,
	cin0 => \via_dados|instancia_pc|saida[11]~21\,
	cin1 => \via_dados|instancia_pc|saida[11]~21COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(12));

-- Location: LC_X7_Y4_N7
\via_dados|instancia_mem_instrucao|Mux15~2\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux15~2_combout\ = (!\via_dados|instancia_pc|saida\(11) & (!\via_dados|instancia_pc|saida\(12) & (!\via_dados|instancia_pc|saida\(10) & !\via_dados|instancia_pc|saida\(9))))

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
	dataa => \via_dados|instancia_pc|saida\(11),
	datab => \via_dados|instancia_pc|saida\(12),
	datac => \via_dados|instancia_pc|saida\(10),
	datad => \via_dados|instancia_pc|saida\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux15~2_combout\);

-- Location: LC_X4_Y2_N7
\via_dados|instancia_mem_instrucao|Instrucao[0]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(0) = DFFEAS(((\via_dados|instancia_mem_instrucao|Mux15~1_combout\ & (\via_dados|instancia_mem_instrucao|Mux15~0_combout\ & \via_dados|instancia_mem_instrucao|Mux15~2_combout\))), GLOBAL(\Clock~combout\), VCC, 
-- , !\Chave_reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mem_instrucao|Mux15~1_combout\,
	datac => \via_dados|instancia_mem_instrucao|Mux15~0_combout\,
	datad => \via_dados|instancia_mem_instrucao|Mux15~2_combout\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(0));

-- Location: LC_X4_Y2_N5
\via_dados|instancia_mem_instrucao|Instrucao[16]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(16) = DFFEAS((\via_dados|instancia_pc|saida\(0) & (\via_dados|instancia_mem_instrucao|Mux15~1_combout\ & (\via_dados|instancia_mem_instrucao|Mux15~0_combout\ & 
-- \via_dados|instancia_mem_instrucao|Mux15~2_combout\))), GLOBAL(\Clock~combout\), VCC, , !\Chave_reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(0),
	datab => \via_dados|instancia_mem_instrucao|Mux15~1_combout\,
	datac => \via_dados|instancia_mem_instrucao|Mux15~0_combout\,
	datad => \via_dados|instancia_mem_instrucao|Mux15~2_combout\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(16));

-- Location: LC_X4_Y2_N9
\via_dados|instancia_banco_registradores|banco~230\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1062\ = (((D1L1Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~230_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1062\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~0_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1062\,
	regout => \via_dados|instancia_banco_registradores|banco~230_regout\);

-- Location: LC_X4_Y2_N2
\via_dados|instancia_mem_instrucao|Instrucao[20]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(20) = DFFEAS((!\via_dados|instancia_pc|saida\(0) & (\via_dados|instancia_mem_instrucao|Mux15~1_combout\ & (\via_dados|instancia_mem_instrucao|Mux15~0_combout\ & 
-- \via_dados|instancia_mem_instrucao|Mux15~2_combout\))), GLOBAL(\Clock~combout\), VCC, , !\Chave_reset~combout\, , , , )

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
	datab => \via_dados|instancia_mem_instrucao|Mux15~1_combout\,
	datac => \via_dados|instancia_mem_instrucao|Mux15~0_combout\,
	datad => \via_dados|instancia_mem_instrucao|Mux15~2_combout\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(20));

-- Location: LC_X4_Y2_N8
\via_dados|instancia_mux_ula|dado_sai[0]~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[0]~0_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & ((\via_dados|instancia_mem_instrucao|Instrucao\(16) & (\via_dados|instancia_banco_registradores|banco~230_regout\ & 
-- !\via_dados|instancia_mem_instrucao|Instrucao\(20))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16) & ((\via_dados|instancia_mem_instrucao|Instrucao\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_banco_registradores|banco~230_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[0]~0_combout\);

-- Location: LC_X3_Y3_N4
\via_dados|instancia_ula|Add0~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~0_combout\ = \via_dados|instancia_mux_ula|dado_sai[0]~0_combout\ $ ((\via_dados|instancia_banco_registradores|banco~1062\))
-- \via_dados|instancia_ula|Add0~2\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[0]~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1062\)))

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
	dataa => \via_dados|instancia_mux_ula|dado_sai[0]~0_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1062\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~0_combout\,
	cout => \via_dados|instancia_ula|Add0~2\);

-- Location: LC_X4_Y1_N7
\via_dados|instancia_ula|Add0~5\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~5_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~5_combout\);

-- Location: LC_X3_Y3_N0
\via_dados|instancia_banco_registradores|banco~231\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1063\ = (((D1L2Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~231_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1063\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~6_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~6_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1063\,
	regout => \via_dados|instancia_banco_registradores|banco~231_regout\);

-- Location: LC_X3_Y3_N3
\via_dados|instancia_mux_ula|dado_sai[1]~1\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[1]~1_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (((\via_dados|instancia_banco_registradores|banco~231_regout\ & !\via_dados|instancia_mem_instrucao|Instrucao\(20))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~231_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[1]~1_combout\);

-- Location: LC_X3_Y3_N5
\via_dados|instancia_ula|Add0~6\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~6_combout\ = \via_dados|instancia_mux_ula|dado_sai[1]~1_combout\ $ (\via_dados|instancia_banco_registradores|banco~1063\ $ ((\via_dados|instancia_ula|Add0~2\)))
-- \via_dados|instancia_ula|Add0~8\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[1]~1_combout\ & (!\via_dados|instancia_banco_registradores|banco~1063\ & !\via_dados|instancia_ula|Add0~2\)) # (!\via_dados|instancia_mux_ula|dado_sai[1]~1_combout\ & 
-- ((!\via_dados|instancia_ula|Add0~2\) # (!\via_dados|instancia_banco_registradores|banco~1063\))))
-- \via_dados|instancia_ula|Add0~8COUT1_193\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[1]~1_combout\ & (!\via_dados|instancia_banco_registradores|banco~1063\ & !\via_dados|instancia_ula|Add0~2\)) # (!\via_dados|instancia_mux_ula|dado_sai[1]~1_combout\ & 
-- ((!\via_dados|instancia_ula|Add0~2\) # (!\via_dados|instancia_banco_registradores|banco~1063\))))

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
	dataa => \via_dados|instancia_mux_ula|dado_sai[1]~1_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1063\,
	cin => \via_dados|instancia_ula|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~6_combout\,
	cout0 => \via_dados|instancia_ula|Add0~8\,
	cout1 => \via_dados|instancia_ula|Add0~8COUT1_193\);

-- Location: LC_X5_Y1_N8
\via_dados|instancia_ula|Add0~11\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~11_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~11_combout\);

-- Location: LC_X3_Y3_N2
\via_dados|instancia_banco_registradores|banco~232\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1064\ = (((D1L3Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~232_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1064\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~12_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~12_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1064\,
	regout => \via_dados|instancia_banco_registradores|banco~232_regout\);

-- Location: LC_X3_Y3_N1
\via_dados|instancia_mux_ula|dado_sai[2]~2\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[2]~2_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16))) # (!\via_dados|instancia_banco_registradores|banco~232_regout\)) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_banco_registradores|banco~232_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[2]~2_combout\);

-- Location: LC_X3_Y3_N6
\via_dados|instancia_ula|Add0~12\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~12_combout\ = \via_dados|instancia_banco_registradores|banco~1064\ $ (\via_dados|instancia_mux_ula|dado_sai[2]~2_combout\ $ (((!\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~8\) # 
-- (\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~8COUT1_193\))))
-- \via_dados|instancia_ula|Add0~14\ = CARRY((\via_dados|instancia_banco_registradores|banco~1064\ & ((!\via_dados|instancia_ula|Add0~8\) # (!\via_dados|instancia_mux_ula|dado_sai[2]~2_combout\))) # (!\via_dados|instancia_banco_registradores|banco~1064\ & 
-- (!\via_dados|instancia_mux_ula|dado_sai[2]~2_combout\ & !\via_dados|instancia_ula|Add0~8\)))
-- \via_dados|instancia_ula|Add0~14COUT1_194\ = CARRY((\via_dados|instancia_banco_registradores|banco~1064\ & ((!\via_dados|instancia_ula|Add0~8COUT1_193\) # (!\via_dados|instancia_mux_ula|dado_sai[2]~2_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1064\ & (!\via_dados|instancia_mux_ula|dado_sai[2]~2_combout\ & !\via_dados|instancia_ula|Add0~8COUT1_193\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~1064\,
	datab => \via_dados|instancia_mux_ula|dado_sai[2]~2_combout\,
	cin => \via_dados|instancia_ula|Add0~2\,
	cin0 => \via_dados|instancia_ula|Add0~8\,
	cin1 => \via_dados|instancia_ula|Add0~8COUT1_193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~12_combout\,
	cout0 => \via_dados|instancia_ula|Add0~14\,
	cout1 => \via_dados|instancia_ula|Add0~14COUT1_194\);

-- Location: LC_X3_Y4_N1
\via_dados|instancia_ula|Add0~17\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~17_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~17_combout\);

-- Location: LC_X4_Y2_N0
\via_dados|instancia_banco_registradores|banco~233\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1065\ = (((D1L4Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~233_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1065\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~18_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~18_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1065\,
	regout => \via_dados|instancia_banco_registradores|banco~233_regout\);

-- Location: LC_X4_Y2_N1
\via_dados|instancia_mux_ula|dado_sai[3]~3\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[3]~3_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)) # (!\via_dados|instancia_banco_registradores|banco~233_regout\))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_banco_registradores|banco~233_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[3]~3_combout\);

-- Location: LC_X3_Y3_N7
\via_dados|instancia_ula|Add0~18\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~18_combout\ = \via_dados|instancia_mux_ula|dado_sai[3]~3_combout\ $ (\via_dados|instancia_banco_registradores|banco~1065\ $ ((!(!\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~14\) # 
-- (\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~14COUT1_194\))))
-- \via_dados|instancia_ula|Add0~20\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[3]~3_combout\ & ((!\via_dados|instancia_ula|Add0~14\) # (!\via_dados|instancia_banco_registradores|banco~1065\))) # (!\via_dados|instancia_mux_ula|dado_sai[3]~3_combout\ & 
-- (!\via_dados|instancia_banco_registradores|banco~1065\ & !\via_dados|instancia_ula|Add0~14\)))
-- \via_dados|instancia_ula|Add0~20COUT1_195\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[3]~3_combout\ & ((!\via_dados|instancia_ula|Add0~14COUT1_194\) # (!\via_dados|instancia_banco_registradores|banco~1065\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[3]~3_combout\ & (!\via_dados|instancia_banco_registradores|banco~1065\ & !\via_dados|instancia_ula|Add0~14COUT1_194\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[3]~3_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1065\,
	cin => \via_dados|instancia_ula|Add0~2\,
	cin0 => \via_dados|instancia_ula|Add0~14\,
	cin1 => \via_dados|instancia_ula|Add0~14COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~18_combout\,
	cout0 => \via_dados|instancia_ula|Add0~20\,
	cout1 => \via_dados|instancia_ula|Add0~20COUT1_195\);

-- Location: LC_X4_Y1_N3
\via_dados|instancia_ula|Add0~23\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~23_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~23_combout\);

-- Location: LC_X3_Y2_N8
\via_dados|instancia_banco_registradores|banco~234\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1066\ = (((D1L5Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~234_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1066\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~24_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~24_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1066\,
	regout => \via_dados|instancia_banco_registradores|banco~234_regout\);

-- Location: LC_X4_Y2_N4
\via_dados|instancia_mux_ula|dado_sai[4]~4\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[4]~4_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_banco_registradores|banco~234_regout\) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_banco_registradores|banco~234_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[4]~4_combout\);

-- Location: LC_X3_Y3_N8
\via_dados|instancia_ula|Add0~24\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~24_combout\ = \via_dados|instancia_mux_ula|dado_sai[4]~4_combout\ $ (\via_dados|instancia_banco_registradores|banco~1066\ $ (((!\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~20\) # 
-- (\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~20COUT1_195\))))
-- \via_dados|instancia_ula|Add0~26\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[4]~4_combout\ & (\via_dados|instancia_banco_registradores|banco~1066\ & !\via_dados|instancia_ula|Add0~20\)) # (!\via_dados|instancia_mux_ula|dado_sai[4]~4_combout\ & 
-- ((\via_dados|instancia_banco_registradores|banco~1066\) # (!\via_dados|instancia_ula|Add0~20\))))
-- \via_dados|instancia_ula|Add0~26COUT1_196\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[4]~4_combout\ & (\via_dados|instancia_banco_registradores|banco~1066\ & !\via_dados|instancia_ula|Add0~20COUT1_195\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[4]~4_combout\ & ((\via_dados|instancia_banco_registradores|banco~1066\) # (!\via_dados|instancia_ula|Add0~20COUT1_195\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[4]~4_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1066\,
	cin => \via_dados|instancia_ula|Add0~2\,
	cin0 => \via_dados|instancia_ula|Add0~20\,
	cin1 => \via_dados|instancia_ula|Add0~20COUT1_195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~24_combout\,
	cout0 => \via_dados|instancia_ula|Add0~26\,
	cout1 => \via_dados|instancia_ula|Add0~26COUT1_196\);

-- Location: LC_X4_Y1_N9
\via_dados|instancia_ula|Add0~29\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~29_combout\ = ((\via_dados|instancia_ula|Add0~24_combout\ & (\via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_ula|Add0~24_combout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~29_combout\);

-- Location: LC_X4_Y2_N3
\via_dados|instancia_banco_registradores|banco~235\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1067\ = (((D1L6Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~235_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1067\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~30_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1067\,
	regout => \via_dados|instancia_banco_registradores|banco~235_regout\);

-- Location: LC_X4_Y2_N6
\via_dados|instancia_mux_ula|dado_sai[5]~5\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[5]~5_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0))) # 
-- (!\via_dados|instancia_banco_registradores|banco~235_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~235_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[5]~5_combout\);

-- Location: LC_X3_Y3_N9
\via_dados|instancia_ula|Add0~30\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~30_combout\ = \via_dados|instancia_mux_ula|dado_sai[5]~5_combout\ $ (\via_dados|instancia_banco_registradores|banco~1067\ $ ((!(!\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~26\) # 
-- (\via_dados|instancia_ula|Add0~2\ & \via_dados|instancia_ula|Add0~26COUT1_196\))))
-- \via_dados|instancia_ula|Add0~32\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[5]~5_combout\ & ((!\via_dados|instancia_ula|Add0~26COUT1_196\) # (!\via_dados|instancia_banco_registradores|banco~1067\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[5]~5_combout\ & (!\via_dados|instancia_banco_registradores|banco~1067\ & !\via_dados|instancia_ula|Add0~26COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[5]~5_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1067\,
	cin => \via_dados|instancia_ula|Add0~2\,
	cin0 => \via_dados|instancia_ula|Add0~26\,
	cin1 => \via_dados|instancia_ula|Add0~26COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~30_combout\,
	cout => \via_dados|instancia_ula|Add0~32\);

-- Location: LC_X7_Y3_N5
\via_dados|instancia_ula|Add0~35\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~35_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~35_combout\);

-- Location: LC_X3_Y2_N0
\via_dados|instancia_banco_registradores|banco~236\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1068\ = (((D1L7Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~236_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1068\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~36_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~36_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1068\,
	regout => \via_dados|instancia_banco_registradores|banco~236_regout\);

-- Location: LC_X3_Y2_N7
\via_dados|instancia_mux_ula|dado_sai[6]~6\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[6]~6_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(16)) # (!\via_dados|instancia_banco_registradores|banco~236_regout\))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_banco_registradores|banco~236_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[6]~6_combout\);

-- Location: LC_X4_Y3_N0
\via_dados|instancia_ula|Add0~36\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~36_combout\ = \via_dados|instancia_banco_registradores|banco~1068\ $ (\via_dados|instancia_mux_ula|dado_sai[6]~6_combout\ $ ((\via_dados|instancia_ula|Add0~32\)))
-- \via_dados|instancia_ula|Add0~38\ = CARRY((\via_dados|instancia_banco_registradores|banco~1068\ & ((!\via_dados|instancia_ula|Add0~32\) # (!\via_dados|instancia_mux_ula|dado_sai[6]~6_combout\))) # (!\via_dados|instancia_banco_registradores|banco~1068\ & 
-- (!\via_dados|instancia_mux_ula|dado_sai[6]~6_combout\ & !\via_dados|instancia_ula|Add0~32\)))
-- \via_dados|instancia_ula|Add0~38COUT1_197\ = CARRY((\via_dados|instancia_banco_registradores|banco~1068\ & ((!\via_dados|instancia_ula|Add0~32\) # (!\via_dados|instancia_mux_ula|dado_sai[6]~6_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1068\ & (!\via_dados|instancia_mux_ula|dado_sai[6]~6_combout\ & !\via_dados|instancia_ula|Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~1068\,
	datab => \via_dados|instancia_mux_ula|dado_sai[6]~6_combout\,
	cin => \via_dados|instancia_ula|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~36_combout\,
	cout0 => \via_dados|instancia_ula|Add0~38\,
	cout1 => \via_dados|instancia_ula|Add0~38COUT1_197\);

-- Location: LC_X3_Y2_N9
\via_dados|instancia_ula|Add0~41\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~41_combout\ = (((\via_dados|instancia_ula|Add0~36_combout\ & \via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_ula|Add0~36_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~41_combout\);

-- Location: LC_X3_Y2_N2
\via_dados|instancia_banco_registradores|banco~237\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1069\ = (((D1L8Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~237_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1069\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~42_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~42_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1069\,
	regout => \via_dados|instancia_banco_registradores|banco~237_regout\);

-- Location: LC_X3_Y2_N1
\via_dados|instancia_mux_ula|dado_sai[7]~7\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[7]~7_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16))) # (!\via_dados|instancia_banco_registradores|banco~237_regout\)) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_banco_registradores|banco~237_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[7]~7_combout\);

-- Location: LC_X4_Y3_N1
\via_dados|instancia_ula|Add0~42\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~42_combout\ = \via_dados|instancia_banco_registradores|banco~1069\ $ (\via_dados|instancia_mux_ula|dado_sai[7]~7_combout\ $ ((!(!\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~38\) # 
-- (\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~38COUT1_197\))))
-- \via_dados|instancia_ula|Add0~44\ = CARRY((\via_dados|instancia_banco_registradores|banco~1069\ & (\via_dados|instancia_mux_ula|dado_sai[7]~7_combout\ & !\via_dados|instancia_ula|Add0~38\)) # (!\via_dados|instancia_banco_registradores|banco~1069\ & 
-- ((\via_dados|instancia_mux_ula|dado_sai[7]~7_combout\) # (!\via_dados|instancia_ula|Add0~38\))))
-- \via_dados|instancia_ula|Add0~44COUT1_198\ = CARRY((\via_dados|instancia_banco_registradores|banco~1069\ & (\via_dados|instancia_mux_ula|dado_sai[7]~7_combout\ & !\via_dados|instancia_ula|Add0~38COUT1_197\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1069\ & ((\via_dados|instancia_mux_ula|dado_sai[7]~7_combout\) # (!\via_dados|instancia_ula|Add0~38COUT1_197\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~1069\,
	datab => \via_dados|instancia_mux_ula|dado_sai[7]~7_combout\,
	cin => \via_dados|instancia_ula|Add0~32\,
	cin0 => \via_dados|instancia_ula|Add0~38\,
	cin1 => \via_dados|instancia_ula|Add0~38COUT1_197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~42_combout\,
	cout0 => \via_dados|instancia_ula|Add0~44\,
	cout1 => \via_dados|instancia_ula|Add0~44COUT1_198\);

-- Location: LC_X3_Y2_N3
\via_dados|instancia_ula|Add0~47\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~47_combout\ = (((\via_dados|instancia_ula|Add0~42_combout\ & \via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_ula|Add0~42_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~47_combout\);

-- Location: LC_X3_Y2_N4
\via_dados|instancia_banco_registradores|banco~238\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1070\ = (((D1L9Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~238_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1070\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~48_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~48_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1070\,
	regout => \via_dados|instancia_banco_registradores|banco~238_regout\);

-- Location: LC_X3_Y2_N5
\via_dados|instancia_mux_ula|dado_sai[8]~8\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[8]~8_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16)))) # 
-- (!\via_dados|instancia_banco_registradores|banco~238_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~238_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[8]~8_combout\);

-- Location: LC_X4_Y3_N2
\via_dados|instancia_ula|Add0~48\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~48_combout\ = \via_dados|instancia_banco_registradores|banco~1070\ $ (\via_dados|instancia_mux_ula|dado_sai[8]~8_combout\ $ (((!\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~44\) # 
-- (\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~44COUT1_198\))))
-- \via_dados|instancia_ula|Add0~50\ = CARRY((\via_dados|instancia_banco_registradores|banco~1070\ & ((!\via_dados|instancia_ula|Add0~44\) # (!\via_dados|instancia_mux_ula|dado_sai[8]~8_combout\))) # (!\via_dados|instancia_banco_registradores|banco~1070\ & 
-- (!\via_dados|instancia_mux_ula|dado_sai[8]~8_combout\ & !\via_dados|instancia_ula|Add0~44\)))
-- \via_dados|instancia_ula|Add0~50COUT1_199\ = CARRY((\via_dados|instancia_banco_registradores|banco~1070\ & ((!\via_dados|instancia_ula|Add0~44COUT1_198\) # (!\via_dados|instancia_mux_ula|dado_sai[8]~8_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1070\ & (!\via_dados|instancia_mux_ula|dado_sai[8]~8_combout\ & !\via_dados|instancia_ula|Add0~44COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~1070\,
	datab => \via_dados|instancia_mux_ula|dado_sai[8]~8_combout\,
	cin => \via_dados|instancia_ula|Add0~32\,
	cin0 => \via_dados|instancia_ula|Add0~44\,
	cin1 => \via_dados|instancia_ula|Add0~44COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~48_combout\,
	cout0 => \via_dados|instancia_ula|Add0~50\,
	cout1 => \via_dados|instancia_ula|Add0~50COUT1_199\);

-- Location: LC_X3_Y2_N6
\via_dados|instancia_ula|Add0~53\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~53_combout\ = (((\via_dados|instancia_ula|Add0~48_combout\ & \via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_ula|Add0~48_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~53_combout\);

-- Location: LC_X5_Y2_N7
\via_dados|instancia_banco_registradores|banco~239\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1071\ = (((D1L10Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~239_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1071\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~54_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~54_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1071\,
	regout => \via_dados|instancia_banco_registradores|banco~239_regout\);

-- Location: LC_X5_Y2_N9
\via_dados|instancia_mux_ula|dado_sai[9]~9\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[9]~9_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)) # (!\via_dados|instancia_banco_registradores|banco~239_regout\))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_banco_registradores|banco~239_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[9]~9_combout\);

-- Location: LC_X4_Y3_N3
\via_dados|instancia_ula|Add0~54\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~54_combout\ = \via_dados|instancia_banco_registradores|banco~1071\ $ (\via_dados|instancia_mux_ula|dado_sai[9]~9_combout\ $ ((!(!\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~50\) # 
-- (\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~50COUT1_199\))))
-- \via_dados|instancia_ula|Add0~56\ = CARRY((\via_dados|instancia_banco_registradores|banco~1071\ & (\via_dados|instancia_mux_ula|dado_sai[9]~9_combout\ & !\via_dados|instancia_ula|Add0~50\)) # (!\via_dados|instancia_banco_registradores|banco~1071\ & 
-- ((\via_dados|instancia_mux_ula|dado_sai[9]~9_combout\) # (!\via_dados|instancia_ula|Add0~50\))))
-- \via_dados|instancia_ula|Add0~56COUT1_200\ = CARRY((\via_dados|instancia_banco_registradores|banco~1071\ & (\via_dados|instancia_mux_ula|dado_sai[9]~9_combout\ & !\via_dados|instancia_ula|Add0~50COUT1_199\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1071\ & ((\via_dados|instancia_mux_ula|dado_sai[9]~9_combout\) # (!\via_dados|instancia_ula|Add0~50COUT1_199\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~1071\,
	datab => \via_dados|instancia_mux_ula|dado_sai[9]~9_combout\,
	cin => \via_dados|instancia_ula|Add0~32\,
	cin0 => \via_dados|instancia_ula|Add0~50\,
	cin1 => \via_dados|instancia_ula|Add0~50COUT1_199\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~54_combout\,
	cout0 => \via_dados|instancia_ula|Add0~56\,
	cout1 => \via_dados|instancia_ula|Add0~56COUT1_200\);

-- Location: LC_X6_Y2_N6
\via_dados|instancia_ula|Add0~59\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~59_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~59_combout\);

-- Location: LC_X5_Y2_N2
\via_dados|instancia_banco_registradores|banco~240\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1072\ = (((D1L11Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~240_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1072\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~60_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1072\,
	regout => \via_dados|instancia_banco_registradores|banco~240_regout\);

-- Location: LC_X5_Y2_N1
\via_dados|instancia_mux_ula|dado_sai[10]~10\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[10]~10_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)) # (!\via_dados|instancia_banco_registradores|banco~240_regout\))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_banco_registradores|banco~240_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[10]~10_combout\);

-- Location: LC_X4_Y3_N4
\via_dados|instancia_ula|Add0~60\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~60_combout\ = \via_dados|instancia_mux_ula|dado_sai[10]~10_combout\ $ (\via_dados|instancia_banco_registradores|banco~1072\ $ (((!\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~56\) # 
-- (\via_dados|instancia_ula|Add0~32\ & \via_dados|instancia_ula|Add0~56COUT1_200\))))
-- \via_dados|instancia_ula|Add0~62\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[10]~10_combout\ & (\via_dados|instancia_banco_registradores|banco~1072\ & !\via_dados|instancia_ula|Add0~56COUT1_200\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[10]~10_combout\ & ((\via_dados|instancia_banco_registradores|banco~1072\) # (!\via_dados|instancia_ula|Add0~56COUT1_200\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[10]~10_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1072\,
	cin => \via_dados|instancia_ula|Add0~32\,
	cin0 => \via_dados|instancia_ula|Add0~56\,
	cin1 => \via_dados|instancia_ula|Add0~56COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~60_combout\,
	cout => \via_dados|instancia_ula|Add0~62\);

-- Location: LC_X5_Y1_N4
\via_dados|instancia_ula|Add0~65\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~65_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~65_combout\);

-- Location: LC_X5_Y2_N4
\via_dados|instancia_banco_registradores|banco~241\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1073\ = (((D1L12Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~241_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1073\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~66_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~66_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1073\,
	regout => \via_dados|instancia_banco_registradores|banco~241_regout\);

-- Location: LC_X5_Y2_N3
\via_dados|instancia_mux_ula|dado_sai[11]~11\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[11]~11_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)) # (!\via_dados|instancia_banco_registradores|banco~241_regout\))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_banco_registradores|banco~241_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[11]~11_combout\);

-- Location: LC_X4_Y3_N5
\via_dados|instancia_ula|Add0~66\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~66_combout\ = \via_dados|instancia_banco_registradores|banco~1073\ $ (\via_dados|instancia_mux_ula|dado_sai[11]~11_combout\ $ ((!\via_dados|instancia_ula|Add0~62\)))
-- \via_dados|instancia_ula|Add0~68\ = CARRY((\via_dados|instancia_banco_registradores|banco~1073\ & (\via_dados|instancia_mux_ula|dado_sai[11]~11_combout\ & !\via_dados|instancia_ula|Add0~62\)) # (!\via_dados|instancia_banco_registradores|banco~1073\ & 
-- ((\via_dados|instancia_mux_ula|dado_sai[11]~11_combout\) # (!\via_dados|instancia_ula|Add0~62\))))
-- \via_dados|instancia_ula|Add0~68COUT1_201\ = CARRY((\via_dados|instancia_banco_registradores|banco~1073\ & (\via_dados|instancia_mux_ula|dado_sai[11]~11_combout\ & !\via_dados|instancia_ula|Add0~62\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1073\ & ((\via_dados|instancia_mux_ula|dado_sai[11]~11_combout\) # (!\via_dados|instancia_ula|Add0~62\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~1073\,
	datab => \via_dados|instancia_mux_ula|dado_sai[11]~11_combout\,
	cin => \via_dados|instancia_ula|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~66_combout\,
	cout0 => \via_dados|instancia_ula|Add0~68\,
	cout1 => \via_dados|instancia_ula|Add0~68COUT1_201\);

-- Location: LC_X5_Y1_N5
\via_dados|instancia_ula|Add0~71\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~71_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~71_combout\);

-- Location: LC_X4_Y4_N6
\via_dados|instancia_banco_registradores|banco~242\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1074\ = (((D1L13Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~242_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1074\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~72_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~72_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1074\,
	regout => \via_dados|instancia_banco_registradores|banco~242_regout\);

-- Location: LC_X4_Y4_N5
\via_dados|instancia_mux_ula|dado_sai[12]~12\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[12]~12_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16))) # 
-- (!\via_dados|instancia_banco_registradores|banco~242_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~242_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[12]~12_combout\);

-- Location: LC_X4_Y3_N6
\via_dados|instancia_ula|Add0~72\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~72_combout\ = \via_dados|instancia_mux_ula|dado_sai[12]~12_combout\ $ (\via_dados|instancia_banco_registradores|banco~1074\ $ (((!\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~68\) # 
-- (\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~68COUT1_201\))))
-- \via_dados|instancia_ula|Add0~74\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[12]~12_combout\ & (\via_dados|instancia_banco_registradores|banco~1074\ & !\via_dados|instancia_ula|Add0~68\)) # (!\via_dados|instancia_mux_ula|dado_sai[12]~12_combout\ & 
-- ((\via_dados|instancia_banco_registradores|banco~1074\) # (!\via_dados|instancia_ula|Add0~68\))))
-- \via_dados|instancia_ula|Add0~74COUT1_202\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[12]~12_combout\ & (\via_dados|instancia_banco_registradores|banco~1074\ & !\via_dados|instancia_ula|Add0~68COUT1_201\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[12]~12_combout\ & ((\via_dados|instancia_banco_registradores|banco~1074\) # (!\via_dados|instancia_ula|Add0~68COUT1_201\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[12]~12_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1074\,
	cin => \via_dados|instancia_ula|Add0~62\,
	cin0 => \via_dados|instancia_ula|Add0~68\,
	cin1 => \via_dados|instancia_ula|Add0~68COUT1_201\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~72_combout\,
	cout0 => \via_dados|instancia_ula|Add0~74\,
	cout1 => \via_dados|instancia_ula|Add0~74COUT1_202\);

-- Location: LC_X4_Y4_N0
\via_dados|instancia_ula|Add0~77\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~77_combout\ = (\via_dados|instancia_ula|Add0~72_combout\ & (((\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_ula|Add0~72_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~77_combout\);

-- Location: LC_X4_Y4_N3
\via_dados|instancia_banco_registradores|banco~243\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1075\ = (((D1L14Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~243_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1075\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~78_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~78_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1075\,
	regout => \via_dados|instancia_banco_registradores|banco~243_regout\);

-- Location: LC_X4_Y4_N1
\via_dados|instancia_mux_ula|dado_sai[13]~13\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[13]~13_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16)))) # 
-- (!\via_dados|instancia_banco_registradores|banco~243_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~243_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[13]~13_combout\);

-- Location: LC_X4_Y3_N7
\via_dados|instancia_ula|Add0~78\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~78_combout\ = \via_dados|instancia_mux_ula|dado_sai[13]~13_combout\ $ (\via_dados|instancia_banco_registradores|banco~1075\ $ ((!(!\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~74\) # 
-- (\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~74COUT1_202\))))
-- \via_dados|instancia_ula|Add0~80\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[13]~13_combout\ & ((!\via_dados|instancia_ula|Add0~74\) # (!\via_dados|instancia_banco_registradores|banco~1075\))) # (!\via_dados|instancia_mux_ula|dado_sai[13]~13_combout\ 
-- & (!\via_dados|instancia_banco_registradores|banco~1075\ & !\via_dados|instancia_ula|Add0~74\)))
-- \via_dados|instancia_ula|Add0~80COUT1_203\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[13]~13_combout\ & ((!\via_dados|instancia_ula|Add0~74COUT1_202\) # (!\via_dados|instancia_banco_registradores|banco~1075\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[13]~13_combout\ & (!\via_dados|instancia_banco_registradores|banco~1075\ & !\via_dados|instancia_ula|Add0~74COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[13]~13_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1075\,
	cin => \via_dados|instancia_ula|Add0~62\,
	cin0 => \via_dados|instancia_ula|Add0~74\,
	cin1 => \via_dados|instancia_ula|Add0~74COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~78_combout\,
	cout0 => \via_dados|instancia_ula|Add0~80\,
	cout1 => \via_dados|instancia_ula|Add0~80COUT1_203\);

-- Location: LC_X4_Y4_N9
\via_dados|instancia_ula|Add0~83\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~83_combout\ = ((\via_dados|instancia_ula|Add0~78_combout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_ula|Add0~78_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~83_combout\);

-- Location: LC_X4_Y4_N8
\via_dados|instancia_banco_registradores|banco~244\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1076\ = (((D1L15Q & \via_dados|instancia_mem_instrucao|Instrucao\(16))))
-- \via_dados|instancia_banco_registradores|banco~244_regout\ = DFFEAS(\via_dados|instancia_banco_registradores|banco~1076\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), \via_dados|instancia_ula|Add0~84_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Add0~84_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1076\,
	regout => \via_dados|instancia_banco_registradores|banco~244_regout\);

-- Location: LC_X4_Y4_N2
\via_dados|instancia_mux_ula|dado_sai[14]~14\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[14]~14_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(16)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_banco_registradores|banco~244_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~244_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[14]~14_combout\);

-- Location: LC_X4_Y3_N8
\via_dados|instancia_ula|Add0~84\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~84_combout\ = \via_dados|instancia_mux_ula|dado_sai[14]~14_combout\ $ (\via_dados|instancia_banco_registradores|banco~1076\ $ (((!\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~80\) # 
-- (\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~80COUT1_203\))))
-- \via_dados|instancia_ula|Add0~86\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[14]~14_combout\ & (\via_dados|instancia_banco_registradores|banco~1076\ & !\via_dados|instancia_ula|Add0~80\)) # (!\via_dados|instancia_mux_ula|dado_sai[14]~14_combout\ & 
-- ((\via_dados|instancia_banco_registradores|banco~1076\) # (!\via_dados|instancia_ula|Add0~80\))))
-- \via_dados|instancia_ula|Add0~86COUT1_204\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[14]~14_combout\ & (\via_dados|instancia_banco_registradores|banco~1076\ & !\via_dados|instancia_ula|Add0~80COUT1_203\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[14]~14_combout\ & ((\via_dados|instancia_banco_registradores|banco~1076\) # (!\via_dados|instancia_ula|Add0~80COUT1_203\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mux_ula|dado_sai[14]~14_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1076\,
	cin => \via_dados|instancia_ula|Add0~62\,
	cin0 => \via_dados|instancia_ula|Add0~80\,
	cin1 => \via_dados|instancia_ula|Add0~80COUT1_203\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~84_combout\,
	cout0 => \via_dados|instancia_ula|Add0~86\,
	cout1 => \via_dados|instancia_ula|Add0~86COUT1_204\);

-- Location: LC_X4_Y4_N7
\via_dados|instancia_ula|Add0~89\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~89_combout\ = (((\via_dados|instancia_ula|Add0~84_combout\ & \via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_ula|Add0~84_combout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~89_combout\);

-- Location: LC_X5_Y2_N6
\via_dados|instancia_banco_registradores|banco~1077\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1077_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(16) & \via_dados|instancia_banco_registradores|banco~245_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_banco_registradores|banco~245_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1077_combout\);

-- Location: LC_X4_Y3_N9
\via_dados|instancia_banco_registradores|banco~245\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~90\ = \via_dados|instancia_mux_ula|dado_sai[15]~15_combout\ $ (\via_dados|instancia_banco_registradores|banco~1077_combout\ $ ((!(!\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~86\) # 
-- (\via_dados|instancia_ula|Add0~62\ & \via_dados|instancia_ula|Add0~86COUT1_204\))))
-- \via_dados|instancia_banco_registradores|banco~245_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~90\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~92\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[15]~15_combout\ & ((!\via_dados|instancia_ula|Add0~86COUT1_204\) # (!\via_dados|instancia_banco_registradores|banco~1077_combout\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[15]~15_combout\ & (!\via_dados|instancia_banco_registradores|banco~1077_combout\ & !\via_dados|instancia_ula|Add0~86COUT1_204\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mux_ula|dado_sai[15]~15_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1077_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~62\,
	cin0 => \via_dados|instancia_ula|Add0~86\,
	cin1 => \via_dados|instancia_ula|Add0~86COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~90\,
	regout => \via_dados|instancia_banco_registradores|banco~245_regout\,
	cout => \via_dados|instancia_ula|Add0~92\);

-- Location: LC_X5_Y2_N8
\via_dados|instancia_mux_ula|dado_sai[15]~15\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[15]~15_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_banco_registradores|banco~245_regout\) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_banco_registradores|banco~245_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[15]~15_combout\);

-- Location: LC_X6_Y4_N3
\via_dados|instancia_ula|Add0~95\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~95_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~90\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~95_combout\);

-- Location: LC_X6_Y2_N2
\via_dados|instancia_mux_ula|dado_sai[16]~16\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_banco_registradores|banco~246_regout\) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_banco_registradores|banco~246_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[16]~16_combout\);

-- Location: LC_X5_Y3_N0
\via_dados|instancia_banco_registradores|banco~246\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~96\ = \via_dados|instancia_banco_registradores|banco~1078_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ $ ((\via_dados|instancia_ula|Add0~92\)))
-- \via_dados|instancia_banco_registradores|banco~246_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~96\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~98\ = CARRY((\via_dados|instancia_banco_registradores|banco~1078_combout\ & ((!\via_dados|instancia_ula|Add0~92\) # (!\via_dados|instancia_mux_ula|dado_sai[16]~16_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1078_combout\ & (!\via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ & !\via_dados|instancia_ula|Add0~92\)))
-- \via_dados|instancia_ula|Add0~98COUT1_205\ = CARRY((\via_dados|instancia_banco_registradores|banco~1078_combout\ & ((!\via_dados|instancia_ula|Add0~92\) # (!\via_dados|instancia_mux_ula|dado_sai[16]~16_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1078_combout\ & (!\via_dados|instancia_mux_ula|dado_sai[16]~16_combout\ & !\via_dados|instancia_ula|Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1078_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[16]~16_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~96\,
	regout => \via_dados|instancia_banco_registradores|banco~246_regout\,
	cout0 => \via_dados|instancia_ula|Add0~98\,
	cout1 => \via_dados|instancia_ula|Add0~98COUT1_205\);

-- Location: LC_X5_Y2_N0
\via_dados|instancia_banco_registradores|banco~1078\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1078_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(16) & \via_dados|instancia_banco_registradores|banco~246_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_banco_registradores|banco~246_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1078_combout\);

-- Location: LC_X6_Y2_N8
\via_dados|instancia_ula|Add0~101\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~101_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~96\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~101_combout\);

-- Location: LC_X5_Y2_N5
\via_dados|instancia_mux_ula|dado_sai[17]~17\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_banco_registradores|banco~247_regout\) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_banco_registradores|banco~247_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[17]~17_combout\);

-- Location: LC_X5_Y3_N1
\via_dados|instancia_banco_registradores|banco~247\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~102\ = \via_dados|instancia_banco_registradores|banco~1079_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ $ ((!(!\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~98\) # 
-- (\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~98COUT1_205\))))
-- \via_dados|instancia_banco_registradores|banco~247_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~102\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~104\ = CARRY((\via_dados|instancia_banco_registradores|banco~1079_combout\ & (\via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ & !\via_dados|instancia_ula|Add0~98\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1079_combout\ & ((\via_dados|instancia_mux_ula|dado_sai[17]~17_combout\) # (!\via_dados|instancia_ula|Add0~98\))))
-- \via_dados|instancia_ula|Add0~104COUT1_206\ = CARRY((\via_dados|instancia_banco_registradores|banco~1079_combout\ & (\via_dados|instancia_mux_ula|dado_sai[17]~17_combout\ & !\via_dados|instancia_ula|Add0~98COUT1_205\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1079_combout\ & ((\via_dados|instancia_mux_ula|dado_sai[17]~17_combout\) # (!\via_dados|instancia_ula|Add0~98COUT1_205\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1079_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[17]~17_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~92\,
	cin0 => \via_dados|instancia_ula|Add0~98\,
	cin1 => \via_dados|instancia_ula|Add0~98COUT1_205\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~102\,
	regout => \via_dados|instancia_banco_registradores|banco~247_regout\,
	cout0 => \via_dados|instancia_ula|Add0~104\,
	cout1 => \via_dados|instancia_ula|Add0~104COUT1_206\);

-- Location: LC_X6_Y2_N1
\via_dados|instancia_banco_registradores|banco~1079\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1079_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(16) & \via_dados|instancia_banco_registradores|banco~247_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_banco_registradores|banco~247_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1079_combout\);

-- Location: LC_X4_Y1_N6
\via_dados|instancia_ula|Add0~107\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~107_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~102\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~107_combout\);

-- Location: LC_X5_Y4_N6
\via_dados|instancia_mux_ula|dado_sai[18]~18\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16)))) # 
-- (!\via_dados|instancia_banco_registradores|banco~248_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~248_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[18]~18_combout\);

-- Location: LC_X5_Y3_N2
\via_dados|instancia_banco_registradores|banco~248\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~108\ = \via_dados|instancia_banco_registradores|banco~1080_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ $ (((!\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~104\) # 
-- (\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~104COUT1_206\))))
-- \via_dados|instancia_banco_registradores|banco~248_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~108\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~110\ = CARRY((\via_dados|instancia_banco_registradores|banco~1080_combout\ & ((!\via_dados|instancia_ula|Add0~104\) # (!\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1080_combout\ & (!\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ & !\via_dados|instancia_ula|Add0~104\)))
-- \via_dados|instancia_ula|Add0~110COUT1_207\ = CARRY((\via_dados|instancia_banco_registradores|banco~1080_combout\ & ((!\via_dados|instancia_ula|Add0~104COUT1_206\) # (!\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1080_combout\ & (!\via_dados|instancia_mux_ula|dado_sai[18]~18_combout\ & !\via_dados|instancia_ula|Add0~104COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1080_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[18]~18_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~92\,
	cin0 => \via_dados|instancia_ula|Add0~104\,
	cin1 => \via_dados|instancia_ula|Add0~104COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~108\,
	regout => \via_dados|instancia_banco_registradores|banco~248_regout\,
	cout0 => \via_dados|instancia_ula|Add0~110\,
	cout1 => \via_dados|instancia_ula|Add0~110COUT1_207\);

-- Location: LC_X5_Y4_N7
\via_dados|instancia_banco_registradores|banco~1080\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1080_combout\ = (((\via_dados|instancia_banco_registradores|banco~248_regout\ & \via_dados|instancia_mem_instrucao|Instrucao\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_banco_registradores|banco~248_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1080_combout\);

-- Location: LC_X5_Y1_N0
\via_dados|instancia_ula|Add0~113\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~113_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(0) & (((\via_dados|instancia_ula|Add0~108\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~113_combout\);

-- Location: LC_X5_Y4_N9
\via_dados|instancia_mux_ula|dado_sai[19]~19\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20)) # (((!\via_dados|instancia_mem_instrucao|Instrucao\(16)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0))) # 
-- (!\via_dados|instancia_banco_registradores|banco~249_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~249_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[19]~19_combout\);

-- Location: LC_X5_Y3_N3
\via_dados|instancia_banco_registradores|banco~249\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~114\ = \via_dados|instancia_banco_registradores|banco~1081_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ $ ((!(!\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~110\) # 
-- (\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~110COUT1_207\))))
-- \via_dados|instancia_banco_registradores|banco~249_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~114\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~116\ = CARRY((\via_dados|instancia_banco_registradores|banco~1081_combout\ & (\via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ & !\via_dados|instancia_ula|Add0~110\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1081_combout\ & ((\via_dados|instancia_mux_ula|dado_sai[19]~19_combout\) # (!\via_dados|instancia_ula|Add0~110\))))
-- \via_dados|instancia_ula|Add0~116COUT1_208\ = CARRY((\via_dados|instancia_banco_registradores|banco~1081_combout\ & (\via_dados|instancia_mux_ula|dado_sai[19]~19_combout\ & !\via_dados|instancia_ula|Add0~110COUT1_207\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1081_combout\ & ((\via_dados|instancia_mux_ula|dado_sai[19]~19_combout\) # (!\via_dados|instancia_ula|Add0~110COUT1_207\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1081_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[19]~19_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~92\,
	cin0 => \via_dados|instancia_ula|Add0~110\,
	cin1 => \via_dados|instancia_ula|Add0~110COUT1_207\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~114\,
	regout => \via_dados|instancia_banco_registradores|banco~249_regout\,
	cout0 => \via_dados|instancia_ula|Add0~116\,
	cout1 => \via_dados|instancia_ula|Add0~116COUT1_208\);

-- Location: LC_X5_Y4_N4
\via_dados|instancia_banco_registradores|banco~1081\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1081_combout\ = (((\via_dados|instancia_banco_registradores|banco~249_regout\ & \via_dados|instancia_mem_instrucao|Instrucao\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_banco_registradores|banco~249_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1081_combout\);

-- Location: LC_X5_Y1_N9
\via_dados|instancia_ula|Add0~119\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~119_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~114\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~119_combout\);

-- Location: LC_X5_Y4_N3
\via_dados|instancia_mux_ula|dado_sai[20]~20\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[20]~20_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20)) # (((!\via_dados|instancia_mem_instrucao|Instrucao\(16)) # (!\via_dados|instancia_banco_registradores|banco~250_regout\)) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_banco_registradores|banco~250_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[20]~20_combout\);

-- Location: LC_X5_Y3_N4
\via_dados|instancia_banco_registradores|banco~250\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~120\ = \via_dados|instancia_banco_registradores|banco~1082_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[20]~20_combout\ $ (((!\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~116\) # 
-- (\via_dados|instancia_ula|Add0~92\ & \via_dados|instancia_ula|Add0~116COUT1_208\))))
-- \via_dados|instancia_banco_registradores|banco~250_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~120\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~122\ = CARRY((\via_dados|instancia_banco_registradores|banco~1082_combout\ & ((!\via_dados|instancia_ula|Add0~116COUT1_208\) # (!\via_dados|instancia_mux_ula|dado_sai[20]~20_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1082_combout\ & (!\via_dados|instancia_mux_ula|dado_sai[20]~20_combout\ & !\via_dados|instancia_ula|Add0~116COUT1_208\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1082_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[20]~20_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~92\,
	cin0 => \via_dados|instancia_ula|Add0~116\,
	cin1 => \via_dados|instancia_ula|Add0~116COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~120\,
	regout => \via_dados|instancia_banco_registradores|banco~250_regout\,
	cout => \via_dados|instancia_ula|Add0~122\);

-- Location: LC_X5_Y4_N5
\via_dados|instancia_banco_registradores|banco~1082\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1082_combout\ = (((\via_dados|instancia_banco_registradores|banco~250_regout\ & \via_dados|instancia_mem_instrucao|Instrucao\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_banco_registradores|banco~250_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1082_combout\);

-- Location: LC_X5_Y1_N1
\via_dados|instancia_ula|Add0~125\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~125_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~120\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~125_combout\);

-- Location: LC_X5_Y4_N2
\via_dados|instancia_banco_registradores|banco~1083\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1083_combout\ = (((\via_dados|instancia_banco_registradores|banco~251_regout\ & \via_dados|instancia_mem_instrucao|Instrucao\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_banco_registradores|banco~251_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1083_combout\);

-- Location: LC_X5_Y3_N5
\via_dados|instancia_banco_registradores|banco~251\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~126\ = \via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ $ (\via_dados|instancia_banco_registradores|banco~1083_combout\ $ ((!\via_dados|instancia_ula|Add0~122\)))
-- \via_dados|instancia_banco_registradores|banco~251_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~126\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~128\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ & ((!\via_dados|instancia_ula|Add0~122\) # (!\via_dados|instancia_banco_registradores|banco~1083_combout\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ & (!\via_dados|instancia_banco_registradores|banco~1083_combout\ & !\via_dados|instancia_ula|Add0~122\)))
-- \via_dados|instancia_ula|Add0~128COUT1_209\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ & ((!\via_dados|instancia_ula|Add0~122\) # (!\via_dados|instancia_banco_registradores|banco~1083_combout\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ & (!\via_dados|instancia_banco_registradores|banco~1083_combout\ & !\via_dados|instancia_ula|Add0~122\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mux_ula|dado_sai[21]~21_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1083_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~126\,
	regout => \via_dados|instancia_banco_registradores|banco~251_regout\,
	cout0 => \via_dados|instancia_ula|Add0~128\,
	cout1 => \via_dados|instancia_ula|Add0~128COUT1_209\);

-- Location: LC_X5_Y4_N0
\via_dados|instancia_mux_ula|dado_sai[21]~21\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[21]~21_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(16)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_banco_registradores|banco~251_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~251_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[21]~21_combout\);

-- Location: LC_X6_Y4_N2
\via_dados|instancia_ula|Add0~131\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~131_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~126\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~131_combout\);

-- Location: LC_X5_Y4_N8
\via_dados|instancia_mux_ula|dado_sai[22]~22\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(0)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16)))) # 
-- (!\via_dados|instancia_banco_registradores|banco~252_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~252_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[22]~22_combout\);

-- Location: LC_X5_Y3_N6
\via_dados|instancia_banco_registradores|banco~252\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~132\ = \via_dados|instancia_banco_registradores|banco~1084_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ $ (((!\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~128\) # 
-- (\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~128COUT1_209\))))
-- \via_dados|instancia_banco_registradores|banco~252_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~132\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~134\ = CARRY((\via_dados|instancia_banco_registradores|banco~1084_combout\ & ((!\via_dados|instancia_ula|Add0~128\) # (!\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1084_combout\ & (!\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ & !\via_dados|instancia_ula|Add0~128\)))
-- \via_dados|instancia_ula|Add0~134COUT1_210\ = CARRY((\via_dados|instancia_banco_registradores|banco~1084_combout\ & ((!\via_dados|instancia_ula|Add0~128COUT1_209\) # (!\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1084_combout\ & (!\via_dados|instancia_mux_ula|dado_sai[22]~22_combout\ & !\via_dados|instancia_ula|Add0~128COUT1_209\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1084_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[22]~22_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~122\,
	cin0 => \via_dados|instancia_ula|Add0~128\,
	cin1 => \via_dados|instancia_ula|Add0~128COUT1_209\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~132\,
	regout => \via_dados|instancia_banco_registradores|banco~252_regout\,
	cout0 => \via_dados|instancia_ula|Add0~134\,
	cout1 => \via_dados|instancia_ula|Add0~134COUT1_210\);

-- Location: LC_X5_Y4_N1
\via_dados|instancia_banco_registradores|banco~1084\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1084_combout\ = (((\via_dados|instancia_banco_registradores|banco~252_regout\ & \via_dados|instancia_mem_instrucao|Instrucao\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_banco_registradores|banco~252_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1084_combout\);

-- Location: LC_X4_Y1_N8
\via_dados|instancia_ula|Add0~137\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~137_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~132\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~137_combout\);

-- Location: LC_X4_Y1_N0
\via_dados|instancia_banco_registradores|banco~1085\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1085_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(16) & \via_dados|instancia_banco_registradores|banco~253_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_banco_registradores|banco~253_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1085_combout\);

-- Location: LC_X5_Y3_N7
\via_dados|instancia_banco_registradores|banco~253\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~138\ = \via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ $ (\via_dados|instancia_banco_registradores|banco~1085_combout\ $ ((!(!\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~134\) # 
-- (\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~134COUT1_210\))))
-- \via_dados|instancia_banco_registradores|banco~253_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~138\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~140\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ & ((!\via_dados|instancia_ula|Add0~134\) # (!\via_dados|instancia_banco_registradores|banco~1085_combout\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ & (!\via_dados|instancia_banco_registradores|banco~1085_combout\ & !\via_dados|instancia_ula|Add0~134\)))
-- \via_dados|instancia_ula|Add0~140COUT1_211\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ & ((!\via_dados|instancia_ula|Add0~134COUT1_210\) # (!\via_dados|instancia_banco_registradores|banco~1085_combout\))) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ & (!\via_dados|instancia_banco_registradores|banco~1085_combout\ & !\via_dados|instancia_ula|Add0~134COUT1_210\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mux_ula|dado_sai[23]~23_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1085_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~122\,
	cin0 => \via_dados|instancia_ula|Add0~134\,
	cin1 => \via_dados|instancia_ula|Add0~134COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~138\,
	regout => \via_dados|instancia_banco_registradores|banco~253_regout\,
	cout0 => \via_dados|instancia_ula|Add0~140\,
	cout1 => \via_dados|instancia_ula|Add0~140COUT1_211\);

-- Location: LC_X4_Y1_N5
\via_dados|instancia_mux_ula|dado_sai[23]~23\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[23]~23_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_banco_registradores|banco~253_regout\) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_banco_registradores|banco~253_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[23]~23_combout\);

-- Location: LC_X6_Y2_N9
\via_dados|instancia_ula|Add0~143\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~143_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~138\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~143_combout\);

-- Location: LC_X4_Y1_N2
\via_dados|instancia_banco_registradores|banco~1086\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1086_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(16) & \via_dados|instancia_banco_registradores|banco~254_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_banco_registradores|banco~254_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1086_combout\);

-- Location: LC_X5_Y3_N8
\via_dados|instancia_banco_registradores|banco~254\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~144\ = \via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ $ (\via_dados|instancia_banco_registradores|banco~1086_combout\ $ (((!\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~140\) # 
-- (\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~140COUT1_211\))))
-- \via_dados|instancia_banco_registradores|banco~254_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~144\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~146\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ & (\via_dados|instancia_banco_registradores|banco~1086_combout\ & !\via_dados|instancia_ula|Add0~140\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ & ((\via_dados|instancia_banco_registradores|banco~1086_combout\) # (!\via_dados|instancia_ula|Add0~140\))))
-- \via_dados|instancia_ula|Add0~146COUT1_212\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ & (\via_dados|instancia_banco_registradores|banco~1086_combout\ & !\via_dados|instancia_ula|Add0~140COUT1_211\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ & ((\via_dados|instancia_banco_registradores|banco~1086_combout\) # (!\via_dados|instancia_ula|Add0~140COUT1_211\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mux_ula|dado_sai[24]~24_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1086_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~122\,
	cin0 => \via_dados|instancia_ula|Add0~140\,
	cin1 => \via_dados|instancia_ula|Add0~140COUT1_211\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~144\,
	regout => \via_dados|instancia_banco_registradores|banco~254_regout\,
	cout0 => \via_dados|instancia_ula|Add0~146\,
	cout1 => \via_dados|instancia_ula|Add0~146COUT1_212\);

-- Location: LC_X6_Y2_N4
\via_dados|instancia_mux_ula|dado_sai[24]~24\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[24]~24_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_banco_registradores|banco~254_regout\) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_banco_registradores|banco~254_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[24]~24_combout\);

-- Location: LC_X5_Y1_N6
\via_dados|instancia_ula|Add0~149\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~149_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~144\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~149_combout\);

-- Location: LC_X6_Y2_N7
\via_dados|instancia_mux_ula|dado_sai[25]~25\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[25]~25_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_banco_registradores|banco~255_regout\) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_banco_registradores|banco~255_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[25]~25_combout\);

-- Location: LC_X5_Y3_N9
\via_dados|instancia_banco_registradores|banco~255\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~150\ = \via_dados|instancia_banco_registradores|banco~1087_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[25]~25_combout\ $ ((!(!\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~146\) # 
-- (\via_dados|instancia_ula|Add0~122\ & \via_dados|instancia_ula|Add0~146COUT1_212\))))
-- \via_dados|instancia_banco_registradores|banco~255_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~150\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~152\ = CARRY((\via_dados|instancia_banco_registradores|banco~1087_combout\ & (\via_dados|instancia_mux_ula|dado_sai[25]~25_combout\ & !\via_dados|instancia_ula|Add0~146COUT1_212\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1087_combout\ & ((\via_dados|instancia_mux_ula|dado_sai[25]~25_combout\) # (!\via_dados|instancia_ula|Add0~146COUT1_212\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1087_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[25]~25_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~122\,
	cin0 => \via_dados|instancia_ula|Add0~146\,
	cin1 => \via_dados|instancia_ula|Add0~146COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~150\,
	regout => \via_dados|instancia_banco_registradores|banco~255_regout\,
	cout => \via_dados|instancia_ula|Add0~152\);

-- Location: LC_X5_Y1_N7
\via_dados|instancia_banco_registradores|banco~1087\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1087_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(16) & \via_dados|instancia_banco_registradores|banco~255_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_banco_registradores|banco~255_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1087_combout\);

-- Location: LC_X7_Y4_N8
\via_dados|instancia_ula|Add0~155\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~155_combout\ = (((\via_dados|instancia_ula|Add0~150\ & \via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_ula|Add0~150\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~155_combout\);

-- Location: LC_X6_Y3_N9
\via_dados|instancia_mux_ula|dado_sai[26]~26\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16))) # (!\via_dados|instancia_banco_registradores|banco~256_regout\)) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_banco_registradores|banco~256_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[26]~26_combout\);

-- Location: LC_X6_Y3_N0
\via_dados|instancia_banco_registradores|banco~256\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~156\ = \via_dados|instancia_banco_registradores|banco~1088_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ $ ((\via_dados|instancia_ula|Add0~152\)))
-- \via_dados|instancia_banco_registradores|banco~256_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~156\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~158\ = CARRY((\via_dados|instancia_banco_registradores|banco~1088_combout\ & ((!\via_dados|instancia_ula|Add0~152\) # (!\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1088_combout\ & (!\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ & !\via_dados|instancia_ula|Add0~152\)))
-- \via_dados|instancia_ula|Add0~158COUT1_213\ = CARRY((\via_dados|instancia_banco_registradores|banco~1088_combout\ & ((!\via_dados|instancia_ula|Add0~152\) # (!\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\))) # 
-- (!\via_dados|instancia_banco_registradores|banco~1088_combout\ & (!\via_dados|instancia_mux_ula|dado_sai[26]~26_combout\ & !\via_dados|instancia_ula|Add0~152\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1088_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[26]~26_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~156\,
	regout => \via_dados|instancia_banco_registradores|banco~256_regout\,
	cout0 => \via_dados|instancia_ula|Add0~158\,
	cout1 => \via_dados|instancia_ula|Add0~158COUT1_213\);

-- Location: LC_X6_Y3_N6
\via_dados|instancia_banco_registradores|banco~1088\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1088_combout\ = (((\via_dados|instancia_banco_registradores|banco~256_regout\ & \via_dados|instancia_mem_instrucao|Instrucao\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_banco_registradores|banco~256_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1088_combout\);

-- Location: LC_X6_Y4_N1
\via_dados|instancia_ula|Add0~161\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~161_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~156\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~161_combout\);

-- Location: LC_X6_Y3_N7
\via_dados|instancia_mux_ula|dado_sai[27]~27\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16))) # (!\via_dados|instancia_banco_registradores|banco~257_regout\)) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_banco_registradores|banco~257_regout\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[27]~27_combout\);

-- Location: LC_X6_Y3_N1
\via_dados|instancia_banco_registradores|banco~257\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~162\ = \via_dados|instancia_banco_registradores|banco~1089_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ $ ((!(!\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~158\) # 
-- (\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~158COUT1_213\))))
-- \via_dados|instancia_banco_registradores|banco~257_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~162\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~164\ = CARRY((\via_dados|instancia_banco_registradores|banco~1089_combout\ & (\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ & !\via_dados|instancia_ula|Add0~158\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1089_combout\ & ((\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\) # (!\via_dados|instancia_ula|Add0~158\))))
-- \via_dados|instancia_ula|Add0~164COUT1_214\ = CARRY((\via_dados|instancia_banco_registradores|banco~1089_combout\ & (\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\ & !\via_dados|instancia_ula|Add0~158COUT1_213\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1089_combout\ & ((\via_dados|instancia_mux_ula|dado_sai[27]~27_combout\) # (!\via_dados|instancia_ula|Add0~158COUT1_213\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1089_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[27]~27_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~152\,
	cin0 => \via_dados|instancia_ula|Add0~158\,
	cin1 => \via_dados|instancia_ula|Add0~158COUT1_213\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~162\,
	regout => \via_dados|instancia_banco_registradores|banco~257_regout\,
	cout0 => \via_dados|instancia_ula|Add0~164\,
	cout1 => \via_dados|instancia_ula|Add0~164COUT1_214\);

-- Location: LC_X7_Y3_N0
\via_dados|instancia_banco_registradores|banco~1089\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1089_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(16) & \via_dados|instancia_banco_registradores|banco~257_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_banco_registradores|banco~257_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1089_combout\);

-- Location: LC_X6_Y2_N3
\via_dados|instancia_ula|Add0~167\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~167_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~162\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~167_combout\);

-- Location: LC_X7_Y3_N4
\via_dados|instancia_banco_registradores|banco~1090\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1090_combout\ = ((\via_dados|instancia_banco_registradores|banco~258_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~258_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1090_combout\);

-- Location: LC_X6_Y3_N2
\via_dados|instancia_banco_registradores|banco~258\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~168\ = \via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ $ (\via_dados|instancia_banco_registradores|banco~1090_combout\ $ (((!\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~164\) # 
-- (\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~164COUT1_214\))))
-- \via_dados|instancia_banco_registradores|banco~258_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~168\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~170\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ & (\via_dados|instancia_banco_registradores|banco~1090_combout\ & !\via_dados|instancia_ula|Add0~164\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ & ((\via_dados|instancia_banco_registradores|banco~1090_combout\) # (!\via_dados|instancia_ula|Add0~164\))))
-- \via_dados|instancia_ula|Add0~170COUT1_215\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ & (\via_dados|instancia_banco_registradores|banco~1090_combout\ & !\via_dados|instancia_ula|Add0~164COUT1_214\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ & ((\via_dados|instancia_banco_registradores|banco~1090_combout\) # (!\via_dados|instancia_ula|Add0~164COUT1_214\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mux_ula|dado_sai[28]~28_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1090_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~152\,
	cin0 => \via_dados|instancia_ula|Add0~164\,
	cin1 => \via_dados|instancia_ula|Add0~164COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~168\,
	regout => \via_dados|instancia_banco_registradores|banco~258_regout\,
	cout0 => \via_dados|instancia_ula|Add0~170\,
	cout1 => \via_dados|instancia_ula|Add0~170COUT1_215\);

-- Location: LC_X7_Y3_N6
\via_dados|instancia_mux_ula|dado_sai[28]~28\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[28]~28_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(16)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_banco_registradores|banco~258_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~258_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[28]~28_combout\);

-- Location: LC_X7_Y3_N3
\via_dados|instancia_ula|Add0~173\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~173_combout\ = ((\via_dados|instancia_ula|Add0~168\ & (\via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_ula|Add0~168\,
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~173_combout\);

-- Location: LC_X7_Y3_N2
\via_dados|instancia_mux_ula|dado_sai[29]~29\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_mem_instrucao|Instrucao\(16)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_banco_registradores|banco~259_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~259_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[29]~29_combout\);

-- Location: LC_X6_Y3_N3
\via_dados|instancia_banco_registradores|banco~259\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~174\ = \via_dados|instancia_banco_registradores|banco~1091_combout\ $ (\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ $ ((!(!\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~170\) # 
-- (\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~170COUT1_215\))))
-- \via_dados|instancia_banco_registradores|banco~259_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~174\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~176\ = CARRY((\via_dados|instancia_banco_registradores|banco~1091_combout\ & (\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ & !\via_dados|instancia_ula|Add0~170\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1091_combout\ & ((\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\) # (!\via_dados|instancia_ula|Add0~170\))))
-- \via_dados|instancia_ula|Add0~176COUT1_216\ = CARRY((\via_dados|instancia_banco_registradores|banco~1091_combout\ & (\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\ & !\via_dados|instancia_ula|Add0~170COUT1_215\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1091_combout\ & ((\via_dados|instancia_mux_ula|dado_sai[29]~29_combout\) # (!\via_dados|instancia_ula|Add0~170COUT1_215\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~1091_combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[29]~29_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~152\,
	cin0 => \via_dados|instancia_ula|Add0~170\,
	cin1 => \via_dados|instancia_ula|Add0~170COUT1_215\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~174\,
	regout => \via_dados|instancia_banco_registradores|banco~259_regout\,
	cout0 => \via_dados|instancia_ula|Add0~176\,
	cout1 => \via_dados|instancia_ula|Add0~176COUT1_216\);

-- Location: LC_X6_Y3_N8
\via_dados|instancia_banco_registradores|banco~1091\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1091_combout\ = (\via_dados|instancia_banco_registradores|banco~259_regout\ & (((\via_dados|instancia_mem_instrucao|Instrucao\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~259_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1091_combout\);

-- Location: LC_X7_Y3_N7
\via_dados|instancia_ula|Add0~179\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~179_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(0) & (\via_dados|instancia_ula|Add0~174\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Add0~174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~179_combout\);

-- Location: LC_X7_Y3_N8
\via_dados|instancia_banco_registradores|banco~1092\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1092_combout\ = ((\via_dados|instancia_banco_registradores|banco~260_regout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_banco_registradores|banco~260_regout\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1092_combout\);

-- Location: LC_X6_Y3_N4
\via_dados|instancia_banco_registradores|banco~260\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~180\ = \via_dados|instancia_mux_ula|dado_sai[30]~30_combout\ $ (\via_dados|instancia_banco_registradores|banco~1092_combout\ $ (((!\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~176\) # 
-- (\via_dados|instancia_ula|Add0~152\ & \via_dados|instancia_ula|Add0~176COUT1_216\))))
-- \via_dados|instancia_banco_registradores|banco~260_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~180\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )
-- \via_dados|instancia_ula|Add0~182\ = CARRY((\via_dados|instancia_mux_ula|dado_sai[30]~30_combout\ & (\via_dados|instancia_banco_registradores|banco~1092_combout\ & !\via_dados|instancia_ula|Add0~176COUT1_216\)) # 
-- (!\via_dados|instancia_mux_ula|dado_sai[30]~30_combout\ & ((\via_dados|instancia_banco_registradores|banco~1092_combout\) # (!\via_dados|instancia_ula|Add0~176COUT1_216\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mux_ula|dado_sai[30]~30_combout\,
	datab => \via_dados|instancia_banco_registradores|banco~1092_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~152\,
	cin0 => \via_dados|instancia_ula|Add0~176\,
	cin1 => \via_dados|instancia_ula|Add0~176COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~180\,
	regout => \via_dados|instancia_banco_registradores|banco~260_regout\,
	cout => \via_dados|instancia_ula|Add0~182\);

-- Location: LC_X7_Y3_N1
\via_dados|instancia_mux_ula|dado_sai[30]~30\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[30]~30_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(16))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0))) # 
-- (!\via_dados|instancia_banco_registradores|banco~260_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_banco_registradores|banco~260_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[30]~30_combout\);

-- Location: LC_X7_Y3_N9
\via_dados|instancia_ula|Add0~185\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~185_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~180\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~185_combout\);

-- Location: LC_X6_Y2_N0
\via_dados|instancia_banco_registradores|banco~1093\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1093_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(16) & \via_dados|instancia_banco_registradores|banco~261_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datad => \via_dados|instancia_banco_registradores|banco~261_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1093_combout\);

-- Location: LC_X6_Y3_N5
\via_dados|instancia_banco_registradores|banco~261\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~186\ = (\via_dados|instancia_mux_ula|dado_sai[31]~31_combout\ $ (\via_dados|instancia_ula|Add0~182\ $ (!\via_dados|instancia_banco_registradores|banco~1093_combout\)))
-- \via_dados|instancia_banco_registradores|banco~261_regout\ = DFFEAS(\via_dados|instancia_ula|Add0~186\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_mem_instrucao|Instrucao\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_mux_ula|dado_sai[31]~31_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1093_combout\,
	aclr => GND,
	ena => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	cin => \via_dados|instancia_ula|Add0~182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~186\,
	regout => \via_dados|instancia_banco_registradores|banco~261_regout\);

-- Location: LC_X6_Y2_N5
\via_dados|instancia_mux_ula|dado_sai[31]~31\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mux_ula|dado_sai[31]~31_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(20)) # ((!\via_dados|instancia_banco_registradores|banco~261_regout\) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(16),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_banco_registradores|banco~261_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mux_ula|dado_sai[31]~31_combout\);

-- Location: LC_X5_Y1_N2
\via_dados|instancia_ula|Add0~191\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Add0~191_combout\ = (((\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_ula|Add0~186\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_ula|Add0~186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Add0~191_combout\);

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~5_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(0));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~11_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(1));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~17_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(2));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~23_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(3));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~29_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(4));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~35_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(5));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~41_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(6));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~47_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(7));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~53_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(8));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~59_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(9));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~65_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(10));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~71_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(11));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~77_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(12));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~83_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(13));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~89_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(14));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~95_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(15));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~101_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(16));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~107_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(17));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~113_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(18));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~119_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(19));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~125_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(20));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~131_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(21));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~137_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(22));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~143_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(23));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~149_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(24));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~155_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(25));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~161_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(26));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~167_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(27));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~173_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(28));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~179_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(29));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~185_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(30));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Add0~191_combout\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(31));
END structure;


