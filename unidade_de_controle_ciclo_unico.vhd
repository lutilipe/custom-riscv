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
        ALUSrc, jump                         	:   out std_logic;
        memToReg                                :   out std_logic;
        --sinal para instrucao b
        branch                                  :   out std_logic;
        --sinal para blocos
        regWrite, memWrite, memRead             :   out std_logic;
        ALUOp                                   :   out std_logic_vector(3 downto 0)
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
                    when "0000011" =>   -- lw,lb
                        ALUSrc <= '1';
                        regWrite <= '1';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= '1';
                        jump <= '0';
                        memRead <= '1';
                        ALUOp <="0010"; --somar
                    
                    when "0010011" =>   -- instrucao tipo i
                        ALUSrc <= '1';
                        regWrite <= '1';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= "0";
                        jump <= '0';
                        memRead <= "0";
                        case funct3 is
                            when "000" => ALUOp <= "0010";  -- addi usar adição
                            when "010" => ALUOp <= "0111";  -- slti usar menor que
                            when "100" => ALUOp <= "1100";  -- xori usar xor
                            when "110" => ALUOp <= "0001";  -- ori usar or
                            when "111" => ALUOp <= "0000";  -- andi usar and
                            when "001" => ALUOp <= "1010";  -- slli usar deslocamento
                            when others => ALUOp <= "1111"; -- nao faz nada
                        end case;


                    when "0110011" =>   -- instrucao tipo R
                        ALUSrc <= '0';
                        regWrite <= '1';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= '0';
                        jump <= '0';
                        memRead <= '0';
                        --definir operação da alu
                        case funct is
                            when "0000000000" => ALUOp <= "0010";  -- adição
                            when "0000100000" => ALUOp <= "0110"; -- subtração                                
                            when "0000000010" => ALUOp <= "0111"; -- slt, sltu
                            when "0000000100" => ALUOp <= "1100"; -- xor
                            when "0000000101" => ALUOp <= "0101"; -- srl, sra
                            when "0000000111" => ALUOp <= "0000"; -- and
                            when "0000000110" => ALUOp <= "0001"; -- or
                            when others => ALUOp <= "1111"; -- nao faz nada
                        end case;

                    when "0100011" =>   -- instrucao tipo S
                        ALUSrc <= '1';
                        regWrite <= '0';
                        branch <= '0';
                        memWrite <= '1';
                        memToReg <= '0';
                        jump <= '0';
                        memRead <= '0';
                        ALUOp <="0010"; --somar

                    when "1100011" =>   -- instrucao tipo B
                        ALUSrc <= '0';
                        regWrite <= '0';
                        branch <= '1';
                        memWrite <= '0';
                        memToReg <= '0';
                        jump <= '0';
                        memRead <= '0';
                        -- para todos os casos fazer uma sub e então decidir
                        case funct3 is
                            when "000" => ALUOp <= "0110";  -- beq
                            when "100" => ALUOp <= "0111";  -- blt
                            when "101" => ALUOp <= "1001";  -- bge
							when "001" => ALUOp <= "0110";  -- bne
                            when others => ALUOp <= "1111"; -- nao faz nada
                        end case;
                    
                    when "1101111" =>   -- instrucao tipo j
                        ALUSrc <= '1';
                        regWrite <= '1';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= '0';
                        jump <= '1';
                        memRead <= '0';
                        ALUOp <="0010"; -- adicionar

                    when "1100111" =>   -- instrucao jalr
                        ALUSrc <= '1';
                        regWrite <= '1';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= '0';
                        jump <= '1';
                        memRead <= '0';
                        ALUOp <="0010"; -- somar

                    when others => 
                        ALUSrc <= '0';
                        regWrite <= '0';
                        branch <= '0';
                        memWrite <= '0';
                        memToReg <= '0';
                        jump <= '0';
                        memRead <= '0';
                        ALUOp <="1111"; -- faz nada

                end case;
        end process;
end architecture behavior;