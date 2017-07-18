	CodecAudio u0 (
		.audio_i2c_o_SDAT          (<connected-to-audio_i2c_o_SDAT>),          //           audio_i2c_o.SDAT
		.audio_i2c_o_SCLK          (<connected-to-audio_i2c_o_SCLK>),          //                      .SCLK
		.audio_o_BCLK              (<connected-to-audio_o_BCLK>),              //               audio_o.BCLK
		.audio_o_DACDAT            (<connected-to-audio_o_DACDAT>),            //                      .DACDAT
		.audio_o_DACLRCK           (<connected-to-audio_o_DACLRCK>),           //                      .DACLRCK
		.clk_clk                   (<connected-to-clk_clk>),                   //                   clk.clk
		.dacchip_pll_audio_clk_clk (<connected-to-dacchip_pll_audio_clk_clk>), // dacchip_pll_audio_clk.clk
		.datafromaccmat_i_export   (<connected-to-datafromaccmat_i_export>),   //      datafromaccmat_i.export
		.datatoaccmat_o_export     (<connected-to-datatoaccmat_o_export>),     //        datatoaccmat_o.export
		.pll_0_locked_export       (<connected-to-pll_0_locked_export>),       //          pll_0_locked.export
		.ps2_o_CLK                 (<connected-to-ps2_o_CLK>),                 //                 ps2_o.CLK
		.ps2_o_DAT                 (<connected-to-ps2_o_DAT>),                 //                      .DAT
		.reset_reset_n             (<connected-to-reset_reset_n>),             //                 reset.reset_n
		.toggleaccmat_i_export     (<connected-to-toggleaccmat_i_export>)      //        toggleaccmat_i.export
	);

