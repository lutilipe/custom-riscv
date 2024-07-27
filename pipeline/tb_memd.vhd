-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletronica
-- Autoria: Professor Ricardo de Oliveira Duarte

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_memd is
end tb_memd;

architecture behavior of tb_memd is
    component memd is
        generic (
            number_of_words : natural;
            MD_DATA_WIDTH   : natural;
            MD_ADDR_WIDTH   : natural
        );
        port (
            clk                 : in std_logic;
            mem_write, mem_read : in std_logic;
            write_data_mem      : in std_logic_vector(MD_DATA_WIDTH - 1 downto 0);
            adress_mem          : in std_logic_vector(MD_ADDR_WIDTH - 1 downto 0);
            read_data_mem       : out std_logic_vector(MD_DATA_WIDTH - 1 downto 0)
        );
    end component;

    signal clk            : std_logic := '0';
    signal mem_write      : std_logic := '0';
    signal mem_read       : std_logic := '0';
    signal write_data_mem : std_logic_vector(7 downto 0) := (others => '0');
    signal adress_mem     : std_logic_vector(4 downto 0) := (others => '0');
    signal read_data_mem  : std_logic_vector(7 downto 0);

    constant clk_period : time := 10 ns;

begin
    uut: memd
        generic map (
            number_of_words => 16,
            MD_DATA_WIDTH   => 8,
            MD_ADDR_WIDTH   => 5
        )
        port map (
            clk           => clk,
            mem_write     => mem_write,
            mem_read      => mem_read,
            write_data_mem => write_data_mem,
            adress_mem    => adress_mem,
            read_data_mem => read_data_mem
        );

    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
       -- Write data to address 0
        adress_mem <= "00000";
        write_data_mem <= "00001111";
        mem_write <= '1';
        wait for clk_period;
        mem_write <= '0';
        wait for clk_period;

        -- Write data to address 1
        adress_mem <= "00001";
        write_data_mem <= "11110000";
        mem_write <= '1';
        wait for clk_period;
        mem_write <= '0';
        wait for clk_period;

        -- Read data from address 0
        adress_mem <= "00000";
        mem_read <= '1';
        wait for clk_period;
		  wait for clk_period;

        -- Read data from address 1
        adress_mem <= "00001";
        mem_read <= '1';
        wait for clk_period;
        mem_read <= '0';
        wait for clk_period;
		  wait;
    end process;
end behavior;
