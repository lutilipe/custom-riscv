library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ula is
end tb_ula;

architecture sim of tb_ula is
    constant largura_dado : natural := 8;
    signal entrada_a : std_logic_vector(largura_dado - 1 downto 0);
    signal entrada_b : std_logic_vector(largura_dado - 1 downto 0);
    signal seletor   : std_logic_vector(3 downto 0);
    signal saida     : std_logic_vector(largura_dado - 1 downto 0);
    signal zero      : std_logic;

    component ula
        generic (
            largura_dado : natural
        );
        port (
            entrada_a : in std_logic_vector(largura_dado - 1 downto 0);
            entrada_b : in std_logic_vector(largura_dado - 1 downto 0);
            seletor   : in std_logic_vector(3 downto 0);
            saida     : out std_logic_vector(largura_dado - 1 downto 0);
            zero      : out std_logic
        );
    end component;

begin
    uut: ula
        generic map (
            largura_dado => largura_dado
        )
        port map (
            entrada_a => entrada_a,
            entrada_b => entrada_b,
            seletor   => seletor,
            saida     => saida,
            zero      => zero
        );

    stim_proc: process
    begin
        -- AND
        entrada_a <= "00001111";
        entrada_b <= "00110011";
        seletor <= "0000";
        wait for 10 ns;

        -- OR
        seletor <= "0001";
        wait for 10 ns;

        -- ADD
        seletor <= "0010";
        wait for 10 ns;

        -- SUB
        seletor <= "0110";
        wait for 10 ns;

        -- NOR
        seletor <= "1100";
        wait for 10 ns;

        -- XOR
        seletor <= "0101";
        wait for 10 ns;

        seletor <= "1111";
        wait for 10 ns;

        wait;
    end process;
end sim;
