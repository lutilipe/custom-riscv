library ieee;
use ieee.std_logic_1164.all;

entity tb_pc is
end entity tb_pc;

architecture tb_arch of tb_pc is
    constant PC_WIDTH : natural := 13;
    signal entrada    : std_logic_vector(PC_WIDTH - 1 downto 0);
    signal saida      : std_logic_vector(PC_WIDTH - 1 downto 0);
    signal clk        : std_logic := '0';
    signal we         : std_logic := '0';
    signal reset      : std_logic := '0';

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

begin
    dut: pc
        generic map (
            PC_WIDTH => PC_WIDTH
        )
        port map (
            entrada => entrada,
            saida   => saida,
            clk     => clk,
            we      => we,
            reset   => reset
        );

    process
    begin
        while not stop_tb loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
        wait;
    end process;

    stimulus: process
    begin
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Test case 1: write to PC
        entrada <= "1010101010101";
        we <= '1';
        wait for 20 ns;
        we <= '0';

        -- Test case 2: reset scenario
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait;
    end process stimulus;

end architecture tb_arch;
