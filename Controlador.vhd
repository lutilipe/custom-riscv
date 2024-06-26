library ieee;
use ieee.std_logic_1164.all;

-- esse arquivo irá certificar que todos os componentes do datapath estejam funcionando
-- corretamente, ademais irá certificar que os sinais cheguem aos componentes corretos.
-- ALU Control
-- adição: 0010
-- subtração: 0110
-- and: 0000
-- OR: 0001
-- XOR: 1100
-- Less than: 0111
-- More than: 1001
-- Deslocamento a esquerda: 1010
-- Deslocamento a direita: 0101

entity controlador is
    port(
        -- entradas
        opcode                                  :   in std_logic_vector(6 downto 0);
        funct3                                  :   in std_logic_vector(14 downto 12);
        funct7                                  :   in std_logic_vector(31 downto 25);
        --saidas
        --sinais enviados para multiplexadores
        imm, jump                         		:   out std_logic;
        memToReg                                :   out std_logic;
        --sinal para instrucao b
        branch                                  :   out std_logic;
        --sinal para blocos
        regWrite, memWrite, memRead, load_len   :   out std_logic;
        ALUOP                                   :   out std_logic_vector(3 downto 0)
    );
end entity controlador;

architecture behavior of controlador is
    --concatenatar functs
    --signal funct  : std_logic_vector(9 downto 0) := funct7 & funct3;

    begin
        process(opcode, funct7 , funct3)
		  variable funct : std_logic_vector(9 downto 0);
            begin
				funct := funct7 & funct3;
                case opcode is	
                    when "0000001" =>   -- lw,lb
                        imm <= '1';
                        regWrite <= '1';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= '1';
                        jump <= '0';
                        memRead <= '1';
                        ALUOP <="0010"; --somar
                        case funct3 is
                            when "000" => load_len <= "1"; --lb
                            when "010" => load_len <= "0"; --lw
                            when others => load_len <= "0"; --lw
                        end case;
                    
                    when "0010001" =>   -- instrucao tipo i
                        imm <= '1';
                        regWrite <= '1';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= "0";
                        jump <= '0';
                        memRead <= "0";
                        load_len <= "0";
                        case funct3 is
                            when "000" => ALUOP <= "0010";  -- addi usar adição
                            when "010" => ALUOP <= "0111";  -- slti usar menor que
                            when "100" => ALUOP <= "1100";  -- xori usar xor
                            when "110" => ALUOP <= "0001";  -- ori usar or
                            when "111" => ALUOP <= "0000";  -- andi usar and
                            when "001" => ALUOP <= "1010";  -- slli usar deslocamento
                            when others => ALUOP <= "1111"; -- nao faz nada
                        end case;


                    when "0110000" =>   -- instrucao tipo R
                        imm <= '0';
                        regWrite <= '1';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= '0';
                        jump <= '0';
                        memRead <= '0';
                        load_len <= '0';
                        --definir operação da alu
                        case funct is
                            when "0000000000" => ALUOP <= "0010";  -- adição
                            when "0000100000" => ALUOP <= "0110"; -- subtração                                
                            when "0000000010" => ALUOP <= "0111"; -- slt, sltu
                            when "0000000100" => ALUOP <= "1100"; -- xor
                            when "0000000101" => ALUOP <= "0101"; -- srl, sra
                            when "0000000111" => ALUOP <= "0000"; -- and
                            when "0000000110" => ALUOP <= "0001"; -- or
                            when others => ALUOP <= "1111"; -- nao faz nada
                        end case;

                    when "0100001" =>   -- instrucao tipo S
                        imm <= '1';
                        regWrite <= '0';
                        branch <= '0';
                        memWrite <= '1';
                        memToReg <= '0';
                        jump <= '0';
                        memRead <= '0';
                        ALUOP <="0010"; --somar
                        case funct3 is
                            when "000" => load_len <= "1"; --sb
                            when "010" => load_len <= "0"; --sw
                            when others => load_len <= "0"; --sw
                        end case;

                    when "1100011" =>   -- instrucao tipo b
                        imm <= '0';
                        regWrite <= '0';
                        branch <= '1';
                        memWrite <= '0';
                        memToReg <= '0';
                        jump <= '0';
                        memRead <= '0';
                        load_len <= 'x';
                        -- para todos os casos fazer uma sub e então decidir
                        case funct3 is
                            when "000" => ALUOP <= "0110";  -- beq
                            when "100" => ALUOP <= "0111";  -- blt
                            when "101" => ALUOP <= "1001";  -- bge
									 when "001" => ALUOP <= "0110";  -- bne
                            when others => ALUOP <= "1111"; -- nao faz nada
                        end case;
                    
                    when "1101111" =>   -- instrucao tipo j
                        imm <= '1';
                        regWrite <= '1';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= '0';
                        jump <= '1';
                        memRead <= '0';
                        ALUOP <="0010"; -- adicionar

                    when others => 
                        imm <= '0';
                        regWrite <= '0';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= '0';
                        jump <= '0';
                        memRead <= '0';
                        ALUOP <="1111"; -- faz nada

                end case;
        end process;
end architecture behavior;