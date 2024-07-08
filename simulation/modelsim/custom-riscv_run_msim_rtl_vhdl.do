transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {d:/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {d:/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {d:/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {d:/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {d:/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {d:/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {d:/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {d:/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {d:/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {d:/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {d:/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {d:/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {d:/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {d:/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/maxv
vmap maxv ./vhdl_libs/maxv
vcom -93 -work maxv {d:/quartus/eda/sim_lib/maxv_atoms.vhd}
vcom -93 -work maxv {d:/quartus/eda/sim_lib/maxv_components.vhd}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/custom-riscv/unidade_de_controle_ciclo_unico.vhd}
vcom -93 -work work {D:/custom-riscv/processador_ciclo_unico.vhd}
vcom -93 -work work {D:/custom-riscv/imm_gen.vhd}
vcom -93 -work work {D:/custom-riscv/mux21.vhd}
vcom -93 -work work {D:/custom-riscv/via_de_dados_ciclo_unico.vhd}
vcom -93 -work work {D:/custom-riscv/ula.vhd}
vcom -93 -work work {D:/custom-riscv/somador.vhd}
vcom -93 -work work {D:/custom-riscv/pc.vhd}
vcom -93 -work work {D:/custom-riscv/memi.vhd}
vcom -93 -work work {D:/custom-riscv/memd.vhd}
vcom -93 -work work {D:/custom-riscv/banco_registradores.vhd}

vcom -93 -work work {D:/custom-riscv/tb_ula.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  tb_ula

add wave *
view structure
view signals
run 100 ns
