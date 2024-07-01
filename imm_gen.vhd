LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY imm_gen IS
	GENERIC (
		data_width  : NATURAL;
      instr_width : NATURAL
	);
	PORT (
		instrucao   : IN std_logic_vector(instr_width - 1 DOWNTO 0);
		imm_out     : OUT std_logic_vector(data_width - 1 DOWNTO 0)
	);
END imm_gen;

ARCHITECTURE comportamental OF imm_gen IS
	SIGNAL opcode : std_logic_vector(6 DOWNTO 0);
	SIGNAL imm_i  : std_logic_vector(31 DOWNTO 0);
	SIGNAL imm_s  : std_logic_vector(31 DOWNTO 0);
	SIGNAL imm_b  : std_logic_vector(31 DOWNTO 0);
	SIGNAL imm_u  : std_logic_vector(31 DOWNTO 0);
	SIGNAL imm_j  : std_logic_vector(31 DOWNTO 0);
BEGIN
	opcode <= instrucao(6 DOWNTO 0);

	imm_i <= instrucao(31 DOWNTO 20) & "00000000000000000000";

	imm_s <= instrucao(31 DOWNTO 25) & "0000000000000" & instrucao(11 DOWNTO 7) & "0000000";

	imm_b <= instrucao(31 DOWNTO 25) & "0000000000000" & instrucao(11 DOWNTO 7) & "0000000";

	imm_j <= instrucao(31 DOWNTO 12) & "000000000000";

	PROCESS (opcode, instrucao, imm_i, imm_s, imm_b, imm_j)
	BEGIN
		CASE opcode IS
			WHEN "0010011" => -- I-type
				imm_out <= imm_i;
			WHEN "1100111" => -- UJ-type (JALR)
				imm_out <= imm_i;
			WHEN "0100011" => -- S-type
				imm_out <= imm_s;
			WHEN "1100011" => -- B-type
				imm_out <= imm_b;
			WHEN "1101111" => -- J-type
				imm_out <= imm_j;
			WHEN OTHERS => 
				imm_out <= (OTHERS => '0');
		END CASE;
	END PROCESS;
END comportamental;