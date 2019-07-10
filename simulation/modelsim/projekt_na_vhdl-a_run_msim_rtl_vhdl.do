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

