library ieee;
use ieee.std_logic_1164.all;
use work.my_lib.all;

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
		FPGA_I2C_SDAT 		: inout std_logic;
		--Pour la musique (switch)
		types				: in std_logic_vector(1 downto 0);
		enable			: in std_logic;
		effects			: in std_logic_vector(1 downto 0);
		parametre		: in std_logic_vector(4 downto 0)
		
		
		);
	end top_level;
	
architecture structural of top_level is
	signal clock_100	:std_logic;
	signal pll_reset	:std_logic:='0';
	signal audio		:std_logic_vector(23 downto 0);
	signal note			:std_logic_vector(15 downto 0);
	signal DATA_to_ACC:std_logic_vector(19 downto 0);

	

--	component CodecAudio is
--		port (
--			audio_i2c_o_SDAT          : inout std_logic := 'X'; 
--			audio_i2c_o_SCLK          : out   std_logic;        
--			audio_o_BCLK              : in    std_logic := 'X'; 
--			audio_o_DACDAT            : out   std_logic;        
--			audio_o_DACLRCK           : in    std_logic := 'X'; 
--			clk_clk                   : in    std_logic := 'X'; 
--			pll_0_locked_export       : out   std_logic;        
--			ps2_o_CLK                 : inout std_logic := 'X'; 
--			ps2_o_DAT                 : inout std_logic := 'X'; 
--			reset_reset_n             : in    std_logic := 'X'; 
--			dacchip_pll_audio_clk_clk : out   std_logic;
--			toggleaccmat_i_export     : in    std_logic := 'X';
--			datatoaccmat_o_export     : out   std_logic_vector(19 downto 0);                    
--			datafromaccmat_i_export   : in    std_logic_vector(23 downto 0) := (others => 'X') 
--		);
--	end component CodecAudio;

begin
	
	pll:clk_mtl port map(
			refclk   =>CLOCK_50,
			rst      =>pll_reset,
			outclk_0 =>clock_100
		);
		
--	u0 : CodecAudio
--		port map (
--			audio_i2c_o_SDAT          => FPGA_I2C_SDAT,         						--           audio_i2c_o.SDAT
--			audio_i2c_o_SCLK          => FPGA_I2C_SCLK,         						--                      .SCLK
--			audio_o_BCLK              => AUD_BCLK,            							--               audio_o.BCLK
--			audio_o_DACDAT            => AUD_DACDAT,           						--                      .DACDAT
--			audio_o_DACLRCK           => AUD_DACLRCK,           						--                      .DACLRCK
--			clk_clk                   => clock_100,                   				--                   clk.clk
--			pll_0_locked_export       => pll_locked,       								--          pll_0_locked.export
--			ps2_o_CLK                 => PS2_CLK,                						--                 ps2_o.CLK
--			ps2_o_DAT                 => PS2_DAT,                 					--                      .DAT
--			reset_reset_n             => RESET,             							--                 reset.reset_n
--			dacchip_pll_audio_clk_clk => AUD_XCK,  										-- dacchip_pll_audio_clk.clk
--			datatoaccmat_o_export     => DATA_TO_ACC_MAT,    							--        datatoaccmat_o.export
--			datafromaccmat_i_export   => audio							   --      datafromaccmat_i.export
--		);
		
	accelerateur_audio: global_1
		port map(
			--Signal d'horloge a 100MHz
			clk 			=>clock_100,
			--Input 
			type_effet	=> types,
			parametre	=>parametre,
			--Pour la generation de note
			note_type	=> DATA_to_ACC(17 downto 16),
			frequency_in=> DATA_to_ACC(15 downto 0),
			note_on		=>DATA_to_ACC(18),
			new_event	=>DATA_to_ACC(19),
			
			enable		=>enable,
			--signal de remise a zero
			reset 		=>reset,
			--result
			song	 		=>audio
		);
		
	control_logic:process(clock_100) 
	begin
		
		
	end process;
		
		
end;