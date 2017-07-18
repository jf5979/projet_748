	component CodecAudio is
		port (
			audio_i2c_o_SDAT          : inout std_logic                     := 'X';             -- SDAT
			audio_i2c_o_SCLK          : out   std_logic;                                        -- SCLK
			audio_o_BCLK              : in    std_logic                     := 'X';             -- BCLK
			audio_o_DACDAT            : out   std_logic;                                        -- DACDAT
			audio_o_DACLRCK           : in    std_logic                     := 'X';             -- DACLRCK
			clk_clk                   : in    std_logic                     := 'X';             -- clk
			dacchip_pll_audio_clk_clk : out   std_logic;                                        -- clk
			datafromaccmat_i_export   : in    std_logic_vector(23 downto 0) := (others => 'X'); -- export
			datatoaccmat_o_export     : out   std_logic_vector(19 downto 0);                    -- export
			pll_0_locked_export       : out   std_logic;                                        -- export
			ps2_o_CLK                 : inout std_logic                     := 'X';             -- CLK
			ps2_o_DAT                 : inout std_logic                     := 'X';             -- DAT
			reset_reset_n             : in    std_logic                     := 'X';             -- reset_n
			toggleaccmat_i_export     : in    std_logic                     := 'X'              -- export
		);
	end component CodecAudio;

	u0 : component CodecAudio
		port map (
			audio_i2c_o_SDAT          => CONNECTED_TO_audio_i2c_o_SDAT,          --           audio_i2c_o.SDAT
			audio_i2c_o_SCLK          => CONNECTED_TO_audio_i2c_o_SCLK,          --                      .SCLK
			audio_o_BCLK              => CONNECTED_TO_audio_o_BCLK,              --               audio_o.BCLK
			audio_o_DACDAT            => CONNECTED_TO_audio_o_DACDAT,            --                      .DACDAT
			audio_o_DACLRCK           => CONNECTED_TO_audio_o_DACLRCK,           --                      .DACLRCK
			clk_clk                   => CONNECTED_TO_clk_clk,                   --                   clk.clk
			dacchip_pll_audio_clk_clk => CONNECTED_TO_dacchip_pll_audio_clk_clk, -- dacchip_pll_audio_clk.clk
			datafromaccmat_i_export   => CONNECTED_TO_datafromaccmat_i_export,   --      datafromaccmat_i.export
			datatoaccmat_o_export     => CONNECTED_TO_datatoaccmat_o_export,     --        datatoaccmat_o.export
			pll_0_locked_export       => CONNECTED_TO_pll_0_locked_export,       --          pll_0_locked.export
			ps2_o_CLK                 => CONNECTED_TO_ps2_o_CLK,                 --                 ps2_o.CLK
			ps2_o_DAT                 => CONNECTED_TO_ps2_o_DAT,                 --                      .DAT
			reset_reset_n             => CONNECTED_TO_reset_reset_n,             --                 reset.reset_n
			toggleaccmat_i_export     => CONNECTED_TO_toggleaccmat_i_export      --        toggleaccmat_i.export
		);

