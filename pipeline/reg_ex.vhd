-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- reg_memi de carga paralela de tamanho genérico com WE e reset síncrono em nível lógico 1
library ieee;
use ieee.std_logic_1164.all;

entity reg_exe is
	GENERIC (
		data_width  : NATURAL;
      	instr_width : NATURAL;
        ula_ctrl_width : NATURAL;
        fr_addr_width  : NATURAL
	);
    port (
        rs1_d : in std_logic_vector(fr_addr_width - 1 downto 0);    -- (19 - 15)
        rs2_d : in std_logic_vector(fr_addr_width - 1 downto 0);    -- (24 - 20)
        rd_d : in std_logic_vector(fr_addr_width - 1 downto 0);     -- (11 - 7)

        clk         : in std_logic;
        flush_exe         : in std_logic;
        imm_gen_d : in std_logic_vector(data_width - 1 downto 0);
        entra_Reg1_dado : in std_logic_vector(data_width - 1 downto 0);
        entra_Reg2_dado : in std_logic_vector(data_width - 1 downto 0);

        rs1_e : out std_logic_vector(fr_addr_width - 1 downto 0);    -- (19 - 15)
        rs2_e : out std_logic_vector(fr_addr_width - 1 downto 0);    -- (24 - 20)
        rd_e : out std_logic_vector(fr_addr_width - 1 downto 0);     -- (11 - 7)
        sai_Reg1_dado : out std_logic_vector(data_width - 1 downto 0);
        sai_Reg2_dado : out std_logic_vector(data_width - 1 downto 0);
        imm_gen_e : out std_logic_vector(data_width - 1 downto 0);

        -- Entradas da etapa de execução
        mem_write_d, mem_read_d                         :   in std_logic;
        aluctrl_d                                   :   in std_logic_vector(ula_ctrl_width -1 downto 0);
        reg_write_e                                :   in std_logic;
        mem_reg_e                               :   in std_logic;   

        -- Saidas da etapa de execução
        mem_write_e, mem_read_e                         :   out std_logic;
        aluctrl_e                                   :   out std_logic_vector(ula_ctrl_width -1 downto 0);
        reg_write_d                                :   out std_logic;
        mem_reg_d                               :   out std_logic   

    );
end reg_exe;

architecture comportamental of reg_exe is
begin
    process (clk, rd_e, flush_exe, entra_Reg1_dado, entra_Reg2_dado, imm_gen_d, , mem_write_d, mem_read_d, aluctrl_d, reg_write_e, mem_reg_e) is
    begin
        if (rising_edge(clk) ) then
            if(flush_exe = '0') then
                rs1_e <= rs1_d;
                rs2_e  <= rs2_d;
                rd_e <=  rd_d;
                sai_Reg1_dado <= entra_Reg1_dado;
                sai_Reg2_dado <=  entra_Reg2_dado;
                imm_gen_e <= imm_gen_d;

                mem_write_e     <= mem_write_d;    
                mem_read_e <=   mem_read_d ;          
                aluctrl_e  <= aluctrl_d;                                
                reg_write_d   <= reg_write_e;                            
                mem_reg_d   <= mem_reg_e;                           
            else 
                rs1_e <= (others =>'0');
                rs2_e <= (others =>'0');
                rd_e <=  (others =>'0');
                sai_Reg1_dado <= (others =>'0');
                sai_Reg2_dado <=  (others =>'0');
                imm_gen_e <= (others =>'0');

                mem_write_e     <= '0';    
                mem_read_e <=   '0';        
                aluctrl_e  <= (others =>'0');                              
                reg_write_d   <= (others =>'0');                          
                mem_reg_d   <= (others =>'0'); 
            end if;
        end if;
    end process;
end comportamental;

