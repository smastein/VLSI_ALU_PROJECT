#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 09/08/2019 23:21:42
#
#####################################################################


read_mmmc /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/synth/RESULTS/mtm_Alu.mmmc.tcl

read_physical -lef {/cad/dk/umc180/SUS/SUSLIB_UCL_tech.lef /cad/dk/umc180/SUS/SUSLIB_UCL.lef}

read_netlist /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/synth/RESULTS/mtm_Alu.v

init_design
