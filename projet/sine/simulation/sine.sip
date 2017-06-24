set_global_assignment -entity "sine" -library "lib_sine" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "sine" -library "lib_sine" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "sine" -library "lib_sine" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_sine" -name SPD_FILE [file join $::quartus(sip_path) "../sine.spd"]
set_global_assignment -library "lib_sine" -name MISC_FILE [file join $::quartus(sip_path) "../../sine.qsys"]

set_global_assignment -library "lib_sine" -name MISC_FILE [file join $::quartus(sip_path) "sine.vhd"]
set_global_assignment -library "lib_sine" -name MISC_FILE [file join $::quartus(sip_path) "submodules/sine_nco_ii_0_sin.hex"]
set_global_assignment -library "lib_sine" -name MISC_FILE [file join $::quartus(sip_path) "submodules/sine_nco_ii_0_tb.vhd"]
set_global_assignment -library "lib_sine" -name MISC_FILE [file join $::quartus(sip_path) "submodules/sine_nco_ii_0.vho"]
