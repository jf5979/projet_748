library ieee;
use ieee.std_logic_1164.all;

entity top_level is
	port ( 	
		CLOCK_50 			: in std_logic;	
		RESET 				: in std_logic;
		--acceleration materielle
		TOGGLE_ACCMAT  	: in std_logic;
		DATA_TO_ACC_MAT	: out   std_logic_vector(19 downto 0);
		DATA_FROM_ACC_MAT	: in   std_logic_vector(23 downto 0);
		--bus ps2
		PS2_CLK 				: inout std_logic;
		PS2_DAT 				: inout std_logic;
		--bus dac en master mode
		AUD_XCK 				: out std_logic;
		AUD_BCLK 			: in std_logic;
		AUD_DACDAT 			: out std_logic;
		AUD_DACLRCK 		: in std_logic;
		pll_locked			: out std_logic :='0';
		--bus i2c pour communiquer au dac
		FPGA_I2C_SCLK 		: out std_logic;
		FPGA_I2C_SDAT 		: inout std_logic
		);
	end top_level;
	
architecture structural of top_level is


	component CodecAudio is
		port (
			audio_i2c_o_SDAT          : inout std_logic := 'X'; 
			audio_i2c_o_SCLK          : out   std_logic;        
			audio_o_BCLK              : in    std_logic := 'X'; 
			audio_o_DACDAT            : out   std_logic;        
			audio_o_DACLRCK           : in    std_logic := 'X'; 
			clk_clk                   : in    std_logic := 'X'; 
			pll_0_locked_export       : out   std_logic;        
			ps2_o_CLK                 : inout std_logic := 'X'; 
			ps2_o_DAT                 : inout std_logic := 'X'; 
			reset_reset_n             : in    std_logic := 'X'; 
			dacchip_pll_audio_clk_clk : out   std_logic;
			toggleaccmat_i_export     : in    std_logic := 'X';
			datatoaccmat_o_export     : out   std_logic_vector(19 downto 0);                    
			datafromaccmat_i_export   : in    std_logic_vector(23 downto 0) := (others => 'X') 
		);
	end component CodecAudio;

begin
	
	u0 : component CodecAudio
		port map (
			audio_i2c_o_SDAT          => FPGA_I2C_SDAT,         						--           audio_i2c_o.SDAT
			audio_i2c_o_SCLK          => FPGA_I2C_SCLK,         						--                      .SCLK
			audio_o_BCLK              => AUD_BCLK,            							--               audio_o.BCLK
			audio_o_DACDAT            => AUD_DACDAT,           						--                      .DACDAT
			audio_o_DACLRCK           => AUD_DACLRCK,           						--                      .DACLRCK
			clk_clk                   => CLOCK_50,                   				--                   clk.clk
			pll_0_locked_export       => pll_locked,       								--          pll_0_locked.export
			ps2_o_CLK                 => PS2_CLK,                						--                 ps2_o.CLK
			ps2_o_DAT                 => PS2_DAT,                 					--                      .DAT
			reset_reset_n             => RESET,             							--                 reset.reset_n
			dacchip_pll_audio_clk_clk => AUD_XCK,  										-- dacchip_pll_audio_clk.clk
			datatoaccmat_o_export     => DATA_TO_ACC_MAT,    							--        datatoaccmat_o.export
			datafromaccmat_i_export   => DATA_FROM_ACC_MAT							   --      datafromaccmat_i.export
		);
end;