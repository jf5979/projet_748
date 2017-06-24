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
 USE work.all;


 LIBRARY altera_mf;
 USE altera_mf.altera_mf_components.all;

 LIBRARY lpm;
 USE lpm.lpm_components.all;

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = altsyncram 1 lpm_add_sub 3 lpm_counter 1 lut 211 mux21 378 oper_add 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  sine_nco_ii_0 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 clken	:	IN  STD_LOGIC;
		 freq_mod_i	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 fsin_o	:	OUT  STD_LOGIC_VECTOR (23 DOWNTO 0);
		 out_valid	:	OUT  STD_LOGIC;
		 phase_mod_i	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 phi_inc_i	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 reset_n	:	IN  STD_LOGIC
	 ); 
 END sine_nco_ii_0;

 ARCHITECTURE RTL OF sine_nco_ii_0 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_niiil_address_a	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_niiil_q_a	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL	 nl1iOO21	:	STD_LOGIC := '0';
	 SIGNAL	 nl1iOO22	:	STD_LOGIC := '0';
	 SIGNAL	 nl1l0i17	:	STD_LOGIC := '0';
	 SIGNAL	 nl1l0i18	:	STD_LOGIC := '0';
	 SIGNAL	 nl1l0O15	:	STD_LOGIC := '0';
	 SIGNAL	 nl1l0O16	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl1l0O16_w_lg_w_lg_q235w236w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl1l0O16_w_lg_q235w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 nl1l1l19	:	STD_LOGIC := '0';
	 SIGNAL	 nl1l1l20	:	STD_LOGIC := '0';
	 SIGNAL	 nl1lii13	:	STD_LOGIC := '0';
	 SIGNAL	 nl1lii14	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl1lii14_w_lg_w_lg_q217w218w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl1lii14_w_lg_q217w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 nl1lil11	:	STD_LOGIC := '0';
	 SIGNAL	 nl1lil12	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl1lil12_w_lg_w_lg_q212w213w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl1lil12_w_lg_q212w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 nl1liO10	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl1liO10_w_lg_w_lg_q198w199w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl1liO10_w_lg_q198w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 nl1liO9	:	STD_LOGIC := '0';
	 SIGNAL	 nl1lli7	:	STD_LOGIC := '0';
	 SIGNAL	 nl1lli8	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl1lli8_w_lg_w_lg_q186w187w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl1lli8_w_lg_q186w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 nl1lll5	:	STD_LOGIC := '0';
	 SIGNAL	 nl1lll6	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl1lll6_w_lg_w_lg_q162w163w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl1lll6_w_lg_q162w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 nl1llO3	:	STD_LOGIC := '0';
	 SIGNAL	 nl1llO4	:	STD_LOGIC := '0';
	 SIGNAL	 nl1O1l1	:	STD_LOGIC := '0';
	 SIGNAL	 nl1O1l2	:	STD_LOGIC := '0';
	 SIGNAL	n0O0i	:	STD_LOGIC := '0';
	 SIGNAL	n0O0l	:	STD_LOGIC := '0';
	 SIGNAL	n0O0O	:	STD_LOGIC := '0';
	 SIGNAL	n0Oii	:	STD_LOGIC := '0';
	 SIGNAL	n0Oil	:	STD_LOGIC := '0';
	 SIGNAL	n0OiO	:	STD_LOGIC := '0';
	 SIGNAL	n0Oli	:	STD_LOGIC := '0';
	 SIGNAL	n0Oll	:	STD_LOGIC := '0';
	 SIGNAL	n0OlO	:	STD_LOGIC := '0';
	 SIGNAL	n0OOi	:	STD_LOGIC := '0';
	 SIGNAL	n0OOl	:	STD_LOGIC := '0';
	 SIGNAL	n0OOO	:	STD_LOGIC := '0';
	 SIGNAL	n110i	:	STD_LOGIC := '0';
	 SIGNAL	n110l	:	STD_LOGIC := '0';
	 SIGNAL	n110O	:	STD_LOGIC := '0';
	 SIGNAL	n111i	:	STD_LOGIC := '0';
	 SIGNAL	n111l	:	STD_LOGIC := '0';
	 SIGNAL	n111O	:	STD_LOGIC := '0';
	 SIGNAL	n11ii	:	STD_LOGIC := '0';
	 SIGNAL	n1ili	:	STD_LOGIC := '0';
	 SIGNAL	n1OOi	:	STD_LOGIC := '0';
	 SIGNAL	n1OOl	:	STD_LOGIC := '0';
	 SIGNAL	ni10i	:	STD_LOGIC := '0';
	 SIGNAL	ni11i	:	STD_LOGIC := '0';
	 SIGNAL	ni11l	:	STD_LOGIC := '0';
	 SIGNAL	ni11O	:	STD_LOGIC := '0';
	 SIGNAL	niiii	:	STD_LOGIC := '0';
	 SIGNAL	niiiO	:	STD_LOGIC := '0';
	 SIGNAL	niili	:	STD_LOGIC := '0';
	 SIGNAL	niill	:	STD_LOGIC := '0';
	 SIGNAL	niilO	:	STD_LOGIC := '0';
	 SIGNAL	niiOi	:	STD_LOGIC := '0';
	 SIGNAL	niiOl	:	STD_LOGIC := '0';
	 SIGNAL	niiOO	:	STD_LOGIC := '0';
	 SIGNAL	nil0i	:	STD_LOGIC := '0';
	 SIGNAL	nil0l	:	STD_LOGIC := '0';
	 SIGNAL	nil0O	:	STD_LOGIC := '0';
	 SIGNAL	nil1i	:	STD_LOGIC := '0';
	 SIGNAL	nil1l	:	STD_LOGIC := '0';
	 SIGNAL	nil1O	:	STD_LOGIC := '0';
	 SIGNAL	nilii	:	STD_LOGIC := '0';
	 SIGNAL	nilil	:	STD_LOGIC := '0';
	 SIGNAL	niliO	:	STD_LOGIC := '0';
	 SIGNAL	nilli	:	STD_LOGIC := '0';
	 SIGNAL	nilll	:	STD_LOGIC := '0';
	 SIGNAL	nillO	:	STD_LOGIC := '0';
	 SIGNAL	nilOi	:	STD_LOGIC := '0';
	 SIGNAL	nilOl	:	STD_LOGIC := '0';
	 SIGNAL	nilOO	:	STD_LOGIC := '0';
	 SIGNAL	niO1i	:	STD_LOGIC := '0';
	 SIGNAL	nl000i	:	STD_LOGIC := '0';
	 SIGNAL	nl000l	:	STD_LOGIC := '0';
	 SIGNAL	nl001i	:	STD_LOGIC := '0';
	 SIGNAL	nl001l	:	STD_LOGIC := '0';
	 SIGNAL	nl001O	:	STD_LOGIC := '0';
	 SIGNAL	nl010i	:	STD_LOGIC := '0';
	 SIGNAL	nl010l	:	STD_LOGIC := '0';
	 SIGNAL	nl010O	:	STD_LOGIC := '0';
	 SIGNAL	nl011i	:	STD_LOGIC := '0';
	 SIGNAL	nl011l	:	STD_LOGIC := '0';
	 SIGNAL	nl011O	:	STD_LOGIC := '0';
	 SIGNAL	nl01ii	:	STD_LOGIC := '0';
	 SIGNAL	nl01il	:	STD_LOGIC := '0';
	 SIGNAL	nl01iO	:	STD_LOGIC := '0';
	 SIGNAL	nl01li	:	STD_LOGIC := '0';
	 SIGNAL	nl01ll	:	STD_LOGIC := '0';
	 SIGNAL	nl01lO	:	STD_LOGIC := '0';
	 SIGNAL	nl01Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl01Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl01OO	:	STD_LOGIC := '0';
	 SIGNAL	nl1O0l	:	STD_LOGIC := '0';
	 SIGNAL	nl1O0O	:	STD_LOGIC := '0';
	 SIGNAL	nl1Oii	:	STD_LOGIC := '0';
	 SIGNAL	nl1Oil	:	STD_LOGIC := '0';
	 SIGNAL	nl1OiO	:	STD_LOGIC := '0';
	 SIGNAL	nl1Oli	:	STD_LOGIC := '0';
	 SIGNAL	nl1Oll	:	STD_LOGIC := '0';
	 SIGNAL	nl1OlO	:	STD_LOGIC := '0';
	 SIGNAL	nl1OOi	:	STD_LOGIC := '0';
	 SIGNAL	nl1OOl	:	STD_LOGIC := '0';
	 SIGNAL	nl1OOO	:	STD_LOGIC := '0';
	 SIGNAL	nli00i	:	STD_LOGIC := '0';
	 SIGNAL	nli00l	:	STD_LOGIC := '0';
	 SIGNAL	nli00O	:	STD_LOGIC := '0';
	 SIGNAL	nli01i	:	STD_LOGIC := '0';
	 SIGNAL	nli01l	:	STD_LOGIC := '0';
	 SIGNAL	nli01O	:	STD_LOGIC := '0';
	 SIGNAL	nli0ii	:	STD_LOGIC := '0';
	 SIGNAL	nli0il	:	STD_LOGIC := '0';
	 SIGNAL	nli0iO	:	STD_LOGIC := '0';
	 SIGNAL	nli0l	:	STD_LOGIC := '0';
	 SIGNAL	nli0li	:	STD_LOGIC := '0';
	 SIGNAL	nli0ll	:	STD_LOGIC := '0';
	 SIGNAL	nli0lO	:	STD_LOGIC := '0';
	 SIGNAL	nli0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nli0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nli1li	:	STD_LOGIC := '0';
	 SIGNAL	nli1ll	:	STD_LOGIC := '0';
	 SIGNAL	nli1lO	:	STD_LOGIC := '0';
	 SIGNAL	nli1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nli1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nli1OO	:	STD_LOGIC := '0';
	 SIGNAL	nlilO	:	STD_LOGIC := '0';
	 SIGNAL	nliOOl	:	STD_LOGIC := '0';
	 SIGNAL	nliOOO	:	STD_LOGIC := '0';
	 SIGNAL	nll00i	:	STD_LOGIC := '0';
	 SIGNAL	nll00l	:	STD_LOGIC := '0';
	 SIGNAL	nll00O	:	STD_LOGIC := '0';
	 SIGNAL	nll01i	:	STD_LOGIC := '0';
	 SIGNAL	nll01l	:	STD_LOGIC := '0';
	 SIGNAL	nll01O	:	STD_LOGIC := '0';
	 SIGNAL	nll0ii	:	STD_LOGIC := '0';
	 SIGNAL	nll0il	:	STD_LOGIC := '0';
	 SIGNAL	nll0iO	:	STD_LOGIC := '0';
	 SIGNAL	nll0li	:	STD_LOGIC := '0';
	 SIGNAL	nll0ll	:	STD_LOGIC := '0';
	 SIGNAL	nll0lO	:	STD_LOGIC := '0';
	 SIGNAL	nll0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nll0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nll0OO	:	STD_LOGIC := '0';
	 SIGNAL	nll10i	:	STD_LOGIC := '0';
	 SIGNAL	nll10l	:	STD_LOGIC := '0';
	 SIGNAL	nll10O	:	STD_LOGIC := '0';
	 SIGNAL	nll11i	:	STD_LOGIC := '0';
	 SIGNAL	nll11l	:	STD_LOGIC := '0';
	 SIGNAL	nll11O	:	STD_LOGIC := '0';
	 SIGNAL	nll1ii	:	STD_LOGIC := '0';
	 SIGNAL	nll1il	:	STD_LOGIC := '0';
	 SIGNAL	nll1iO	:	STD_LOGIC := '0';
	 SIGNAL	nll1li	:	STD_LOGIC := '0';
	 SIGNAL	nll1ll	:	STD_LOGIC := '0';
	 SIGNAL	nll1lO	:	STD_LOGIC := '0';
	 SIGNAL	nll1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nll1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nll1OO	:	STD_LOGIC := '0';
	 SIGNAL	nlli1i	:	STD_LOGIC := '0';
	 SIGNAL	nlO0il	:	STD_LOGIC := '0';
	 SIGNAL	nlO0iO	:	STD_LOGIC := '0';
	 SIGNAL	nlO0li	:	STD_LOGIC := '0';
	 SIGNAL	nlO0ll	:	STD_LOGIC := '0';
	 SIGNAL	nlO0lO	:	STD_LOGIC := '0';
	 SIGNAL	nlO0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlO0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nlO0OO	:	STD_LOGIC := '0';
	 SIGNAL	nlOi0i	:	STD_LOGIC := '0';
	 SIGNAL	nlOi0l	:	STD_LOGIC := '0';
	 SIGNAL	nlOi0O	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1l	:	STD_LOGIC := '0';
	 SIGNAL	nlOi1O	:	STD_LOGIC := '0';
	 SIGNAL	nlOiii	:	STD_LOGIC := '0';
	 SIGNAL	nlOiil	:	STD_LOGIC := '0';
	 SIGNAL	nlOiiO	:	STD_LOGIC := '0';
	 SIGNAL	nlOili	:	STD_LOGIC := '0';
	 SIGNAL	nlOill	:	STD_LOGIC := '0';
	 SIGNAL	nlOilO	:	STD_LOGIC := '0';
	 SIGNAL	nlOiOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOiOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOiOO	:	STD_LOGIC := '0';
	 SIGNAL	nlOl0i	:	STD_LOGIC := '0';
	 SIGNAL	nlOl0l	:	STD_LOGIC := '0';
	 SIGNAL	nlOl0O	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1l	:	STD_LOGIC := '0';
	 SIGNAL	nlOl1O	:	STD_LOGIC := '0';
	 SIGNAL	nlOlii	:	STD_LOGIC := '0';
	 SIGNAL	nlOlil	:	STD_LOGIC := '0';
	 SIGNAL	nlOliO	:	STD_LOGIC := '0';
	 SIGNAL	nlOlli	:	STD_LOGIC := '0';
	 SIGNAL	nlOlll	:	STD_LOGIC := '0';
	 SIGNAL	nlOllO	:	STD_LOGIC := '0';
	 SIGNAL	nlOlOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOlOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOlOO	:	STD_LOGIC := '0';
	 SIGNAL	nlOO0i	:	STD_LOGIC := '0';
	 SIGNAL	nlOO0l	:	STD_LOGIC := '0';
	 SIGNAL	nlOO0O	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1l	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1O	:	STD_LOGIC := '0';
	 SIGNAL	nlOOii	:	STD_LOGIC := '0';
	 SIGNAL	nlOOil	:	STD_LOGIC := '0';
	 SIGNAL	nlOOiO	:	STD_LOGIC := '0';
	 SIGNAL	nlOOli	:	STD_LOGIC := '0';
	 SIGNAL	nlOOll	:	STD_LOGIC := '0';
	 SIGNAL	nlOOlO	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOOOO	:	STD_LOGIC := '0';
	 SIGNAL	wire_nlill_CLRN	:	STD_LOGIC;
	 SIGNAL  wire_nl1O0i_aclr	:	STD_LOGIC;
	 SIGNAL  wire_nl1O0i_dataa	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_nl1O0i_datab	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_nl1O0i_result	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_nl1O0i_w_result_range161w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl1O0i_w_result_range185w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl1O0i_w_result_range197w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nl1O1O_aclr	:	STD_LOGIC;
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_nl1O1O_dataa	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_nl1O1O_datab	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_nl1O1O_result	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_nlO0ii_aclr	:	STD_LOGIC;
	 SIGNAL  wire_nlO0ii_dataa	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_nlO0ii_datab	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_nlO0ii_result	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_nli0O_w_lg_w_q_range27w30w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nli0O_w_lg_w_q_range28w29w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nli0O_q	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nli0O_sclr	:	STD_LOGIC;
	 SIGNAL  wire_nli0O_w_q_range28w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nli0O_w_q_range27w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_n000i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n000l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n000O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n001i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n001l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n001O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n00ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n00il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n00iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n00li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n00ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n00lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n00Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n00Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n00OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n010i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n010l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n010O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n011i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n011l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n011O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0i0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0i0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0i0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0i1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0i1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0i1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0iii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0iil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0iiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0ili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0ill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0ilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0iOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0iOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0iOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0l0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0l0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0l0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0l1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0l1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0l1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0lii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0lil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0liO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0lli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n100O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n101O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1i1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1ill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1ilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1l0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1l0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1l0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1l1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1l1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1l1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1lii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1lil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1liO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1lli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl000O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0i0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0i0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0i0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0i1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0i1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0i1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0iii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0iil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0iiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0iOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0iOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0iOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0l1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0liO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0llO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0Oil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0OiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0Oli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlii1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlil1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlillO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlll1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllllO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlO1OO_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nliOli_a	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nliOli_b	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nliOli_o	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nlO00O_a	:	STD_LOGIC_VECTOR (20 DOWNTO 0);
	 SIGNAL  wire_nlO00O_b	:	STD_LOGIC_VECTOR (20 DOWNTO 0);
	 SIGNAL  wire_nlO00O_o	:	STD_LOGIC_VECTOR (20 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset_n41w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  nl1lOO :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_reset_n41w(0) <= NOT reset_n;
	fsin_o <= ( niiiO & niili & niill & niilO & niiOi & niiOl & niiOO & nil1i & nil1l & nil1O & nil0i & nil0l & nil0O & nilii & nilil & niliO & nilli & nilll & nillO & nilOi & nilOl & nilOO & niO1i & nli0l);
	nl1lOO <= '1';
	out_valid <= nlilO;
	wire_niiil_address_a <= ( n0O0l & n0O0O & n0Oii & n0Oil & n0OiO & n0Oli & n0Oll & n0OlO & n0OOi & n0OOl & n0OOO & ni11i & ni11l & ni11O & ni10i & niiii);
	niiil :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ECC_PIPELINE_STAGE_ENABLED => "FALSE",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "sine_nco_ii_0_sin.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "Cyclone V",
		NUMWORDS_A => 0,
		NUMWORDS_B => 1,
		OPERATION_MODE => "ROM",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "CLOCK0",
		OUTDATA_REG_B => "UNREGISTERED",
		RAM_BLOCK_TYPE => "AUTO",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "DONT_CARE",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 24,
		WIDTH_B => 1,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTH_ECCSTATUS => 3,
		WIDTHAD_A => 16,
		WIDTHAD_B => 1,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_niiil_address_a,
		clock0 => clk,
		clocken0 => clken,
		q_a => wire_niiil_q_a
	  );
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1iOO21 <= nl1iOO22;
		END IF;
		if (now = 0 ns) then
			nl1iOO21 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1iOO22 <= nl1iOO21;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1l0i17 <= nl1l0i18;
		END IF;
		if (now = 0 ns) then
			nl1l0i17 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1l0i18 <= nl1l0i17;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1l0O15 <= nl1l0O16;
		END IF;
		if (now = 0 ns) then
			nl1l0O15 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1l0O16 <= nl1l0O15;
		END IF;
	END PROCESS;
	wire_nl1l0O16_w_lg_w_lg_q235w236w(0) <= wire_nl1l0O16_w_lg_q235w(0) AND nli0lO;
	wire_nl1l0O16_w_lg_q235w(0) <= nl1l0O16 XOR nl1l0O15;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1l1l19 <= nl1l1l20;
		END IF;
		if (now = 0 ns) then
			nl1l1l19 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1l1l20 <= nl1l1l19;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1lii13 <= nl1lii14;
		END IF;
		if (now = 0 ns) then
			nl1lii13 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1lii14 <= nl1lii13;
		END IF;
	END PROCESS;
	wire_nl1lii14_w_lg_w_lg_q217w218w(0) <= wire_nl1lii14_w_lg_q217w(0) AND nli0Oi;
	wire_nl1lii14_w_lg_q217w(0) <= nl1lii14 XOR nl1lii13;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1lil11 <= nl1lil12;
		END IF;
		if (now = 0 ns) then
			nl1lil11 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1lil12 <= nl1lil11;
		END IF;
	END PROCESS;
	wire_nl1lil12_w_lg_w_lg_q212w213w(0) <= wire_nl1lil12_w_lg_q212w(0) AND nliOOl;
	wire_nl1lil12_w_lg_q212w(0) <= nl1lil12 XOR nl1lil11;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1liO10 <= nl1liO9;
		END IF;
	END PROCESS;
	wire_nl1liO10_w_lg_w_lg_q198w199w(0) <= wire_nl1liO10_w_lg_q198w(0) AND wire_nl1O0i_w_result_range197w(0);
	wire_nl1liO10_w_lg_q198w(0) <= nl1liO10 XOR nl1liO9;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1liO9 <= nl1liO10;
		END IF;
		if (now = 0 ns) then
			nl1liO9 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1lli7 <= nl1lli8;
		END IF;
		if (now = 0 ns) then
			nl1lli7 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1lli8 <= nl1lli7;
		END IF;
	END PROCESS;
	wire_nl1lli8_w_lg_w_lg_q186w187w(0) <= wire_nl1lli8_w_lg_q186w(0) AND wire_nl1O0i_w_result_range185w(0);
	wire_nl1lli8_w_lg_q186w(0) <= nl1lli8 XOR nl1lli7;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1lll5 <= nl1lll6;
		END IF;
		if (now = 0 ns) then
			nl1lll5 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1lll6 <= nl1lll5;
		END IF;
	END PROCESS;
	wire_nl1lll6_w_lg_w_lg_q162w163w(0) <= wire_nl1lll6_w_lg_q162w(0) AND wire_nl1O0i_w_result_range161w(0);
	wire_nl1lll6_w_lg_q162w(0) <= nl1lll6 XOR nl1lll5;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1llO3 <= nl1llO4;
		END IF;
		if (now = 0 ns) then
			nl1llO3 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1llO4 <= nl1llO3;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1O1l1 <= nl1O1l2;
		END IF;
		if (now = 0 ns) then
			nl1O1l1 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN nl1O1l2 <= nl1O1l1;
		END IF;
	END PROCESS;
	PROCESS (clk, wire_nlill_CLRN)
	BEGIN
		IF (wire_nlill_CLRN = '0') THEN
				n0O0i <= '0';
				n0O0l <= '0';
				n0O0O <= '0';
				n0Oii <= '0';
				n0Oil <= '0';
				n0OiO <= '0';
				n0Oli <= '0';
				n0Oll <= '0';
				n0OlO <= '0';
				n0OOi <= '0';
				n0OOl <= '0';
				n0OOO <= '0';
				n110i <= '0';
				n110l <= '0';
				n110O <= '0';
				n111i <= '0';
				n111l <= '0';
				n111O <= '0';
				n11ii <= '0';
				n1ili <= '0';
				n1OOi <= '0';
				n1OOl <= '0';
				ni10i <= '0';
				ni11i <= '0';
				ni11l <= '0';
				ni11O <= '0';
				niiii <= '0';
				niiiO <= '0';
				niili <= '0';
				niill <= '0';
				niilO <= '0';
				niiOi <= '0';
				niiOl <= '0';
				niiOO <= '0';
				nil0i <= '0';
				nil0l <= '0';
				nil0O <= '0';
				nil1i <= '0';
				nil1l <= '0';
				nil1O <= '0';
				nilii <= '0';
				nilil <= '0';
				niliO <= '0';
				nilli <= '0';
				nilll <= '0';
				nillO <= '0';
				nilOi <= '0';
				nilOl <= '0';
				nilOO <= '0';
				niO1i <= '0';
				nl000i <= '0';
				nl000l <= '0';
				nl001i <= '0';
				nl001l <= '0';
				nl001O <= '0';
				nl010i <= '0';
				nl010l <= '0';
				nl010O <= '0';
				nl011i <= '0';
				nl011l <= '0';
				nl011O <= '0';
				nl01ii <= '0';
				nl01il <= '0';
				nl01iO <= '0';
				nl01li <= '0';
				nl01ll <= '0';
				nl01lO <= '0';
				nl01Oi <= '0';
				nl01Ol <= '0';
				nl01OO <= '0';
				nl1O0l <= '0';
				nl1O0O <= '0';
				nl1Oii <= '0';
				nl1Oil <= '0';
				nl1OiO <= '0';
				nl1Oli <= '0';
				nl1Oll <= '0';
				nl1OlO <= '0';
				nl1OOi <= '0';
				nl1OOl <= '0';
				nl1OOO <= '0';
				nli00i <= '0';
				nli00l <= '0';
				nli00O <= '0';
				nli01i <= '0';
				nli01l <= '0';
				nli01O <= '0';
				nli0ii <= '0';
				nli0il <= '0';
				nli0iO <= '0';
				nli0l <= '0';
				nli0li <= '0';
				nli0ll <= '0';
				nli0lO <= '0';
				nli0Oi <= '0';
				nli0Ol <= '0';
				nli1li <= '0';
				nli1ll <= '0';
				nli1lO <= '0';
				nli1Oi <= '0';
				nli1Ol <= '0';
				nli1OO <= '0';
				nlilO <= '0';
				nliOOl <= '0';
				nliOOO <= '0';
				nll00i <= '0';
				nll00l <= '0';
				nll00O <= '0';
				nll01i <= '0';
				nll01l <= '0';
				nll01O <= '0';
				nll0ii <= '0';
				nll0il <= '0';
				nll0iO <= '0';
				nll0li <= '0';
				nll0ll <= '0';
				nll0lO <= '0';
				nll0Oi <= '0';
				nll0Ol <= '0';
				nll0OO <= '0';
				nll10i <= '0';
				nll10l <= '0';
				nll10O <= '0';
				nll11i <= '0';
				nll11l <= '0';
				nll11O <= '0';
				nll1ii <= '0';
				nll1il <= '0';
				nll1iO <= '0';
				nll1li <= '0';
				nll1ll <= '0';
				nll1lO <= '0';
				nll1Oi <= '0';
				nll1Ol <= '0';
				nll1OO <= '0';
				nlli1i <= '0';
				nlO0il <= '0';
				nlO0iO <= '0';
				nlO0li <= '0';
				nlO0ll <= '0';
				nlO0lO <= '0';
				nlO0Oi <= '0';
				nlO0Ol <= '0';
				nlO0OO <= '0';
				nlOi0i <= '0';
				nlOi0l <= '0';
				nlOi0O <= '0';
				nlOi1i <= '0';
				nlOi1l <= '0';
				nlOi1O <= '0';
				nlOiii <= '0';
				nlOiil <= '0';
				nlOiiO <= '0';
				nlOili <= '0';
				nlOill <= '0';
				nlOilO <= '0';
				nlOiOi <= '0';
				nlOiOl <= '0';
				nlOiOO <= '0';
				nlOl0i <= '0';
				nlOl0l <= '0';
				nlOl0O <= '0';
				nlOl1i <= '0';
				nlOl1l <= '0';
				nlOl1O <= '0';
				nlOlii <= '0';
				nlOlil <= '0';
				nlOliO <= '0';
				nlOlli <= '0';
				nlOlll <= '0';
				nlOllO <= '0';
				nlOlOi <= '0';
				nlOlOl <= '0';
				nlOlOO <= '0';
				nlOO0i <= '0';
				nlOO0l <= '0';
				nlOO0O <= '0';
				nlOO1i <= '0';
				nlOO1l <= '0';
				nlOO1O <= '0';
				nlOOii <= '0';
				nlOOil <= '0';
				nlOOiO <= '0';
				nlOOli <= '0';
				nlOOll <= '0';
				nlOOlO <= '0';
				nlOOOi <= '0';
				nlOOOl <= '0';
				nlOOOO <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				n0O0i <= wire_n11iO_dataout;
				n0O0l <= wire_ni00l_dataout;
				n0O0O <= wire_ni00i_dataout;
				n0Oii <= wire_ni01O_dataout;
				n0Oil <= wire_ni01l_dataout;
				n0OiO <= wire_ni01i_dataout;
				n0Oli <= wire_ni1OO_dataout;
				n0Oll <= wire_ni1Ol_dataout;
				n0OlO <= wire_ni1Oi_dataout;
				n0OOi <= wire_ni1lO_dataout;
				n0OOl <= wire_ni1ll_dataout;
				n0OOO <= wire_ni1li_dataout;
				n110i <= wire_n11lO_dataout;
				n110l <= wire_n11ll_dataout;
				n110O <= wire_n11li_dataout;
				n111i <= wire_n11OO_dataout;
				n111l <= wire_n11Ol_dataout;
				n111O <= wire_n11Oi_dataout;
				n11ii <= wire_n1ill_dataout;
				n1ili <= wire_n1OOO_dataout;
				n1OOi <= wire_n11il_dataout;
				n1OOl <= wire_n0i1l_dataout;
				ni10i <= wire_ni10O_dataout;
				ni11i <= wire_ni1iO_dataout;
				ni11l <= wire_ni1il_dataout;
				ni11O <= wire_ni1ii_dataout;
				niiii <= wire_ni10l_dataout;
				niiiO <= wire_nl1li_dataout;
				niili <= wire_nl1iO_dataout;
				niill <= wire_nl1il_dataout;
				niilO <= wire_nl1ii_dataout;
				niiOi <= wire_nl10O_dataout;
				niiOl <= wire_nl10l_dataout;
				niiOO <= wire_nl10i_dataout;
				nil0i <= wire_niOOO_dataout;
				nil0l <= wire_niOOl_dataout;
				nil0O <= wire_niOOi_dataout;
				nil1i <= wire_nl11O_dataout;
				nil1l <= wire_nl11l_dataout;
				nil1O <= wire_nl11i_dataout;
				nilii <= wire_niOlO_dataout;
				nilil <= wire_niOll_dataout;
				niliO <= wire_niOli_dataout;
				nilli <= wire_niOiO_dataout;
				nilll <= wire_niOil_dataout;
				nillO <= wire_niOii_dataout;
				nilOi <= wire_niO0O_dataout;
				nilOl <= wire_niO0l_dataout;
				nilOO <= wire_niO0i_dataout;
				niO1i <= wire_niO1O_dataout;
				nl000i <= wire_nl00il_dataout;
				nl000l <= wire_nl00ii_dataout;
				nl001i <= wire_nl00ll_dataout;
				nl001l <= wire_nl00li_dataout;
				nl001O <= wire_nl00iO_dataout;
				nl010i <= wire_nl0iil_dataout;
				nl010l <= wire_nl0iii_dataout;
				nl010O <= wire_nl0i0O_dataout;
				nl011i <= wire_nl0ill_dataout;
				nl011l <= wire_nl0ili_dataout;
				nl011O <= wire_nl0iiO_dataout;
				nl01ii <= wire_nl0i0l_dataout;
				nl01il <= wire_nl0i0i_dataout;
				nl01iO <= wire_nl0i1O_dataout;
				nl01li <= wire_nl0i1l_dataout;
				nl01ll <= wire_nl0i1i_dataout;
				nl01lO <= wire_nl00OO_dataout;
				nl01Oi <= wire_nl00Ol_dataout;
				nl01Ol <= wire_nl00Oi_dataout;
				nl01OO <= wire_nl00lO_dataout;
				nl1O0l <= wire_nl0lii_dataout;
				nl1O0O <= wire_nl0l0O_dataout;
				nl1Oii <= wire_nl0l0l_dataout;
				nl1Oil <= wire_nl0l0i_dataout;
				nl1OiO <= wire_nl0l1O_dataout;
				nl1Oli <= wire_nl0l1l_dataout;
				nl1Oll <= wire_nl0l1i_dataout;
				nl1OlO <= wire_nl0iOO_dataout;
				nl1OOi <= wire_nl0iOl_dataout;
				nl1OOl <= wire_nl0iOi_dataout;
				nl1OOO <= wire_nl0ilO_dataout;
				nli00i <= wire_nliill_dataout;
				nli00l <= wire_nliili_dataout;
				nli00O <= wire_nliiiO_dataout;
				nli01i <= wire_nliiOl_dataout;
				nli01l <= wire_nliiOi_dataout;
				nli01O <= wire_nliilO_dataout;
				nli0ii <= wire_nliiil_dataout;
				nli0il <= wire_nliiii_dataout;
				nli0iO <= wire_nlii0O_dataout;
				nli0l <= wire_niO1l_dataout;
				nli0li <= wire_nlii0l_dataout;
				nli0ll <= wire_nlii0i_dataout;
				nli0lO <= wire_nlii1O_dataout;
				nli0Oi <= wire_nlii1l_dataout;
				nli0Ol <= wire_nlii1i_dataout;
				nli1li <= wire_nl000O_dataout;
				nli1ll <= wire_nlil0i_dataout;
				nli1lO <= wire_nlil1O_dataout;
				nli1Oi <= wire_nlil1l_dataout;
				nli1Ol <= wire_nlil1i_dataout;
				nli1OO <= wire_nliiOO_dataout;
				nlilO <= wire_nliil_dataout;
				nliOOl <= wire_nli0OO_dataout;
				nliOOO <= wire_nlO10i_dataout;
				nll00i <= wire_nlliOl_dataout;
				nll00l <= wire_nlliOi_dataout;
				nll00O <= wire_nllilO_dataout;
				nll01i <= wire_nlll1l_dataout;
				nll01l <= wire_nlll1i_dataout;
				nll01O <= wire_nlliOO_dataout;
				nll0ii <= wire_nllill_dataout;
				nll0il <= wire_nllili_dataout;
				nll0iO <= wire_nlliiO_dataout;
				nll0li <= wire_nlliil_dataout;
				nll0ll <= wire_nlliii_dataout;
				nll0lO <= wire_nlli0O_dataout;
				nll0Oi <= wire_nlli0l_dataout;
				nll0Ol <= wire_nlli0i_dataout;
				nll0OO <= wire_nlli1O_dataout;
				nll10i <= wire_nllOOO_dataout;
				nll10l <= wire_nllOOl_dataout;
				nll10O <= wire_nllOOi_dataout;
				nll11i <= wire_nlO11O_dataout;
				nll11l <= wire_nlO11l_dataout;
				nll11O <= wire_nlO11i_dataout;
				nll1ii <= wire_nllOlO_dataout;
				nll1il <= wire_nllOll_dataout;
				nll1iO <= wire_nllOli_dataout;
				nll1li <= wire_nllOiO_dataout;
				nll1ll <= wire_nllOil_dataout;
				nll1lO <= wire_nllOii_dataout;
				nll1Oi <= wire_nllO0O_dataout;
				nll1Ol <= wire_nllO0l_dataout;
				nll1OO <= wire_nllO0i_dataout;
				nlli1i <= wire_nlli1l_dataout;
				nlO0il <= wire_n0l1l_dataout;
				nlO0iO <= wire_n0l1i_dataout;
				nlO0li <= wire_n0iOO_dataout;
				nlO0ll <= wire_n0iOl_dataout;
				nlO0lO <= wire_n0iOi_dataout;
				nlO0Oi <= wire_n0ilO_dataout;
				nlO0Ol <= wire_n0ill_dataout;
				nlO0OO <= wire_n0ili_dataout;
				nlOi0i <= wire_n0i0O_dataout;
				nlOi0l <= wire_n0i0l_dataout;
				nlOi0O <= wire_n0i0i_dataout;
				nlOi1i <= wire_n0iiO_dataout;
				nlOi1l <= wire_n0iil_dataout;
				nlOi1O <= wire_n0iii_dataout;
				nlOiii <= wire_n0i1O_dataout;
				nlOiil <= wire_n01OO_dataout;
				nlOiiO <= wire_n01Ol_dataout;
				nlOili <= wire_n01Oi_dataout;
				nlOill <= wire_n01lO_dataout;
				nlOilO <= wire_n01ll_dataout;
				nlOiOi <= wire_n01li_dataout;
				nlOiOl <= wire_n01iO_dataout;
				nlOiOO <= wire_n01il_dataout;
				nlOl0i <= wire_n010i_dataout;
				nlOl0l <= wire_n011O_dataout;
				nlOl0O <= wire_n011l_dataout;
				nlOl1i <= wire_n01ii_dataout;
				nlOl1l <= wire_n010O_dataout;
				nlOl1O <= wire_n010l_dataout;
				nlOlii <= wire_n011i_dataout;
				nlOlil <= wire_n1lll_dataout;
				nlOliO <= wire_n1lli_dataout;
				nlOlli <= wire_n1liO_dataout;
				nlOlll <= wire_n1lil_dataout;
				nlOllO <= wire_n1lii_dataout;
				nlOlOi <= wire_n1l0O_dataout;
				nlOlOl <= wire_n1l0l_dataout;
				nlOlOO <= wire_n1l0i_dataout;
				nlOO0i <= wire_n1iOO_dataout;
				nlOO0l <= wire_n1iOl_dataout;
				nlOO0O <= wire_n1iOi_dataout;
				nlOO1i <= wire_n1l1O_dataout;
				nlOO1l <= wire_n1l1l_dataout;
				nlOO1O <= wire_n1l1i_dataout;
				nlOOii <= wire_n1ilO_dataout;
				nlOOil <= wire_n10il_dataout;
				nlOOiO <= wire_n10ii_dataout;
				nlOOli <= wire_n100O_dataout;
				nlOOll <= wire_n100l_dataout;
				nlOOlO <= wire_n100i_dataout;
				nlOOOi <= wire_n101O_dataout;
				nlOOOl <= wire_n101l_dataout;
				nlOOOO <= wire_n101i_dataout;
		END IF;
	END PROCESS;
	wire_nlill_CLRN <= (nl1O1l2 XOR nl1O1l1);
	wire_nl1O0i_aclr <= wire_w_lg_reset_n41w(0);
	wire_nl1O0i_dataa <= ( nl1O0l & nl1O0O & nl1Oii & nl1Oil & nl1OiO & nl1Oli & nl1Oll & nl1OlO & nl1OOi & nl1OOl & nl1OOO & nl011i & nl011l & nl011O & nl010i & nl010l & nl010O & nl01ii & nl01il & nl01iO & nl01li & nl01ll & nl01lO & nl01Oi & nl01Ol & nl01OO & nl001i & nl001l & nl001O & nl000i & nl000l & nli1li);
	wire_nl1O0i_datab <= ( wire_nl1O0i_result(31 DOWNTO 0));
	wire_nl1O0i_w_result_range161w(0) <= wire_nl1O0i_result(15);
	wire_nl1O0i_w_result_range185w(0) <= wire_nl1O0i_result(23);
	wire_nl1O0i_w_result_range197w(0) <= wire_nl1O0i_result(27);
	nl1O0i :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 32
	  )
	  PORT MAP ( 
		aclr => wire_nl1O0i_aclr,
		clken => clken,
		clock => clk,
		dataa => wire_nl1O0i_dataa,
		datab => wire_nl1O0i_datab,
		result => wire_nl1O0i_result
	  );
	wire_nl1O1O_aclr <= wire_w_lg_reset_n41w(0);
	wire_nl1O1O_dataa <= ( phi_inc_i(31 DOWNTO 0));
	wire_nl1O1O_datab <= ( freq_mod_i(31 DOWNTO 0));
	nl1O1O :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 32
	  )
	  PORT MAP ( 
		aclr => wire_nl1O1O_aclr,
		add_sub => wire_vcc,
		clken => clken,
		clock => clk,
		dataa => wire_nl1O1O_dataa,
		datab => wire_nl1O1O_datab,
		result => wire_nl1O1O_result
	  );
	wire_nlO0ii_aclr <= wire_w_lg_reset_n41w(0);
	wire_nlO0ii_dataa <= ( nll01i & nll01l & nll01O & nll00i & nll00l & nll00O & nll0ii & nll0il & nll0iO & nll0li & nll0ll & nll0lO & nll0Oi & nll0Ol & nll0OO & nlli1i);
	wire_nlO0ii_datab <= ( nlOlil & nlOliO & nlOlli & nlOlll & nlOllO & nlOlOi & nlOlOl & nlOlOO & nlOO1i & nlOO1l & nlOO1O & nlOO0i & nlOO0l & nlOO0O & nlOOii & n11ii);
	nlO0ii :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 16
	  )
	  PORT MAP ( 
		aclr => wire_nlO0ii_aclr,
		add_sub => wire_vcc,
		clken => clken,
		clock => clk,
		dataa => wire_nlO0ii_dataa,
		datab => wire_nlO0ii_datab,
		result => wire_nlO0ii_result
	  );
	wire_nli0O_w_lg_w_q_range27w30w(0) <= wire_nli0O_w_q_range27w(0) AND wire_nli0O_w_lg_w_q_range28w29w(0);
	wire_nli0O_w_lg_w_q_range28w29w(0) <= NOT wire_nli0O_w_q_range28w(0);
	wire_nli0O_sclr <= wire_w_lg_reset_n41w(0);
	wire_nli0O_w_q_range28w(0) <= wire_nli0O_q(0);
	wire_nli0O_w_q_range27w(0) <= wire_nli0O_q(3);
	nli0O :  lpm_counter
	  GENERIC MAP (
		LPM_DIRECTION => "UP",
		LPM_MODULUS => 0,
		LPM_PORT_UPDOWN => "PORT_CONNECTIVITY",
		LPM_WIDTH => 4
	  )
	  PORT MAP ( 
		clk_en => clken,
		clock => clk,
		q => wire_nli0O_q,
		sclr => wire_nli0O_sclr
	  );
	wire_n000i_dataout <= nlOi0l WHEN clken = '1'  ELSE nlOl0l;
	wire_n000l_dataout <= nlOi0i WHEN clken = '1'  ELSE nlOl0i;
	wire_n000O_dataout <= nlOi1O WHEN clken = '1'  ELSE nlOl1O;
	wire_n001i_dataout <= n1OOl WHEN clken = '1'  ELSE n1ili;
	wire_n001l_dataout <= nlOiii WHEN clken = '1'  ELSE nlOlii;
	wire_n001O_dataout <= nlOi0O WHEN clken = '1'  ELSE nlOl0O;
	wire_n00ii_dataout <= nlOi1l WHEN clken = '1'  ELSE nlOl1l;
	wire_n00il_dataout <= nlOi1i WHEN clken = '1'  ELSE nlOl1i;
	wire_n00iO_dataout <= nlO0OO WHEN clken = '1'  ELSE nlOiOO;
	wire_n00li_dataout <= nlO0Ol WHEN clken = '1'  ELSE nlOiOl;
	wire_n00ll_dataout <= nlO0Oi WHEN clken = '1'  ELSE nlOiOi;
	wire_n00lO_dataout <= nlO0lO WHEN clken = '1'  ELSE nlOilO;
	wire_n00Oi_dataout <= nlO0ll WHEN clken = '1'  ELSE nlOill;
	wire_n00Ol_dataout <= nlO0li WHEN clken = '1'  ELSE nlOili;
	wire_n00OO_dataout <= nlO0iO WHEN clken = '1'  ELSE nlOiiO;
	wire_n010i_dataout <= wire_n000l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n010l_dataout <= wire_n000O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n010O_dataout <= wire_n00ii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n011i_dataout <= wire_n001l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n011l_dataout <= wire_n001O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n011O_dataout <= wire_n000i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n01ii_dataout <= wire_n00il_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n01il_dataout <= wire_n00iO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n01iO_dataout <= wire_n00li_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n01li_dataout <= wire_n00ll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n01ll_dataout <= wire_n00lO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n01lO_dataout <= wire_n00Oi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n01Oi_dataout <= wire_n00Ol_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n01Ol_dataout <= wire_n00OO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n01OO_dataout <= wire_n0i1i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0i0i_dataout <= wire_n0l0l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0i0l_dataout <= wire_n0l0O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0i0O_dataout <= wire_n0lii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0i1i_dataout <= nlO0il WHEN clken = '1'  ELSE nlOiil;
	wire_n0i1l_dataout <= wire_n0l1O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0i1O_dataout <= wire_n0l0i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0iii_dataout <= wire_n0lil_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0iil_dataout <= wire_n0liO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0iiO_dataout <= wire_n0lli_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0ili_dataout <= wire_n0lll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0ill_dataout <= wire_n0llO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0ilO_dataout <= wire_n0lOi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0iOi_dataout <= wire_n0lOl_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0iOl_dataout <= wire_n0lOO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0iOO_dataout <= wire_n0O1i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0l0i_dataout <= n0O0i WHEN clken = '1'  ELSE nlOiii;
	wire_n0l0l_dataout <= n110O WHEN clken = '1'  ELSE nlOi0O;
	wire_n0l0O_dataout <= n110l WHEN clken = '1'  ELSE nlOi0l;
	wire_n0l1i_dataout <= wire_n0O1l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0l1l_dataout <= wire_n0O1O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n0l1O_dataout <= n1OOi WHEN clken = '1'  ELSE n1OOl;
	wire_n0lii_dataout <= n110i WHEN clken = '1'  ELSE nlOi0i;
	wire_n0lil_dataout <= n111O WHEN clken = '1'  ELSE nlOi1O;
	wire_n0liO_dataout <= n111l WHEN clken = '1'  ELSE nlOi1l;
	wire_n0lli_dataout <= n111i WHEN clken = '1'  ELSE nlOi1i;
	wire_n0lll_dataout <= nlOOOO WHEN clken = '1'  ELSE nlO0OO;
	wire_n0llO_dataout <= nlOOOl WHEN clken = '1'  ELSE nlO0Ol;
	wire_n0lOi_dataout <= nlOOOi WHEN clken = '1'  ELSE nlO0Oi;
	wire_n0lOl_dataout <= nlOOlO WHEN clken = '1'  ELSE nlO0lO;
	wire_n0lOO_dataout <= nlOOll WHEN clken = '1'  ELSE nlO0ll;
	wire_n0O1i_dataout <= nlOOli WHEN clken = '1'  ELSE nlO0li;
	wire_n0O1l_dataout <= nlOOiO WHEN clken = '1'  ELSE nlO0iO;
	wire_n0O1O_dataout <= nlOOil WHEN clken = '1'  ELSE nlO0il;
	wire_n100i_dataout <= wire_n1i0l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n100l_dataout <= wire_n1i0O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n100O_dataout <= wire_n1iii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n101i_dataout <= wire_n1i1l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n101l_dataout <= wire_n1i1O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n101O_dataout <= wire_n1i0i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n10ii_dataout <= wire_n1iil_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n10il_dataout <= wire_n1iiO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n10iO_dataout <= phase_mod_i(0) WHEN clken = '1'  ELSE n1OOi;
	wire_n10li_dataout <= phase_mod_i(1) WHEN clken = '1'  ELSE n0O0i;
	wire_n10ll_dataout <= phase_mod_i(2) WHEN clken = '1'  ELSE n110O;
	wire_n10lO_dataout <= phase_mod_i(3) WHEN clken = '1'  ELSE n110l;
	wire_n10Oi_dataout <= phase_mod_i(4) WHEN clken = '1'  ELSE n110i;
	wire_n10Ol_dataout <= phase_mod_i(5) WHEN clken = '1'  ELSE n111O;
	wire_n10OO_dataout <= phase_mod_i(6) WHEN clken = '1'  ELSE n111l;
	wire_n11il_dataout <= wire_n10iO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n11iO_dataout <= wire_n10li_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n11li_dataout <= wire_n10ll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n11ll_dataout <= wire_n10lO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n11lO_dataout <= wire_n10Oi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n11Oi_dataout <= wire_n10Ol_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n11Ol_dataout <= wire_n10OO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n11OO_dataout <= wire_n1i1i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1i0i_dataout <= phase_mod_i(10) WHEN clken = '1'  ELSE nlOOOi;
	wire_n1i0l_dataout <= phase_mod_i(11) WHEN clken = '1'  ELSE nlOOlO;
	wire_n1i0O_dataout <= phase_mod_i(12) WHEN clken = '1'  ELSE nlOOll;
	wire_n1i1i_dataout <= phase_mod_i(7) WHEN clken = '1'  ELSE n111i;
	wire_n1i1l_dataout <= phase_mod_i(8) WHEN clken = '1'  ELSE nlOOOO;
	wire_n1i1O_dataout <= phase_mod_i(9) WHEN clken = '1'  ELSE nlOOOl;
	wire_n1iii_dataout <= phase_mod_i(13) WHEN clken = '1'  ELSE nlOOli;
	wire_n1iil_dataout <= phase_mod_i(14) WHEN clken = '1'  ELSE nlOOiO;
	wire_n1iiO_dataout <= phase_mod_i(15) WHEN clken = '1'  ELSE nlOOil;
	wire_n1ill_dataout <= wire_n1llO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1ilO_dataout <= wire_n1lOi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1iOi_dataout <= wire_n1lOl_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1iOl_dataout <= wire_n1lOO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1iOO_dataout <= wire_n1O1i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1l0i_dataout <= wire_n1O0l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1l0l_dataout <= wire_n1O0O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1l0O_dataout <= wire_n1Oii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1l1i_dataout <= wire_n1O1l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1l1l_dataout <= wire_n1O1O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1l1O_dataout <= wire_n1O0i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1lii_dataout <= wire_n1Oil_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1lil_dataout <= wire_n1OiO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1liO_dataout <= wire_n1Oli_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1lli_dataout <= wire_n1Oll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1lll_dataout <= wire_n1OlO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_n1llO_dataout <= n1ili WHEN clken = '1'  ELSE n11ii;
	wire_n1lOi_dataout <= nlOlii WHEN clken = '1'  ELSE nlOOii;
	wire_n1lOl_dataout <= nlOl0O WHEN clken = '1'  ELSE nlOO0O;
	wire_n1lOO_dataout <= nlOl0l WHEN clken = '1'  ELSE nlOO0l;
	wire_n1O0i_dataout <= nlOl1i WHEN clken = '1'  ELSE nlOO1i;
	wire_n1O0l_dataout <= nlOiOO WHEN clken = '1'  ELSE nlOlOO;
	wire_n1O0O_dataout <= nlOiOl WHEN clken = '1'  ELSE nlOlOl;
	wire_n1O1i_dataout <= nlOl0i WHEN clken = '1'  ELSE nlOO0i;
	wire_n1O1l_dataout <= nlOl1O WHEN clken = '1'  ELSE nlOO1O;
	wire_n1O1O_dataout <= nlOl1l WHEN clken = '1'  ELSE nlOO1l;
	wire_n1Oii_dataout <= nlOiOi WHEN clken = '1'  ELSE nlOlOi;
	wire_n1Oil_dataout <= nlOilO WHEN clken = '1'  ELSE nlOllO;
	wire_n1OiO_dataout <= nlOill WHEN clken = '1'  ELSE nlOlll;
	wire_n1Oli_dataout <= nlOili WHEN clken = '1'  ELSE nlOlli;
	wire_n1Oll_dataout <= nlOiiO WHEN clken = '1'  ELSE nlOliO;
	wire_n1OlO_dataout <= nlOiil WHEN clken = '1'  ELSE nlOlil;
	wire_n1OOO_dataout <= wire_n001i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni00i_dataout <= wire_nii0l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni00l_dataout <= wire_nii0O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni00O_dataout <= wire_nlO0ii_result(0) WHEN clken = '1'  ELSE niiii;
	wire_ni01i_dataout <= wire_nii1l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni01l_dataout <= wire_nii1O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni01O_dataout <= wire_nii0i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni0ii_dataout <= wire_nlO0ii_result(1) WHEN clken = '1'  ELSE ni10i;
	wire_ni0il_dataout <= wire_nlO0ii_result(2) WHEN clken = '1'  ELSE ni11O;
	wire_ni0iO_dataout <= wire_nlO0ii_result(3) WHEN clken = '1'  ELSE ni11l;
	wire_ni0li_dataout <= wire_nlO0ii_result(4) WHEN clken = '1'  ELSE ni11i;
	wire_ni0ll_dataout <= wire_nlO0ii_result(5) WHEN clken = '1'  ELSE n0OOO;
	wire_ni0lO_dataout <= wire_nlO0ii_result(6) WHEN clken = '1'  ELSE n0OOl;
	wire_ni0Oi_dataout <= wire_nlO0ii_result(7) WHEN clken = '1'  ELSE n0OOi;
	wire_ni0Ol_dataout <= wire_nlO0ii_result(8) WHEN clken = '1'  ELSE n0OlO;
	wire_ni0OO_dataout <= wire_nlO0ii_result(9) WHEN clken = '1'  ELSE n0Oll;
	wire_ni10l_dataout <= wire_ni00O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni10O_dataout <= wire_ni0ii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni1ii_dataout <= wire_ni0il_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni1il_dataout <= wire_ni0iO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni1iO_dataout <= wire_ni0li_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni1li_dataout <= wire_ni0ll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni1ll_dataout <= wire_ni0lO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni1lO_dataout <= wire_ni0Oi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni1Oi_dataout <= wire_ni0Ol_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni1Ol_dataout <= wire_ni0OO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_ni1OO_dataout <= wire_nii1i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nii0i_dataout <= wire_nlO0ii_result(13) WHEN clken = '1'  ELSE n0Oii;
	wire_nii0l_dataout <= wire_nlO0ii_result(14) WHEN clken = '1'  ELSE n0O0O;
	wire_nii0O_dataout <= wire_nlO0ii_result(15) WHEN clken = '1'  ELSE n0O0l;
	wire_nii1i_dataout <= wire_nlO0ii_result(10) WHEN clken = '1'  ELSE n0Oli;
	wire_nii1l_dataout <= wire_nlO0ii_result(11) WHEN clken = '1'  ELSE n0OiO;
	wire_nii1O_dataout <= wire_nlO0ii_result(12) WHEN clken = '1'  ELSE n0Oil;
	wire_niO0i_dataout <= wire_nl1Oi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niO0l_dataout <= wire_nl1Ol_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niO0O_dataout <= wire_nl1OO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niO1l_dataout <= wire_nl1ll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niO1O_dataout <= wire_nl1lO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niOii_dataout <= wire_nl01i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niOil_dataout <= wire_nl01l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niOiO_dataout <= wire_nl01O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niOli_dataout <= wire_nl00i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niOll_dataout <= wire_nl00l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niOlO_dataout <= wire_nl00O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niOOi_dataout <= wire_nl0ii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niOOl_dataout <= wire_nl0il_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_niOOO_dataout <= wire_nl0iO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl000O_dataout <= wire_nl0lil_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl00i_dataout <= wire_niiil_q_a(8) WHEN clken = '1'  ELSE niliO;
	wire_nl00ii_dataout <= wire_nl0liO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl00il_dataout <= wire_nl0lli_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl00iO_dataout <= wire_nl0lll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl00l_dataout <= wire_niiil_q_a(9) WHEN clken = '1'  ELSE nilil;
	wire_nl00li_dataout <= wire_nl0llO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl00ll_dataout <= wire_nl0lOi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl00lO_dataout <= wire_nl0lOl_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl00O_dataout <= wire_niiil_q_a(10) WHEN clken = '1'  ELSE nilii;
	wire_nl00Oi_dataout <= wire_nl0lOO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl00Ol_dataout <= wire_nl0O1i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl00OO_dataout <= wire_nl0O1l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl01i_dataout <= wire_niiil_q_a(5) WHEN clken = '1'  ELSE nillO;
	wire_nl01l_dataout <= wire_niiil_q_a(6) WHEN clken = '1'  ELSE nilll;
	wire_nl01O_dataout <= wire_niiil_q_a(7) WHEN clken = '1'  ELSE nilli;
	wire_nl0i0i_dataout <= wire_nl0O0O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0i0l_dataout <= wire_nl0Oii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0i0O_dataout <= wire_nl0Oil_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0i1i_dataout <= wire_nl0O1O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0i1l_dataout <= wire_nl0O0i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0i1O_dataout <= wire_nl0O0l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0ii_dataout <= wire_niiil_q_a(11) WHEN clken = '1'  ELSE nil0O;
	wire_nl0iii_dataout <= wire_nl0OiO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0iil_dataout <= wire_nl0Oli_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0iiO_dataout <= wire_nl0Oll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0il_dataout <= wire_niiil_q_a(12) WHEN clken = '1'  ELSE nil0l;
	wire_nl0ili_dataout <= wire_nl0OlO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0ill_dataout <= wire_nl0OOi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0ilO_dataout <= wire_nl0OOl_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0iO_dataout <= wire_niiil_q_a(13) WHEN clken = '1'  ELSE nil0i;
	wire_nl0iOi_dataout <= wire_nl0OOO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0iOl_dataout <= wire_nli11i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0iOO_dataout <= wire_nli11l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0l0i_dataout <= wire_nli10O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0l0l_dataout <= wire_nli1ii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0l0O_dataout <= wire_nli1il_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0l1i_dataout <= wire_nli11O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0l1l_dataout <= wire_nli10i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0l1O_dataout <= wire_nli10l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0li_dataout <= wire_niiil_q_a(14) WHEN clken = '1'  ELSE nil1O;
	wire_nl0lii_dataout <= wire_nli1iO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl0lil_dataout <= wire_nl1O1O_result(0) WHEN clken = '1'  ELSE nli1li;
	wire_nl0liO_dataout <= wire_nl1O1O_result(1) WHEN clken = '1'  ELSE nl000l;
	wire_nl0ll_dataout <= wire_niiil_q_a(15) WHEN clken = '1'  ELSE nil1l;
	wire_nl0lli_dataout <= wire_nl1O1O_result(2) WHEN clken = '1'  ELSE nl000i;
	wire_nl0lll_dataout <= wire_nl1O1O_result(3) WHEN clken = '1'  ELSE nl001O;
	wire_nl0llO_dataout <= wire_nl1O1O_result(4) WHEN clken = '1'  ELSE nl001l;
	wire_nl0lO_dataout <= wire_niiil_q_a(16) WHEN clken = '1'  ELSE nil1i;
	wire_nl0lOi_dataout <= wire_nl1O1O_result(5) WHEN clken = '1'  ELSE nl001i;
	wire_nl0lOl_dataout <= wire_nl1O1O_result(6) WHEN clken = '1'  ELSE nl01OO;
	wire_nl0lOO_dataout <= wire_nl1O1O_result(7) WHEN clken = '1'  ELSE nl01Ol;
	wire_nl0O0i_dataout <= wire_nl1O1O_result(11) WHEN clken = '1'  ELSE nl01li;
	wire_nl0O0l_dataout <= wire_nl1O1O_result(12) WHEN clken = '1'  ELSE nl01iO;
	wire_nl0O0O_dataout <= wire_nl1O1O_result(13) WHEN clken = '1'  ELSE nl01il;
	wire_nl0O1i_dataout <= wire_nl1O1O_result(8) WHEN clken = '1'  ELSE nl01Oi;
	wire_nl0O1l_dataout <= wire_nl1O1O_result(9) WHEN clken = '1'  ELSE nl01lO;
	wire_nl0O1O_dataout <= wire_nl1O1O_result(10) WHEN clken = '1'  ELSE nl01ll;
	wire_nl0Oi_dataout <= wire_niiil_q_a(17) WHEN clken = '1'  ELSE niiOO;
	wire_nl0Oii_dataout <= wire_nl1O1O_result(14) WHEN clken = '1'  ELSE nl01ii;
	wire_nl0Oil_dataout <= wire_nl1O1O_result(15) WHEN clken = '1'  ELSE nl010O;
	wire_nl0OiO_dataout <= wire_nl1O1O_result(16) WHEN clken = '1'  ELSE nl010l;
	wire_nl0Ol_dataout <= wire_niiil_q_a(18) WHEN clken = '1'  ELSE niiOl;
	wire_nl0Oli_dataout <= wire_nl1O1O_result(17) WHEN clken = '1'  ELSE nl010i;
	wire_nl0Oll_dataout <= wire_nl1O1O_result(18) WHEN clken = '1'  ELSE nl011O;
	wire_nl0OlO_dataout <= wire_nl1O1O_result(19) WHEN clken = '1'  ELSE nl011l;
	wire_nl0OO_dataout <= wire_niiil_q_a(19) WHEN clken = '1'  ELSE niiOi;
	wire_nl0OOi_dataout <= wire_nl1O1O_result(20) WHEN clken = '1'  ELSE nl011i;
	wire_nl0OOl_dataout <= wire_nl1O1O_result(21) WHEN clken = '1'  ELSE nl1OOO;
	wire_nl0OOO_dataout <= wire_nl1O1O_result(22) WHEN clken = '1'  ELSE nl1OOl;
	wire_nl10i_dataout <= wire_nl0Oi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl10l_dataout <= wire_nl0Ol_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl10O_dataout <= wire_nl0OO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl11i_dataout <= wire_nl0li_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl11l_dataout <= wire_nl0ll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl11O_dataout <= wire_nl0lO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl1ii_dataout <= wire_nli1i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl1il_dataout <= wire_nli1l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl1iO_dataout <= wire_nli1O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl1li_dataout <= wire_nli0i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nl1ll_dataout <= wire_niiil_q_a(0) WHEN clken = '1'  ELSE nli0l;
	wire_nl1lO_dataout <= wire_niiil_q_a(1) WHEN clken = '1'  ELSE niO1i;
	wire_nl1Oi_dataout <= wire_niiil_q_a(2) WHEN clken = '1'  ELSE nilOO;
	wire_nl1Ol_dataout <= wire_niiil_q_a(3) WHEN clken = '1'  ELSE nilOl;
	wire_nl1OO_dataout <= wire_niiil_q_a(4) WHEN clken = '1'  ELSE nilOi;
	wire_nli0i_dataout <= wire_niiil_q_a(23) WHEN clken = '1'  ELSE niiiO;
	wire_nli0OO_dataout <= wire_nlil0l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nli10i_dataout <= wire_nl1O1O_result(26) WHEN clken = '1'  ELSE nl1Oli;
	wire_nli10l_dataout <= wire_nl1O1O_result(27) WHEN clken = '1'  ELSE nl1OiO;
	wire_nli10O_dataout <= wire_nl1O1O_result(28) WHEN clken = '1'  ELSE nl1Oil;
	wire_nli11i_dataout <= wire_nl1O1O_result(23) WHEN clken = '1'  ELSE nl1OOi;
	wire_nli11l_dataout <= wire_nl1O1O_result(24) WHEN clken = '1'  ELSE nl1OlO;
	wire_nli11O_dataout <= wire_nl1O1O_result(25) WHEN clken = '1'  ELSE nl1Oll;
	wire_nli1i_dataout <= wire_niiil_q_a(20) WHEN clken = '1'  ELSE niilO;
	wire_nli1ii_dataout <= wire_nl1O1O_result(29) WHEN clken = '1'  ELSE nl1Oii;
	wire_nli1il_dataout <= wire_nl1O1O_result(30) WHEN clken = '1'  ELSE nl1O0O;
	wire_nli1iO_dataout <= wire_nl1O1O_result(31) WHEN clken = '1'  ELSE nl1O0l;
	wire_nli1l_dataout <= wire_niiil_q_a(21) WHEN clken = '1'  ELSE niill;
	wire_nli1O_dataout <= wire_niiil_q_a(22) WHEN clken = '1'  ELSE niili;
	wire_nlii0i_dataout <= wire_nliliO_dataout OR wire_w_lg_reset_n41w(0);
	wire_nlii0l_dataout <= wire_nlilli_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlii0O_dataout <= wire_nlilll_dataout OR wire_w_lg_reset_n41w(0);
	wire_nlii1i_dataout <= wire_nlil0O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlii1l_dataout <= wire_nlilii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlii1O_dataout <= wire_nlilil_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nliiii_dataout <= wire_nlillO_dataout OR wire_w_lg_reset_n41w(0);
	wire_nliiil_dataout <= wire_nlilOi_dataout OR wire_w_lg_reset_n41w(0);
	wire_nliiiO_dataout <= wire_nlilOl_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nliil_dataout <= wire_nliiO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nliili_dataout <= wire_nlilOO_dataout OR wire_w_lg_reset_n41w(0);
	wire_nliill_dataout <= wire_nliO1i_dataout OR wire_w_lg_reset_n41w(0);
	wire_nliilO_dataout <= wire_nliO1l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nliiO_dataout <= nlilO OR (clken AND (((wire_nli0O_w_lg_w_q_range27w30w(0) AND (NOT wire_nli0O_q(1))) AND (NOT wire_nli0O_q(2))) AND (nl1llO4 XOR nl1llO3)));
	wire_nliiOi_dataout <= wire_nliO1O_dataout OR wire_w_lg_reset_n41w(0);
	wire_nliiOl_dataout <= wire_nliO0i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nliiOO_dataout <= wire_nliO0l_dataout OR wire_w_lg_reset_n41w(0);
	wire_nlil0i_dataout <= wire_nliOiO_dataout OR wire_w_lg_reset_n41w(0);
	wire_nlil0l_dataout <= wire_nliOli_o(0) WHEN clken = '1'  ELSE nliOOl;
	wire_nlil0O_dataout <= wire_nliOli_o(1) WHEN clken = '1'  ELSE nli0Ol;
	wire_nlil1i_dataout <= wire_nliO0O_dataout OR wire_w_lg_reset_n41w(0);
	wire_nlil1l_dataout <= wire_nliOii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlil1O_dataout <= wire_nliOil_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlilii_dataout <= wire_nliOli_o(2) WHEN clken = '1'  ELSE nli0Oi;
	wire_nlilil_dataout <= wire_nliOli_o(3) WHEN clken = '1'  ELSE nli0lO;
	wire_nliliO_dataout <= ((((nli1lO XOR nli1ll) XOR (NOT (nl1l0i18 XOR nl1l0i17))) XOR ((nli0il XOR nli1Ol) XOR (NOT (nl1l1l20 XOR nl1l1l19)))) XOR (NOT (nl1iOO22 XOR nl1iOO21))) WHEN clken = '1'  ELSE nli0ll;
	wire_nlilli_dataout <= nli0ll WHEN clken = '1'  ELSE nli0li;
	wire_nlilll_dataout <= nli0li WHEN clken = '1'  ELSE nli0iO;
	wire_nlillO_dataout <= nli0iO WHEN clken = '1'  ELSE nli0il;
	wire_nlilOi_dataout <= nli0il WHEN clken = '1'  ELSE nli0ii;
	wire_nlilOl_dataout <= nli0ii WHEN clken = '1'  ELSE nli00O;
	wire_nlilOO_dataout <= nli00O WHEN clken = '1'  ELSE nli00l;
	wire_nliO0i_dataout <= nli01l WHEN clken = '1'  ELSE nli01i;
	wire_nliO0l_dataout <= nli01i WHEN clken = '1'  ELSE nli1OO;
	wire_nliO0O_dataout <= nli1OO WHEN clken = '1'  ELSE nli1Ol;
	wire_nliO1i_dataout <= nli00l WHEN clken = '1'  ELSE nli00i;
	wire_nliO1l_dataout <= nli00i WHEN clken = '1'  ELSE nli01O;
	wire_nliO1O_dataout <= nli01O WHEN clken = '1'  ELSE nli01l;
	wire_nliOii_dataout <= nli1Ol WHEN clken = '1'  ELSE nli1Oi;
	wire_nliOil_dataout <= nli1Oi WHEN clken = '1'  ELSE nli1lO;
	wire_nliOiO_dataout <= nli1lO WHEN clken = '1'  ELSE nli1ll;
	wire_nlli0i_dataout <= wire_nlll0l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlli0l_dataout <= wire_nlll0O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlli0O_dataout <= wire_nlllii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlli1l_dataout <= wire_nlll1O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlli1O_dataout <= wire_nlll0i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlliii_dataout <= wire_nlllil_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlliil_dataout <= wire_nllliO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlliiO_dataout <= wire_nlllli_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllili_dataout <= wire_nlllll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllill_dataout <= wire_nllllO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllilO_dataout <= wire_nlllOi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlliOi_dataout <= wire_nlllOl_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlliOl_dataout <= wire_nlllOO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlliOO_dataout <= wire_nllO1i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlll0i_dataout <= nll1Ol WHEN clken = '1'  ELSE nll0OO;
	wire_nlll0l_dataout <= nll1Oi WHEN clken = '1'  ELSE nll0Ol;
	wire_nlll0O_dataout <= nll1lO WHEN clken = '1'  ELSE nll0Oi;
	wire_nlll1i_dataout <= wire_nllO1l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlll1l_dataout <= wire_nllO1O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlll1O_dataout <= nll1OO WHEN clken = '1'  ELSE nlli1i;
	wire_nlllii_dataout <= nll1ll WHEN clken = '1'  ELSE nll0lO;
	wire_nlllil_dataout <= nll1li WHEN clken = '1'  ELSE nll0ll;
	wire_nllliO_dataout <= nll1iO WHEN clken = '1'  ELSE nll0li;
	wire_nlllli_dataout <= nll1il WHEN clken = '1'  ELSE nll0iO;
	wire_nlllll_dataout <= nll1ii WHEN clken = '1'  ELSE nll0il;
	wire_nllllO_dataout <= nll10O WHEN clken = '1'  ELSE nll0ii;
	wire_nlllOi_dataout <= nll10l WHEN clken = '1'  ELSE nll00O;
	wire_nlllOl_dataout <= nll10i WHEN clken = '1'  ELSE nll00l;
	wire_nlllOO_dataout <= nll11O WHEN clken = '1'  ELSE nll00i;
	wire_nllO0i_dataout <= wire_nlO10l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllO0l_dataout <= wire_nlO10O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllO0O_dataout <= wire_nlO1ii_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllO1i_dataout <= nll11l WHEN clken = '1'  ELSE nll01O;
	wire_nllO1l_dataout <= nll11i WHEN clken = '1'  ELSE nll01l;
	wire_nllO1O_dataout <= nliOOO WHEN clken = '1'  ELSE nll01i;
	wire_nllOii_dataout <= wire_nlO1il_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllOil_dataout <= wire_nlO1iO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllOiO_dataout <= wire_nlO1li_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllOli_dataout <= wire_nlO1ll_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllOll_dataout <= wire_nlO1lO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllOlO_dataout <= wire_nlO1Oi_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllOOi_dataout <= wire_nlO1Ol_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllOOl_dataout <= wire_nlO1OO_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nllOOO_dataout <= wire_nlO01i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlO00i_dataout <= wire_nlO00O_o(19) WHEN clken = '1'  ELSE nll11i;
	wire_nlO00l_dataout <= wire_nlO00O_o(20) WHEN clken = '1'  ELSE nliOOO;
	wire_nlO01i_dataout <= wire_nlO00O_o(16) WHEN clken = '1'  ELSE nll10i;
	wire_nlO01l_dataout <= wire_nlO00O_o(17) WHEN clken = '1'  ELSE nll11O;
	wire_nlO01O_dataout <= wire_nlO00O_o(18) WHEN clken = '1'  ELSE nll11l;
	wire_nlO10i_dataout <= wire_nlO00l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlO10l_dataout <= wire_nlO00O_o(5) WHEN clken = '1'  ELSE nll1OO;
	wire_nlO10O_dataout <= wire_nlO00O_o(6) WHEN clken = '1'  ELSE nll1Ol;
	wire_nlO11i_dataout <= wire_nlO01l_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlO11l_dataout <= wire_nlO01O_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlO11O_dataout <= wire_nlO00i_dataout AND NOT(wire_w_lg_reset_n41w(0));
	wire_nlO1ii_dataout <= wire_nlO00O_o(7) WHEN clken = '1'  ELSE nll1Oi;
	wire_nlO1il_dataout <= wire_nlO00O_o(8) WHEN clken = '1'  ELSE nll1lO;
	wire_nlO1iO_dataout <= wire_nlO00O_o(9) WHEN clken = '1'  ELSE nll1ll;
	wire_nlO1li_dataout <= wire_nlO00O_o(10) WHEN clken = '1'  ELSE nll1li;
	wire_nlO1ll_dataout <= wire_nlO00O_o(11) WHEN clken = '1'  ELSE nll1iO;
	wire_nlO1lO_dataout <= wire_nlO00O_o(12) WHEN clken = '1'  ELSE nll1il;
	wire_nlO1Oi_dataout <= wire_nlO00O_o(13) WHEN clken = '1'  ELSE nll1ii;
	wire_nlO1Ol_dataout <= wire_nlO00O_o(14) WHEN clken = '1'  ELSE nll10O;
	wire_nlO1OO_dataout <= wire_nlO00O_o(15) WHEN clken = '1'  ELSE nll10l;
	wire_nliOli_a <= ( nli1ll & nli1lO & nli1Oi & nli1Ol);
	wire_nliOli_b <= ( "0" & "0" & "0" & nli1ll);
	nliOli :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 4,
		width_b => 4,
		width_o => 4
	  )
	  PORT MAP ( 
		a => wire_nliOli_a,
		b => wire_nliOli_b,
		cin => wire_gnd,
		o => wire_nliOli_o
	  );
	wire_nlO00O_a <= ( wire_nl1O0i_result(31 DOWNTO 28) & wire_nl1liO10_w_lg_w_lg_q198w199w & wire_nl1O0i_result(26 DOWNTO 24) & wire_nl1lli8_w_lg_w_lg_q186w187w & wire_nl1O0i_result(22 DOWNTO 16) & wire_nl1lll6_w_lg_w_lg_q162w163w & wire_nl1O0i_result(14 DOWNTO 11));
	wire_nlO00O_b <= ( nli0lO & nli0lO & wire_nl1l0O16_w_lg_w_lg_q235w236w & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & nli0lO & wire_nl1lii14_w_lg_w_lg_q217w218w & nli0Ol & wire_nl1lil12_w_lg_w_lg_q212w213w);
	nlO00O :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 21,
		width_b => 21,
		width_o => 21
	  )
	  PORT MAP ( 
		a => wire_nlO00O_a,
		b => wire_nlO00O_b,
		cin => wire_gnd,
		o => wire_nlO00O_o
	  );

 END RTL; --sine_nco_ii_0
--synopsys translate_on
--VALID FILE
