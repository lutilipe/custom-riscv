library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_somador is
end testbench_somador;

architecture tb_architecture of testbench_somador is

    constant largura_dado : natural := 32;

    signal entrada_a_tb : std_logic_vector(largura_dado - 1 downto 0);
    signal entrada_b_tb : std_logic_vector(largura_dado - 1 downto 0);
    signal saida_tb : std_logic_vector(largura_dado - 1 downto 0);

    component somador
        generic (
            largura_dado : natural := 32
        );
        port (
            entrada_a : in std_logic_vector((largura_dado - 1) downto 0);
            entrada_b : in std_logic_vector((largura_dado - 1) downto 0);
            saida     : out std_logic_vector((largura_dado - 1) downto 0)
        );
    end component;

begin
    uut : somador
        generic map (
            largura_dado => largura_dado
        )
        port map (
            entrada_a => entrada_a_tb,
            entrada_b => entrada_b_tb,
            saida     => saida_tb
        );


    stimulus_process: process
    begin
        -- Test case 1: 5 + 3
        entrada_a_tb <= "00000000000000000000000000000101"; -- 5
        entrada_b_tb <= "00000000000000000000000000000011"; -- 3
        wait for 10 ns;

        -- Test case 2: 255 + 1
        entrada_a_tb <= "00000000000000000000000011111111"; -- 255
        entrada_b_tb <= "00000000000000000000000000000001"; -- 1
        wait for 10 ns;
        wait;
    end process stimulus_process;

end tb_architecture;
