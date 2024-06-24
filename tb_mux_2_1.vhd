library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_mux_2_1 is
end tb_mux_2_1;

architecture teste of tb_mux_2_1 is

component mux_2_1 IS
	GENERIC (
		W : integer
	);
	PORT(
		in0,in1		:	IN	STD_LOGIC_VECTOR(W-1 DOWNTO 0);
		s0, s1		:	in std_logic;
		out1			:	OUT	STD_LOGIC_VECTOR(W-1 DOWNTO 0));
END component mux_2_1;

signal A, B, S: std_logic_vector(31 downto 0);
signal s0 : std_logic;
begin
	instancia_mux_2_1: mux_2_1 
		generic map(W=>32)
		port map(in0=>A,in1=>B,out1=>S, s0 => s0);

	A <= std_logic_vector(to_unsigned(2, 32));
	B <= std_logic_vector(to_unsigned(50, 32));

	
	s0 <= '0', '1' after 20ns, '0' after 40ns, '1' after 80ns;
end teste;