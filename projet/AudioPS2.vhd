	library ieee;
use ieee.std_logic_1164.all;

entity AudioPS2 is
		port (
			clk_100M       : in    std_logic := 'X'; 
			reset 			: in    std_logic := 'X'; 
			ps2_CLK     	: inout std_logic := 'X'; 
			ps2_DAT    		: inout std_logic := 'X'; 
			Audio_SDAT  	: inout std_logic := 'X'; 
			Audio_SCLK 	 	: out   std_logic         
		);
	end AudioPS2;	
	
architecture structural of AudioPS2 is
	component CodecAudio is
		port (
			clk_clk       : in    std_logic := 'X';
			reset_reset_n : in    std_logic := 'X';
			ps2_o_CLK     : inout std_logic := 'X';
			ps2_o_DAT     : inout std_logic := 'X';
			audio_o_SDAT  : inout std_logic := 'X';
			audio_o_SCLK  : out   std_logic         
		);
	end component CodecAudio;

	begin
	u0 : component CodecAudio
		port map (
			clk_clk       => clk_100M,
			reset_reset_n => reset, 
			ps2_o_CLK     => ps2_CLK,
			ps2_o_DAT     => ps2_DAT,
			audio_o_SDAT  => Audio_SDAT,
			audio_o_SCLK  => Audio_SCLK
		);
	end;