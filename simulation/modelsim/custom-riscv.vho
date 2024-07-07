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

-- DATE "07/07/2024 20:04:22"

-- 
-- Device: Altera 5M570ZM100C4 Package MBGA100
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
SIGNAL \via_dados|instancia_banco_registradores|banco~230_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~231_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~199_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~200_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~232_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~233_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~201_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~202_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~234_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~235_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~203_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~204_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~236_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~237_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~205_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~206_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~238_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~239_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~207_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~208_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~240_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~241_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~209_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~210_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~242_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~243_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~211_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~212_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~244_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~245_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~213_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~214_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~246_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~247_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~215_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~216_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~248_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~249_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~217_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~218_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~250_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~251_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~219_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~220_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~252_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~253_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~221_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~222_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~254_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~255_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~223_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~224_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~256_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~257_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~225_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~226_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~258_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~259_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~227_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~228_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~260_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~261_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~229_regout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Chave_reset~combout\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[0]~19\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[1]~25\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[1]~25COUT1_27\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[2]~21\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[2]~21COUT1_28\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[3]~23\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[3]~23COUT1_29\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[4]~1\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[4]~1COUT1_30\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[5]~3\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[6]~5\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[6]~5COUT1_31\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[7]~7\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[7]~7COUT1_32\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[8]~9\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[8]~9COUT1_33\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[9]~11\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[9]~11COUT1_34\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[10]~13\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[11]~15\ : std_logic;
SIGNAL \via_dados|instancia_pc|saida[11]~15COUT1_35\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux18~1_combout\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux18~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux18~2_combout\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux18~3\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux31~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux31~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_mem_instrucao|Mux9~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1125_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~262_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1124_combout\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux31~1\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux31~2\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux29~0_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~263_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1127_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~167_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1062\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1126_combout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1063\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux30~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~264_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~168_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1064\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1065\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux29~1\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~265_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~169_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1066\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1067\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux28~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~266_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~170_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1068\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1069\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux27~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~267_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~171_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1070\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1071\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux26~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~268_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~172_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1072\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1073\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux25~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~269_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~173_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1074\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1075\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux24~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~270_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~174_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1076\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1077\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux23~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~271_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~175_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1078\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1079\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux22~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~272_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~176_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1080\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1081\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux21~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~273_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~177_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1082\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1083\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux20~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~274_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~178_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1084\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1085\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux19~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~275_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~179_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1086\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1087\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux18~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~276_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~180_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1088\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1089\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux17~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~277_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~181_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1090\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1091\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux16~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~278_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~182_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1092\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1093\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux15~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~279_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~183_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1094\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1095\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux14~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~280_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~184_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1096\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1097\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux13~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~281_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~185_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1098\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1099\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux12~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~282_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~186_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1100\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1101\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux11~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~283_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~187_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1102\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1103\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux10~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~284_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~188_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1104\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1105\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux9~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~285_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~189_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1106\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1107\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux8~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~286_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~190_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1108\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1109\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux7~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~287_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~191_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1110\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1111\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux6~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~288_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~192_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1112\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1113\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux5~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~289_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~193_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1114\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1115\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux4~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~290_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~194_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1116\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1117\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux3~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~291_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~195_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1118\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1119\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux2~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~292_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~196_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1120\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1121\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux1~0\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~293_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~197_regout\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1122\ : std_logic;
SIGNAL \via_dados|instancia_banco_registradores|banco~1123\ : std_logic;
SIGNAL \via_dados|instancia_ula|Mux0~0\ : std_logic;
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

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Chave_reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Chave_reset,
	combout => \Chave_reset~combout\);

-- Location: LC_X9_Y5_N4
\via_dados|instancia_pc|saida[0]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(0) = DFFEAS((!\via_dados|instancia_pc|saida\(0)), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[0]~19\ = CARRY((\via_dados|instancia_pc|saida\(0)))

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
	cout => \via_dados|instancia_pc|saida[0]~19\);

-- Location: LC_X9_Y5_N5
\via_dados|instancia_pc|saida[1]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(1) = DFFEAS(\via_dados|instancia_pc|saida\(1) $ ((((\via_dados|instancia_pc|saida[0]~19\)))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[1]~25\ = CARRY(((!\via_dados|instancia_pc|saida[0]~19\)) # (!\via_dados|instancia_pc|saida\(1)))
-- \via_dados|instancia_pc|saida[1]~25COUT1_27\ = CARRY(((!\via_dados|instancia_pc|saida[0]~19\)) # (!\via_dados|instancia_pc|saida\(1)))

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
	cin => \via_dados|instancia_pc|saida[0]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(1),
	cout0 => \via_dados|instancia_pc|saida[1]~25\,
	cout1 => \via_dados|instancia_pc|saida[1]~25COUT1_27\);

-- Location: LC_X9_Y5_N6
\via_dados|instancia_pc|saida[2]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(2) = DFFEAS(\via_dados|instancia_pc|saida\(2) $ ((((!(!\via_dados|instancia_pc|saida[0]~19\ & \via_dados|instancia_pc|saida[1]~25\) # (\via_dados|instancia_pc|saida[0]~19\ & \via_dados|instancia_pc|saida[1]~25COUT1_27\))))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[2]~21\ = CARRY((\via_dados|instancia_pc|saida\(2) & ((!\via_dados|instancia_pc|saida[1]~25\))))
-- \via_dados|instancia_pc|saida[2]~21COUT1_28\ = CARRY((\via_dados|instancia_pc|saida\(2) & ((!\via_dados|instancia_pc|saida[1]~25COUT1_27\))))

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
	cin => \via_dados|instancia_pc|saida[0]~19\,
	cin0 => \via_dados|instancia_pc|saida[1]~25\,
	cin1 => \via_dados|instancia_pc|saida[1]~25COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(2),
	cout0 => \via_dados|instancia_pc|saida[2]~21\,
	cout1 => \via_dados|instancia_pc|saida[2]~21COUT1_28\);

-- Location: LC_X9_Y5_N7
\via_dados|instancia_pc|saida[3]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(3) = DFFEAS((\via_dados|instancia_pc|saida\(3) $ (((!\via_dados|instancia_pc|saida[0]~19\ & \via_dados|instancia_pc|saida[2]~21\) # (\via_dados|instancia_pc|saida[0]~19\ & \via_dados|instancia_pc|saida[2]~21COUT1_28\)))), 
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
	cin => \via_dados|instancia_pc|saida[0]~19\,
	cin0 => \via_dados|instancia_pc|saida[2]~21\,
	cin1 => \via_dados|instancia_pc|saida[2]~21COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(3),
	cout0 => \via_dados|instancia_pc|saida[3]~23\,
	cout1 => \via_dados|instancia_pc|saida[3]~23COUT1_29\);

-- Location: LC_X9_Y5_N8
\via_dados|instancia_pc|saida[4]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(4) = DFFEAS(\via_dados|instancia_pc|saida\(4) $ ((((!(!\via_dados|instancia_pc|saida[0]~19\ & \via_dados|instancia_pc|saida[3]~23\) # (\via_dados|instancia_pc|saida[0]~19\ & \via_dados|instancia_pc|saida[3]~23COUT1_29\))))), 
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
	cin => \via_dados|instancia_pc|saida[0]~19\,
	cin0 => \via_dados|instancia_pc|saida[3]~23\,
	cin1 => \via_dados|instancia_pc|saida[3]~23COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(4),
	cout0 => \via_dados|instancia_pc|saida[4]~1\,
	cout1 => \via_dados|instancia_pc|saida[4]~1COUT1_30\);

-- Location: LC_X9_Y5_N9
\via_dados|instancia_pc|saida[5]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(5) = DFFEAS((\via_dados|instancia_pc|saida\(5) $ (((!\via_dados|instancia_pc|saida[0]~19\ & \via_dados|instancia_pc|saida[4]~1\) # (\via_dados|instancia_pc|saida[0]~19\ & \via_dados|instancia_pc|saida[4]~1COUT1_30\)))), 
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
	cin => \via_dados|instancia_pc|saida[0]~19\,
	cin0 => \via_dados|instancia_pc|saida[4]~1\,
	cin1 => \via_dados|instancia_pc|saida[4]~1COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(5),
	cout => \via_dados|instancia_pc|saida[5]~3\);

-- Location: LC_X10_Y5_N0
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

-- Location: LC_X10_Y5_N1
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

-- Location: LC_X10_Y5_N2
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

-- Location: LC_X10_Y5_N3
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

-- Location: LC_X10_Y5_N4
\via_dados|instancia_pc|saida[10]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(10) = DFFEAS((\via_dados|instancia_pc|saida\(10) $ ((!(!\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[9]~11\) # (\via_dados|instancia_pc|saida[5]~3\ & \via_dados|instancia_pc|saida[9]~11COUT1_34\)))), 
-- GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )
-- \via_dados|instancia_pc|saida[10]~13\ = CARRY(((\via_dados|instancia_pc|saida\(10) & !\via_dados|instancia_pc|saida[9]~11COUT1_34\)))

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
	datab => \via_dados|instancia_pc|saida\(10),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[5]~3\,
	cin0 => \via_dados|instancia_pc|saida[9]~11\,
	cin1 => \via_dados|instancia_pc|saida[9]~11COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(10),
	cout => \via_dados|instancia_pc|saida[10]~13\);

-- Location: LC_X10_Y5_N5
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

-- Location: LC_X10_Y5_N6
\via_dados|instancia_pc|saida[12]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_pc|saida\(12) = DFFEAS((((!\via_dados|instancia_pc|saida[10]~13\ & \via_dados|instancia_pc|saida[11]~15\) # (\via_dados|instancia_pc|saida[10]~13\ & \via_dados|instancia_pc|saida[11]~15COUT1_35\) $ 
-- (!\via_dados|instancia_pc|saida\(12)))), GLOBAL(\Clock~combout\), !GLOBAL(\Chave_reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_pc|saida\(12),
	aclr => \Chave_reset~combout\,
	cin => \via_dados|instancia_pc|saida[10]~13\,
	cin0 => \via_dados|instancia_pc|saida[11]~15\,
	cin1 => \via_dados|instancia_pc|saida[11]~15COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_pc|saida\(12));

-- Location: LC_X10_Y5_N9
\via_dados|instancia_mem_instrucao|Mux18~1\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux18~1_combout\ = (!\via_dados|instancia_pc|saida\(10) & (!\via_dados|instancia_pc|saida\(8) & (!\via_dados|instancia_pc|saida\(11) & !\via_dados|instancia_pc|saida\(9))))

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
	combout => \via_dados|instancia_mem_instrucao|Mux18~1_combout\);

-- Location: LC_X9_Y5_N0
\via_dados|instancia_mem_instrucao|Mux18~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux18~0_combout\ = (!\via_dados|instancia_pc|saida\(4) & (!\via_dados|instancia_pc|saida\(5) & (!\via_dados|instancia_pc|saida\(6) & !\via_dados|instancia_pc|saida\(7))))

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
	dataa => \via_dados|instancia_pc|saida\(4),
	datab => \via_dados|instancia_pc|saida\(5),
	datac => \via_dados|instancia_pc|saida\(6),
	datad => \via_dados|instancia_pc|saida\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux18~0_combout\);

-- Location: LC_X9_Y5_N1
\via_dados|instancia_mem_instrucao|Mux18~2\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux18~2_combout\ = (!\via_dados|instancia_pc|saida\(12) & (((\via_dados|instancia_mem_instrucao|Mux18~1_combout\ & \via_dados|instancia_mem_instrucao|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_pc|saida\(12),
	datac => \via_dados|instancia_mem_instrucao|Mux18~1_combout\,
	datad => \via_dados|instancia_mem_instrucao|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux18~2_combout\);

-- Location: LC_X8_Y5_N7
\via_dados|instancia_mem_instrucao|Instrucao[21]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux18~3\ = (!\via_dados|instancia_pc|saida\(3) & (!\via_dados|instancia_pc|saida\(0) & (!\via_dados|instancia_pc|saida\(2) & \via_dados|instancia_mem_instrucao|Mux18~2_combout\)))
-- \via_dados|instancia_mem_instrucao|Instrucao\(21) = DFFEAS(\via_dados|instancia_mem_instrucao|Mux18~3\, GLOBAL(\Clock~combout\), VCC, , !\Chave_reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_pc|saida\(3),
	datab => \via_dados|instancia_pc|saida\(0),
	datac => \via_dados|instancia_pc|saida\(2),
	datad => \via_dados|instancia_mem_instrucao|Mux18~2_combout\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux18~3\,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(21));

-- Location: LC_X8_Y5_N6
\via_dados|instancia_mem_instrucao|Instrucao[20]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(20) = DFFEAS(((!\via_dados|instancia_pc|saida\(1) & (\via_dados|instancia_mem_instrucao|Mux18~3\))), GLOBAL(\Clock~combout\), VCC, , !\Chave_reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_pc|saida\(1),
	datac => \via_dados|instancia_mem_instrucao|Mux18~3\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(20));

-- Location: LC_X8_Y5_N1
\via_dados|instancia_mem_instrucao|Instrucao[13]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(13) = DFFEAS(((\via_dados|instancia_pc|saida\(1) & (\via_dados|instancia_mem_instrucao|Mux18~3\))), GLOBAL(\Clock~combout\), VCC, , !\Chave_reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \via_dados|instancia_pc|saida\(1),
	datac => \via_dados|instancia_mem_instrucao|Mux18~3\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(13));

-- Location: LC_X8_Y5_N9
\via_dados|instancia_mem_instrucao|Mux31~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux31~0_combout\ = (\via_dados|instancia_pc|saida\(3)) # ((\via_dados|instancia_pc|saida\(2)) # ((\via_dados|instancia_pc|saida\(1) & \via_dados|instancia_pc|saida\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_pc|saida\(3),
	datab => \via_dados|instancia_pc|saida\(1),
	datac => \via_dados|instancia_pc|saida\(2),
	datad => \via_dados|instancia_pc|saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux31~0_combout\);

-- Location: LC_X8_Y5_N2
\via_dados|instancia_mem_instrucao|Instrucao[0]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(0) = DFFEAS((\via_dados|instancia_mem_instrucao|Mux18~0_combout\ & (!\via_dados|instancia_mem_instrucao|Mux31~0_combout\ & (\via_dados|instancia_mem_instrucao|Mux18~1_combout\ & 
-- !\via_dados|instancia_pc|saida\(12)))), GLOBAL(\Clock~combout\), VCC, , !\Chave_reset~combout\, , , , )

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
	dataa => \via_dados|instancia_mem_instrucao|Mux18~0_combout\,
	datab => \via_dados|instancia_mem_instrucao|Mux31~0_combout\,
	datac => \via_dados|instancia_mem_instrucao|Mux18~1_combout\,
	datad => \via_dados|instancia_pc|saida\(12),
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(0));

-- Location: LC_X8_Y4_N8
\via_dados|instancia_ula|Mux31~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux31~0_combout\ = (((!\via_dados|instancia_mem_instrucao|Instrucao\(13) & \via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(13),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux31~0_combout\);

-- Location: LC_X8_Y5_N4
\via_dados|instancia_mem_instrucao|Instrucao[8]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(8) = DFFEAS((!\via_dados|instancia_pc|saida\(3) & (!\via_dados|instancia_pc|saida\(1) & (!\via_dados|instancia_pc|saida\(2) & \via_dados|instancia_mem_instrucao|Mux18~2_combout\))), GLOBAL(\Clock~combout\), 
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
	dataa => \via_dados|instancia_pc|saida\(3),
	datab => \via_dados|instancia_pc|saida\(1),
	datac => \via_dados|instancia_pc|saida\(2),
	datad => \via_dados|instancia_mem_instrucao|Mux18~2_combout\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(8));

-- Location: LC_X8_Y5_N8
\via_dados|instancia_mem_instrucao|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Mux9~0_combout\ = (!\via_dados|instancia_pc|saida\(3) & (!\via_dados|instancia_pc|saida\(2) & (\via_dados|instancia_pc|saida\(1) $ (\via_dados|instancia_pc|saida\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0104",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_pc|saida\(3),
	datab => \via_dados|instancia_pc|saida\(1),
	datac => \via_dados|instancia_pc|saida\(2),
	datad => \via_dados|instancia_pc|saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_mem_instrucao|Mux9~0_combout\);

-- Location: LC_X8_Y5_N5
\via_dados|instancia_mem_instrucao|Instrucao[22]\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_mem_instrucao|Instrucao\(22) = DFFEAS((\via_dados|instancia_mem_instrucao|Mux9~0_combout\ & (!\via_dados|instancia_pc|saida\(12) & (\via_dados|instancia_mem_instrucao|Mux18~0_combout\ & 
-- \via_dados|instancia_mem_instrucao|Mux18~1_combout\))), GLOBAL(\Clock~combout\), VCC, , !\Chave_reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Mux9~0_combout\,
	datab => \via_dados|instancia_pc|saida\(12),
	datac => \via_dados|instancia_mem_instrucao|Mux18~0_combout\,
	datad => \via_dados|instancia_mem_instrucao|Mux18~1_combout\,
	aclr => GND,
	ena => \ALT_INV_Chave_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_mem_instrucao|Instrucao\(22));

-- Location: LC_X8_Y5_N0
\via_dados|instancia_banco_registradores|banco~1125\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1125_combout\ = (\via_dados|instancia_mem_instrucao|Instrucao\(8) & (((\via_dados|instancia_mem_instrucao|Instrucao\(22) & \via_dados|instancia_mem_instrucao|Instrucao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(8),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(22),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1125_combout\);

-- Location: LC_X8_Y4_N9
\via_dados|instancia_banco_registradores|banco~262\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux31~2\ = (\via_dados|instancia_ula|Mux31~0_combout\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_ula|Mux31~1\))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- (\via_dados|instancia_mem_instrucao|Instrucao\(20)))))
-- \via_dados|instancia_banco_registradores|banco~262_regout\ = DFFEAS(\via_dados|instancia_ula|Mux31~2\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux31~1\,
	datad => \via_dados|instancia_ula|Mux31~0_combout\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux31~2\,
	regout => \via_dados|instancia_banco_registradores|banco~262_regout\);

-- Location: LC_X7_Y5_N1
\via_dados|instancia_banco_registradores|banco~1124\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1124_combout\ = ((\via_dados|instancia_mem_instrucao|Instrucao\(8) & (\via_dados|instancia_mem_instrucao|Instrucao\(0) & !\via_dados|instancia_mem_instrucao|Instrucao\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(8),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1124_combout\);

-- Location: LC_X8_Y4_N0
\via_dados|instancia_banco_registradores|banco~230\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux31~1\ = (\via_dados|instancia_mem_instrucao|Instrucao\(22) & ((\via_dados|instancia_mem_instrucao|Instrucao\(20) & (\via_dados|instancia_banco_registradores|banco~262_regout\)) # 
-- (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((D1L63Q)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~262_regout\,
	datac => \via_dados|instancia_ula|Mux31~2\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(22),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux31~1\,
	regout => \via_dados|instancia_banco_registradores|banco~230_regout\);

-- Location: LC_X8_Y5_N3
\via_dados|instancia_ula|Mux29~0\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux29~0_combout\ = ((!\via_dados|instancia_mem_instrucao|Instrucao\(13) & (\via_dados|instancia_mem_instrucao|Instrucao\(22) & \via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(13),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(22),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux29~0_combout\);

-- Location: LC_X10_Y7_N0
\via_dados|instancia_banco_registradores|banco~263\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~263_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux30~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux30~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~263_regout\);

-- Location: LC_X9_Y5_N2
\via_dados|instancia_banco_registradores|banco~1127\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1127_combout\ = ((!\via_dados|instancia_mem_instrucao|Instrucao\(8) & (!\via_dados|instancia_mem_instrucao|Instrucao\(22) & \via_dados|instancia_mem_instrucao|Instrucao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(8),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(22),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1127_combout\);

-- Location: LC_X9_Y7_N4
\via_dados|instancia_banco_registradores|banco~167\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux30~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1063\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~167_regout\ = DFFEAS(\via_dados|instancia_ula|Mux30~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1063\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux30~0\,
	regout => \via_dados|instancia_banco_registradores|banco~167_regout\);

-- Location: LC_X8_Y7_N9
\via_dados|instancia_banco_registradores|banco~231\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1062\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((D1L64Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (\via_dados|instancia_banco_registradores|banco~167_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~167_regout\,
	datac => \via_dados|instancia_ula|Mux30~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1062\,
	regout => \via_dados|instancia_banco_registradores|banco~231_regout\);

-- Location: LC_X7_Y5_N0
\via_dados|instancia_banco_registradores|banco~1126\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1126_combout\ = ((!\via_dados|instancia_mem_instrucao|Instrucao\(8) & (\via_dados|instancia_mem_instrucao|Instrucao\(0) & \via_dados|instancia_mem_instrucao|Instrucao\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(8),
	datac => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1126_combout\);

-- Location: LC_X9_Y7_N3
\via_dados|instancia_banco_registradores|banco~199\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1063\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1062\ & (\via_dados|instancia_banco_registradores|banco~263_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1062\ & ((D1L32Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1062\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~263_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux30~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1062\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1063\,
	regout => \via_dados|instancia_banco_registradores|banco~199_regout\);

-- Location: LC_X8_Y7_N3
\via_dados|instancia_banco_registradores|banco~264\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~264_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux29~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux29~1\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~264_regout\);

-- Location: LC_X9_Y7_N2
\via_dados|instancia_banco_registradores|banco~168\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux29~1\ = (\via_dados|instancia_ula|Mux29~0_combout\ & ((\via_dados|instancia_banco_registradores|banco~1065\) # ((\via_dados|instancia_mem_instrucao|Instrucao\(0) & !\via_dados|instancia_mem_instrucao|Instrucao\(21)))))
-- \via_dados|instancia_banco_registradores|banco~168_regout\ = DFFEAS(\via_dados|instancia_ula|Mux29~1\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f020",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1065\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux29~1\,
	regout => \via_dados|instancia_banco_registradores|banco~168_regout\);

-- Location: LC_X9_Y7_N8
\via_dados|instancia_banco_registradores|banco~200\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1064\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_mem_instrucao|Instrucao\(20))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((D1L33Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (\via_dados|instancia_banco_registradores|banco~168_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~168_regout\,
	datac => \via_dados|instancia_ula|Mux29~1\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1064\,
	regout => \via_dados|instancia_banco_registradores|banco~200_regout\);

-- Location: LC_X8_Y7_N2
\via_dados|instancia_banco_registradores|banco~232\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1065\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1064\ & (\via_dados|instancia_banco_registradores|banco~264_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1064\ & ((D1L65Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1064\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~264_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~1\,
	datad => \via_dados|instancia_banco_registradores|banco~1064\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1065\,
	regout => \via_dados|instancia_banco_registradores|banco~232_regout\);

-- Location: LC_X8_Y7_N6
\via_dados|instancia_banco_registradores|banco~265\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~265_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux28~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux28~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~265_regout\);

-- Location: LC_X9_Y7_N6
\via_dados|instancia_banco_registradores|banco~169\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux28~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1067\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~169_regout\ = DFFEAS(\via_dados|instancia_ula|Mux28~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1067\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux28~0\,
	regout => \via_dados|instancia_banco_registradores|banco~169_regout\);

-- Location: LC_X8_Y7_N0
\via_dados|instancia_banco_registradores|banco~233\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1066\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((D1L66Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(20))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- (\via_dados|instancia_banco_registradores|banco~169_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~169_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux28~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1066\,
	regout => \via_dados|instancia_banco_registradores|banco~233_regout\);

-- Location: LC_X9_Y7_N5
\via_dados|instancia_banco_registradores|banco~201\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1067\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1066\ & (\via_dados|instancia_banco_registradores|banco~265_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1066\ & ((D1L34Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1066\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~265_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux28~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1066\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1067\,
	regout => \via_dados|instancia_banco_registradores|banco~201_regout\);

-- Location: LC_X10_Y7_N6
\via_dados|instancia_banco_registradores|banco~266\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~266_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux27~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux27~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~266_regout\);

-- Location: LC_X9_Y7_N1
\via_dados|instancia_banco_registradores|banco~170\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux27~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1069\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~170_regout\ = DFFEAS(\via_dados|instancia_ula|Mux27~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1069\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux27~0\,
	regout => \via_dados|instancia_banco_registradores|banco~170_regout\);

-- Location: LC_X9_Y7_N0
\via_dados|instancia_banco_registradores|banco~202\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1068\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L35Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~170_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~170_regout\,
	datac => \via_dados|instancia_ula|Mux27~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1068\,
	regout => \via_dados|instancia_banco_registradores|banco~202_regout\);

-- Location: LC_X10_Y7_N4
\via_dados|instancia_banco_registradores|banco~234\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1069\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1068\ & (\via_dados|instancia_banco_registradores|banco~266_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1068\ & ((D1L67Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1068\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~266_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux27~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1068\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1069\,
	regout => \via_dados|instancia_banco_registradores|banco~234_regout\);

-- Location: LC_X10_Y6_N7
\via_dados|instancia_banco_registradores|banco~267\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~267_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux26~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux26~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~267_regout\);

-- Location: LC_X10_Y6_N8
\via_dados|instancia_banco_registradores|banco~171\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux26~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1071\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~171_regout\ = DFFEAS(\via_dados|instancia_ula|Mux26~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1071\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux26~0\,
	regout => \via_dados|instancia_banco_registradores|banco~171_regout\);

-- Location: LC_X9_Y6_N1
\via_dados|instancia_banco_registradores|banco~235\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1070\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((D1L68Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(20))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- (\via_dados|instancia_banco_registradores|banco~171_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~171_regout\,
	datac => \via_dados|instancia_ula|Mux26~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1070\,
	regout => \via_dados|instancia_banco_registradores|banco~235_regout\);

-- Location: LC_X9_Y6_N2
\via_dados|instancia_banco_registradores|banco~203\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1071\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1070\ & (\via_dados|instancia_banco_registradores|banco~267_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1070\ & ((D1L36Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1070\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~267_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux26~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1070\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1071\,
	regout => \via_dados|instancia_banco_registradores|banco~203_regout\);

-- Location: LC_X8_Y7_N8
\via_dados|instancia_banco_registradores|banco~268\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~268_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux25~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux25~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~268_regout\);

-- Location: LC_X9_Y7_N9
\via_dados|instancia_banco_registradores|banco~172\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux25~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1073\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~172_regout\ = DFFEAS(\via_dados|instancia_ula|Mux25~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1073\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux25~0\,
	regout => \via_dados|instancia_banco_registradores|banco~172_regout\);

-- Location: LC_X9_Y7_N7
\via_dados|instancia_banco_registradores|banco~204\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1072\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_mem_instrucao|Instrucao\(20))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((D1L37Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (\via_dados|instancia_banco_registradores|banco~172_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~172_regout\,
	datac => \via_dados|instancia_ula|Mux25~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1072\,
	regout => \via_dados|instancia_banco_registradores|banco~204_regout\);

-- Location: LC_X8_Y7_N4
\via_dados|instancia_banco_registradores|banco~236\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1073\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1072\ & (\via_dados|instancia_banco_registradores|banco~268_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1072\ & ((D1L69Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1072\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~268_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux25~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1072\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1073\,
	regout => \via_dados|instancia_banco_registradores|banco~236_regout\);

-- Location: LC_X10_Y6_N1
\via_dados|instancia_banco_registradores|banco~269\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~269_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux24~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux24~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~269_regout\);

-- Location: LC_X10_Y6_N4
\via_dados|instancia_banco_registradores|banco~173\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux24~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1075\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~173_regout\ = DFFEAS(\via_dados|instancia_ula|Mux24~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1075\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux24~0\,
	regout => \via_dados|instancia_banco_registradores|banco~173_regout\);

-- Location: LC_X9_Y6_N6
\via_dados|instancia_banco_registradores|banco~237\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1074\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((D1L70Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (\via_dados|instancia_banco_registradores|banco~173_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~173_regout\,
	datac => \via_dados|instancia_ula|Mux24~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1074\,
	regout => \via_dados|instancia_banco_registradores|banco~237_regout\);

-- Location: LC_X9_Y6_N7
\via_dados|instancia_banco_registradores|banco~205\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1075\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1074\ & (\via_dados|instancia_banco_registradores|banco~269_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1074\ & ((D1L38Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1074\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~269_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux24~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1074\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1075\,
	regout => \via_dados|instancia_banco_registradores|banco~205_regout\);

-- Location: LC_X10_Y6_N0
\via_dados|instancia_banco_registradores|banco~270\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~270_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux23~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux23~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~270_regout\);

-- Location: LC_X10_Y6_N2
\via_dados|instancia_banco_registradores|banco~174\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux23~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1077\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~174_regout\ = DFFEAS(\via_dados|instancia_ula|Mux23~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1077\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux23~0\,
	regout => \via_dados|instancia_banco_registradores|banco~174_regout\);

-- Location: LC_X9_Y6_N8
\via_dados|instancia_banco_registradores|banco~206\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1076\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_mem_instrucao|Instrucao\(20))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((D1L39Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (\via_dados|instancia_banco_registradores|banco~174_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~174_regout\,
	datac => \via_dados|instancia_ula|Mux23~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1076\,
	regout => \via_dados|instancia_banco_registradores|banco~206_regout\);

-- Location: LC_X9_Y6_N5
\via_dados|instancia_banco_registradores|banco~238\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1077\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1076\ & (\via_dados|instancia_banco_registradores|banco~270_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1076\ & ((D1L71Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1076\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~270_regout\,
	datac => \via_dados|instancia_ula|Mux23~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1076\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1077\,
	regout => \via_dados|instancia_banco_registradores|banco~238_regout\);

-- Location: LC_X10_Y6_N6
\via_dados|instancia_banco_registradores|banco~271\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~271_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux22~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux22~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~271_regout\);

-- Location: LC_X10_Y6_N5
\via_dados|instancia_banco_registradores|banco~175\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux22~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1079\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~175_regout\ = DFFEAS(\via_dados|instancia_ula|Mux22~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1079\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux22~0\,
	regout => \via_dados|instancia_banco_registradores|banco~175_regout\);

-- Location: LC_X9_Y6_N9
\via_dados|instancia_banco_registradores|banco~239\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1078\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((D1L72Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(20))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- (\via_dados|instancia_banco_registradores|banco~175_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~175_regout\,
	datac => \via_dados|instancia_ula|Mux22~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1078\,
	regout => \via_dados|instancia_banco_registradores|banco~239_regout\);

-- Location: LC_X9_Y6_N0
\via_dados|instancia_banco_registradores|banco~207\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1079\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1078\ & (\via_dados|instancia_banco_registradores|banco~271_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1078\ & ((D1L40Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1078\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~271_regout\,
	datac => \via_dados|instancia_ula|Mux22~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1078\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1079\,
	regout => \via_dados|instancia_banco_registradores|banco~207_regout\);

-- Location: LC_X10_Y6_N3
\via_dados|instancia_banco_registradores|banco~272\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~272_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux21~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux21~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~272_regout\);

-- Location: LC_X10_Y6_N9
\via_dados|instancia_banco_registradores|banco~176\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux21~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1081\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~176_regout\ = DFFEAS(\via_dados|instancia_ula|Mux21~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1081\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux21~0\,
	regout => \via_dados|instancia_banco_registradores|banco~176_regout\);

-- Location: LC_X9_Y6_N3
\via_dados|instancia_banco_registradores|banco~208\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1080\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L41Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~176_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~176_regout\,
	datac => \via_dados|instancia_ula|Mux21~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1080\,
	regout => \via_dados|instancia_banco_registradores|banco~208_regout\);

-- Location: LC_X9_Y6_N4
\via_dados|instancia_banco_registradores|banco~240\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1081\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1080\ & (\via_dados|instancia_banco_registradores|banco~272_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1080\ & ((D1L73Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1080\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~272_regout\,
	datac => \via_dados|instancia_ula|Mux21~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1080\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1081\,
	regout => \via_dados|instancia_banco_registradores|banco~240_regout\);

-- Location: LC_X7_Y6_N9
\via_dados|instancia_banco_registradores|banco~273\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~273_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux20~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux20~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~273_regout\);

-- Location: LC_X7_Y6_N4
\via_dados|instancia_banco_registradores|banco~177\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux20~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1083\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~177_regout\ = DFFEAS(\via_dados|instancia_ula|Mux20~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1083\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux20~0\,
	regout => \via_dados|instancia_banco_registradores|banco~177_regout\);

-- Location: LC_X8_Y6_N3
\via_dados|instancia_banco_registradores|banco~241\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1082\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((D1L74Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(20))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- (\via_dados|instancia_banco_registradores|banco~177_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~177_regout\,
	datac => \via_dados|instancia_ula|Mux20~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1082\,
	regout => \via_dados|instancia_banco_registradores|banco~241_regout\);

-- Location: LC_X8_Y6_N4
\via_dados|instancia_banco_registradores|banco~209\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1083\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1082\ & (\via_dados|instancia_banco_registradores|banco~273_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1082\ & ((D1L42Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1082\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~273_regout\,
	datac => \via_dados|instancia_ula|Mux20~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1082\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1083\,
	regout => \via_dados|instancia_banco_registradores|banco~209_regout\);

-- Location: LC_X6_Y7_N7
\via_dados|instancia_banco_registradores|banco~274\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~274_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux19~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux19~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~274_regout\);

-- Location: LC_X7_Y7_N2
\via_dados|instancia_banco_registradores|banco~178\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux19~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1085\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~178_regout\ = DFFEAS(\via_dados|instancia_ula|Mux19~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1085\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux19~0\,
	regout => \via_dados|instancia_banco_registradores|banco~178_regout\);

-- Location: LC_X7_Y7_N8
\via_dados|instancia_banco_registradores|banco~210\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1084\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L43Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~178_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~178_regout\,
	datac => \via_dados|instancia_ula|Mux19~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1084\,
	regout => \via_dados|instancia_banco_registradores|banco~210_regout\);

-- Location: LC_X6_Y7_N5
\via_dados|instancia_banco_registradores|banco~242\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1085\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1084\ & (\via_dados|instancia_banco_registradores|banco~274_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1084\ & ((D1L75Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1084\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~274_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux19~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1084\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1085\,
	regout => \via_dados|instancia_banco_registradores|banco~242_regout\);

-- Location: LC_X6_Y7_N4
\via_dados|instancia_banco_registradores|banco~275\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~275_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux18~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux18~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~275_regout\);

-- Location: LC_X7_Y7_N6
\via_dados|instancia_banco_registradores|banco~179\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux18~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1087\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~179_regout\ = DFFEAS(\via_dados|instancia_ula|Mux18~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1087\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux18~0\,
	regout => \via_dados|instancia_banco_registradores|banco~179_regout\);

-- Location: LC_X8_Y7_N7
\via_dados|instancia_banco_registradores|banco~243\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1086\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((D1L76Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (\via_dados|instancia_banco_registradores|banco~179_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~179_regout\,
	datac => \via_dados|instancia_ula|Mux18~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1086\,
	regout => \via_dados|instancia_banco_registradores|banco~243_regout\);

-- Location: LC_X7_Y7_N5
\via_dados|instancia_banco_registradores|banco~211\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1087\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1086\ & (\via_dados|instancia_banco_registradores|banco~275_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1086\ & ((D1L44Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1086\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~275_regout\,
	datac => \via_dados|instancia_ula|Mux18~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1086\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1087\,
	regout => \via_dados|instancia_banco_registradores|banco~211_regout\);

-- Location: LC_X6_Y7_N3
\via_dados|instancia_banco_registradores|banco~276\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~276_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux17~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux17~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~276_regout\);

-- Location: LC_X7_Y7_N9
\via_dados|instancia_banco_registradores|banco~180\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux17~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1089\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~180_regout\ = DFFEAS(\via_dados|instancia_ula|Mux17~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1089\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux17~0\,
	regout => \via_dados|instancia_banco_registradores|banco~180_regout\);

-- Location: LC_X7_Y7_N1
\via_dados|instancia_banco_registradores|banco~212\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1088\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L45Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~180_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~180_regout\,
	datac => \via_dados|instancia_ula|Mux17~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1088\,
	regout => \via_dados|instancia_banco_registradores|banco~212_regout\);

-- Location: LC_X6_Y7_N0
\via_dados|instancia_banco_registradores|banco~244\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1089\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1088\ & (\via_dados|instancia_banco_registradores|banco~276_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1088\ & ((D1L77Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1088\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~276_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux17~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1088\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1089\,
	regout => \via_dados|instancia_banco_registradores|banco~244_regout\);

-- Location: LC_X7_Y4_N8
\via_dados|instancia_banco_registradores|banco~277\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~277_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux16~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux16~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~277_regout\);

-- Location: LC_X7_Y4_N2
\via_dados|instancia_banco_registradores|banco~181\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux16~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1091\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~181_regout\ = DFFEAS(\via_dados|instancia_ula|Mux16~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1091\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux16~0\,
	regout => \via_dados|instancia_banco_registradores|banco~181_regout\);

-- Location: LC_X7_Y5_N7
\via_dados|instancia_banco_registradores|banco~245\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1090\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (\via_dados|instancia_mem_instrucao|Instrucao\(21))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & (D1L78Q)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~181_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux16~0\,
	datad => \via_dados|instancia_banco_registradores|banco~181_regout\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1090\,
	regout => \via_dados|instancia_banco_registradores|banco~245_regout\);

-- Location: LC_X7_Y5_N8
\via_dados|instancia_banco_registradores|banco~213\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1091\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1090\ & (\via_dados|instancia_banco_registradores|banco~277_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1090\ & ((D1L46Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1090\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~277_regout\,
	datac => \via_dados|instancia_ula|Mux16~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1090\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1091\,
	regout => \via_dados|instancia_banco_registradores|banco~213_regout\);

-- Location: LC_X6_Y6_N0
\via_dados|instancia_banco_registradores|banco~278\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~278_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux15~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux15~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~278_regout\);

-- Location: LC_X7_Y6_N2
\via_dados|instancia_banco_registradores|banco~182\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux15~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1093\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~182_regout\ = DFFEAS(\via_dados|instancia_ula|Mux15~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1093\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux15~0\,
	regout => \via_dados|instancia_banco_registradores|banco~182_regout\);

-- Location: LC_X8_Y6_N0
\via_dados|instancia_banco_registradores|banco~214\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1092\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L47Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~182_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~182_regout\,
	datac => \via_dados|instancia_ula|Mux15~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1092\,
	regout => \via_dados|instancia_banco_registradores|banco~214_regout\);

-- Location: LC_X8_Y6_N1
\via_dados|instancia_banco_registradores|banco~246\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1093\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1092\ & (\via_dados|instancia_banco_registradores|banco~278_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1092\ & ((D1L79Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1092\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~278_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux15~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1092\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1093\,
	regout => \via_dados|instancia_banco_registradores|banco~246_regout\);

-- Location: LC_X7_Y6_N8
\via_dados|instancia_banco_registradores|banco~279\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~279_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux14~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux14~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~279_regout\);

-- Location: LC_X7_Y6_N1
\via_dados|instancia_banco_registradores|banco~183\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux14~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1095\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~183_regout\ = DFFEAS(\via_dados|instancia_ula|Mux14~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1095\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux14~0\,
	regout => \via_dados|instancia_banco_registradores|banco~183_regout\);

-- Location: LC_X7_Y5_N9
\via_dados|instancia_banco_registradores|banco~247\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1094\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (\via_dados|instancia_mem_instrucao|Instrucao\(21))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & (D1L80Q)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~183_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux14~0\,
	datad => \via_dados|instancia_banco_registradores|banco~183_regout\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1094\,
	regout => \via_dados|instancia_banco_registradores|banco~247_regout\);

-- Location: LC_X7_Y5_N6
\via_dados|instancia_banco_registradores|banco~215\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1095\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1094\ & (\via_dados|instancia_banco_registradores|banco~279_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1094\ & ((D1L48Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1094\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~279_regout\,
	datac => \via_dados|instancia_ula|Mux14~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1094\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1095\,
	regout => \via_dados|instancia_banco_registradores|banco~215_regout\);

-- Location: LC_X6_Y6_N9
\via_dados|instancia_banco_registradores|banco~280\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~280_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux13~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux13~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~280_regout\);

-- Location: LC_X7_Y6_N7
\via_dados|instancia_banco_registradores|banco~184\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux13~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1097\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~184_regout\ = DFFEAS(\via_dados|instancia_ula|Mux13~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1097\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux13~0\,
	regout => \via_dados|instancia_banco_registradores|banco~184_regout\);

-- Location: LC_X8_Y6_N7
\via_dados|instancia_banco_registradores|banco~216\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1096\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L49Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~184_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~184_regout\,
	datac => \via_dados|instancia_ula|Mux13~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1096\,
	regout => \via_dados|instancia_banco_registradores|banco~216_regout\);

-- Location: LC_X8_Y6_N8
\via_dados|instancia_banco_registradores|banco~248\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1097\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1096\ & (\via_dados|instancia_banco_registradores|banco~280_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1096\ & ((D1L81Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1096\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~280_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux13~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1096\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1097\,
	regout => \via_dados|instancia_banco_registradores|banco~248_regout\);

-- Location: LC_X5_Y5_N3
\via_dados|instancia_banco_registradores|banco~281\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~281_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux12~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux12~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~281_regout\);

-- Location: LC_X5_Y5_N2
\via_dados|instancia_banco_registradores|banco~185\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux12~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1099\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~185_regout\ = DFFEAS(\via_dados|instancia_ula|Mux12~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1099\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux12~0\,
	regout => \via_dados|instancia_banco_registradores|banco~185_regout\);

-- Location: LC_X6_Y5_N3
\via_dados|instancia_banco_registradores|banco~249\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1098\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((D1L82Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(20))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- (\via_dados|instancia_banco_registradores|banco~185_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~185_regout\,
	datac => \via_dados|instancia_ula|Mux12~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1098\,
	regout => \via_dados|instancia_banco_registradores|banco~249_regout\);

-- Location: LC_X6_Y5_N4
\via_dados|instancia_banco_registradores|banco~217\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1099\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1098\ & (\via_dados|instancia_banco_registradores|banco~281_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1098\ & ((D1L50Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1098\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~281_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux12~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1098\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1099\,
	regout => \via_dados|instancia_banco_registradores|banco~217_regout\);

-- Location: LC_X6_Y6_N1
\via_dados|instancia_banco_registradores|banco~282\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~282_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux11~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux11~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~282_regout\);

-- Location: LC_X6_Y6_N2
\via_dados|instancia_banco_registradores|banco~186\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux11~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1101\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~186_regout\ = DFFEAS(\via_dados|instancia_ula|Mux11~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1101\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux11~0\,
	regout => \via_dados|instancia_banco_registradores|banco~186_regout\);

-- Location: LC_X5_Y6_N3
\via_dados|instancia_banco_registradores|banco~218\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1100\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L51Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~186_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~186_regout\,
	datac => \via_dados|instancia_ula|Mux11~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1100\,
	regout => \via_dados|instancia_banco_registradores|banco~218_regout\);

-- Location: LC_X5_Y6_N0
\via_dados|instancia_banco_registradores|banco~250\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1101\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1100\ & (\via_dados|instancia_banco_registradores|banco~282_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1100\ & ((D1L83Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1100\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~282_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux11~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1100\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1101\,
	regout => \via_dados|instancia_banco_registradores|banco~250_regout\);

-- Location: LC_X6_Y6_N6
\via_dados|instancia_banco_registradores|banco~283\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~283_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux10~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux10~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~283_regout\);

-- Location: LC_X6_Y6_N5
\via_dados|instancia_banco_registradores|banco~187\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux10~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1103\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~187_regout\ = DFFEAS(\via_dados|instancia_ula|Mux10~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1103\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux10~0\,
	regout => \via_dados|instancia_banco_registradores|banco~187_regout\);

-- Location: LC_X7_Y5_N2
\via_dados|instancia_banco_registradores|banco~251\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1102\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (\via_dados|instancia_mem_instrucao|Instrucao\(21))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & (D1L84Q)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~187_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux10~0\,
	datad => \via_dados|instancia_banco_registradores|banco~187_regout\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1102\,
	regout => \via_dados|instancia_banco_registradores|banco~251_regout\);

-- Location: LC_X7_Y5_N3
\via_dados|instancia_banco_registradores|banco~219\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1103\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1102\ & (\via_dados|instancia_banco_registradores|banco~283_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1102\ & ((D1L52Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1102\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~283_regout\,
	datac => \via_dados|instancia_ula|Mux10~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1102\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1103\,
	regout => \via_dados|instancia_banco_registradores|banco~219_regout\);

-- Location: LC_X8_Y7_N5
\via_dados|instancia_banco_registradores|banco~284\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~284_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux9~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux9~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~284_regout\);

-- Location: LC_X7_Y7_N4
\via_dados|instancia_banco_registradores|banco~188\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux9~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1105\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~188_regout\ = DFFEAS(\via_dados|instancia_ula|Mux9~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1105\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux9~0\,
	regout => \via_dados|instancia_banco_registradores|banco~188_regout\);

-- Location: LC_X7_Y7_N7
\via_dados|instancia_banco_registradores|banco~220\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1104\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L53Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~188_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~188_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux9~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1104\,
	regout => \via_dados|instancia_banco_registradores|banco~220_regout\);

-- Location: LC_X8_Y7_N1
\via_dados|instancia_banco_registradores|banco~252\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1105\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1104\ & (\via_dados|instancia_banco_registradores|banco~284_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1104\ & ((D1L85Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1104\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~284_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux9~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1104\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1105\,
	regout => \via_dados|instancia_banco_registradores|banco~252_regout\);

-- Location: LC_X7_Y6_N3
\via_dados|instancia_banco_registradores|banco~285\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~285_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux8~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux8~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~285_regout\);

-- Location: LC_X7_Y6_N6
\via_dados|instancia_banco_registradores|banco~189\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux8~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1107\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~189_regout\ = DFFEAS(\via_dados|instancia_ula|Mux8~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1107\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux8~0\,
	regout => \via_dados|instancia_banco_registradores|banco~189_regout\);

-- Location: LC_X7_Y5_N4
\via_dados|instancia_banco_registradores|banco~253\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1106\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (\via_dados|instancia_mem_instrucao|Instrucao\(21))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & (D1L86Q)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~189_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux8~0\,
	datad => \via_dados|instancia_banco_registradores|banco~189_regout\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1106\,
	regout => \via_dados|instancia_banco_registradores|banco~253_regout\);

-- Location: LC_X7_Y5_N5
\via_dados|instancia_banco_registradores|banco~221\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1107\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1106\ & (\via_dados|instancia_banco_registradores|banco~285_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1106\ & ((D1L54Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1106\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~285_regout\,
	datac => \via_dados|instancia_ula|Mux8~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1106\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1107\,
	regout => \via_dados|instancia_banco_registradores|banco~221_regout\);

-- Location: LC_X7_Y6_N0
\via_dados|instancia_banco_registradores|banco~286\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~286_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux7~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux7~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~286_regout\);

-- Location: LC_X7_Y6_N5
\via_dados|instancia_banco_registradores|banco~190\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux7~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1109\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~190_regout\ = DFFEAS(\via_dados|instancia_ula|Mux7~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1109\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux7~0\,
	regout => \via_dados|instancia_banco_registradores|banco~190_regout\);

-- Location: LC_X8_Y6_N2
\via_dados|instancia_banco_registradores|banco~222\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1108\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_mem_instrucao|Instrucao\(20))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((D1L55Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (\via_dados|instancia_banco_registradores|banco~190_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~190_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux7~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1108\,
	regout => \via_dados|instancia_banco_registradores|banco~222_regout\);

-- Location: LC_X8_Y6_N5
\via_dados|instancia_banco_registradores|banco~254\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1109\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1108\ & (\via_dados|instancia_banco_registradores|banco~286_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1108\ & ((D1L87Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1108\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~286_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux7~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1108\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1109\,
	regout => \via_dados|instancia_banco_registradores|banco~254_regout\);

-- Location: LC_X6_Y6_N3
\via_dados|instancia_banco_registradores|banco~287\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~287_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux6~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux6~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~287_regout\);

-- Location: LC_X6_Y6_N8
\via_dados|instancia_banco_registradores|banco~191\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux6~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1111\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~191_regout\ = DFFEAS(\via_dados|instancia_ula|Mux6~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1111\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux6~0\,
	regout => \via_dados|instancia_banco_registradores|banco~191_regout\);

-- Location: LC_X5_Y6_N1
\via_dados|instancia_banco_registradores|banco~255\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1110\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((D1L88Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (\via_dados|instancia_banco_registradores|banco~191_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~191_regout\,
	datac => \via_dados|instancia_ula|Mux6~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1110\,
	regout => \via_dados|instancia_banco_registradores|banco~255_regout\);

-- Location: LC_X5_Y6_N2
\via_dados|instancia_banco_registradores|banco~223\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1111\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1110\ & (\via_dados|instancia_banco_registradores|banco~287_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1110\ & ((D1L56Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1110\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~287_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux6~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1110\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1111\,
	regout => \via_dados|instancia_banco_registradores|banco~223_regout\);

-- Location: LC_X5_Y5_N4
\via_dados|instancia_banco_registradores|banco~288\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~288_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux5~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux5~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~288_regout\);

-- Location: LC_X5_Y5_N5
\via_dados|instancia_banco_registradores|banco~192\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux5~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1113\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~192_regout\ = DFFEAS(\via_dados|instancia_ula|Mux5~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1113\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux5~0\,
	regout => \via_dados|instancia_banco_registradores|banco~192_regout\);

-- Location: LC_X6_Y5_N0
\via_dados|instancia_banco_registradores|banco~224\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1112\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L57Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~192_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~192_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux5~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1112\,
	regout => \via_dados|instancia_banco_registradores|banco~224_regout\);

-- Location: LC_X6_Y5_N1
\via_dados|instancia_banco_registradores|banco~256\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1113\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1112\ & (\via_dados|instancia_banco_registradores|banco~288_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1112\ & ((D1L89Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1112\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~288_regout\,
	datac => \via_dados|instancia_ula|Mux5~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1112\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1113\,
	regout => \via_dados|instancia_banco_registradores|banco~256_regout\);

-- Location: LC_X4_Y6_N1
\via_dados|instancia_banco_registradores|banco~289\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~289_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux4~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux4~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~289_regout\);

-- Location: LC_X4_Y6_N0
\via_dados|instancia_banco_registradores|banco~193\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux4~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1115\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~193_regout\ = DFFEAS(\via_dados|instancia_ula|Mux4~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1115\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux4~0\,
	regout => \via_dados|instancia_banco_registradores|banco~193_regout\);

-- Location: LC_X5_Y6_N6
\via_dados|instancia_banco_registradores|banco~257\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1114\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((D1L90Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (\via_dados|instancia_banco_registradores|banco~193_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~193_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux4~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1114\,
	regout => \via_dados|instancia_banco_registradores|banco~257_regout\);

-- Location: LC_X5_Y6_N7
\via_dados|instancia_banco_registradores|banco~225\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1115\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1114\ & (\via_dados|instancia_banco_registradores|banco~289_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1114\ & ((D1L58Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1114\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~289_regout\,
	datac => \via_dados|instancia_ula|Mux4~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1114\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1115\,
	regout => \via_dados|instancia_banco_registradores|banco~225_regout\);

-- Location: LC_X5_Y5_N7
\via_dados|instancia_banco_registradores|banco~290\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~290_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux3~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux3~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~290_regout\);

-- Location: LC_X5_Y5_N6
\via_dados|instancia_banco_registradores|banco~194\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux3~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1117\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~194_regout\ = DFFEAS(\via_dados|instancia_ula|Mux3~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1117\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux3~0\,
	regout => \via_dados|instancia_banco_registradores|banco~194_regout\);

-- Location: LC_X6_Y5_N2
\via_dados|instancia_banco_registradores|banco~226\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1116\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L59Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~194_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~194_regout\,
	datac => \via_dados|instancia_ula|Mux3~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1116\,
	regout => \via_dados|instancia_banco_registradores|banco~226_regout\);

-- Location: LC_X6_Y5_N8
\via_dados|instancia_banco_registradores|banco~258\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1117\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1116\ & (\via_dados|instancia_banco_registradores|banco~290_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1116\ & ((D1L91Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1116\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~290_regout\,
	datac => \via_dados|instancia_ula|Mux3~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1116\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1117\,
	regout => \via_dados|instancia_banco_registradores|banco~258_regout\);

-- Location: LC_X6_Y6_N7
\via_dados|instancia_banco_registradores|banco~291\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~291_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux2~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux2~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~291_regout\);

-- Location: LC_X6_Y6_N4
\via_dados|instancia_banco_registradores|banco~195\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux2~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1119\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~195_regout\ = DFFEAS(\via_dados|instancia_ula|Mux2~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1119\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux2~0\,
	regout => \via_dados|instancia_banco_registradores|banco~195_regout\);

-- Location: LC_X5_Y6_N4
\via_dados|instancia_banco_registradores|banco~259\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1118\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((D1L92Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (\via_dados|instancia_banco_registradores|banco~195_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~195_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux2~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1118\,
	regout => \via_dados|instancia_banco_registradores|banco~259_regout\);

-- Location: LC_X5_Y6_N5
\via_dados|instancia_banco_registradores|banco~227\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1119\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1118\ & (\via_dados|instancia_banco_registradores|banco~291_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1118\ & ((D1L60Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1118\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_banco_registradores|banco~291_regout\,
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datac => \via_dados|instancia_ula|Mux2~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1118\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1119\,
	regout => \via_dados|instancia_banco_registradores|banco~227_regout\);

-- Location: LC_X5_Y5_N1
\via_dados|instancia_banco_registradores|banco~292\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~292_regout\ = DFFEAS((((\via_dados|instancia_ula|Mux1~0\))), GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \via_dados|instancia_ula|Mux1~0\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~292_regout\);

-- Location: LC_X5_Y5_N9
\via_dados|instancia_banco_registradores|banco~196\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux1~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1121\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~196_regout\ = DFFEAS(\via_dados|instancia_ula|Mux1~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1121\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux1~0\,
	regout => \via_dados|instancia_banco_registradores|banco~196_regout\);

-- Location: LC_X6_Y5_N9
\via_dados|instancia_banco_registradores|banco~228\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1120\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((D1L61Q) # (\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- (\via_dados|instancia_banco_registradores|banco~196_regout\ & ((!\via_dados|instancia_mem_instrucao|Instrucao\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~196_regout\,
	datac => \via_dados|instancia_ula|Mux1~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1120\,
	regout => \via_dados|instancia_banco_registradores|banco~228_regout\);

-- Location: LC_X6_Y5_N5
\via_dados|instancia_banco_registradores|banco~260\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1121\ = (\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((\via_dados|instancia_banco_registradores|banco~1120\ & (\via_dados|instancia_banco_registradores|banco~292_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1120\ & ((D1L93Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (((\via_dados|instancia_banco_registradores|banco~1120\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datab => \via_dados|instancia_banco_registradores|banco~292_regout\,
	datac => \via_dados|instancia_ula|Mux1~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1120\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1121\,
	regout => \via_dados|instancia_banco_registradores|banco~260_regout\);

-- Location: LC_X5_Y5_N8
\via_dados|instancia_banco_registradores|banco~293\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~293_regout\ = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1125_combout\, \via_dados|instancia_ula|Mux0~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \via_dados|instancia_ula|Mux0~0\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \via_dados|instancia_banco_registradores|banco~293_regout\);

-- Location: LC_X5_Y5_N0
\via_dados|instancia_banco_registradores|banco~197\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_ula|Mux0~0\ = (\via_dados|instancia_ula|Mux29~0_combout\ & (\via_dados|instancia_banco_registradores|banco~1123\ & ((\via_dados|instancia_mem_instrucao|Instrucao\(21)) # (!\via_dados|instancia_mem_instrucao|Instrucao\(0)))))
-- \via_dados|instancia_banco_registradores|banco~197_regout\ = DFFEAS(\via_dados|instancia_ula|Mux0~0\, GLOBAL(\Clock~combout\), VCC, , \via_dados|instancia_banco_registradores|banco~1127_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(0),
	datab => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	datac => \via_dados|instancia_ula|Mux29~0_combout\,
	datad => \via_dados|instancia_banco_registradores|banco~1123\,
	aclr => GND,
	ena => \via_dados|instancia_banco_registradores|banco~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_ula|Mux0~0\,
	regout => \via_dados|instancia_banco_registradores|banco~197_regout\);

-- Location: LC_X6_Y5_N6
\via_dados|instancia_banco_registradores|banco~261\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1122\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_mem_instrucao|Instrucao\(21))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & 
-- ((\via_dados|instancia_mem_instrucao|Instrucao\(21) & ((D1L94Q))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(21) & (\via_dados|instancia_banco_registradores|banco~197_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~197_regout\,
	datac => \via_dados|instancia_ula|Mux0~0\,
	datad => \via_dados|instancia_mem_instrucao|Instrucao\(21),
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1122\,
	regout => \via_dados|instancia_banco_registradores|banco~261_regout\);

-- Location: LC_X6_Y5_N7
\via_dados|instancia_banco_registradores|banco~229\ : maxv_lcell
-- Equation(s):
-- \via_dados|instancia_banco_registradores|banco~1123\ = (\via_dados|instancia_mem_instrucao|Instrucao\(20) & ((\via_dados|instancia_banco_registradores|banco~1122\ & (\via_dados|instancia_banco_registradores|banco~293_regout\)) # 
-- (!\via_dados|instancia_banco_registradores|banco~1122\ & ((D1L62Q))))) # (!\via_dados|instancia_mem_instrucao|Instrucao\(20) & (((\via_dados|instancia_banco_registradores|banco~1122\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \via_dados|instancia_mem_instrucao|Instrucao\(20),
	datab => \via_dados|instancia_banco_registradores|banco~293_regout\,
	datac => \via_dados|instancia_ula|Mux0~0\,
	datad => \via_dados|instancia_banco_registradores|banco~1122\,
	aclr => GND,
	sload => VCC,
	ena => \via_dados|instancia_banco_registradores|banco~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \via_dados|instancia_banco_registradores|banco~1123\,
	regout => \via_dados|instancia_banco_registradores|banco~229_regout\);

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux31~2\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux30~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(1));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux29~1\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux28~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux27~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(4));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux26~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(5));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux25~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux24~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(7));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux23~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(8));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux22~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(9));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux21~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(10));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux20~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(11));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux19~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(12));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux18~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(13));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux17~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(14));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux16~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(15));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux15~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(16));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux14~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(17));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux13~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(18));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux12~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(19));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux11~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(20));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux10~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(21));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux9~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(22));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux8~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(23));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux7~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(24));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux6~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(25));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux5~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(26));

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux4~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(27));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux3~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(28));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux2~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(29));

-- Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux1~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(30));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Leds_vermelhos_saida[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \via_dados|instancia_ula|Mux0~0\,
	oe => VCC,
	padio => ww_Leds_vermelhos_saida(31));
END structure;


