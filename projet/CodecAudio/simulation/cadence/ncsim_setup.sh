
# (C) 2001-2017 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 15.1 185 win32 2017.07.21.00:48:04

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script can be used to simulate the following IP:
#     CodecAudio
# To create a top-level simulation script which compiles other
# IP, and manages other system issues, copy the following template
# and adapt it to your needs:
# 
# # Start of template
# # If the copied and modified template file is "ncsim.sh", run it as:
# #   ./ncsim.sh
# #
# # Do the file copy, dev_com and com steps
# source ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1
# 
# # Compile the top level module
# ncvlog -sv "$QSYS_SIMDIR/../top.sv"
# 
# # Do the elaboration and sim steps
# # Override the top-level name
# # Override the user-defined sim options, so the simulation
# # runs forever (until $finish()).
# source ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=top \
# USER_DEFINED_SIM_OPTIONS=""
# # End of template
# ----------------------------------------
# If CodecAudio is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 15.1 185 win32 2017.07.21.00:48:04
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="CodecAudio"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/altera_lite/15.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/crosser/
mkdir -p ./libraries/rsp_mux_001/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux_001/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux_005/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux_001/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/router_007/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router_001/
mkdir -p ./libraries/router/
mkdir -p ./libraries/audio_avalon_audio_slave_agent_rdata_fifo/
mkdir -p ./libraries/audio_avalon_audio_slave_agent_rsp_fifo/
mkdir -p ./libraries/cpu_data_master_translator/
mkdir -p ./libraries/reset_from_locked/
mkdir -p ./libraries/audio_pll/
mkdir -p ./libraries/cpu/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/timer1/
mkdir -p ./libraries/timer0/
mkdir -p ./libraries/sysid/
mkdir -p ./libraries/pll_0/
mkdir -p ./libraries/onchipmem/
mkdir -p ./libraries/jtag_uart_0/
mkdir -p ./libraries/dac_pll/
mkdir -p ./libraries/ToggleAccMat/
mkdir -p ./libraries/DataToAccMat/
mkdir -p ./libraries/DataFromAccMat/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cyclonev/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/submodules/CodecAudio_onchipmem.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim_ver     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                -work altera               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"            -work altera               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"               -work altera               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"            -work altera               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"         -work altera               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                    -work altera               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                              -work lpm                  
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                             -work lpm                  
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                           -work sgate                
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                -work sgate                
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                 -work altera_mf            
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                            -work altera_mf            
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"              -work altera_lnsim         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                       -work cyclonev             
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                  -work cyclonev             
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_avalon_st_adapter_error_adapter_0.vho"                        -work error_adapter_0                           -cdslib ./cds_libs/error_adapter_0.cds.lib                          
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_avalon_st_adapter.vhd"                                        -work avalon_st_adapter                         -cdslib ./cds_libs/avalon_st_adapter.cds.lib                        
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS  "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                           -work crosser                                   -cdslib ./cds_libs/crosser.cds.lib                                  
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_rsp_mux_001.vho"                                              -work rsp_mux_001                               -cdslib ./cds_libs/rsp_mux_001.cds.lib                              
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_rsp_mux.vho"                                                  -work rsp_mux                                   -cdslib ./cds_libs/rsp_mux.cds.lib                                  
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_rsp_demux_001.vho"                                            -work rsp_demux_001                             -cdslib ./cds_libs/rsp_demux_001.cds.lib                            
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_rsp_demux.vho"                                                -work rsp_demux                                 -cdslib ./cds_libs/rsp_demux.cds.lib                                
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_cmd_mux_005.vho"                                              -work cmd_mux_005                               -cdslib ./cds_libs/cmd_mux_005.cds.lib                              
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_cmd_mux.vho"                                                  -work cmd_mux                                   -cdslib ./cds_libs/cmd_mux.cds.lib                                  
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_cmd_demux_001.vho"                                            -work cmd_demux_001                             -cdslib ./cds_libs/cmd_demux_001.cds.lib                            
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_cmd_demux.vho"                                                -work cmd_demux                                 -cdslib ./cds_libs/cmd_demux.cds.lib                                
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_router_007.vho"                                               -work router_007                                -cdslib ./cds_libs/router_007.cds.lib                               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_router_002.vho"                                               -work router_002                                -cdslib ./cds_libs/router_002.cds.lib                               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_router_001.vho"                                               -work router_001                                -cdslib ./cds_libs/router_001.cds.lib                               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_router.vho"                                                   -work router                                    -cdslib ./cds_libs/router.cds.lib                                   
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_audio_avalon_audio_slave_agent_rdata_fifo.vho"                -work audio_avalon_audio_slave_agent_rdata_fifo -cdslib ./cds_libs/audio_avalon_audio_slave_agent_rdata_fifo.cds.lib
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0_audio_avalon_audio_slave_agent_rsp_fifo.vho"                  -work audio_avalon_audio_slave_agent_rsp_fifo   -cdslib ./cds_libs/audio_avalon_audio_slave_agent_rsp_fifo.cds.lib  
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS  "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                                        -work cpu_data_master_translator                -cdslib ./cds_libs/cpu_data_master_translator.cds.lib               
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_up_avalon_reset_from_locked_signal.v"                                               -work reset_from_locked                         -cdslib ./cds_libs/reset_from_locked.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_dac_pll_audio_pll.vho"                                                          -work audio_pll                                 -cdslib ./cds_libs/audio_pll.cds.lib                                
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu.vhd"                                                                    -work cpu                                       -cdslib ./cds_libs/cpu.cds.lib                                      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_debug_slave_sysclk.vhd"                                                 -work cpu                                       -cdslib ./cds_libs/cpu.cds.lib                                      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_debug_slave_tck.vhd"                                                    -work cpu                                       -cdslib ./cds_libs/cpu.cds.lib                                      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_debug_slave_wrapper.vhd"                                                -work cpu                                       -cdslib ./cds_libs/cpu.cds.lib                                      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_cpu_cpu_test_bench.vhd"                                                         -work cpu                                       -cdslib ./cds_libs/cpu.cds.lib                                      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_irq_mapper.vho"                                                                 -work irq_mapper                                -cdslib ./cds_libs/irq_mapper.cds.lib                               
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_mm_interconnect_0.vhd"                                                          -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_audio_avalon_audio_slave_translator.vhd"                      -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_audio_and_video_config_avalon_av_config_slave_translator.vhd" -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_translator.vhd"                 -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_ps2_avalon_ps2_slave_translator.vhd"                          -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_sysid_control_slave_translator.vhd"                           -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_cpu_debug_mem_slave_translator.vhd"                           -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_onchipmem_s1_translator.vhd"                                  -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_timer0_s1_translator.vhd"                                     -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_toggleaccmat_s1_translator.vhd"                               -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_datafromaccmat_s1_translator.vhd"                             -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_cpu_data_master_translator.vhd"                               -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/codecaudio_mm_interconnect_0_cpu_instruction_master_translator.vhd"                        -work mm_interconnect_0                         -cdslib ./cds_libs/mm_interconnect_0.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_timer1.vhd"                                                                     -work timer1                                    -cdslib ./cds_libs/timer1.cds.lib                                   
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_timer0.vhd"                                                                     -work timer0                                    -cdslib ./cds_libs/timer0.cds.lib                                   
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_sysid.vho"                                                                      -work sysid                                     -cdslib ./cds_libs/sysid.cds.lib                                    
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_pll_0.vho"                                                                      -work pll_0                                     -cdslib ./cds_libs/pll_0.cds.lib                                    
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_onchipmem.vhd"                                                                  -work onchipmem                                 -cdslib ./cds_libs/onchipmem.cds.lib                                
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_jtag_uart_0.vhd"                                                                -work jtag_uart_0                               -cdslib ./cds_libs/jtag_uart_0.cds.lib                              
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_dac_pll.vhd"                                                                    -work dac_pll                                   -cdslib ./cds_libs/dac_pll.cds.lib                                  
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_cpu.vhd"                                                                        -work cpu                                       -cdslib ./cds_libs/cpu.cds.lib                                      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_ToggleAccMat.vhd"                                                               -work ToggleAccMat                              -cdslib ./cds_libs/ToggleAccMat.cds.lib                             
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_DataToAccMat.vhd"                                                               -work DataToAccMat                              -cdslib ./cds_libs/DataToAccMat.cds.lib                             
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/CodecAudio_DataFromAccMat.vhd"                                                             -work DataFromAccMat                            -cdslib ./cds_libs/DataFromAccMat.cds.lib                           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/CodecAudio.vhd"                                                                                                                                                                                                           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/codecaudio_rst_controller.vhd"                                                                                                                                                                                            
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/codecaudio_rst_controller_001.vhd"                                                                                                                                                                                        
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen -relax $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
