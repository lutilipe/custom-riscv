library ieee;
use ieee.std_logic_1164.all;

entity tb_hazard_unit is
end tb_hazard_unit;

architecture tb_behavioral of tb_hazard_unit is

  -- Component declaration
  component hazard_unit
    port (
      branch : in std_logic;
      mem_read_e, mem_to_reg_e, mem_write_e, reg_write_e : in std_logic;
      rs_1_d, rs_2_d, rs_d_d : in std_logic_vector(4 downto 0);
      rs_1_e, rs_2_e, rs_d_e : in std_logic_vector(4 downto 0);
      flush_ex : out std_logic;
      stall_id : out std_logic;
      stall_pc : out std_logic
    );
  end component;

  -- Signals for connecting to the hazard_unit
  signal branch : std_logic := '0';
  signal mem_read_e, mem_to_reg_e, mem_write_e, reg_write_e : std_logic := '0';
  signal rs_1_d, rs_2_d, rs_d_d : std_logic_vector(4 downto 0) := (others => '0');
  signal rs_1_e, rs_2_e, rs_d_e : std_logic_vector(4 downto 0) := (others => '0');
  signal flush_ex, stall_id, stall_pc : std_logic;

begin

  -- Instantiate the hazard_unit
  uut: hazard_unit
    port map (
      branch => branch,
      mem_read_e => mem_read_e,
      mem_to_reg_e => mem_to_reg_e,
      mem_write_e => mem_write_e,
      reg_write_e => reg_write_e,
      rs_1_d => rs_1_d,
      rs_2_d => rs_2_d,
      rs_d_d => rs_d_d,
      rs_1_e => rs_1_e,
      rs_2_e => rs_2_e,
      rs_d_e => rs_d_e,
      flush_ex => flush_ex,
      stall_id => stall_id,
      stall_pc => stall_pc
    );

  -- Stimulus process
  stimulus_process: process
  begin
    -- Test case 1: Register Write Hazard
    rs_1_d <= "00001";
    rs_2_d <= "00010";
    rs_d_e <= "00001";  -- Example dependency
    reg_write_e <= '1';

    wait for 10 ns;

    -- Test case 2: Load-Use Hazard
    rs_1_d <= "00100";
    rs_2_d <= "00101";
    rs_1_e <= "00101";  -- Example dependency
    mem_to_reg_e <= '1';

    wait for 10 ns;

    -- Test case 3: Branch Flush
    branch <= '1';

    wait for 10 ns;

    -- Test case 4: No Hazard
    rs_1_d <= "01000";
    rs_2_d <= "01001";
    rs_d_e <= "00000";
    reg_write_e <= '0';
    mem_to_reg_e <= '0';
    branch <= '0';

    wait;

  end process stimulus_process;

end tb_behavioral;
