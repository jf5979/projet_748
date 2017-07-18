
module CodecAudio (
	audio_i2c_o_SDAT,
	audio_i2c_o_SCLK,
	audio_o_BCLK,
	audio_o_DACDAT,
	audio_o_DACLRCK,
	clk_clk,
	dacchip_pll_audio_clk_clk,
	datafromaccmat_i_export,
	datatoaccmat_o_export,
	pll_0_locked_export,
	ps2_o_CLK,
	ps2_o_DAT,
	reset_reset_n,
	toggleaccmat_i_export);	

	inout		audio_i2c_o_SDAT;
	output		audio_i2c_o_SCLK;
	input		audio_o_BCLK;
	output		audio_o_DACDAT;
	input		audio_o_DACLRCK;
	input		clk_clk;
	output		dacchip_pll_audio_clk_clk;
	input	[23:0]	datafromaccmat_i_export;
	output	[19:0]	datatoaccmat_o_export;
	output		pll_0_locked_export;
	inout		ps2_o_CLK;
	inout		ps2_o_DAT;
	input		reset_reset_n;
	input		toggleaccmat_i_export;
endmodule
