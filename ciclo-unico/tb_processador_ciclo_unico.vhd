library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_processador_ciclo_unico is
end tb_processador_ciclo_unico;

architecture sim of tb_processador_ciclo_unico is

    constant DATA_WIDTH : natural := 32;

    signal Leds_vermelhos_saida : std_logic_vector(DATA_WIDTH - 1 downto 0);
    signal Chave_reset          : std_logic := '0';
    signal Clock                : std_logic := '0';

    component processador_ciclo_unico
        generic (
            DATA_WIDTH : NATURAL := 32 -- tamanho do barramento de dados em bits
        );
        port (
            Leds_vermelhos_saida : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            Chave_reset          : in std_logic;
            Clock                : in std_logic
        );
    end component;

begin

    DUT: processador_ciclo_unico
        generic map (
            DATA_WIDTH => DATA_WIDTH
        )
        port map (
            Leds_vermelhos_saida => Leds_vermelhos_saida,
            Chave_reset          => Chave_reset,
            Clock                => Clock
        );


    Clock <= not Clock after 10 ns;


    stim_proc: process
    begin

        Chave_reset <= '1';
        wait for 20 ns;
        Chave_reset <= '0';


        wait for 100 ns;


        wait for 500 ns;
        assert false report "End of simulation" severity note;
        wait;
    end process;

end sim;
