-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
library IEEE;
use IEEE.std_logic_1164.all;

entity processador_ciclo_unico is
    generic (
        DATA_WIDTH : NATURAL := 32 -- tamanho do barramento de dados em bits
    );
    port (
        -- Chaves_entrada           : in std_logic_vector(DATA_WIDTH-1 downto 0);
        -- Chave_enter              : in std_logic;
        Leds_vermelhos_saida : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        Chave_reset          : in std_logic;
        Clock                : in std_logic
    );
end processador_ciclo_unico;

architecture comportamento of processador_ciclo_unico is
    signal branch, jump, memRead, memWrite, regWrite, ALUSrc, memToReg, pcWrite : std_logic;
    signal ALUOp : std_logic_vector(3 downto 0);
    signal opcode : std_logic_vector(6 downto 0);
    signal funct3 : std_logic_vector(14 downto 12);
    signal funct7 : std_logic_vector(31 downto 25);
    signal saida : std_logic_vector(DATA_WIDTH - 1 downto 0);

    -- Component declarations
    component via_de_dados_ciclo_unico is
        generic (
            dp_ctrl_bus_width : NATURAL := 32; -- tamanho do barramento de controle da via de dados (DP) em bits
            data_width        : NATURAL := 32; -- tamanho do dado em bits
            pc_width          : NATURAL := 13; -- tamanho da entrada de endereços da MI ou MP em bits (memi.vhd)
            fr_addr_width     : NATURAL := 5; -- tamanho da linha de endereços do banco de registradores em bits
            ula_ctrl_width    : NATURAL := 4; -- tamanho da linha de controle da ULA
            instr_width       : NATURAL := 32 -- tamanho da instrução em bits
        );
        port (
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
            ALUOp    : IN std_logic_vector(ula_ctrl_width - 1 DOWNTO 0);
            opcode   : OUT std_logic_vector(6 DOWNTO 0);
            funct3   : OUT std_logic_vector(14 DOWNTO 12);
            funct7   : OUT std_logic_vector(31 DOWNTO 25);
            saida    : OUT std_logic_vector(data_width - 1 downto 0)
        );
    end component;

    component unidade_de_controle_ciclo_unico is
        port (
            opcode                                  :   in std_logic_vector(6 downto 0);
            funct3                                  :   in std_logic_vector(14 downto 12);
            funct7                                  :   in std_logic_vector(31 downto 25);
            -- saidas
            -- sinais enviados para multiplexadores
            ALUSrc, jump                            :   out std_logic;
            memToReg                                :   out std_logic;
            -- sinal para instrucao b
            branch                                  :   out std_logic;
            -- sinal para blocos
            regWrite, memWrite, memRead, pcWrite    :   out std_logic;
            ALUOp                                   :   out std_logic_vector(3 downto 0)
        );
    end component;

begin
	-- A partir deste comentário instancie todos o componentes que serão usados no seu processador_ciclo_unico.
	-- A instanciação do componente deve começar com um nome que você deve atribuir para a referida instancia seguido de : e seguido do nome
	-- que você atribuiu ao componente.
	-- Depois segue o port map do referido componente instanciado.
	-- Para fazer o port map, na parte da esquerda da atribuição "=>" deverá vir o nome de origem da porta do componente e na parte direita da 
	-- atribuição deve aparecer um dos sinais ("fios") que você definiu anteriormente, ou uma das entradas da entidade processador_ciclo_unico,
	-- ou ainda uma das saídas da entidade processador_ciclo_unico.
	-- Veja os exemplos de instanciação a seguir:

    via_dados : via_de_dados_ciclo_unico
        port map (
            clock    => Clock,
            reset    => Chave_reset,
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

    controle : unidade_de_controle_ciclo_unico
        port map (
            opcode   => opcode,
            funct3   => funct3,
            funct7   => funct7,
            ALUSrc   => ALUSrc,
            jump     => jump,
            memToReg => memToReg,
            branch   => branch,
            regWrite => regWrite,
            memWrite => memWrite,
            memRead  => memRead,
            pcWrite  => pcWrite,
            ALUOp    => ALUOp
        );

    Leds_vermelhos_saida <= saida;

end comportamento;
