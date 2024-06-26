library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula_tb is
end ula_tb;

architecture tb_arch of ula_tb is
    constant largura_dado : natural := 8;
    signal entrada_a, entrada_b : std_logic_vector(largura_dado - 1 downto 0);
    signal seletor : std_logic_vector(2 downto 0);
    signal saida : std_logic_vector(largura_dado - 1 downto 0);

    component ula
        generic (
            largura_dado : natural
        );
        port (
            entrada_a : in std_logic_vector(largura_dado - 1 downto 0);
            entrada_b : in std_logic_vector(largura_dado - 1 downto 0);
            seletor   : in std_logic_vector(2 downto 0);
            saida     : out std_logic_vector(largura_dado - 1 downto 0)
        );
    end component;

begin
    dut: ula
        generic map (
            largura_dado => largura_dado
        )
        port map (
            entrada_a => entrada_a,
            entrada_b => entrada_b,
            seletor   => seletor,
            saida     => saida
        );

    stimulus_process: process
    begin
        -- Test case 1: Test addition with sign extension (selector = "001")
        entrada_a <= std_logic_vector(to_signed(10, largura_dado));
        entrada_b <= std_logic_vector(to_signed(-5, largura_dado));
        seletor <= "001";
        wait for 10 ns;

        -- Test case 2: Test logical AND (selector = "100")
        entrada_a <= "10101010";
        entrada_b <= "11001100";
        seletor <= "100";
        wait for 10 ns;
        wait;
    end process;

end tb_arch;
