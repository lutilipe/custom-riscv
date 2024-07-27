library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_memi is
end entity;

architecture tb_arch of tb_memi is
    constant INSTR_WIDTH : natural := 32;
    constant MI_ADDR_WIDTH : natural := 5;
    
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal Endereco : std_logic_vector(MI_ADDR_WIDTH - 1 downto 0);
    signal Instrucao : std_logic_vector(INSTR_WIDTH - 1 downto 0);
begin
    dut : entity work.memi
        generic map (
            INSTR_WIDTH => INSTR_WIDTH,
            MI_ADDR_WIDTH => MI_ADDR_WIDTH
        )
        port map (
            clk => clk,
            reset => reset,
            Endereco => Endereco,
            Instrucao => Instrucao
        );

    process
    begin
        while not (clk'event and clk = '1') loop
            wait for 5 ns;
            clk <= not clk;
        end loop;
        wait;
    end process;
    process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        
        Endereco <= "00000";
        wait for 30 ns;
        Endereco <= "00001";
        wait for 30 ns;
        Endereco <= "00010";
        wait for 30 ns;      
        
        wait;
    end process;

end tb_arch;
