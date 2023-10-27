transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8_9/RegW/RegW.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8_9/Reg_MA/Reg_MA.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8_9/Datapath/Datapath.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8_9/Controladora/Controladora.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8_9/Comparador/Comparador.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8_9/BCD_7seg/BCD_7seg.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8_9/Sinalizador/Sinalizador.vhd}

vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8_9/Sinalizador/tb_Sinalizador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Sinalizador

add wave *
view structure
view signals
run 50 ns
