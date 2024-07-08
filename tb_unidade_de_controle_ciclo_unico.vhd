library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_unidade_de_controle_ciclo_unico is
end tb_unidade_de_controle_ciclo_unico;

architecture behavior of tb_unidade_de_controle_ciclo_unico is

    component unidade_de_controle_ciclo_unico is
        port(
            -- entradas
            opcode      : in std_logic_vector(6 downto 0);
            funct3      : in std_logic_vector(14 downto 12);
            funct7      : in std_logic_vector(31 downto 25);
            -- saidas
            ALUSrc      : out std_logic;
            jump        : out std_logic;
            memToReg    : out std_logic;
            branch      : out std_logic;
            regWrite    : out std_logic;
            memWrite    : out std_logic;
            memRead     : out std_logic;
            pcWrite     : out std_logic;
            ALUOp       : out std_logic_vector(3 downto 0)
        );
    end component;

    signal opcode    : std_logic_vector(6 downto 0);
    signal funct3    : std_logic_vector(14 downto 12);
    signal funct7    : std_logic_vector(31 downto 25);
    signal ALUSrc    : std_logic;
    signal jump      : std_logic;
    signal memToReg  : std_logic;
    signal branch    : std_logic;
    signal regWrite  : std_logic;
    signal memWrite  : std_logic;
    signal memRead   : std_logic;
    signal pcWrite   : std_logic;
    signal ALUOp     : std_logic_vector(3 downto 0);

begin
    uut: unidade_de_controle_ciclo_unico
        port map(
            opcode     => opcode,
            funct3     => funct3,
            funct7     => funct7,
            ALUSrc     => ALUSrc,
            jump       => jump,
            memToReg   => memToReg,
            branch     => branch,
            regWrite   => regWrite,
            memWrite   => memWrite,
            memRead    => memRead,
            pcWrite    => pcWrite,
            ALUOp      => ALUOp
        );

    stim_proc: process
    begin
        -- Teste add (opcode = "0110011")
        opcode <= "0110011";
        funct3 <= "000";
        funct7 <= "0000000";
        wait for 50 ns;

		 -- Teste addi (opcode = "0010011")
        opcode <= "0010011";
        funct3 <= "000";
        funct7 <= "0000000";
        wait for 10 ns;

        wait;
    end process;

end behavior;
