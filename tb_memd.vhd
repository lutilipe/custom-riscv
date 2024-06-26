library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memd_tb is
end memd_tb;

architecture tb_arch of memd_tb is
    constant MD_DATA_WIDTH   : natural := 8;
    constant MD_ADDR_WIDTH   : natural := 4;
    constant number_of_words : natural := 16;
    signal clk          : std_logic := '0';
    signal mem_write    : std_logic := '0';
    signal mem_read     : std_logic := '0';
    signal write_data   : std_logic_vector(MD_DATA_WIDTH - 1 downto 0);
    signal address      : std_logic_vector(MD_ADDR_WIDTH - 1 downto 0);
    signal read_data    : std_logic_vector(MD_DATA_WIDTH - 1 downto 0);

begin
    UUT: entity work.memd
        generic map (
            number_of_words => number_of_words,
            MD_DATA_WIDTH   => MD_DATA_WIDTH,
            MD_ADDR_WIDTH   => MD_ADDR_WIDTH
        )
        port map (
            clk             => clk,
            mem_write       => mem_write,
            mem_read        => mem_read,
            write_data_mem  => write_data,
            adress_mem      => address,
            read_data_mem   => read_data
        );
    clk_process: process
    begin
        while now < 1000 ns loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;

    stimulus_process: process
    begin
        -- Perform write operation
        mem_write <= '1';
        write_data <= "10101010";
        address <= "0010";
        wait for 10 ns;

        -- Perform read operation
        mem_write <= '0';
        mem_read <= '1';
        address <= "0010";
        wait for 10 ns;
        wait;
    end process;
end tb_arch;
