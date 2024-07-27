library ieee;
use ieee.std_logic_1164.all;

entity tb_mux21 is
end tb_mux21;

architecture testbench of tb_mux21 is
    constant largura_dado : natural := 8;
    
    signal dado_ent_0, dado_ent_1 : std_logic_vector((largura_dado - 1) downto 0);
    signal sele_ent : std_logic;
    signal dado_sai : std_logic_vector((largura_dado - 1) downto 0);
begin
    DUT : entity work.mux21
        generic map (
            largura_dado => largura_dado
        )
        port map (
            dado_ent_0 => dado_ent_0,
            dado_ent_1 => dado_ent_1,
            sele_ent => sele_ent,
            dado_sai => dado_sai
        );
    

    stimulus_proc: process
    begin
        -- Test case 1: sele_ent = '0'
        dado_ent_0 <= "10101010";
        dado_ent_1 <= "01010101";
        sele_ent <= '0';
        wait for 10 ns;
        
        -- Test case 2: sele_ent = '1'
        dado_ent_0 <= "11110000";
        dado_ent_1 <= "00001111";
        sele_ent <= '1';
        wait for 10 ns;
        
        wait;
    end process stimulus_proc;
    
end testbench;