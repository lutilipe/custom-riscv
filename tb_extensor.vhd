library ieee;
use ieee.std_logic_1164.all;

entity extensor_tb is
end extensor_tb;

architecture tb_arch of extensor_tb is
    constant largura_dado_tb : natural := 4;
    constant largura_saida_tb : natural := 8;
    
    signal entrada_Rs_tb : std_logic_vector((largura_dado_tb - 1) downto 0);
    signal saida_tb : std_logic_vector((largura_saida_tb - 1) downto 0);
    
    component extensor
        generic (
            largura_dado  : natural;
            largura_saida : natural
        );
        port (
            entrada_Rs : in std_logic_vector((largura_dado - 1) downto 0);
            saida      : out std_logic_vector((largura_saida - 1) downto 0)
        );
    end component;
    
begin
    UUT_inst : extensor
        generic map (
            largura_dado => largura_dado_tb,
            largura_saida => largura_saida_tb
        )
        port map (
            entrada_Rs => entrada_Rs_tb,
            saida => saida_tb
        );

    stim_proc: process
    begin
        -- Test case 1: Input all '1's
        entrada_Rs_tb <= (others => '1');
        wait for 10 ns;
        
        -- Test case 2: Input alternating '0's and '1's
        entrada_Rs_tb <= "1010";
        wait for 10 ns;
        
        -- Test case 3: Input a specific pattern
        entrada_Rs_tb <= "1100";
        wait for 10 ns;

        wait;
    end process;
    
end tb_arch;
