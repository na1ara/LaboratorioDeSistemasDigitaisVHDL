transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Door_opener.vho}

vcom -93 -work work {C:/Users/Aluno/Desktop/Hermes PN1/Bernardo - Luiz - Naiara/Aula 2/tb_Door_opener.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Door_opener_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  tb_Door_opener

add wave *
view structure
view signals
run -all
