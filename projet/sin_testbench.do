vcom sin_testbench.vhd

vsim sin_testbench
add wave * 

#Clock de 10 ns, soit 5 ns à 1 et 10 ns à 0
force clk 1,0 5 ns -r 10 ns

#Assignation des signaux
force enable 1
force reset 0
force phase "0"
force frequency "0010011100010000"


run 1000ns

wave zoom full