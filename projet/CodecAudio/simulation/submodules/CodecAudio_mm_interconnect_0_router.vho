--IP Functional Simulation Model
--VERSION_BEGIN 15.1 cbx_mgl 2015:10:21:18:12:49:SJ cbx_simgen 2015:10:21:18:09:23:SJ  VERSION_END


-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = mux21 101 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  CodecAudio_mm_interconnect_0_router IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (97 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (11 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (97 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END CodecAudio_mm_interconnect_0_router;

 ARCHITECTURE RTL OF CodecAudio_mm_interconnect_0_router IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_106m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_107m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_109m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_110m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_111m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_112m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_123m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_124m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_125m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_126m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_127m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_128m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_129m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_140m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_141m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_142m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_143m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_144m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_145m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_146m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_150m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_158m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_159m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_160m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_161m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_162m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_163m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_164m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_168m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_169m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_175m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_176m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_177m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_178m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_179m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_180m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_181m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_182m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_185m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_186m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_192m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_193m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_194m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_195m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_196m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_197m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_198m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_199m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_200m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_202m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_203m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_42m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_43m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_57m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_59m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_60m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_75m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_76m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_77m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_78m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_89m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_92m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_93m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_94m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_channel_95m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_101m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_102m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_103m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_104m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_118m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_119m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_120m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_121m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_135m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_136m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_137m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_138m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_152m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_153m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_154m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_155m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_170m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_171m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_172m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_173m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_187m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_188m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_189m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_190m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_204m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_205m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_206m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_207m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_51m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_66m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_67m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_68m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_84m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_85m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_86m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_codecaudio_mm_interconnect_0_router_src_data_87m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range127w370w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range130w340w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range148w305w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w5w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range130w319w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range133w320w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range151w304w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_always1_0_546_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_always1_1_651_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_src_channel_1_483_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_src_channel_2_504_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range127w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range130w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range133w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range151w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range127w370w(0) <= wire_w_sink_data_range127w(0) AND wire_w_lg_w_sink_data_range130w319w(0);
	wire_w_lg_w_sink_data_range130w340w(0) <= wire_w_sink_data_range130w(0) AND wire_w_lg_w_sink_data_range133w320w(0);
	wire_w_lg_w_sink_data_range148w305w(0) <= wire_w_sink_data_range148w(0) AND wire_w_lg_w_sink_data_range151w304w(0);
	wire_w1w(0) <= NOT s_wire_codecaudio_mm_interconnect_0_router_src_channel_1_483_dataout;
	wire_w2w(0) <= NOT s_wire_codecaudio_mm_interconnect_0_router_src_channel_2_504_dataout;
	wire_w5w(0) <= NOT s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout;
	wire_w_lg_w_sink_data_range130w319w(0) <= NOT wire_w_sink_data_range130w(0);
	wire_w_lg_w_sink_data_range133w320w(0) <= NOT wire_w_sink_data_range133w(0);
	wire_w_lg_w_sink_data_range151w304w(0) <= NOT wire_w_sink_data_range151w(0);
	s_wire_codecaudio_mm_interconnect_0_router_always1_0_546_dataout <= ((((((((((((((((NOT sink_data(40)) AND wire_w_lg_w_sink_data_range130w319w(0)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout <= (sink_data(59) AND s_wire_codecaudio_mm_interconnect_0_router_always1_1_651_dataout);
	s_wire_codecaudio_mm_interconnect_0_router_always1_1_651_dataout <= (((((((((((((((((NOT sink_data(39)) AND sink_data(40)) AND wire_w_lg_w_sink_data_range130w319w(0)) AND wire_w_lg_w_sink_data_range133w320w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout <= (sink_data(59) AND s_wire_codecaudio_mm_interconnect_0_router_always1_0_546_dataout);
	s_wire_codecaudio_mm_interconnect_0_router_src_channel_1_483_dataout <= (((((((wire_w_lg_w_sink_data_range148w305w(0) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_src_channel_2_504_dataout <= ((((((((((((((wire_w_lg_w_sink_data_range130w319w(0) AND wire_w_lg_w_sink_data_range133w320w(0)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout <= (((((((((((((wire_w_lg_w_sink_data_range130w340w(0) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout <= ((((((((((((((wire_w_lg_w_sink_data_range127w370w(0) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout <= ((((((((((((((((NOT sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout <= (((((((((((((((sink_data(40) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout <= ((((((((((((((((NOT sink_data(40)) AND wire_w_lg_w_sink_data_range130w319w(0)) AND wire_w_lg_w_sink_data_range133w320w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout <= ((((((((((((((((sink_data(39) AND sink_data(40)) AND wire_w_lg_w_sink_data_range130w319w(0)) AND wire_w_lg_w_sink_data_range133w320w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout <= (((((((((((((((((NOT sink_data(39)) AND (NOT sink_data(40))) AND sink_data(41)) AND wire_w_lg_w_sink_data_range133w320w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND sink_data(55));
	sink_ready <= src_ready;
	src_channel <= ( wire_codecaudio_mm_interconnect_0_router_src_channel_192m_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_193m_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_194m_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_195m_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_196m_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_197m_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_198m_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_199m_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_200m_dataout & s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_202m_dataout & wire_codecaudio_mm_interconnect_0_router_src_channel_203m_dataout);
	src_data <= ( sink_data(97 DOWNTO 85) & wire_codecaudio_mm_interconnect_0_router_src_data_204m_dataout & wire_codecaudio_mm_interconnect_0_router_src_data_205m_dataout & wire_codecaudio_mm_interconnect_0_router_src_data_206m_dataout & wire_codecaudio_mm_interconnect_0_router_src_data_207m_dataout & sink_data(80 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range127w(0) <= sink_data(40);
	wire_w_sink_data_range130w(0) <= sink_data(41);
	wire_w_sink_data_range133w(0) <= sink_data(42);
	wire_w_sink_data_range148w(0) <= sink_data(47);
	wire_w_sink_data_range151w(0) <= sink_data(48);
	wire_codecaudio_mm_interconnect_0_router_src_channel_106m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_89m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_107m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_109m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_92m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_110m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_93m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_111m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_94m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_112m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_95m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_123m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_106m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_124m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_107m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_125m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_126m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_109m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_127m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_110m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_128m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_111m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_129m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_112m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_140m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_123m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_141m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_124m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_142m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_125m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_143m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_126m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_144m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_127m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_145m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_128m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_146m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_129m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_150m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_158m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_140m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_159m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_141m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_160m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_142m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_161m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_143m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_162m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_144m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_163m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_145m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_164m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_146m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_168m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_150m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_169m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_175m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_158m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_176m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_159m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_177m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_160m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_178m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_161m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_179m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_162m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_180m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_163m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_181m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_164m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_182m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_185m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_168m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_186m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_169m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_192m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_175m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_193m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_176m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_194m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_177m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_195m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_178m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_196m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_179m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_197m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_180m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_198m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_181m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_199m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_182m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_200m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_202m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_185m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_203m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_186m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_42m_dataout <= wire_w1w(0) AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_2_504_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_43m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_src_channel_1_483_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_2_504_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_57m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_src_channel_2_504_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_59m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_42m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_60m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_43m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_75m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_57m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_76m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_77m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_59m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_78m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_60m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_89m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_92m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_75m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_93m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_76m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_94m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_77m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_channel_95m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_channel_78m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_101m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_84m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_102m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_85m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_103m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_86m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_104m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_87m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_4_567_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_118m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_101m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_119m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_102m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_120m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_103m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_121m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_104m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_5_588_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_135m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_118m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_136m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_119m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_137m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_120m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_138m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_121m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_6_609_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_152m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_135m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_153m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_136m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_154m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_137m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_155m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_138m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_7_630_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_170m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_152m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_171m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_153m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_172m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_154m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_173m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_155m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_always1_157_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_187m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_170m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_188m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_171m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_189m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_172m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_190m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_173m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_8_672_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_204m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_187m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_205m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_188m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_206m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_189m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_207m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_190m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_9_693_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_51m_dataout <= wire_w1w(0) OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_2_504_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_66m_dataout <= s_wire_codecaudio_mm_interconnect_0_router_src_channel_2_504_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_67m_dataout <= wire_w2w(0) AND NOT(s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_68m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_51m_dataout OR s_wire_codecaudio_mm_interconnect_0_router_src_channel_3_525_dataout;
	wire_codecaudio_mm_interconnect_0_router_src_data_84m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_66m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_85m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_67m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_86m_dataout <= wire_codecaudio_mm_interconnect_0_router_src_data_68m_dataout AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout);
	wire_codecaudio_mm_interconnect_0_router_src_data_87m_dataout <= wire_w5w(0) AND NOT(s_wire_codecaudio_mm_interconnect_0_router_always1_71_dataout);

 END RTL; --CodecAudio_mm_interconnect_0_router
--synopsys translate_on
--VALID FILE
