library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_banco_registradores is
end tb_banco_registradores;

architecture testbench of tb_banco_registradores is

    constant largura_dado : natural := 8;
    constant largura_ende : natural := 4;

    signal ent_Rs_ende : std_logic_vector((largura_ende - 1) downto 0);
    signal ent_Rt_ende : std_logic_vector((largura_ende - 1) downto 0);
    signal ent_Rd_ende : std_logic_vector((largura_ende - 1) downto 0);
    signal ent_Rd_dado : std_logic_vector((largura_dado - 1) downto 0);
    signal sai_Rs_dado : std_logic_vector((largura_dado - 1) downto 0);
    signal sai_Rt_dado : std_logic_vector((largura_dado - 1) downto 0);
    signal clk : std_logic := '0';
    signal WE : std_logic := '0';

    constant clk_period : time := 10 ns;

begin

    uut: entity work.banco_registradores
        generic map (
            largura_dado => largura_dado,
            largura_ende => largura_ende
        )
        port map (
            ent_Rs_ende => ent_Rs_ende,
            ent_Rt_ende => ent_Rt_ende,
            ent_Rd_ende => ent_Rd_ende,
            ent_Rd_dado => ent_Rd_dado,
            sai_Rs_dado => sai_Rs_dado,
            sai_Rt_dado => sai_Rt_dado,
            clk => clk,
            WE => WE
        );

    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    stimulus: process
    begin
        ent_Rs_ende <= (others => '0');
        ent_Rt_ende <= (others => '0');
        ent_Rd_ende <= (others => '0');
        ent_Rd_dado <= (others => '0');
        WE <= '0';

        wait for 20 ns;

        -- Test 1: Write to register 0 and read back
        ent_Rd_ende <= "0000";  -- Register address 0
        ent_Rd_dado <= "00001111";  -- Data to write
        WE <= '1';
        wait for clk_period;
        WE <= '0';
        wait for clk_period;

        -- Read from register 0
        ent_Rs_ende <= "0000";
        wait for clk_period;

        -- Check the output
        assert sai_Rs_dado = "00001111"
        report "Test 1 failed" severity error;

        -- Test 2: Write to register 1 and read back
        ent_Rd_ende <= "0001";  -- Register address 1
        ent_Rd_dado <= "11110000";  -- Data to write
        WE <= '1';
        wait for clk_period;
        WE <= '0';
        wait for clk_period;

        -- Read from register 1
        ent_Rs_ende <= "0001";
        wait for clk_period;

        -- Check the output
        assert sai_Rs_dado = "11110000"
        report "Test 2 failed" severity error;

        -- Test 3: Simultaneous read from two different registers
        ent_Rs_ende <= "0000";  -- Register address 0
        ent_Rt_ende <= "0001";  -- Register address 1
        wait for clk_period;

        assert sai_Rs_dado = "00001111"
        report "Test 3 failed: sai_Rs_dado mismatch" severity error;

        assert sai_Rt_dado = "11110000"
        report "Test 3 failed: sai_Rt_dado mismatch" severity error;

        wait;
    end process;

end testbench;