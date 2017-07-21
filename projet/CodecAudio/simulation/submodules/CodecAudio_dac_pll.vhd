-- CodecAudio_dac_pll.vhd

-- This file was auto-generated from altera_up_avalon_audio_pll_hw.tcl.  If you edit it your changes
-- will probably be lost.
-- 
-- Generated using ACDS version 15.1 185

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CodecAudio_dac_pll is
	port (
		ref_clk_clk        : in  std_logic := '0'; --      ref_clk.clk
		ref_reset_reset    : in  std_logic := '0'; --    ref_reset.reset
		audio_clk_clk      : out std_logic;        --    audio_clk.clk
		reset_source_reset : out std_logic         -- reset_source.reset
	);
end entity CodecAudio_dac_pll;

architecture rtl of CodecAudio_dac_pll is
	component CodecAudio_dac_pll_audio_pll is
		port (
			refclk   : in  std_logic := 'X'; -- clk
			rst      : in  std_logic := 'X'; -- reset
			outclk_0 : out std_logic;        -- clk
			locked   : out std_logic         -- export
		);
	end component CodecAudio_dac_pll_audio_pll;

	component altera_up_avalon_reset_from_locked_signal is
		port (
			reset  : out std_logic;        -- reset
			locked : in  std_logic := 'X'  -- export
		);
	end component altera_up_avalon_reset_from_locked_signal;

	signal audio_pll_locked_export : std_logic; -- audio_pll:locked -> reset_from_locked:locked

begin

	audio_pll : component CodecAudio_dac_pll_audio_pll
		port map (
			refclk   => ref_clk_clk,             --  refclk.clk
			rst      => ref_reset_reset,         --   reset.reset
			outclk_0 => audio_clk_clk,           -- outclk0.clk
			locked   => audio_pll_locked_export  --  locked.export
		);

	reset_from_locked : component altera_up_avalon_reset_from_locked_signal
		port map (
			reset  => reset_source_reset,      -- reset_source.reset
			locked => audio_pll_locked_export  --       locked.export
		);

end architecture rtl; -- of CodecAudio_dac_pll