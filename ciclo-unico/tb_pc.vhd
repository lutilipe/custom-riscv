library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_pc is
end tb_pc;

architecture behavior of tb_pc is

    component pc
        generic (
            PC_WIDTH : natural := 13
        );
        port (
            entrada : in std_logic_vector(PC_WIDTH - 1 downto 0);
            saida   : out std_logic_vector(PC_WIDTH - 1 downto 0);
            clk     : in std_logic;
            we      : in std_logic;
            reset   : in std_logic
        );
    end component;

    signal entrada : std_logic_vector(12 downto 0);
    signal saida   : std_logic_vector(12 downto 0);
    signal clk     : std_logic := '0';
    signal we      : std_logic := '0';
    signal reset   : std_logic := '0';

    constant clk_period : time := 10 ns;

begin

    uut: pc
        generic map (
            PC_WIDTH => 13
        )
        port map (
            entrada => entrada,
            saida   => saida,
            clk     => clk,
            we      => we,
            reset   => reset
        );

    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        entrada <= (others => '0');
        we <= '0';
        reset <= '0';
        wait for clk_period*2;

        reset <= '1';
        wait for clk_period*2;
        reset <= '0';
        wait for clk_period*2;

        entrada <= "0000000000001";
        we <= '1';
        wait for clk_period*2;
        we <= '0';
        wait for clk_period*2;

        entrada <= "0000000000010";
        we <= '1';
        wait for clk_period*2;
        we <= '0';
        wait for clk_period*2;

        wait;
    end process;

end behavior;
