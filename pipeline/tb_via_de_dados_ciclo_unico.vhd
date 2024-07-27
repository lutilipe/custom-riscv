LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY tb_via_de_dados_ciclo_unico IS
END tb_via_de_dados_ciclo_unico;

ARCHITECTURE behavior OF tb_via_de_dados_ciclo_unico IS

    COMPONENT via_de_dados_ciclo_unico
    GENERIC (
        dp_ctrl_bus_width : NATURAL := 32;
        data_width        : NATURAL := 32;
        pc_width          : NATURAL := 13;
        fr_addr_width     : NATURAL := 5;
        ula_ctrl_width    : NATURAL := 4;
        instr_width       : NATURAL := 32
    );
    PORT(
        clock    : IN std_logic;
        reset    : IN std_logic;
        branch   : IN std_logic;
        jump     : IN std_logic;
        memRead  : IN std_logic;
        memWrite : IN std_logic;
        regWrite : IN std_logic;
        ALUSrc   : IN std_logic;
        memToReg : IN std_logic;
        pcWrite  : IN std_logic;
        ALUOp    : IN std_logic_vector(3 DOWNTO 0);
        opcode   : OUT std_logic_vector(6 DOWNTO 0);
        funct3   : OUT std_logic_vector(14 DOWNTO 12);
        funct7   : OUT std_logic_vector(31 DOWNTO 25);
        saida    : OUT std_logic_vector(31 DOWNTO 0)
    );
    END COMPONENT;

    SIGNAL clock    : std_logic := '0';
    SIGNAL reset    : std_logic := '0';
    SIGNAL branch   : std_logic := '0';
    SIGNAL jump     : std_logic := '0';
    SIGNAL memRead  : std_logic := '0';
    SIGNAL memWrite : std_logic := '0';
    SIGNAL regWrite : std_logic := '0';
    SIGNAL ALUSrc   : std_logic := '0';
    SIGNAL memToReg : std_logic := '0';
    SIGNAL pcWrite  : std_logic := '0';
    SIGNAL ALUOp    : std_logic_vector(3 DOWNTO 0) := (others => '0');


    SIGNAL opcode   : std_logic_vector(6 DOWNTO 0);
    SIGNAL funct3   : std_logic_vector(14 DOWNTO 12);
    SIGNAL funct7   : std_logic_vector(31 DOWNTO 25);
    SIGNAL saida    : std_logic_vector(31 DOWNTO 0);


    CONSTANT clock_period : time := 10 ns;

BEGIN


    uut: via_de_dados_ciclo_unico
    GENERIC MAP (
        dp_ctrl_bus_width => 32,
        data_width        => 32,
        pc_width          => 13,
        fr_addr_width     => 5,
        ula_ctrl_width    => 4,
        instr_width       => 32
    )
    PORT MAP (
        clock    => clock,
        reset    => reset,
        branch   => branch,
        jump     => jump,
        memRead  => memRead,
        memWrite => memWrite,
        regWrite => regWrite,
        ALUSrc   => ALUSrc,
        memToReg => memToReg,
        pcWrite  => pcWrite,
        ALUOp    => ALUOp,
        opcode   => opcode,
        funct3   => funct3,
        funct7   => funct7,
        saida    => saida
    );


    clock_process :process
    begin
        clock <= '0';
        wait for clock_period/2;
        clock <= '1';
        wait for clock_period/2;
    end process;

    stim_proc: process
    begin		

        reset <= '1';
        wait for clock_period;	
        reset <= '0';
		  
		  wait for clock_period;
		  
		  -- Control output for addi x6, x0, 3 (00000000001100000000001100010011)
        pcWrite <= '1';
        branch <= '0';
        jump <= '0';
        memRead <= '0';
        memWrite <= '0';
        regWrite <= '1';
        ALUSrc <= '1';
        memToReg <= '0';
        ALUOp <= "0010"; 
		  
		  wait for clock_period;

        -- Control output for add x6, x6, x6 (00000000001100000000001100010011)
        pcWrite <= '1';
        branch <= '0';
        jump <= '0';
        memRead <= '0';
        memWrite <= '0';
        regWrite <= '1';
        ALUSrc <= '0';
        memToReg <= '0';
        ALUOp <= "0010";
		  
        wait for 100 ns;
    end process;

END;
