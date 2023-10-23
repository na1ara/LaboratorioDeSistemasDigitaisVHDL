transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8/Tudo/RegW/RegW.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8/Tudo/Reg_MA/Reg_MA.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8/Tudo/Comparador/Comparador.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8/Tudo/BCD_7seg/BCD_7seg.vhd}
vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8/Tudo/Datapath/Datapath.vhd}

vcom -93 -work work {C:/Users/lhenr/OneDrive/Documentos/UFMG/LSD/Lab8/Tudo/Datapath/tb_Datapath.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Datapath

add wave *
view structure
view signals
run 60 ns
