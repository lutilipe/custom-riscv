library ieee;
use ieee.std_logic_1164.all;

entity hazard_unit is
  port (
    -- entradas da vinda da controladora
    branch : in std_logic;
	 mem_read_e, mem_to_reg_e, mem_write_e, reg_write_e : in std_logic;
	 rs_1_d, rs_2_d, rs_d_d : in  std_logic_vector(4 downto 0);
	 rs_1_e, rs_2_e, rs_d_e : in  std_logic_vector(4 downto 0);
     

    --saidas
    flush_ex : out std_logic;
	 stall_id : out std_logic;
	 stall_pc : out std_logic

  );
end hazard_unit;

architecture Behavioral of hazard_unit is
begin
    process(rs_1_d, rs_2_d, rs_d_e, mem_read_e)
    begin
        -- Default values
        stall_pc <= '0';
        stall_id <= '0';
        flush_ex <= '0';

        -- Stall conditions for register write and read hazard
        if (reg_write_e = '1') and ((rs_d_e = rs_1_d) or (rs_d_e = rs_2_d)) then
            stall_pc <= '1';
            stall_id <= '1';
            flush_ex <= '1';
        end if;
        
        -- Stall conditions for load-word hazard
        if (((rs_1_d = rs_2_e) OR (rs_2_d = rs_1_e)) AND mem_to_reg_e = '1') then
            stall_pc <= '1';
            stall_id <= '1';
            flush_ex <= '1';
        end if;
        
        -- Flush condition for branch taken
        if branch = '1' then
            flush_ex <= '1';
        end if;
    end process;

end Behavioral;
