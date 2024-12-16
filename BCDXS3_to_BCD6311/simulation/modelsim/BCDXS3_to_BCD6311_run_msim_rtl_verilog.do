transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Carlos/Desktop/BCDXS3_to_BCD6311 {C:/Users/Carlos/Desktop/BCDXS3_to_BCD6311/BCDXS3_to_BCD6311.v}

