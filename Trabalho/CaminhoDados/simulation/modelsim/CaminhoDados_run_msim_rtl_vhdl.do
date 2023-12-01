transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Trabalho/Contador/contador.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Trabalho/CompMist/CompMist.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Trabalho/Registrador/Reg.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Trabalho/Multiplicador/multiplicador.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Trabalho/Comparador/comparador.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Trabalho/CodValido/CodValido.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Trabalho/CaminhoDados/CaminhoDados.vhd}

vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Trabalho/CaminhoDados/tb_dados.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_dados

add wave *
view structure
view signals
run 30 ns
