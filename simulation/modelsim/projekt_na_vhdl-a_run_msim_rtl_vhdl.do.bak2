transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {D:/VHDL_MAXimator/Workspace/VHDL_projekt/sampler.vhd}
vcom -2008 -work work {D:/VHDL_MAXimator/Workspace/VHDL_projekt/memory.vhd}
vcom -2008 -work work {D:/VHDL_MAXimator/Workspace/VHDL_projekt/prescaler.vhd}
vcom -2008 -work work {D:/VHDL_MAXimator/Workspace/VHDL_projekt/sampleAndStore.vhd}

vcom -2008 -work work {D:/VHDL_MAXimator/Workspace/VHDL_projekt/simulation/modelsim/sampleAndStore_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  sampleAndStore_tb

add wave *
view structure
view signals
run -all
