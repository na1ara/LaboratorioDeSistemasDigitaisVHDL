## NOTE:  Do not edit this file.
##
vlib work
vcom -explicit  -93 "DivisorClock.vhd"
vcom -explicit  -93 "tb_DivisorClock.vhd"
vsim -t 1ps   -lib work tb_DivisorClock
add wave sim:/tb_DivisorClock/*
#do {wave.do}
view wave
view structure
view signals
run 10000ms
#quit -force
