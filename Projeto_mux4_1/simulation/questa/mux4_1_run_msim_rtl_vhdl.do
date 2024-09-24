transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Win10/Documents/Projetos_Quartus/Projeto_mux4_1/mux4_1.vhd}

