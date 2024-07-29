-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- reg_memi de carga paralela de tamanho genérico com WE e reset síncrono em nível lógico 1
library ieee;
use ieee.std_logic_1164.all;

entity reg_decod is
    generic (
        INSTR_WIDTH : natural
    );
    port (
        entrada_memi    : in std_logic_vector(INSTR_WIDTH -1 downto 0);
        clk              : in std_logic;
        stall_dec        : in std_logic;
        saida_memi    : out std_logic_vector(INSTR_WIDTH - 1 downto 0);
    );
end reg_decod;

architecture comportamental of reg_decod is
begin
    process (clk, entrada_memi, entrada_pc4, flush_dec, stall_dec) is
    begin
        if (rising_edge(clk) ) then
            if(stall_dec = '0') then
                saida_memi <= entrada_memi ;
            end if;
        end if;
    end process;
end comportamental;

