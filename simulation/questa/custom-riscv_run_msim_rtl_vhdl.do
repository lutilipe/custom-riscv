transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/custom-riscv/mux_2_1.vhd}

vcom -93 -work work {D:/custom-riscv/tb_mux_2_1.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_mux_2_1

add wave *
view structure
view signals
run 100 ns
