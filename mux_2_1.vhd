LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux_2_1 IS
	GENERIC (
		W : integer := 32
	);
	PORT(
		in0,in1		:	in	std_logic_vector(W-1 DOWNTO 0);
		s0				:	in std_logic_vector (6 down to 0);
		out1			:	out std_logic_vector(W-1 DOWNTO 0));
END mux_2_1;

ARCHITECTURE mux_2_1 OF mux_2_1 IS
BEGIN
	mux1 : process (s0, s1, in0, in1, in2, in3)
		BEGIN
		if (s0 = '0') then
			out1 <= in0;
		elsif (s0 = '1') then
			out1 <= in1;
		else 
			out1 <= in0;
		end if;
	end process mux1;
END mux_2_1;