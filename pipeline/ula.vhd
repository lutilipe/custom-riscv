-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Unidade Lógica e Aritmética com capacidade para 8 operações distintas, além de entradas e saída de dados genérica.
-- Os três bits que selecionam o tipo de operação da ULA são os 3 bits menos significativos do OPCODE (vide aqrquivo: par.xls)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula is
    generic (
        largura_dado : natural
    );

    port (
        entrada_a : in std_logic_vector((largura_dado - 1) downto 0);
        entrada_b : in std_logic_vector((largura_dado - 1) downto 0);
        seletor   : in std_logic_vector(3 downto 0);
        saida     : out std_logic_vector((largura_dado - 1) downto 0);
        zero      : out std_logic
    );
end ula;

architecture comportamental of ula is
    signal resultado_ula : std_logic_vector((largura_dado - 1) downto 0);
    constant zeros : std_logic_vector((largura_dado - 1) downto 0) := (others => '0');
begin
    process(seletor, entrada_a, entrada_b, resultado_ula)
    begin
        case seletor is
            when "0000" => -- AND
                resultado_ula <= entrada_a and entrada_b;
            when "0001" => -- OR
                resultado_ula <= entrada_a or entrada_b;
            when "0010" => -- ADD
                resultado_ula <= std_logic_vector(signed(entrada_a) + signed(entrada_b));
            when "0110" => -- SUB
                resultado_ula <= std_logic_vector(signed(entrada_a) - signed(entrada_b));
            when "1100" => -- NOR
                resultado_ula <= not (entrada_a or entrada_b);
            when "0101" => -- XOR
                resultado_ula <= entrada_a xor entrada_b;
            when others =>
                resultado_ula <= zeros;
        end case;

        if resultado_ula = zeros then
            zero <= '1';
        else
            zero <= '0';
        end if;
    end process;
    saida <= resultado_ula;
end comportamental;
