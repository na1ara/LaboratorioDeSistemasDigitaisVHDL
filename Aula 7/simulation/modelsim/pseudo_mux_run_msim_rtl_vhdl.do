transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Aluno/Desktop/Hermes PN1/Bernardo - Luiz - Naiara/Aula 7/pseudo_mux.vhd}
vcom -93 -work work {C:/Users/Aluno/Desktop/Hermes PN1/Bernardo - Luiz - Naiara/Aula 7/divisorclock.vhd}

vcom -93 -work work {C:/Users/Aluno/Desktop/Hermes PN1/Bernardo - Luiz - Naiara/Aula 7/tb_pseudo_mux.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_pseudo_mux

add wave *
view structure
view signals
run 30 ns
