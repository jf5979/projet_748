// sine.v

// Generated using ACDS version 15.1 185

`timescale 1 ps / 1 ps
module sine (
		input  wire        clk,         // clk.clk
		input  wire        clken,       //  in.clken
		input  wire [31:0] phi_inc_i,   //    .phi_inc_i
		input  wire [31:0] freq_mod_i,  //    .freq_mod_i
		input  wire [15:0] phase_mod_i, //    .phase_mod_i
		output wire [23:0] fsin_o,      // out.fsin_o
		output wire        out_valid,   //    .out_valid
		input  wire        reset_n      // rst.reset_n
	);

	sine_nco_ii_0 nco_ii_0 (
		.clk         (clk),         // clk.clk
		.reset_n     (reset_n),     // rst.reset_n
		.clken       (clken),       //  in.clken
		.phi_inc_i   (phi_inc_i),   //    .phi_inc_i
		.freq_mod_i  (freq_mod_i),  //    .freq_mod_i
		.phase_mod_i (phase_mod_i), //    .phase_mod_i
		.fsin_o      (fsin_o),      // out.fsin_o
		.out_valid   (out_valid)    //    .out_valid
	);

endmodule
