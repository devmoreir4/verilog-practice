transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Sistema {C:/intelFPGA_lite/18.1/Sistema/sensor_system.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Sistema {C:/intelFPGA_lite/18.1/Sistema/mux_8to1.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Sistema {C:/intelFPGA_lite/18.1/Sistema/parity_generator.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Sistema {C:/intelFPGA_lite/18.1/Sistema/packet_transmitter.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Sistema {C:/intelFPGA_lite/18.1/Sistema/demux_1to8.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Sistema {C:/intelFPGA_lite/18.1/Sistema/parity_checker.v}

