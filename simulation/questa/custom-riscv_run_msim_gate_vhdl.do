transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {custom-riscv.vho}

vcom -93 -work work {D:/custom-riscv/tb_mux_2_1.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  tb_mux_2_1

add wave *
view structure
view signals
run 100 ns
