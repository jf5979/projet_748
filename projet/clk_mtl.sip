set_global_assignment -entity "clk_mtl" -library "lib_clk_mtl" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "clk_mtl" -library "lib_clk_mtl" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "clk_mtl" -library "lib_clk_mtl" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_clk_mtl" -name SPD_FILE [file join $::quartus(sip_path) "clk_mtl.spd"]

set_global_assignment -library "lib_clk_mtl" -name MISC_FILE [file join $::quartus(sip_path) "clk_mtl_sim/clk_mtl.vho"]
