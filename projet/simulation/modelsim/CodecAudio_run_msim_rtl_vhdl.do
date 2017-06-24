transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib sine
vmap sine sine
vlog -vlog01compat -work sine +incdir+c:/users/jf/drive/ets/e2017/ele748/projet/code/projet/db/ip/sine {c:/users/jf/drive/ets/e2017/ele748/projet/code/projet/db/ip/sine/sine.v}
vlog -vlog01compat -work sine +incdir+c:/users/jf/drive/ets/e2017/ele748/projet/code/projet/db/ip/sine/submodules {c:/users/jf/drive/ets/e2017/ele748/projet/code/projet/db/ip/sine/submodules/sine_nco_ii_0.v}
vcom -93 -work work {C:/Users/JF/Drive/ETS/E2017/ELE748/Projet/code/projet/sin_gen.vhd}

vcom -93 -work work {C:/Users/JF/Drive/ETS/E2017/ELE748/Projet/code/projet/sin_gen.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -L sine -voptargs="+acc"  sin_gen

do C:/Users/JF/Drive/ETS/E2017/ELE748/Projet/code/projet/sin_testbench.do
