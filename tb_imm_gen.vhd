LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY tb_imm_gen IS
END tb_imm_gen;

ARCHITECTURE comportamental OF tb_imm_gen IS
    COMPONENT imm_gen
    GENERIC (
        data_width  : NATURAL := 32;
        instr_width : NATURAL := 32
    );
    PORT (
        instrucao   : IN std_logic_vector(instr_width - 1 DOWNTO 0);
        imm_out     : OUT std_logic_vector(data_width - 1 DOWNTO 0)
    );
    END COMPONENT;

    SIGNAL instrucao   : std_logic_vector(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL imm_out     : std_logic_vector(31 DOWNTO 0);

BEGIN
    uut: imm_gen
    PORT MAP (
        instrucao   => instrucao,
        imm_out     => imm_out
    );

    stim_proc: PROCESS
    BEGIN
        -- I-type instruction (opcode 0010011)
        instrucao <= "00000000000100000000000010010011"; -- example I-type instruction
        WAIT FOR 10 ns;
        -- Check the output for I-type
        ASSERT imm_out = "00000000000000000000000000000001" REPORT "Test I-type failed" SEVERITY ERROR;

        -- S-type instruction (opcode 0100011)
        instrucao <= "00000000000100000000001010100011"; -- example S-type instruction
        WAIT FOR 10 ns;
        -- Check the output for S-type
        ASSERT imm_out = "00000000000000000000000000000001" REPORT "Test S-type failed" SEVERITY ERROR;

        -- B-type instruction (opcode 1100011)
        instrucao <= "00000000000100000000000011100011"; -- example B-type instruction
        WAIT FOR 10 ns;
        -- Check the output for B-type
        ASSERT imm_out = "00000000000000000000000000000010" REPORT "Test B-type failed" SEVERITY ERROR;

        -- U-type (LUI) instrucao (opcode 0110111)
        instrucao <= "00000000000000000000000001101111"; -- example U-type (LUI) instrucao
        WAIT FOR 10 ns;
        -- Check the output for U-type (LUI)
        ASSERT imm_out = "00000000000000000000000000000000" REPORT "Test U-type (LUI) failed" SEVERITY ERROR;

        -- U-type (AUIPC) instrucao (opcode 0010111)
        instrucao <= "00000000000000000000000000101111"; -- example U-type (AUIPC) instrucao
        WAIT FOR 10 ns;
        -- Check the output for U-type (AUIPC)
        ASSERT imm_out = "00000000000000000000000000000000" REPORT "Test U-type (AUIPC) failed" SEVERITY ERROR;

        -- J-type instruction (opcode 1101111)
        instrucao <= "00000000000000000000000011011111"; -- example J-type instruction
        WAIT FOR 10 ns;
        -- Check the output for J-type
        ASSERT imm_out = "00000000000000000000000000000010" REPORT "Test J-type failed" SEVERITY ERROR;

        WAIT;
    END PROCESS;

END comportamental;
