transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/fbarr/OneDrive/Desktop/Quartus\ Project/SistDigitais/CodTeclado {C:/Users/fbarr/OneDrive/Desktop/Quartus Project/SistDigitais/CodTeclado/CodTeclado.v}
vlog -vlog01compat -work work +incdir+C:/Users/fbarr/OneDrive/Desktop/Quartus\ Project/SistDigitais/CodTeclado {C:/Users/fbarr/OneDrive/Desktop/Quartus Project/SistDigitais/CodTeclado/DriverTeclado.v}
vlog -vlog01compat -work work +incdir+C:/Users/fbarr/OneDrive/Desktop/Quartus\ Project/SistDigitais/CodTeclado {C:/Users/fbarr/OneDrive/Desktop/Quartus Project/SistDigitais/CodTeclado/CodificadorGray.v}
vlog -vlog01compat -work work +incdir+C:/Users/fbarr/OneDrive/Desktop/Quartus\ Project/SistDigitais/CodTeclado {C:/Users/fbarr/OneDrive/Desktop/Quartus Project/SistDigitais/CodTeclado/DecodificadorGray.v}

vlog -vlog01compat -work work +incdir+C:/Users/fbarr/OneDrive/Desktop/Quartus\ Project/SistDigitais/CodTeclado {C:/Users/fbarr/OneDrive/Desktop/Quartus Project/SistDigitais/CodTeclado/CodTecladoTB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  CodTecladoTB

add wave *
view structure
view signals
run -all
