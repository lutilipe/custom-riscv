-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- reg_memi de carga paralela de tamanho genérico com WE e reset síncrono em nível lógico 1
library ieee;
use ieee.std_logic_1164.all;

entity reg_exe is
    port (
        Rs1D : in std_logic_vector(4 downto 0);    -- (19 - 15)
        Rs2D : in std_logic_vector(4 downto 0);    -- (24 - 20)
        RdD : in std_logic_vector(4 downto 0);     -- (11 - 7)
        clk         : in std_logic;
        flush_exe         : in std_logic;
        entrada_sinal_extend : in std_logic_vector(31 downto 0);
        entra_Reg1_dado : in std_logic_vector(31 downto 0);
        entra_Reg2_dado : in std_logic_vector(31 downto 0);

        Rs1E : out std_logic_vector(4 downto 0);    -- (19 - 15)
        Rs2E : out std_logic_vector(4 downto 0);    -- (24 - 20)
        RdE : out std_logic_vector(4 downto 0);     -- (11 - 7)
        sai_Reg1_dado : out std_logic_vector(31 downto 0);
        sai_Reg2_dado : out std_logic_vector(31 downto 0);
        sai_sinal_extend : out std_logic_vector(31 downto 0);

        --sinais de controle
        --sinais enviados para multiplexadores
        i_extend_sel                        :   in std_logic;
        i_MUX_final                               :   in std_logic_vector(1 downto 0);
        --sinal para blocos
        i_RegWEN, i_mem_sel                         :   in std_logic;
        i_extendop                               :   in  std_logic_vector(2 downto 0);
        i_ALUOP                                   :   in std_logic_vector(3 downto 0);
        --sinal enviado para o banco de registradores
        i_load_len                                :   in std_logic_vector(1 downto 0);
        i_store_len                               :   in std_logic_vector(1 downto 0);   

        o_extend_sel                               :   out std_logic;
        o_MUX_final                               :   out std_logic_vector(1 downto 0);

        --sinal para blocos
        o_RegWEN, o_mem_sel                         :   out std_logic;
        o_extendop                               :   out  std_logic_vector(2 downto 0);
        o_ALUOP                                   :   out std_logic_vector(3 downto 0);
        --sinal enviado para o banco de registradores
        o_load_len                                :   out std_logic_vector(1 downto 0);
        o_store_len                               :   out std_logic_vector(1 downto 0)   

    );
end reg_exe;

architecture comportamental of reg_exe is
begin
    process (clk, RdE, flush_exe, entra_Reg1_dado, entra_Reg2_dado, entrada_sinal_extend, i_extend_sel, i_MUX_final, i_RegWEN, i_mem_sel, i_extendop, i_ALUOP, i_load_len, i_store_len) is
    begin
        if (rising_edge(clk) ) then
            if(flush_exe = '0') then
                Rs1E <= Rs1D;
                Rs2E  <= Rs2D;
                RdE <=  RdD;
                sai_Reg1_dado <= entra_Reg1_dado;
                sai_Reg2_dado <=  entra_Reg2_dado;
                sai_sinal_extend <= entrada_sinal_extend;

                o_extend_sel  <= i_extend_sel;                    
                o_MUX_final   <= i_MUX_final;                          
                o_RegWEN     <= i_RegWEN;    
                o_mem_sel <=   i_mem_sel ;          
                o_extendop  <= i_extendop;                        
                o_ALUOP  <= i_ALUOP;                                
                o_load_len   <= i_load_len;                            
                o_store_len   <= i_store_len;                           
            else 
                Rs1E <= (others =>'0');
                Rs2E <= (others =>'0');
                RdE <=(others =>'0');
                sai_Reg1_dado <= (others =>'0');
                sai_Reg2_dado <=  (others =>'0');
                sai_sinal_extend <= (others =>'0');

                o_extend_sel  <=  '0';   
                o_MUX_final   <= (others =>'0');                         
                o_RegWEN     <= '0';    
                o_mem_sel <=   '0';        
                o_extendop  <= (others =>'0');                     
                o_ALUOP  <= (others =>'0');                              
                o_load_len   <= (others =>'0');                          
                o_store_len   <= (others =>'0'); 
            end if;
        end if;
    end process;
end comportamental;

