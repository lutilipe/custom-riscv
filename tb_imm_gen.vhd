LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_imm_gen IS
END tb_imm_gen;

ARCHITECTURE behavior OF tb_imm_gen IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT imm_gen
    GENERIC (
        data_width  : NATURAL;
        instr_width : NATURAL
    );
    PORT(
        instrucao : IN std_logic_vector(instr_width - 1 DOWNTO 0);
        imm_out   : OUT std_logic_vector(data_width - 1 DOWNTO 0)
    );
    END COMPONENT;
    
    -- Signals for simulation
    SIGNAL instrucao : std_logic_vector(31 DOWNTO 0);
    SIGNAL imm_out   : std_logic_vector(31 DOWNTO 0);

    -- Constants
    CONSTANT data_width  : NATURAL := 32;
    CONSTANT instr_width : NATURAL := 32;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: imm_gen
    GENERIC MAP (
        data_width  => data_width,
        instr_width => instr_width
    )
    PORT MAP (
        instrucao => instrucao,
        imm_out   => imm_out
    );

    -- Testbench process
    stim_proc: PROCESS
    BEGIN        
        -- Test I-type instruction
        instrucao <= "00000000000100000000000010010011"; -- Opcode: 0010011, Immediate: 1
        -- Check imm_out for I-type
        assert imm_out = "00000000000000000000000000000001" 
        report "I-type instruction failed" severity error;
		  WAIT FOR 10 ns;

        -- Test S-type instruction
        instrucao <= "00000000000000000000100010100011"; -- Opcode: 0100011, Immediate: 17
        -- Check imm_out for S-type
        assert imm_out = "00000000000000000000000000010001" 
        report "S-type instruction failed" severity error;
		  WAIT FOR 10 ns;

        -- Test B-type instruction
        instrucao <= "00000000000000000000100011100011"; -- Opcode: 1100011, Immediate: 17
        -- Check imm_out for B-type
        assert imm_out = "00000000000000000000000000010001" 
        report "B-type instruction failed" severity error;
		  WAIT FOR 10 ns;

        -- Test J-type instruction
        instrucao <= "00000000000100000001000011101111"; -- Opcode: 1101111, Immediate: 257
        -- Check imm_out for J-type
        assert imm_out = "00000000000000000000000100000001" 
        report "J-type instruction failed" severity error;
		  WAIT FOR 10 ns;

        -- Test UJ-type instruction
        instrucao <= "00000000001100000000000001100111"; -- Opcode: 1100111, Immediate: 3
        -- Check imm_out for UJ-type
        assert imm_out = "00000000000000000000000000000001" 
        report "UJ-type instruction failed" severity error;
		  WAIT FOR 10 ns;

        -- Test default case
        instrucao <= "11111111111111111111111111111111"; -- Opcode: Others
        assert imm_out = "00000000000000000000000000000000" 
        report "Default case failed" severity error;
		  WAIT FOR 10 ns;

        WAIT;
    END PROCESS;

END behavior;
