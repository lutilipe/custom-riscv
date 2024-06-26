library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity banco_registradores_tb is
end banco_registradores_tb;

architecture tb_architecture of banco_registradores_tb is
    constant largura_dado_tb : natural := 8;
    constant largura_ende_tb : natural := 3;

    signal ent_Rs_ende_tb : std_logic_vector((largura_ende_tb - 1) downto 0);
    signal ent_Rt_ende_tb : std_logic_vector((largura_ende_tb - 1) downto 0);
    signal ent_Rd_ende_tb : std_logic_vector((largura_ende_tb - 1) downto 0);
    signal ent_Rd_dado_tb : std_logic_vector((largura_dado_tb - 1) downto 0);
    signal sai_Rs_dado_tb : std_logic_vector((largura_dado_tb - 1) downto 0);
    signal sai_Rt_dado_tb : std_logic_vector((largura_dado_tb - 1) downto 0);
    signal clk_tb, WE_tb : std_logic;

    component banco_registradores
        generic (
            largura_dado : natural := largura_dado_tb;
            largura_ende : natural := largura_ende_tb
        );
        port (
            ent_Rs_ende : in std_logic_vector((largura_ende_tb - 1) downto 0);
            ent_Rt_ende : in std_logic_vector((largura_ende_tb - 1) downto 0);
            ent_Rd_ende : in std_logic_vector((largura_ende_tb - 1) downto 0);
            ent_Rd_dado : in std_logic_vector((largura_dado_tb - 1) downto 0);
            sai_Rs_dado : out std_logic_vector((largura_dado_tb - 1) downto 0);
            sai_Rt_dado : out std_logic_vector((largura_dado_tb - 1) downto 0);
            clk, WE     : in std_logic
        );
    end component;

begin
    dut : banco_registradores
        generic map (
            largura_dado => largura_dado_tb,
            largura_ende => largura_ende_tb
        )
        port map (
            ent_Rs_ende => ent_Rs_ende_tb,
            ent_Rt_ende => ent_Rt_ende_tb,
            ent_Rd_ende => ent_Rd_ende_tb,
            ent_Rd_dado => ent_Rd_dado_tb,
            sai_Rs_dado => sai_Rs_dado_tb,
            sai_Rt_dado => sai_Rt_dado_tb,
            clk => clk_tb,
            WE => WE_tb
        );


    clk_process : process
    begin
        while now < 100 ns loop
            clk_tb <= '0';
            wait for 5 ns;
            clk_tb <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;

    stimulus : process
    begin
        ent_Rs_ende_tb <= "001";
        ent_Rt_ende_tb <= "010";
        ent_Rd_ende_tb <= "011";
        ent_Rd_dado_tb <= (others => '0');
        WE_tb <= '1';

        -- Test scenario 1: Write to register with address "011"
        ent_Rd_dado_tb <= "10101010";
        wait for 20 ns;

        -- Test scenario 2: Read from registers with addresses "001" and "010"
        ent_Rs_ende_tb <= "001";
        ent_Rt_ende_tb <= "010";
        wait for 20 ns;

        wait;
    end process;

end tb_architecture;
