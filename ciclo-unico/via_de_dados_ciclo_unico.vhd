-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Via de dados do processador_ciclo_unico

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY via_de_dados_ciclo_unico IS
	GENERIC (
		-- declare todos os tamanhos dos barramentos (sinais) das portas da sua via_dados_ciclo_unico aqui.
		dp_ctrl_bus_width : NATURAL := 32; -- tamanho do barramento de controle da via de dados (DP) em bits
		data_width        : NATURAL := 32; -- tamanho do dado em bits
		pc_width          : NATURAL := 13; -- tamanho da entrada de endereços da MI ou MP em bits (memi.vhd)
		fr_addr_width     : NATURAL := 5; -- tamanho da linha de endereços do banco de registradores em bits
		ula_ctrl_width    : NATURAL := 4; -- tamanho da linha de controle da ULA
		instr_width       : NATURAL := 32 -- tamanho da instrução em bits
	);
	PORT (
		-- declare todas as portas da sua via_dados_ciclo_unico aqui.
		clock    : IN std_logic;
		reset    : IN std_logic;
		branch   : IN std_logic;
		jump     : IN std_logic;
		memRead  : IN std_logic;
		memWrite : IN std_logic;
		regWrite : IN std_logic;
		ALUSrc   : IN std_logic;
		memToReg : IN std_logic;
		pcWrite  : IN std_logic;
		ALUOp    : IN std_logic_vector(ula_ctrl_width - 1 DOWNTO 0);
		opcode   : OUT std_logic_vector(6 DOWNTO 0);
		funct3   : OUT std_logic_vector(14 DOWNTO 12);
		funct7   : OUT std_logic_vector(31 DOWNTO 25);
		saida    : OUT std_logic_vector(data_width - 1 downto 0)
	);
END ENTITY via_de_dados_ciclo_unico;

ARCHITECTURE comportamento OF via_de_dados_ciclo_unico IS

	-- declare todos os componentes que serão necessários na sua via_de_dados_ciclo_unico a partir deste comentário
	COMPONENT pc IS
		GENERIC (
			pc_width : NATURAL := pc_width
		);
		PORT (
			entrada : IN std_logic_vector(pc_width - 1 DOWNTO 0);
			clk     : IN std_logic;
			we      : IN std_logic;
			reset   : IN std_logic;
			saida   : OUT std_logic_vector(pc_width - 1 DOWNTO 0)
		);
	END COMPONENT pc;

	COMPONENT somador IS
		GENERIC (
			largura_dado : NATURAL := pc_width
		);
		PORT (
			entrada_a : IN std_logic_vector((largura_dado - 1) DOWNTO 0);
			entrada_b : IN std_logic_vector((largura_dado - 1) DOWNTO 0);
			saida     : OUT std_logic_vector((largura_dado - 1) DOWNTO 0)
		);
	END COMPONENT somador;

	COMPONENT banco_registradores IS
		GENERIC (
			largura_dado : NATURAL := 32;
			largura_ende : NATURAL := 5
		);
		PORT (
			ent_rs_ende : IN std_logic_vector((largura_ende - 1) DOWNTO 0);
			ent_rt_ende : IN std_logic_vector((largura_ende - 1) DOWNTO 0);
			ent_rd_ende : IN std_logic_vector((largura_ende - 1) DOWNTO 0);
			ent_rd_dado : IN std_logic_vector((largura_dado - 1) DOWNTO 0);
			sai_rs_dado : OUT std_logic_vector((largura_dado - 1) DOWNTO 0);
			sai_rt_dado : OUT std_logic_vector((largura_dado - 1) DOWNTO 0);
			clk         : IN std_logic;
			we          : IN std_logic
		);
	END COMPONENT banco_registradores;

	COMPONENT ula IS
		GENERIC (
			largura_dado : NATURAL := 32
		);
		PORT (
			entrada_a : IN std_logic_vector((largura_dado - 1) DOWNTO 0);
			entrada_b : IN std_logic_vector((largura_dado - 1) DOWNTO 0);
			seletor   : IN std_logic_vector(3 DOWNTO 0);
			saida     : OUT std_logic_vector((largura_dado - 1) DOWNTO 0);
			zero      : OUT std_logic
		);
	END COMPONENT ula;
 
	COMPONENT memd IS
		GENERIC (
			number_of_words : NATURAL := 256;
			MD_DATA_WIDTH   : NATURAL := 32;
			MD_ADDR_WIDTH   : NATURAL := 5
		);
		PORT (
			clk                 : IN std_logic;
			mem_write, mem_read : IN std_logic;
			write_data_mem      : IN std_logic_vector(MD_DATA_WIDTH - 1 DOWNTO 0);
			adress_mem          : IN std_logic_vector(MD_ADDR_WIDTH - 1 DOWNTO 0);
			read_data_mem       : OUT std_logic_vector(MD_DATA_WIDTH - 1 DOWNTO 0)
		);
	END COMPONENT memd;
 
	COMPONENT memi IS
		GENERIC (
			INSTR_WIDTH   : NATURAL := 32; -- tamanho da instrucao em numero de bits
			MI_ADDR_WIDTH : NATURAL := 5 -- tamanho do endereco da memoria de instrucoes em numero de bits
		);
		PORT (
			clk       : IN std_logic;
			reset     : IN std_logic;
			Endereco  : IN std_logic_vector(MI_ADDR_WIDTH - 1 DOWNTO 0);
			Instrucao : OUT std_logic_vector(INSTR_WIDTH - 1 DOWNTO 0)
		);
	END COMPONENT memi;
 
	COMPONENT mux21 IS
		GENERIC (
			largura_dado : NATURAL := 32
		);
		PORT (
			dado_ent_0, dado_ent_1 : IN std_logic_vector((largura_dado - 1) DOWNTO 0);
			sele_ent               : IN std_logic;
			dado_sai               : OUT std_logic_vector((largura_dado - 1) DOWNTO 0)
		);
	END COMPONENT mux21;
 
	COMPONENT imm_gen IS
		GENERIC (
			data_width  : NATURAL := 32;
       	instr_width : NATURAL := 32
		);
		PORT (
			instrucao : IN std_logic_vector((instr_width - 1) DOWNTO 0);
			imm_out   : OUT std_logic_vector((data_width - 1) DOWNTO 0)
		);
	END COMPONENT imm_gen;

	-- Declare todos os sinais auxiliares que serão necessários na sua via_de_dados_ciclo_unico a partir deste comentário.
	-- Você só deve declarar sinais auxiliares se estes forem usados como "fios" para interligar componentes.
	-- Os sinais auxiliares devem ser compatíveis com o mesmo tipo (std_logic, std_logic_vector, etc.) e o mesmo tamanho dos sinais dos portos dos
	-- componentes onde serão usados.
	-- Veja os exemplos abaixo:

	SIGNAL aux_pc_out         : std_logic_vector(pc_width - 1 DOWNTO 0);
	SIGNAL aux_novo_pc        : std_logic_vector(pc_width - 1 DOWNTO 0);
	SIGNAL aux_out_sum_pc     : std_logic_vector(pc_width - 1 DOWNTO 0);
	SIGNAL aux_out_sum2_pc    : std_logic_vector(pc_width - 1 DOWNTO 0);
	SIGNAL aux_out_mux_sum_pc : std_logic_vector(pc_width - 1 DOWNTO 0);

	SIGNAL aux_instrucao      : std_logic_vector(instr_width - 1 DOWNTO 0);
	SIGNAL aux_out_immgen     : std_logic_vector(instr_width - 1 DOWNTO 0);

	SIGNAL aux_out_mux_ula    : std_logic_vector(instr_width - 1 DOWNTO 0);
	SIGNAL aux_zero_ula       : std_logic;

	SIGNAL aux_data_outrs     : std_logic_vector(data_width - 1 DOWNTO 0);
	SIGNAL aux_data_outrt     : std_logic_vector(data_width - 1 DOWNTO 0);
	SIGNAL aux_alu_out        : std_logic_vector(data_width - 1 DOWNTO 0);
	SIGNAL aux_mux_data       : std_logic_vector(data_width - 1 DOWNTO 0);
	SIGNAL aux_mem_dado_out   : std_logic_vector(data_width - 1 DOWNTO 0);
	
	SIGNAL branch_and_zero 	  : std_logic;
	
BEGIN
	-- A partir deste comentário instancie todos o componentes que serão usados na sua via_de_dados_ciclo_unico.
	-- A instanciação do componente deve começar com um nome que você deve atribuir para a referida instancia seguido de : e seguido do nome
	-- que você atribuiu ao componente.
	-- Depois segue o port map do referido componente instanciado.
	-- Para fazer o port map, na parte da esquerda da atribuição "=>" deverá vir o nome de origem da porta do componente e na parte direita da
	-- atribuição deve aparecer um dos sinais ("fios") que você definiu anteriormente, ou uma das entradas da entidade via_de_dados_ciclo_unico,
	-- ou ainda uma das saídas da entidade via_de_dados_ciclo_unico.
	-- Veja os exemplos de instanciação a seguir:
	instancia_pc : COMPONENT pc
	PORT MAP(
		entrada => aux_novo_pc, 
		saida   => aux_pc_out, 
		clk     => clock, 
		we      => pcWrite, 
		reset   => reset
	);

	instancia_somador1 : COMPONENT somador
	PORT MAP(
		entrada_a => aux_pc_out, 
		entrada_b => "0000000000001", 
		saida     => aux_out_sum_pc
	);
 
	instancia_somador2 : COMPONENT somador
	PORT MAP(
		entrada_a => aux_out_sum_pc, 
		entrada_b => aux_out_immgen(pc_width - 1 DOWNTO 0), 
		saida     => aux_out_sum2_pc
	);
	
	branch_and_zero <= branch AND aux_zero_ula;
 
	instancia_mux_sum : COMPONENT mux21
		GENERIC MAP(
		largura_dado => pc_width
		)
		PORT MAP(
			dado_ent_0 => aux_out_sum_pc, 
			dado_ent_1 => aux_out_sum2_pc, 
			sele_ent   => branch_and_zero, 
			dado_sai   => aux_out_mux_sum_pc
		);
 
			instancia_mux_pc : COMPONENT mux21
				GENERIC MAP(
				largura_dado => pc_width
				)
				PORT MAP(
					dado_ent_0 => aux_out_mux_sum_pc, 
					dado_ent_1 => aux_instrucao(31 DOWNTO 19), 
					sele_ent   => jump, 
					dado_sai   => aux_novo_pc
				);
 
					instancia_mem_instrucao : COMPONENT memi
						GENERIC MAP(
						INSTR_WIDTH   => instr_width, 
						MI_ADDR_WIDTH => pc_width
						)
						PORT MAP(
							clk       => clock, 
							reset     => reset, 
							Endereco  => aux_pc_out, 
							Instrucao => aux_instrucao
						);
 

							instancia_banco_registradores : COMPONENT banco_registradores
							PORT MAP(
								ent_rs_ende => aux_instrucao(19 DOWNTO 15), 
								ent_rt_ende => aux_instrucao(24 DOWNTO 20), 
								ent_rd_ende => aux_instrucao(11 DOWNTO 7), 
								ent_rd_dado => aux_mux_data, 
								sai_rs_dado => aux_data_outrs, 
								sai_rt_dado => aux_data_outrt, 
								clk         => clock, 
								we          => regWrite
	); 

	instancia_extensor : COMPONENT imm_gen
		GENERIC MAP(
		data_width  => data_width, 
		instr_width => instr_width
		)
		PORT MAP(
			instrucao => aux_instrucao, 
			imm_out   => aux_out_immgen
		);
 
			instancia_mux_ula : COMPONENT mux21
				GENERIC MAP(
				largura_dado => data_width
				)
				PORT MAP(
					dado_ent_0 => aux_data_outrt, 
					dado_ent_1 => aux_out_immgen, 
					sele_ent   => ALUSrc, 
					dado_sai   => aux_out_mux_ula
				);
 
					instancia_ula : COMPONENT ula
					PORT MAP(
						entrada_a => aux_data_outrs, 
						entrada_b => aux_out_mux_ula, 
						seletor   => ALUOp, 
						saida     => aux_alu_out,
						zero		 => aux_zero_ula
	);
 
	instancia_mem_dados : COMPONENT memd
		GENERIC MAP(
		number_of_words => 256, 
		MD_DATA_WIDTH   => 32, 
		MD_ADDR_WIDTH   => 32
		)
		PORT MAP(
			clk            => clock, 
			mem_write      => memWrite, 
			mem_read       => memRead, 
			write_data_mem => aux_data_outrt, 
			adress_mem     => aux_alu_out, 
			read_data_mem  => aux_mem_dado_out
		);
 
 
			instancia_mux_reg : COMPONENT mux21
				GENERIC MAP(
				largura_dado => data_width
				)
				PORT MAP(
					dado_ent_0 => aux_alu_out, 
					dado_ent_1 => aux_mem_dado_out, 
					sele_ent   => memToReg, 
					dado_sai   => aux_mux_data
				);
				
	opcode <= aux_instrucao(6 DOWNTO 0);
	funct3 <= aux_instrucao(14 DOWNTO 12);
	funct7 <= aux_instrucao(31 DOWNTO 25);
	saida  <= aux_mux_data;

 
END ARCHITECTURE comportamento;