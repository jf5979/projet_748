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

--synthesis_resources = altsyncram 3 lpm_add_sub 5 lpm_counter 1 lpm_mult 2 lut 322 mux21 588 oper_add 3 
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
	 SIGNAL  wire_nlliiO_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_nlliiO_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_nlliiO_data_a	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nlliiO_data_b	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nlliiO_q_a	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nlliiO_q_b	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nllili_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_nllili_q_a	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nllill_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_nllill_q_a	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL	 ni000i25	:	STD_LOGIC := '0';
	 SIGNAL	 ni000i26	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni000i26_w_lg_w_lg_q1082w1083w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni000i26_w_lg_q1082w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 ni000l23	:	STD_LOGIC := '0';
	 SIGNAL	 ni000l24	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni000l24_w_lg_w_lg_q1043w1044w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni000l24_w_lg_q1043w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 ni000O21	:	STD_LOGIC := '0';
	 SIGNAL	 ni000O22	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni000O22_w_lg_w_lg_q1038w1039w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni000O22_w_lg_q1038w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 ni001l27	:	STD_LOGIC := '0';
	 SIGNAL	 ni001l28	:	STD_LOGIC := '0';
	 SIGNAL	 ni00ii19	:	STD_LOGIC := '0';
	 SIGNAL	 ni00ii20	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni00ii20_w_lg_w_lg_q1006w1007w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni00ii20_w_lg_q1006w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 ni00il17	:	STD_LOGIC := '0';
	 SIGNAL	 ni00il18	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni00il18_w_lg_w_lg_q997w998w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni00il18_w_lg_q997w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 ni00iO15	:	STD_LOGIC := '0';
	 SIGNAL	 ni00iO16	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni00iO16_w_lg_w_lg_q988w989w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni00iO16_w_lg_q988w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 ni00li13	:	STD_LOGIC := '0';
	 SIGNAL	 ni00li14	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni00li14_w_lg_w_lg_q982w983w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni00li14_w_lg_q982w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 ni00ll11	:	STD_LOGIC := '0';
	 SIGNAL	 ni00ll12	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni00ll12_w_lg_w_lg_q877w878w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni00ll12_w_lg_q877w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 ni00lO10	:	STD_LOGIC := '0';
	 SIGNAL	 ni00lO9	:	STD_LOGIC := '0';
	 SIGNAL	 ni00Ol7	:	STD_LOGIC := '0';
	 SIGNAL	 ni00Ol8	:	STD_LOGIC := '0';
	 SIGNAL	 ni0i1l5	:	STD_LOGIC := '0';
	 SIGNAL	 ni0i1l6	:	STD_LOGIC := '0';
	 SIGNAL	 ni0iii3	:	STD_LOGIC := '0';
	 SIGNAL	 ni0iii4	:	STD_LOGIC := '0';
	 SIGNAL	 ni0iil1	:	STD_LOGIC := '0';
	 SIGNAL	 ni0iil2	:	STD_LOGIC := '0';
	 SIGNAL	ni0ill	:	STD_LOGIC := '0';
	 SIGNAL	ni0ilO	:	STD_LOGIC := '0';
	 SIGNAL	ni0iOi	:	STD_LOGIC := '0';
	 SIGNAL	ni0iOl	:	STD_LOGIC := '0';
	 SIGNAL	ni0iOO	:	STD_LOGIC := '0';
	 SIGNAL	ni0l0i	:	STD_LOGIC := '0';
	 SIGNAL	ni0l0l	:	STD_LOGIC := '0';
	 SIGNAL	ni0l0O	:	STD_LOGIC := '0';
	 SIGNAL	ni0l1i	:	STD_LOGIC := '0';
	 SIGNAL	ni0l1l	:	STD_LOGIC := '0';
	 SIGNAL	ni0l1O	:	STD_LOGIC := '0';
	 SIGNAL	ni0lii	:	STD_LOGIC := '0';
	 SIGNAL	ni0lil	:	STD_LOGIC := '0';
	 SIGNAL	ni0liO	:	STD_LOGIC := '0';
	 SIGNAL	ni0lli	:	STD_LOGIC := '0';
	 SIGNAL	ni0lll	:	STD_LOGIC := '0';
	 SIGNAL	ni0llO	:	STD_LOGIC := '0';
	 SIGNAL	ni0lOi	:	STD_LOGIC := '0';
	 SIGNAL	ni0lOl	:	STD_LOGIC := '0';
	 SIGNAL	ni0lOO	:	STD_LOGIC := '0';
	 SIGNAL	ni0O0i	:	STD_LOGIC := '0';
	 SIGNAL	ni0O0l	:	STD_LOGIC := '0';
	 SIGNAL	ni0O0O	:	STD_LOGIC := '0';
	 SIGNAL	ni0O1i	:	STD_LOGIC := '0';
	 SIGNAL	ni0O1l	:	STD_LOGIC := '0';
	 SIGNAL	ni0O1O	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oii	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oil	:	STD_LOGIC := '0';
	 SIGNAL	ni0OiO	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oli	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oll	:	STD_LOGIC := '0';
	 SIGNAL	nii0l	:	STD_LOGIC := '0';
	 SIGNAL	nii0O	:	STD_LOGIC := '0';
	 SIGNAL	nii1l	:	STD_LOGIC := '0';
	 SIGNAL	niiii	:	STD_LOGIC := '0';
	 SIGNAL	niiil	:	STD_LOGIC := '0';
	 SIGNAL	niiiO	:	STD_LOGIC := '0';
	 SIGNAL	niili	:	STD_LOGIC := '0';
	 SIGNAL	niill	:	STD_LOGIC := '0';
	 SIGNAL	niilO	:	STD_LOGIC := '0';
	 SIGNAL	niiO0i	:	STD_LOGIC := '0';
	 SIGNAL	niiO0l	:	STD_LOGIC := '0';
	 SIGNAL	niiO0O	:	STD_LOGIC := '0';
	 SIGNAL	niiO1i	:	STD_LOGIC := '0';
	 SIGNAL	niiO1l	:	STD_LOGIC := '0';
	 SIGNAL	niiO1O	:	STD_LOGIC := '0';
	 SIGNAL	niiOi	:	STD_LOGIC := '0';
	 SIGNAL	niiOii	:	STD_LOGIC := '0';
	 SIGNAL	niiOil	:	STD_LOGIC := '0';
	 SIGNAL	niiOiO	:	STD_LOGIC := '0';
	 SIGNAL	niiOl	:	STD_LOGIC := '0';
	 SIGNAL	niiOli	:	STD_LOGIC := '0';
	 SIGNAL	niiOll	:	STD_LOGIC := '0';
	 SIGNAL	niiOlO	:	STD_LOGIC := '0';
	 SIGNAL	niiOO	:	STD_LOGIC := '0';
	 SIGNAL	niiOOi	:	STD_LOGIC := '0';
	 SIGNAL	niiOOl	:	STD_LOGIC := '0';
	 SIGNAL	niiOOO	:	STD_LOGIC := '0';
	 SIGNAL	nil0i	:	STD_LOGIC := '0';
	 SIGNAL	nil0l	:	STD_LOGIC := '0';
	 SIGNAL	nil0O	:	STD_LOGIC := '0';
	 SIGNAL	nil10i	:	STD_LOGIC := '0';
	 SIGNAL	nil10l	:	STD_LOGIC := '0';
	 SIGNAL	nil11i	:	STD_LOGIC := '0';
	 SIGNAL	nil11l	:	STD_LOGIC := '0';
	 SIGNAL	nil11O	:	STD_LOGIC := '0';
	 SIGNAL	nil1i	:	STD_LOGIC := '0';
	 SIGNAL	nil1l	:	STD_LOGIC := '0';
	 SIGNAL	nil1O	:	STD_LOGIC := '0';
	 SIGNAL	nilii	:	STD_LOGIC := '0';
	 SIGNAL	nilil	:	STD_LOGIC := '0';
	 SIGNAL	niliO	:	STD_LOGIC := '0';
	 SIGNAL	nill0l	:	STD_LOGIC := '0';
	 SIGNAL	nill0O	:	STD_LOGIC := '0';
	 SIGNAL	nilli	:	STD_LOGIC := '0';
	 SIGNAL	nillii	:	STD_LOGIC := '0';
	 SIGNAL	nillil	:	STD_LOGIC := '0';
	 SIGNAL	nilliO	:	STD_LOGIC := '0';
	 SIGNAL	nilll	:	STD_LOGIC := '0';
	 SIGNAL	nillli	:	STD_LOGIC := '0';
	 SIGNAL	nillll	:	STD_LOGIC := '0';
	 SIGNAL	nilllO	:	STD_LOGIC := '0';
	 SIGNAL	nillO	:	STD_LOGIC := '0';
	 SIGNAL	nillOi	:	STD_LOGIC := '0';
	 SIGNAL	nillOl	:	STD_LOGIC := '0';
	 SIGNAL	nillOO	:	STD_LOGIC := '0';
	 SIGNAL	nilO0i	:	STD_LOGIC := '0';
	 SIGNAL	nilO0l	:	STD_LOGIC := '0';
	 SIGNAL	nilO0O	:	STD_LOGIC := '0';
	 SIGNAL	nilO1i	:	STD_LOGIC := '0';
	 SIGNAL	nilO1l	:	STD_LOGIC := '0';
	 SIGNAL	nilO1O	:	STD_LOGIC := '0';
	 SIGNAL	nilOi	:	STD_LOGIC := '0';
	 SIGNAL	nilOii	:	STD_LOGIC := '0';
	 SIGNAL	nilOil	:	STD_LOGIC := '0';
	 SIGNAL	nilOiO	:	STD_LOGIC := '0';
	 SIGNAL	nilOli	:	STD_LOGIC := '0';
	 SIGNAL	nilOll	:	STD_LOGIC := '0';
	 SIGNAL	nilOlO	:	STD_LOGIC := '0';
	 SIGNAL	nilOOi	:	STD_LOGIC := '0';
	 SIGNAL	nilOOl	:	STD_LOGIC := '0';
	 SIGNAL	nilOOO	:	STD_LOGIC := '0';
	 SIGNAL	niO10i	:	STD_LOGIC := '0';
	 SIGNAL	niO10l	:	STD_LOGIC := '0';
	 SIGNAL	niO10O	:	STD_LOGIC := '0';
	 SIGNAL	niO11i	:	STD_LOGIC := '0';
	 SIGNAL	niO11l	:	STD_LOGIC := '0';
	 SIGNAL	niO11O	:	STD_LOGIC := '0';
	 SIGNAL	niO1ii	:	STD_LOGIC := '0';
	 SIGNAL	niOOOl	:	STD_LOGIC := '0';
	 SIGNAL	niOOOO	:	STD_LOGIC := '0';
	 SIGNAL	nl001i	:	STD_LOGIC := '0';
	 SIGNAL	nl0l0i	:	STD_LOGIC := '0';
	 SIGNAL	nl0l0l	:	STD_LOGIC := '0';
	 SIGNAL	nl100i	:	STD_LOGIC := '0';
	 SIGNAL	nl100l	:	STD_LOGIC := '0';
	 SIGNAL	nl100O	:	STD_LOGIC := '0';
	 SIGNAL	nl101i	:	STD_LOGIC := '0';
	 SIGNAL	nl101l	:	STD_LOGIC := '0';
	 SIGNAL	nl101O	:	STD_LOGIC := '0';
	 SIGNAL	nl10ii	:	STD_LOGIC := '0';
	 SIGNAL	nl10il	:	STD_LOGIC := '0';
	 SIGNAL	nl10iO	:	STD_LOGIC := '0';
	 SIGNAL	nl10li	:	STD_LOGIC := '0';
	 SIGNAL	nl10ll	:	STD_LOGIC := '0';
	 SIGNAL	nl10lO	:	STD_LOGIC := '0';
	 SIGNAL	nl10Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl10Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl10OO	:	STD_LOGIC := '0';
	 SIGNAL	nl110i	:	STD_LOGIC := '0';
	 SIGNAL	nl110l	:	STD_LOGIC := '0';
	 SIGNAL	nl110O	:	STD_LOGIC := '0';
	 SIGNAL	nl111i	:	STD_LOGIC := '0';
	 SIGNAL	nl111l	:	STD_LOGIC := '0';
	 SIGNAL	nl111O	:	STD_LOGIC := '0';
	 SIGNAL	nl11ii	:	STD_LOGIC := '0';
	 SIGNAL	nl11il	:	STD_LOGIC := '0';
	 SIGNAL	nl11iO	:	STD_LOGIC := '0';
	 SIGNAL	nl11li	:	STD_LOGIC := '0';
	 SIGNAL	nl11ll	:	STD_LOGIC := '0';
	 SIGNAL	nl11lO	:	STD_LOGIC := '0';
	 SIGNAL	nl11Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl11Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl11OO	:	STD_LOGIC := '0';
	 SIGNAL	nl1i0i	:	STD_LOGIC := '0';
	 SIGNAL	nl1i0l	:	STD_LOGIC := '0';
	 SIGNAL	nl1i0O	:	STD_LOGIC := '0';
	 SIGNAL	nl1i1i	:	STD_LOGIC := '0';
	 SIGNAL	nl1i1l	:	STD_LOGIC := '0';
	 SIGNAL	nl1i1O	:	STD_LOGIC := '0';
	 SIGNAL	nl1iii	:	STD_LOGIC := '0';
	 SIGNAL	nl1iil	:	STD_LOGIC := '0';
	 SIGNAL	nl1iiO	:	STD_LOGIC := '0';
	 SIGNAL	nl1ili	:	STD_LOGIC := '0';
	 SIGNAL	nl1ill	:	STD_LOGIC := '0';
	 SIGNAL	nl1ilO	:	STD_LOGIC := '0';
	 SIGNAL	nl1iOi	:	STD_LOGIC := '0';
	 SIGNAL	nl1iOl	:	STD_LOGIC := '0';
	 SIGNAL	nl1iOO	:	STD_LOGIC := '0';
	 SIGNAL	nl1l0i	:	STD_LOGIC := '0';
	 SIGNAL	nl1l0l	:	STD_LOGIC := '0';
	 SIGNAL	nl1l0O	:	STD_LOGIC := '0';
	 SIGNAL	nl1l1i	:	STD_LOGIC := '0';
	 SIGNAL	nl1l1l	:	STD_LOGIC := '0';
	 SIGNAL	nl1l1O	:	STD_LOGIC := '0';
	 SIGNAL	nl1lii	:	STD_LOGIC := '0';
	 SIGNAL	nl1lil	:	STD_LOGIC := '0';
	 SIGNAL	nl1liO	:	STD_LOGIC := '0';
	 SIGNAL	nl1lli	:	STD_LOGIC := '0';
	 SIGNAL	nl1lll	:	STD_LOGIC := '0';
	 SIGNAL	nl1llO	:	STD_LOGIC := '0';
	 SIGNAL	nl1lOi	:	STD_LOGIC := '0';
	 SIGNAL	nli0l	:	STD_LOGIC := '0';
	 SIGNAL	nliili	:	STD_LOGIC := '0';
	 SIGNAL	nliill	:	STD_LOGIC := '0';
	 SIGNAL	nliilO	:	STD_LOGIC := '0';
	 SIGNAL	nliiOi	:	STD_LOGIC := '0';
	 SIGNAL	nliiOl	:	STD_LOGIC := '0';
	 SIGNAL	nliiOO	:	STD_LOGIC := '0';
	 SIGNAL	nlil0i	:	STD_LOGIC := '0';
	 SIGNAL	nlil0l	:	STD_LOGIC := '0';
	 SIGNAL	nlil0O	:	STD_LOGIC := '0';
	 SIGNAL	nlil1i	:	STD_LOGIC := '0';
	 SIGNAL	nlil1l	:	STD_LOGIC := '0';
	 SIGNAL	nlil1O	:	STD_LOGIC := '0';
	 SIGNAL	nlilii	:	STD_LOGIC := '0';
	 SIGNAL	nlilil	:	STD_LOGIC := '0';
	 SIGNAL	nliliO	:	STD_LOGIC := '0';
	 SIGNAL	nlilli	:	STD_LOGIC := '0';
	 SIGNAL	nlilll	:	STD_LOGIC := '0';
	 SIGNAL	nlillO	:	STD_LOGIC := '0';
	 SIGNAL	nlilO	:	STD_LOGIC := '0';
	 SIGNAL	nlilOi	:	STD_LOGIC := '0';
	 SIGNAL	nlilOl	:	STD_LOGIC := '0';
	 SIGNAL	nlilOO	:	STD_LOGIC := '0';
	 SIGNAL	nliO1i	:	STD_LOGIC := '0';
	 SIGNAL	nliO1l	:	STD_LOGIC := '0';
	 SIGNAL	nliO1O	:	STD_LOGIC := '0';
	 SIGNAL	nll10l	:	STD_LOGIC := '0';
	 SIGNAL	nlliOO	:	STD_LOGIC := '0';
	 SIGNAL	nlll0i	:	STD_LOGIC := '0';
	 SIGNAL	nlll0l	:	STD_LOGIC := '0';
	 SIGNAL	nlll0O	:	STD_LOGIC := '0';
	 SIGNAL	nlll1i	:	STD_LOGIC := '0';
	 SIGNAL	nlll1l	:	STD_LOGIC := '0';
	 SIGNAL	nlll1O	:	STD_LOGIC := '0';
	 SIGNAL	nlllii	:	STD_LOGIC := '0';
	 SIGNAL	nlllil	:	STD_LOGIC := '0';
	 SIGNAL	nllliO	:	STD_LOGIC := '0';
	 SIGNAL	nlllli	:	STD_LOGIC := '0';
	 SIGNAL	nlllll	:	STD_LOGIC := '0';
	 SIGNAL	nllllO	:	STD_LOGIC := '0';
	 SIGNAL	nlllOi	:	STD_LOGIC := '0';
	 SIGNAL	nlllOl	:	STD_LOGIC := '0';
	 SIGNAL	nlllOO	:	STD_LOGIC := '0';
	 SIGNAL	nllO0i	:	STD_LOGIC := '0';
	 SIGNAL	nllO0l	:	STD_LOGIC := '0';
	 SIGNAL	nllO0O	:	STD_LOGIC := '0';
	 SIGNAL	nllO1i	:	STD_LOGIC := '0';
	 SIGNAL	nllO1l	:	STD_LOGIC := '0';
	 SIGNAL	nllO1O	:	STD_LOGIC := '0';
	 SIGNAL	nllOii	:	STD_LOGIC := '0';
	 SIGNAL	nllOil	:	STD_LOGIC := '0';
	 SIGNAL	nllOiO	:	STD_LOGIC := '0';
	 SIGNAL	nllOli	:	STD_LOGIC := '0';
	 SIGNAL	nllOll	:	STD_LOGIC := '0';
	 SIGNAL	nllOlO	:	STD_LOGIC := '0';
	 SIGNAL	nllOOi	:	STD_LOGIC := '0';
	 SIGNAL	nllOOl	:	STD_LOGIC := '0';
	 SIGNAL	nllOOO	:	STD_LOGIC := '0';
	 SIGNAL	nlO00i	:	STD_LOGIC := '0';
	 SIGNAL	nlO00l	:	STD_LOGIC := '0';
	 SIGNAL	nlO00O	:	STD_LOGIC := '0';
	 SIGNAL	nlO01i	:	STD_LOGIC := '0';
	 SIGNAL	nlO01l	:	STD_LOGIC := '0';
	 SIGNAL	nlO01O	:	STD_LOGIC := '0';
	 SIGNAL	nlO0ii	:	STD_LOGIC := '0';
	 SIGNAL	nlO0il	:	STD_LOGIC := '0';
	 SIGNAL	nlO0iO	:	STD_LOGIC := '0';
	 SIGNAL	nlO0li	:	STD_LOGIC := '0';
	 SIGNAL	nlO0ll	:	STD_LOGIC := '0';
	 SIGNAL	nlO0lO	:	STD_LOGIC := '0';
	 SIGNAL	nlO0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlO0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nlO0OO	:	STD_LOGIC := '0';
	 SIGNAL	nlO10i	:	STD_LOGIC := '0';
	 SIGNAL	nlO10l	:	STD_LOGIC := '0';
	 SIGNAL	nlO10O	:	STD_LOGIC := '0';
	 SIGNAL	nlO11i	:	STD_LOGIC := '0';
	 SIGNAL	nlO11l	:	STD_LOGIC := '0';
	 SIGNAL	nlO11O	:	STD_LOGIC := '0';
	 SIGNAL	nlO1ii	:	STD_LOGIC := '0';
	 SIGNAL	nlO1il	:	STD_LOGIC := '0';
	 SIGNAL	nlO1iO	:	STD_LOGIC := '0';
	 SIGNAL	nlO1li	:	STD_LOGIC := '0';
	 SIGNAL	nlO1ll	:	STD_LOGIC := '0';
	 SIGNAL	nlO1lO	:	STD_LOGIC := '0';
	 SIGNAL	nlO1Oi	:	STD_LOGIC := '0';
	 SIGNAL	nlO1Ol	:	STD_LOGIC := '0';
	 SIGNAL	nlO1OO	:	STD_LOGIC := '0';
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
	 SIGNAL	nlOO1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1l	:	STD_LOGIC := '0';
	 SIGNAL	nlOO1O	:	STD_LOGIC := '0';
	 SIGNAL	wire_nlill_CLRN	:	STD_LOGIC;
	 SIGNAL	wire_nlill_PRN	:	STD_LOGIC;
	 SIGNAL  wire_nlill_w_lg_nilOi167w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nlill_w_lg_nii0l166w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni0iiO_aclr	:	STD_LOGIC;
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_ni0iiO_dataa	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_ni0iiO_datab	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_ni0iiO_result	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_ni0ili_aclr	:	STD_LOGIC;
	 SIGNAL  wire_ni0ili_dataa	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_ni0ili_datab	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_ni0ili_result	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_ni0ili_w_result_range981w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni0ili_w_result_range987w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni0ili_w_result_range996w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni0ili_w_result_range1005w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nii1O_cin	:	STD_LOGIC;
	 SIGNAL  wire_nlill_w_lg_w_lg_nilOi167w170w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nii1O_dataa	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nii1O_datab	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nii1O_result	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_niOOOi_aclr	:	STD_LOGIC;
	 SIGNAL  wire_niOOOi_dataa	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_niOOOi_datab	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_niOOOi_result	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_niOOOi_w_result_range876w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nlliOl_dataa	:	STD_LOGIC_VECTOR (47 DOWNTO 0);
	 SIGNAL  wire_nlliOl_datab	:	STD_LOGIC_VECTOR (47 DOWNTO 0);
	 SIGNAL  wire_nlliOl_result	:	STD_LOGIC_VECTOR (47 DOWNTO 0);
	 SIGNAL  wire_nli0O_q	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nli0O_sclr	:	STD_LOGIC;
	 SIGNAL  wire_nllilO_dataa	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nllilO_datab	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nllilO_result	:	STD_LOGIC_VECTOR (47 DOWNTO 0);
	 SIGNAL  wire_nlliOi_dataa	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nlliOi_datab	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_nlliOi_result	:	STD_LOGIC_VECTOR (47 DOWNTO 0);
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
	 SIGNAL	wire_n0O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0Oil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0OiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0Oli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n0OOO_dataout	:	STD_LOGIC;
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
	 SIGNAL	wire_n110i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n110O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n111O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n11ii_dataout	:	STD_LOGIC;
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
	 SIGNAL	wire_n1ili_dataout	:	STD_LOGIC;
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
	 SIGNAL	wire_n1OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OOl_dataout	:	STD_LOGIC;
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
	 SIGNAL	wire_ni0OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni0OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_ni1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nii1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niii0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niii0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niii0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niii1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niii1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niii1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiiii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiiil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiiiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiiOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiiOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiiOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niil0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niil0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niil0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niil1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niil1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niil1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niilii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niilil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niiliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niilli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niilll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niillO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niilOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niilOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niilOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nil1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nili0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nili0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nili0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nili1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nili1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nili1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niliii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niliil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niliiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nilili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nilill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nililO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niliOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niliOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niliOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nilOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nilOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niO1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOi0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOi0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOi0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOi1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOi1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOi1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOiii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOiil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOiiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOiOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOiOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOiOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOl0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOl0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOl0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOl1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOl1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOl1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOlii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOlil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOlli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOlll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOllO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOlOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOlOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOlOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOO1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOO1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOO1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl000i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl000l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl000O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl001l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl001O_dataout	:	STD_LOGIC;
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
	 SIGNAL	wire_nl010i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl010l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl010O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl011i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl011l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl011O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01OO_dataout	:	STD_LOGIC;
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
	 SIGNAL	wire_nl1lOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1lOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1O1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1O1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1O1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Oil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1OiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Oli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0Ol_dataout	:	STD_LOGIC;
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
	 SIGNAL	wire_nli1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1OO_dataout	:	STD_LOGIC;
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
	 SIGNAL	wire_nliiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlli1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOO0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlOOOO_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nill1i_a	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nill1i_b	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nill1i_o	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_niOOlO_a	:	STD_LOGIC_VECTOR (20 DOWNTO 0);
	 SIGNAL  wire_niOOlO_b	:	STD_LOGIC_VECTOR (20 DOWNTO 0);
	 SIGNAL  wire_niOOlO_o	:	STD_LOGIC_VECTOR (20 DOWNTO 0);
	 SIGNAL  wire_nlliil_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_nlliil_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_nlliil_o	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_w_lg_ni0i1i88w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset_n87w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  ni0i0l :	STD_LOGIC;
	 SIGNAL  ni0i1i :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_ni0i1i88w(0) <= NOT ni0i1i;
	wire_w_lg_reset_n87w(0) <= NOT reset_n;
	fsin_o <= ( wire_nii1O_result(23 DOWNTO 0));
	ni0i0l <= '1';
	ni0i1i <= ((((((((((((((((((((((((((NOT wire_nlliOl_result(23)) AND (NOT wire_nlliOl_result(24))) AND (NOT wire_nlliOl_result(25))) AND (NOT wire_nlliOl_result(26))) AND (NOT wire_nlliOl_result(27))) AND (NOT wire_nlliOl_result(28))) AND (NOT wire_nlliOl_result(29))) AND (NOT wire_nlliOl_result(30))) AND (NOT wire_nlliOl_result(31))) AND (NOT wire_nlliOl_result(32))) AND (NOT wire_nlliOl_result(33))) AND (NOT wire_nlliOl_result(34))) AND (NOT wire_nlliOl_result(35))) AND (NOT wire_nlliOl_result(36))) AND (NOT wire_nlliOl_result(37))) AND (NOT wire_nlliOl_result(38))) AND (NOT wire_nlliOl_result(39))) AND (NOT wire_nlliOl_result(40))) AND (NOT wire_nlliOl_result(41))) AND (NOT wire_nlliOl_result(42))) AND (NOT wire_nlliOl_result(43))) AND (NOT wire_nlliOl_result(44))) AND (NOT wire_nlliOl_result(45))) AND (NOT wire_nlliOl_result(46))) AND (NOT wire_nlliOl_result(47))) AND (ni00Ol8 XOR ni00Ol7));
	out_valid <= nlilO;
	wire_nlliiO_address_a <= ( nliill & nliilO & nliiOi & nliiOl & nliiOO & nlil1i & nlil1l & nlil1O);
	wire_nlliiO_address_b <= ( nlil0i & nlil0l & nlil0O & nlilii & nlilil & nliliO & nlilli & nlilll);
	wire_nlliiO_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_nlliiO_data_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nlliiO :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK0",
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
		INDATA_REG_B => "CLOCK0",
		INIT_FILE => "sine_nco_ii_0_sin_c.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "Cyclone V",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "BIDIR_DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "CLOCK0",
		OUTDATA_REG_B => "CLOCK0",
		RAM_BLOCK_TYPE => "AUTO",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "DONT_CARE",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 24,
		WIDTH_B => 24,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTH_ECCSTATUS => 3,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK0",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_nlliiO_address_a,
		address_b => wire_nlliiO_address_b,
		clock0 => clk,
		clocken0 => clken,
		data_a => wire_nlliiO_data_a,
		data_b => wire_nlliiO_data_b,
		q_a => wire_nlliiO_q_a,
		q_b => wire_nlliiO_q_b,
		wren_a => wire_gnd,
		wren_b => wire_gnd
	  );
	wire_nllili_address_a <= ( nlillO & nlilOi & nlilOl & nlilOO & nliO1i & nliO1l & nliO1O & nll10l);
	nllili :  altsyncram
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
		INIT_FILE => "sine_nco_ii_0_sin_f.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "Cyclone V",
		NUMWORDS_A => 256,
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
		WIDTHAD_A => 8,
		WIDTHAD_B => 1,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_nllili_address_a,
		clock0 => clk,
		clocken0 => clken,
		q_a => wire_nllili_q_a
	  );
	wire_nllill_address_a <= ( nlillO & nlilOi & nlilOl & nlilOO & nliO1i & nliO1l & nliO1O & nll10l);
	nllill :  altsyncram
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
		INIT_FILE => "sine_nco_ii_0_cos_f.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "Cyclone V",
		NUMWORDS_A => 256,
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
		WIDTHAD_A => 8,
		WIDTHAD_B => 1,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_nllill_address_a,
		clock0 => clk,
		clocken0 => clken,
		q_a => wire_nllill_q_a
	  );
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni000i25 <= ni000i26;
		END IF;
		if (now = 0 ns) then
			ni000i25 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni000i26 <= ni000i25;
		END IF;
	END PROCESS;
	wire_ni000i26_w_lg_w_lg_q1082w1083w(0) <= wire_ni000i26_w_lg_q1082w(0) AND niiO1l;
	wire_ni000i26_w_lg_q1082w(0) <= ni000i26 XOR ni000i25;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni000l23 <= ni000l24;
		END IF;
		if (now = 0 ns) then
			ni000l23 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni000l24 <= ni000l23;
		END IF;
	END PROCESS;
	wire_ni000l24_w_lg_w_lg_q1043w1044w(0) <= wire_ni000l24_w_lg_q1043w(0) AND nil11O;
	wire_ni000l24_w_lg_q1043w(0) <= ni000l24 XOR ni000l23;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni000O21 <= ni000O22;
		END IF;
		if (now = 0 ns) then
			ni000O21 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni000O22 <= ni000O21;
		END IF;
	END PROCESS;
	wire_ni000O22_w_lg_w_lg_q1038w1039w(0) <= wire_ni000O22_w_lg_q1038w(0) AND nil10i;
	wire_ni000O22_w_lg_q1038w(0) <= ni000O22 XOR ni000O21;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni001l27 <= ni001l28;
		END IF;
		if (now = 0 ns) then
			ni001l27 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni001l28 <= ni001l27;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00ii19 <= ni00ii20;
		END IF;
		if (now = 0 ns) then
			ni00ii19 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00ii20 <= ni00ii19;
		END IF;
	END PROCESS;
	wire_ni00ii20_w_lg_w_lg_q1006w1007w(0) <= wire_ni00ii20_w_lg_q1006w(0) AND wire_ni0ili_w_result_range1005w(0);
	wire_ni00ii20_w_lg_q1006w(0) <= ni00ii20 XOR ni00ii19;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00il17 <= ni00il18;
		END IF;
		if (now = 0 ns) then
			ni00il17 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00il18 <= ni00il17;
		END IF;
	END PROCESS;
	wire_ni00il18_w_lg_w_lg_q997w998w(0) <= wire_ni00il18_w_lg_q997w(0) AND wire_ni0ili_w_result_range996w(0);
	wire_ni00il18_w_lg_q997w(0) <= ni00il18 XOR ni00il17;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00iO15 <= ni00iO16;
		END IF;
		if (now = 0 ns) then
			ni00iO15 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00iO16 <= ni00iO15;
		END IF;
	END PROCESS;
	wire_ni00iO16_w_lg_w_lg_q988w989w(0) <= wire_ni00iO16_w_lg_q988w(0) AND wire_ni0ili_w_result_range987w(0);
	wire_ni00iO16_w_lg_q988w(0) <= ni00iO16 XOR ni00iO15;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00li13 <= ni00li14;
		END IF;
		if (now = 0 ns) then
			ni00li13 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00li14 <= ni00li13;
		END IF;
	END PROCESS;
	wire_ni00li14_w_lg_w_lg_q982w983w(0) <= wire_ni00li14_w_lg_q982w(0) AND wire_ni0ili_w_result_range981w(0);
	wire_ni00li14_w_lg_q982w(0) <= ni00li14 XOR ni00li13;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00ll11 <= ni00ll12;
		END IF;
		if (now = 0 ns) then
			ni00ll11 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00ll12 <= ni00ll11;
		END IF;
	END PROCESS;
	wire_ni00ll12_w_lg_w_lg_q877w878w(0) <= wire_ni00ll12_w_lg_q877w(0) AND wire_niOOOi_w_result_range876w(0);
	wire_ni00ll12_w_lg_q877w(0) <= ni00ll12 XOR ni00ll11;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00lO10 <= ni00lO9;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00lO9 <= ni00lO10;
		END IF;
		if (now = 0 ns) then
			ni00lO9 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00Ol7 <= ni00Ol8;
		END IF;
		if (now = 0 ns) then
			ni00Ol7 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni00Ol8 <= ni00Ol7;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni0i1l5 <= ni0i1l6;
		END IF;
		if (now = 0 ns) then
			ni0i1l5 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni0i1l6 <= ni0i1l5;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni0iii3 <= ni0iii4;
		END IF;
		if (now = 0 ns) then
			ni0iii3 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni0iii4 <= ni0iii3;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni0iil1 <= ni0iil2;
		END IF;
		if (now = 0 ns) then
			ni0iil1 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN ni0iil2 <= ni0iil1;
		END IF;
	END PROCESS;
	PROCESS (clk, wire_nlill_PRN, wire_nlill_CLRN)
	BEGIN
		IF (wire_nlill_PRN = '0') THEN
				ni0ill <= '1';
				ni0ilO <= '1';
				ni0iOi <= '1';
				ni0iOl <= '1';
				ni0iOO <= '1';
				ni0l0i <= '1';
				ni0l0l <= '1';
				ni0l0O <= '1';
				ni0l1i <= '1';
				ni0l1l <= '1';
				ni0l1O <= '1';
				ni0lii <= '1';
				ni0lil <= '1';
				ni0liO <= '1';
				ni0lli <= '1';
				ni0lll <= '1';
				ni0llO <= '1';
				ni0lOi <= '1';
				ni0lOl <= '1';
				ni0lOO <= '1';
				ni0O0i <= '1';
				ni0O0l <= '1';
				ni0O0O <= '1';
				ni0O1i <= '1';
				ni0O1l <= '1';
				ni0O1O <= '1';
				ni0Oii <= '1';
				ni0Oil <= '1';
				ni0OiO <= '1';
				ni0Oli <= '1';
				ni0Oll <= '1';
				nii0l <= '1';
				nii0O <= '1';
				nii1l <= '1';
				niiii <= '1';
				niiil <= '1';
				niiiO <= '1';
				niili <= '1';
				niill <= '1';
				niilO <= '1';
				niiO0i <= '1';
				niiO0l <= '1';
				niiO0O <= '1';
				niiO1i <= '1';
				niiO1l <= '1';
				niiO1O <= '1';
				niiOi <= '1';
				niiOii <= '1';
				niiOil <= '1';
				niiOiO <= '1';
				niiOl <= '1';
				niiOli <= '1';
				niiOll <= '1';
				niiOlO <= '1';
				niiOO <= '1';
				niiOOi <= '1';
				niiOOl <= '1';
				niiOOO <= '1';
				nil0i <= '1';
				nil0l <= '1';
				nil0O <= '1';
				nil10i <= '1';
				nil10l <= '1';
				nil11i <= '1';
				nil11l <= '1';
				nil11O <= '1';
				nil1i <= '1';
				nil1l <= '1';
				nil1O <= '1';
				nilii <= '1';
				nilil <= '1';
				niliO <= '1';
				nill0l <= '1';
				nill0O <= '1';
				nilli <= '1';
				nillii <= '1';
				nillil <= '1';
				nilliO <= '1';
				nilll <= '1';
				nillli <= '1';
				nillll <= '1';
				nilllO <= '1';
				nillO <= '1';
				nillOi <= '1';
				nillOl <= '1';
				nillOO <= '1';
				nilO0i <= '1';
				nilO0l <= '1';
				nilO0O <= '1';
				nilO1i <= '1';
				nilO1l <= '1';
				nilO1O <= '1';
				nilOi <= '1';
				nilOii <= '1';
				nilOil <= '1';
				nilOiO <= '1';
				nilOli <= '1';
				nilOll <= '1';
				nilOlO <= '1';
				nilOOi <= '1';
				nilOOl <= '1';
				nilOOO <= '1';
				niO10i <= '1';
				niO10l <= '1';
				niO10O <= '1';
				niO11i <= '1';
				niO11l <= '1';
				niO11O <= '1';
				niO1ii <= '1';
				niOOOl <= '1';
				niOOOO <= '1';
				nl001i <= '1';
				nl0l0i <= '1';
				nl0l0l <= '1';
				nl100i <= '1';
				nl100l <= '1';
				nl100O <= '1';
				nl101i <= '1';
				nl101l <= '1';
				nl101O <= '1';
				nl10ii <= '1';
				nl10il <= '1';
				nl10iO <= '1';
				nl10li <= '1';
				nl10ll <= '1';
				nl10lO <= '1';
				nl10Oi <= '1';
				nl10Ol <= '1';
				nl10OO <= '1';
				nl110i <= '1';
				nl110l <= '1';
				nl110O <= '1';
				nl111i <= '1';
				nl111l <= '1';
				nl111O <= '1';
				nl11ii <= '1';
				nl11il <= '1';
				nl11iO <= '1';
				nl11li <= '1';
				nl11ll <= '1';
				nl11lO <= '1';
				nl11Oi <= '1';
				nl11Ol <= '1';
				nl11OO <= '1';
				nl1i0i <= '1';
				nl1i0l <= '1';
				nl1i0O <= '1';
				nl1i1i <= '1';
				nl1i1l <= '1';
				nl1i1O <= '1';
				nl1iii <= '1';
				nl1iil <= '1';
				nl1iiO <= '1';
				nl1ili <= '1';
				nl1ill <= '1';
				nl1ilO <= '1';
				nl1iOi <= '1';
				nl1iOl <= '1';
				nl1iOO <= '1';
				nl1l0i <= '1';
				nl1l0l <= '1';
				nl1l0O <= '1';
				nl1l1i <= '1';
				nl1l1l <= '1';
				nl1l1O <= '1';
				nl1lii <= '1';
				nl1lil <= '1';
				nl1liO <= '1';
				nl1lli <= '1';
				nl1lll <= '1';
				nl1llO <= '1';
				nl1lOi <= '1';
				nli0l <= '1';
				nliili <= '1';
				nliill <= '1';
				nliilO <= '1';
				nliiOi <= '1';
				nliiOl <= '1';
				nliiOO <= '1';
				nlil0i <= '1';
				nlil0l <= '1';
				nlil0O <= '1';
				nlil1i <= '1';
				nlil1l <= '1';
				nlil1O <= '1';
				nlilii <= '1';
				nlilil <= '1';
				nliliO <= '1';
				nlilli <= '1';
				nlilll <= '1';
				nlillO <= '1';
				nlilO <= '1';
				nlilOi <= '1';
				nlilOl <= '1';
				nlilOO <= '1';
				nliO1i <= '1';
				nliO1l <= '1';
				nliO1O <= '1';
				nll10l <= '1';
				nlliOO <= '1';
				nlll0i <= '1';
				nlll0l <= '1';
				nlll0O <= '1';
				nlll1i <= '1';
				nlll1l <= '1';
				nlll1O <= '1';
				nlllii <= '1';
				nlllil <= '1';
				nllliO <= '1';
				nlllli <= '1';
				nlllll <= '1';
				nllllO <= '1';
				nlllOi <= '1';
				nlllOl <= '1';
				nlllOO <= '1';
				nllO0i <= '1';
				nllO0l <= '1';
				nllO0O <= '1';
				nllO1i <= '1';
				nllO1l <= '1';
				nllO1O <= '1';
				nllOii <= '1';
				nllOil <= '1';
				nllOiO <= '1';
				nllOli <= '1';
				nllOll <= '1';
				nllOlO <= '1';
				nllOOi <= '1';
				nllOOl <= '1';
				nllOOO <= '1';
				nlO00i <= '1';
				nlO00l <= '1';
				nlO00O <= '1';
				nlO01i <= '1';
				nlO01l <= '1';
				nlO01O <= '1';
				nlO0ii <= '1';
				nlO0il <= '1';
				nlO0iO <= '1';
				nlO0li <= '1';
				nlO0ll <= '1';
				nlO0lO <= '1';
				nlO0Oi <= '1';
				nlO0Ol <= '1';
				nlO0OO <= '1';
				nlO10i <= '1';
				nlO10l <= '1';
				nlO10O <= '1';
				nlO11i <= '1';
				nlO11l <= '1';
				nlO11O <= '1';
				nlO1ii <= '1';
				nlO1il <= '1';
				nlO1iO <= '1';
				nlO1li <= '1';
				nlO1ll <= '1';
				nlO1lO <= '1';
				nlO1Oi <= '1';
				nlO1Ol <= '1';
				nlO1OO <= '1';
				nlOi0i <= '1';
				nlOi0l <= '1';
				nlOi0O <= '1';
				nlOi1i <= '1';
				nlOi1l <= '1';
				nlOi1O <= '1';
				nlOiii <= '1';
				nlOiil <= '1';
				nlOiiO <= '1';
				nlOili <= '1';
				nlOill <= '1';
				nlOilO <= '1';
				nlOiOi <= '1';
				nlOiOl <= '1';
				nlOiOO <= '1';
				nlOl0i <= '1';
				nlOl0l <= '1';
				nlOl0O <= '1';
				nlOl1i <= '1';
				nlOl1l <= '1';
				nlOl1O <= '1';
				nlOlii <= '1';
				nlOlil <= '1';
				nlOliO <= '1';
				nlOlli <= '1';
				nlOlll <= '1';
				nlOllO <= '1';
				nlOlOi <= '1';
				nlOlOl <= '1';
				nlOlOO <= '1';
				nlOO0i <= '1';
				nlOO1i <= '1';
				nlOO1l <= '1';
				nlOO1O <= '1';
		ELSIF (wire_nlill_CLRN = '0') THEN
				ni0ill <= '0';
				ni0ilO <= '0';
				ni0iOi <= '0';
				ni0iOl <= '0';
				ni0iOO <= '0';
				ni0l0i <= '0';
				ni0l0l <= '0';
				ni0l0O <= '0';
				ni0l1i <= '0';
				ni0l1l <= '0';
				ni0l1O <= '0';
				ni0lii <= '0';
				ni0lil <= '0';
				ni0liO <= '0';
				ni0lli <= '0';
				ni0lll <= '0';
				ni0llO <= '0';
				ni0lOi <= '0';
				ni0lOl <= '0';
				ni0lOO <= '0';
				ni0O0i <= '0';
				ni0O0l <= '0';
				ni0O0O <= '0';
				ni0O1i <= '0';
				ni0O1l <= '0';
				ni0O1O <= '0';
				ni0Oii <= '0';
				ni0Oil <= '0';
				ni0OiO <= '0';
				ni0Oli <= '0';
				ni0Oll <= '0';
				nii0l <= '0';
				nii0O <= '0';
				nii1l <= '0';
				niiii <= '0';
				niiil <= '0';
				niiiO <= '0';
				niili <= '0';
				niill <= '0';
				niilO <= '0';
				niiO0i <= '0';
				niiO0l <= '0';
				niiO0O <= '0';
				niiO1i <= '0';
				niiO1l <= '0';
				niiO1O <= '0';
				niiOi <= '0';
				niiOii <= '0';
				niiOil <= '0';
				niiOiO <= '0';
				niiOl <= '0';
				niiOli <= '0';
				niiOll <= '0';
				niiOlO <= '0';
				niiOO <= '0';
				niiOOi <= '0';
				niiOOl <= '0';
				niiOOO <= '0';
				nil0i <= '0';
				nil0l <= '0';
				nil0O <= '0';
				nil10i <= '0';
				nil10l <= '0';
				nil11i <= '0';
				nil11l <= '0';
				nil11O <= '0';
				nil1i <= '0';
				nil1l <= '0';
				nil1O <= '0';
				nilii <= '0';
				nilil <= '0';
				niliO <= '0';
				nill0l <= '0';
				nill0O <= '0';
				nilli <= '0';
				nillii <= '0';
				nillil <= '0';
				nilliO <= '0';
				nilll <= '0';
				nillli <= '0';
				nillll <= '0';
				nilllO <= '0';
				nillO <= '0';
				nillOi <= '0';
				nillOl <= '0';
				nillOO <= '0';
				nilO0i <= '0';
				nilO0l <= '0';
				nilO0O <= '0';
				nilO1i <= '0';
				nilO1l <= '0';
				nilO1O <= '0';
				nilOi <= '0';
				nilOii <= '0';
				nilOil <= '0';
				nilOiO <= '0';
				nilOli <= '0';
				nilOll <= '0';
				nilOlO <= '0';
				nilOOi <= '0';
				nilOOl <= '0';
				nilOOO <= '0';
				niO10i <= '0';
				niO10l <= '0';
				niO10O <= '0';
				niO11i <= '0';
				niO11l <= '0';
				niO11O <= '0';
				niO1ii <= '0';
				niOOOl <= '0';
				niOOOO <= '0';
				nl001i <= '0';
				nl0l0i <= '0';
				nl0l0l <= '0';
				nl100i <= '0';
				nl100l <= '0';
				nl100O <= '0';
				nl101i <= '0';
				nl101l <= '0';
				nl101O <= '0';
				nl10ii <= '0';
				nl10il <= '0';
				nl10iO <= '0';
				nl10li <= '0';
				nl10ll <= '0';
				nl10lO <= '0';
				nl10Oi <= '0';
				nl10Ol <= '0';
				nl10OO <= '0';
				nl110i <= '0';
				nl110l <= '0';
				nl110O <= '0';
				nl111i <= '0';
				nl111l <= '0';
				nl111O <= '0';
				nl11ii <= '0';
				nl11il <= '0';
				nl11iO <= '0';
				nl11li <= '0';
				nl11ll <= '0';
				nl11lO <= '0';
				nl11Oi <= '0';
				nl11Ol <= '0';
				nl11OO <= '0';
				nl1i0i <= '0';
				nl1i0l <= '0';
				nl1i0O <= '0';
				nl1i1i <= '0';
				nl1i1l <= '0';
				nl1i1O <= '0';
				nl1iii <= '0';
				nl1iil <= '0';
				nl1iiO <= '0';
				nl1ili <= '0';
				nl1ill <= '0';
				nl1ilO <= '0';
				nl1iOi <= '0';
				nl1iOl <= '0';
				nl1iOO <= '0';
				nl1l0i <= '0';
				nl1l0l <= '0';
				nl1l0O <= '0';
				nl1l1i <= '0';
				nl1l1l <= '0';
				nl1l1O <= '0';
				nl1lii <= '0';
				nl1lil <= '0';
				nl1liO <= '0';
				nl1lli <= '0';
				nl1lll <= '0';
				nl1llO <= '0';
				nl1lOi <= '0';
				nli0l <= '0';
				nliili <= '0';
				nliill <= '0';
				nliilO <= '0';
				nliiOi <= '0';
				nliiOl <= '0';
				nliiOO <= '0';
				nlil0i <= '0';
				nlil0l <= '0';
				nlil0O <= '0';
				nlil1i <= '0';
				nlil1l <= '0';
				nlil1O <= '0';
				nlilii <= '0';
				nlilil <= '0';
				nliliO <= '0';
				nlilli <= '0';
				nlilll <= '0';
				nlillO <= '0';
				nlilO <= '0';
				nlilOi <= '0';
				nlilOl <= '0';
				nlilOO <= '0';
				nliO1i <= '0';
				nliO1l <= '0';
				nliO1O <= '0';
				nll10l <= '0';
				nlliOO <= '0';
				nlll0i <= '0';
				nlll0l <= '0';
				nlll0O <= '0';
				nlll1i <= '0';
				nlll1l <= '0';
				nlll1O <= '0';
				nlllii <= '0';
				nlllil <= '0';
				nllliO <= '0';
				nlllli <= '0';
				nlllll <= '0';
				nllllO <= '0';
				nlllOi <= '0';
				nlllOl <= '0';
				nlllOO <= '0';
				nllO0i <= '0';
				nllO0l <= '0';
				nllO0O <= '0';
				nllO1i <= '0';
				nllO1l <= '0';
				nllO1O <= '0';
				nllOii <= '0';
				nllOil <= '0';
				nllOiO <= '0';
				nllOli <= '0';
				nllOll <= '0';
				nllOlO <= '0';
				nllOOi <= '0';
				nllOOl <= '0';
				nllOOO <= '0';
				nlO00i <= '0';
				nlO00l <= '0';
				nlO00O <= '0';
				nlO01i <= '0';
				nlO01l <= '0';
				nlO01O <= '0';
				nlO0ii <= '0';
				nlO0il <= '0';
				nlO0iO <= '0';
				nlO0li <= '0';
				nlO0ll <= '0';
				nlO0lO <= '0';
				nlO0Oi <= '0';
				nlO0Ol <= '0';
				nlO0OO <= '0';
				nlO10i <= '0';
				nlO10l <= '0';
				nlO10O <= '0';
				nlO11i <= '0';
				nlO11l <= '0';
				nlO11O <= '0';
				nlO1ii <= '0';
				nlO1il <= '0';
				nlO1iO <= '0';
				nlO1li <= '0';
				nlO1ll <= '0';
				nlO1lO <= '0';
				nlO1Oi <= '0';
				nlO1Ol <= '0';
				nlO1OO <= '0';
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
				nlOO1i <= '0';
				nlOO1l <= '0';
				nlOO1O <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				ni0ill <= wire_nii0Oi_dataout;
				ni0ilO <= wire_nii0lO_dataout;
				ni0iOi <= wire_nii0ll_dataout;
				ni0iOl <= wire_nii0li_dataout;
				ni0iOO <= wire_nii0iO_dataout;
				ni0l0i <= wire_nii00l_dataout;
				ni0l0l <= wire_nii00i_dataout;
				ni0l0O <= wire_nii01O_dataout;
				ni0l1i <= wire_nii0il_dataout;
				ni0l1l <= wire_nii0ii_dataout;
				ni0l1O <= wire_nii00O_dataout;
				ni0lii <= wire_nii01l_dataout;
				ni0lil <= wire_nii01i_dataout;
				ni0liO <= wire_nii1OO_dataout;
				ni0lli <= wire_nii1Ol_dataout;
				ni0lll <= wire_nii1Oi_dataout;
				ni0llO <= wire_nii1lO_dataout;
				ni0lOi <= wire_nii1ll_dataout;
				ni0lOl <= wire_nii1li_dataout;
				ni0lOO <= wire_nii1iO_dataout;
				ni0O0i <= wire_nii10l_dataout;
				ni0O0l <= wire_nii10i_dataout;
				ni0O0O <= wire_nii11O_dataout;
				ni0O1i <= wire_nii1il_dataout;
				ni0O1l <= wire_nii1ii_dataout;
				ni0O1O <= wire_nii10O_dataout;
				ni0Oii <= wire_nii11l_dataout;
				ni0Oil <= wire_nii11i_dataout;
				ni0OiO <= wire_ni0OOO_dataout;
				ni0Oli <= wire_ni0OOl_dataout;
				ni0Oll <= wire_ni0OOi_dataout;
				nii0l <= wire_nl1ii_dataout;
				nii0O <= wire_nl10O_dataout;
				nii1l <= wire_nlOO0l_dataout;
				niiii <= wire_nl10l_dataout;
				niiil <= wire_nl10i_dataout;
				niiiO <= wire_nl11O_dataout;
				niili <= wire_nl11l_dataout;
				niill <= wire_nl11i_dataout;
				niilO <= wire_niOOO_dataout;
				niiO0i <= wire_nil0il_dataout;
				niiO0l <= wire_nil0ii_dataout;
				niiO0O <= wire_nil00O_dataout;
				niiO1i <= wire_ni0OlO_dataout;
				niiO1l <= wire_nil0li_dataout;
				niiO1O <= wire_nil0iO_dataout;
				niiOi <= wire_niOOl_dataout;
				niiOii <= wire_nil00l_dataout;
				niiOil <= wire_nil00i_dataout;
				niiOiO <= wire_nil01O_dataout;
				niiOl <= wire_niOOi_dataout;
				niiOli <= wire_nil01l_dataout;
				niiOll <= wire_nil01i_dataout;
				niiOlO <= wire_nil1OO_dataout;
				niiOO <= wire_niOlO_dataout;
				niiOOi <= wire_nil1Ol_dataout;
				niiOOl <= wire_nil1Oi_dataout;
				niiOOO <= wire_nil1lO_dataout;
				nil0i <= wire_niOil_dataout;
				nil0l <= wire_niOii_dataout;
				nil0O <= wire_niO0O_dataout;
				nil10i <= wire_nil1il_dataout;
				nil10l <= wire_nil1ii_dataout;
				nil11i <= wire_nil1ll_dataout;
				nil11l <= wire_nil1li_dataout;
				nil11O <= wire_nil1iO_dataout;
				nil1i <= wire_niOll_dataout;
				nil1l <= wire_niOli_dataout;
				nil1O <= wire_niOiO_dataout;
				nilii <= wire_niO0l_dataout;
				nilil <= wire_niO0i_dataout;
				niliO <= wire_niO1O_dataout;
				nill0l <= wire_nil10O_dataout;
				nill0O <= wire_niOlli_dataout;
				nilli <= wire_niO1l_dataout;
				nillii <= wire_niOliO_dataout;
				nillil <= wire_niOlil_dataout;
				nilliO <= wire_niOlii_dataout;
				nilll <= wire_niO1i_dataout;
				nillli <= wire_niOl0O_dataout;
				nillll <= wire_niOl0l_dataout;
				nilllO <= wire_niOl0i_dataout;
				nillO <= wire_nilOO_dataout;
				nillOi <= wire_niOl1O_dataout;
				nillOl <= wire_niOl1l_dataout;
				nillOO <= wire_niOl1i_dataout;
				nilO0i <= wire_niOilO_dataout;
				nilO0l <= wire_niOill_dataout;
				nilO0O <= wire_niOili_dataout;
				nilO1i <= wire_niOiOO_dataout;
				nilO1l <= wire_niOiOl_dataout;
				nilO1O <= wire_niOiOi_dataout;
				nilOi <= wire_nli1O_dataout;
				nilOii <= wire_niO0il_dataout;
				nilOil <= wire_niO0ii_dataout;
				nilOiO <= wire_niO00O_dataout;
				nilOli <= wire_niO00l_dataout;
				nilOll <= wire_niO00i_dataout;
				nilOlO <= wire_niO01O_dataout;
				nilOOi <= wire_niO01l_dataout;
				nilOOl <= wire_niO01i_dataout;
				nilOOO <= wire_niO1OO_dataout;
				niO10i <= wire_niO1ll_dataout;
				niO10l <= wire_niO1li_dataout;
				niO10O <= wire_niO1iO_dataout;
				niO11i <= wire_niO1Ol_dataout;
				niO11l <= wire_niO1Oi_dataout;
				niO11O <= wire_niO1lO_dataout;
				niO1ii <= wire_niO1il_dataout;
				niOOOl <= wire_nli0il_dataout;
				niOOOO <= wire_nli0ii_dataout;
				nl001i <= wire_nl0l0O_dataout;
				nl0l0i <= wire_nl1lOl_dataout;
				nl0l0l <= wire_nli1il_dataout;
				nl100i <= wire_nl0O1i_dataout;
				nl100l <= wire_nl0lOO_dataout;
				nl100O <= wire_nl0lOl_dataout;
				nl101i <= wire_nl0O0i_dataout;
				nl101l <= wire_nl0O1O_dataout;
				nl101O <= wire_nl0O1l_dataout;
				nl10ii <= wire_nl0lOi_dataout;
				nl10il <= wire_nl0llO_dataout;
				nl10iO <= wire_nl0lll_dataout;
				nl10li <= wire_nl0lli_dataout;
				nl10ll <= wire_nl0liO_dataout;
				nl10lO <= wire_nl0lil_dataout;
				nl10Oi <= wire_nl0lii_dataout;
				nl10Ol <= wire_nl0i1l_dataout;
				nl10OO <= wire_nl0i1i_dataout;
				nl110i <= wire_nli01O_dataout;
				nl110l <= wire_nli01l_dataout;
				nl110O <= wire_nli01i_dataout;
				nl111i <= wire_nli00O_dataout;
				nl111l <= wire_nli00l_dataout;
				nl111O <= wire_nli00i_dataout;
				nl11ii <= wire_nli1OO_dataout;
				nl11il <= wire_nli1Ol_dataout;
				nl11iO <= wire_nli1Oi_dataout;
				nl11li <= wire_nli1lO_dataout;
				nl11ll <= wire_nli1ll_dataout;
				nl11lO <= wire_nli1li_dataout;
				nl11Oi <= wire_nli1iO_dataout;
				nl11Ol <= wire_nl0O0O_dataout;
				nl11OO <= wire_nl0O0l_dataout;
				nl1i0i <= wire_nl00lO_dataout;
				nl1i0l <= wire_nl00ll_dataout;
				nl1i0O <= wire_nl00li_dataout;
				nl1i1i <= wire_nl00OO_dataout;
				nl1i1l <= wire_nl00Ol_dataout;
				nl1i1O <= wire_nl00Oi_dataout;
				nl1iii <= wire_nl00iO_dataout;
				nl1iil <= wire_nl00il_dataout;
				nl1iiO <= wire_nl00ii_dataout;
				nl1ili <= wire_nl000O_dataout;
				nl1ill <= wire_nl000l_dataout;
				nl1ilO <= wire_nl000i_dataout;
				nl1iOi <= wire_nl001O_dataout;
				nl1iOl <= wire_nl1OOl_dataout;
				nl1iOO <= wire_nl1OOi_dataout;
				nl1l0i <= wire_nl1OiO_dataout;
				nl1l0l <= wire_nl1Oil_dataout;
				nl1l0O <= wire_nl1Oii_dataout;
				nl1l1i <= wire_nl1OlO_dataout;
				nl1l1l <= wire_nl1Oll_dataout;
				nl1l1O <= wire_nl1Oli_dataout;
				nl1lii <= wire_nl1O0O_dataout;
				nl1lil <= wire_nl1O0l_dataout;
				nl1liO <= wire_nl1O0i_dataout;
				nl1lli <= wire_nl1O1O_dataout;
				nl1lll <= wire_nl1O1l_dataout;
				nl1llO <= wire_nl1O1i_dataout;
				nl1lOi <= wire_nl001l_dataout;
				nli0l <= wire_nilOl_dataout;
				nliili <= wire_nl1lOO_dataout;
				nliill <= wire_nll1Oi_dataout;
				nliilO <= wire_nll1lO_dataout;
				nliiOi <= wire_nll1ll_dataout;
				nliiOl <= wire_nll1li_dataout;
				nliiOO <= wire_nll1iO_dataout;
				nlil0i <= wire_nll10i_dataout;
				nlil0l <= wire_nll11O_dataout;
				nlil0O <= wire_nll11l_dataout;
				nlil1i <= wire_nll1il_dataout;
				nlil1l <= wire_nll1ii_dataout;
				nlil1O <= wire_nll10O_dataout;
				nlilii <= wire_nll11i_dataout;
				nlilil <= wire_nliOOO_dataout;
				nliliO <= wire_nliOOl_dataout;
				nlilli <= wire_nliOOi_dataout;
				nlilll <= wire_nliOlO_dataout;
				nlillO <= wire_nliOll_dataout;
				nlilO <= wire_nliil_dataout;
				nlilOi <= wire_nliOli_dataout;
				nlilOl <= wire_nliOiO_dataout;
				nlilOO <= wire_nliOil_dataout;
				nliO1i <= wire_nliOii_dataout;
				nliO1l <= wire_nliO0O_dataout;
				nliO1O <= wire_nliO0l_dataout;
				nll10l <= wire_nliO0i_dataout;
				nlliOO <= wire_n01li_dataout;
				nlll0i <= wire_n010O_dataout;
				nlll0l <= wire_n010l_dataout;
				nlll0O <= wire_n010i_dataout;
				nlll1i <= wire_n01iO_dataout;
				nlll1l <= wire_n01il_dataout;
				nlll1O <= wire_n01ii_dataout;
				nlllii <= wire_n011O_dataout;
				nlllil <= wire_n011l_dataout;
				nllliO <= wire_n011i_dataout;
				nlllli <= wire_n1OOO_dataout;
				nlllll <= wire_n1OOl_dataout;
				nllllO <= wire_n1OOi_dataout;
				nlllOi <= wire_n1OlO_dataout;
				nlllOl <= wire_n1Oll_dataout;
				nlllOO <= wire_n1Oli_dataout;
				nllO0i <= wire_n1O0O_dataout;
				nllO0l <= wire_n1O0l_dataout;
				nllO0O <= wire_n1O0i_dataout;
				nllO1i <= wire_n1OiO_dataout;
				nllO1l <= wire_n1Oil_dataout;
				nllO1O <= wire_n1Oii_dataout;
				nllOii <= wire_n1O1O_dataout;
				nllOil <= wire_n1O1l_dataout;
				nllOiO <= wire_n1O1i_dataout;
				nllOli <= wire_n1lOO_dataout;
				nllOll <= wire_n1lOl_dataout;
				nllOlO <= wire_n1lOi_dataout;
				nllOOi <= wire_n1llO_dataout;
				nllOOl <= wire_n1lll_dataout;
				nllOOO <= wire_n1lli_dataout;
				nlO00i <= wire_n1i0O_dataout;
				nlO00l <= wire_n1i0l_dataout;
				nlO00O <= wire_n1i0i_dataout;
				nlO01i <= wire_n1iiO_dataout;
				nlO01l <= wire_n1iil_dataout;
				nlO01O <= wire_n1iii_dataout;
				nlO0ii <= wire_n1i1O_dataout;
				nlO0il <= wire_n1i1l_dataout;
				nlO0iO <= wire_n1i1i_dataout;
				nlO0li <= wire_n10OO_dataout;
				nlO0ll <= wire_n10Ol_dataout;
				nlO0lO <= wire_n10Oi_dataout;
				nlO0Oi <= wire_n10lO_dataout;
				nlO0Ol <= wire_n10ll_dataout;
				nlO0OO <= wire_n10li_dataout;
				nlO10i <= wire_n1l0O_dataout;
				nlO10l <= wire_n1l0l_dataout;
				nlO10O <= wire_n1l0i_dataout;
				nlO11i <= wire_n1liO_dataout;
				nlO11l <= wire_n1lil_dataout;
				nlO11O <= wire_n1lii_dataout;
				nlO1ii <= wire_n1l1O_dataout;
				nlO1il <= wire_n1l1l_dataout;
				nlO1iO <= wire_n1l1i_dataout;
				nlO1li <= wire_n1iOO_dataout;
				nlO1ll <= wire_n1iOl_dataout;
				nlO1lO <= wire_n1iOi_dataout;
				nlO1Oi <= wire_n1ilO_dataout;
				nlO1Ol <= wire_n1ill_dataout;
				nlO1OO <= wire_n1ili_dataout;
				nlOi0i <= wire_n100O_dataout;
				nlOi0l <= wire_n100l_dataout;
				nlOi0O <= wire_n100i_dataout;
				nlOi1i <= wire_n10iO_dataout;
				nlOi1l <= wire_n10il_dataout;
				nlOi1O <= wire_n10ii_dataout;
				nlOiii <= wire_n101O_dataout;
				nlOiil <= wire_n101l_dataout;
				nlOiiO <= wire_n101i_dataout;
				nlOili <= wire_n11OO_dataout;
				nlOill <= wire_n11Ol_dataout;
				nlOilO <= wire_n11Oi_dataout;
				nlOiOi <= wire_n11lO_dataout;
				nlOiOl <= wire_n11ll_dataout;
				nlOiOO <= wire_n11li_dataout;
				nlOl0i <= wire_n110O_dataout;
				nlOl0l <= wire_n110l_dataout;
				nlOl0O <= wire_n110i_dataout;
				nlOl1i <= wire_n11iO_dataout;
				nlOl1l <= wire_n11il_dataout;
				nlOl1O <= wire_n11ii_dataout;
				nlOlii <= wire_n111O_dataout;
				nlOlil <= wire_n111l_dataout;
				nlOliO <= wire_n111i_dataout;
				nlOlli <= wire_nlOOOO_dataout;
				nlOlll <= wire_nlOOOl_dataout;
				nlOllO <= wire_nlOOOi_dataout;
				nlOlOi <= wire_nlOOlO_dataout;
				nlOlOl <= wire_nlOOll_dataout;
				nlOlOO <= wire_nlOOli_dataout;
				nlOO0i <= wire_nlOO0O_dataout;
				nlOO1i <= wire_nlOOiO_dataout;
				nlOO1l <= wire_nlOOil_dataout;
				nlOO1O <= wire_nlOOii_dataout;
		END IF;
		if (now = 0 ns) then
			ni0ill <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0ilO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0iOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0iOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0iOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0l0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0l0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0l0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0l1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0l1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0l1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0lii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0lil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0liO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0lli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0lll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0llO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0lOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0lOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0lOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0O0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0O0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0O0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0O1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0O1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0O1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0Oii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0Oil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0OiO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0Oli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			ni0Oll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nii0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nii0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nii1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiiO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niili <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niill <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niilO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiO0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiO0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiO0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiO1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiO1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiO1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOiO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOlO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niiOOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil10i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil10l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil11i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil11l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil11O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nil1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niliO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nill0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nill0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nillii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nillil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilliO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nillli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nillll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilllO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nillO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nillOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nillOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nillOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilO0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilO0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilO0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilO1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilO1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilO1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOiO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOlO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nilOOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niO10i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niO10l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niO10O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niO11i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niO11l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niO11O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niO1ii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niOOOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			niOOOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl001i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0l0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0l0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl100i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl100l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl100O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl101i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl101l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl101O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl10ii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl10il <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl10iO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl10li <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl10ll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl10lO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl10Oi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl10Ol <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl10OO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl110i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl110l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl110O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl111i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl111l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl111O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl11ii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl11il <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl11iO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl11li <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl11ll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl11lO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl11Oi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl11Ol <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl11OO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1i0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1i0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1i0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1i1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1i1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1i1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1iii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1iil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1iiO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1ili <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1ill <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1ilO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1iOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1iOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1iOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1l0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1l0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1l0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1l1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1l1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1l1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1lii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1lil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1liO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1lli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1lll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1llO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl1lOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nli0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliili <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliill <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliilO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliiOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliiOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliiOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlil0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlil0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlil0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlil1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlil1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlil1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlilii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlilil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliliO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlilli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlilll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlillO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlilO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlilOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlilOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlilOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliO1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliO1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliO1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nll10l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlliOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlll0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlll0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlll0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlll1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlll1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlll1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlllii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlllil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllliO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlllli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlllll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllllO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlllOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlllOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlllOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllO0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllO0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllO0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllO1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllO1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllO1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOiO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOlO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO00i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO00l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO00O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO01i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO01l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO01O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO0ii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO0il <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO0iO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO0li <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO0ll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO0lO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO0Oi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO0Ol <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO0OO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO10i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO10l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO10O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO11i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO11l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO11O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO1ii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO1il <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO1iO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO1li <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO1ll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO1lO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO1Oi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO1Ol <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlO1OO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOi0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOi0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOi0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOi1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOi1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOi1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOiii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOiil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOiiO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOili <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOill <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOilO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOiOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOiOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOiOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOl0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOl0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOl0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOl1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOl1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOl1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOlii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOlil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOliO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOlli <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOlll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOllO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOlOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOlOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOlOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOO0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOO1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOO1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlOO1O <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nlill_CLRN <= (ni0iil2 XOR ni0iil1);
	wire_nlill_PRN <= (ni0iii4 XOR ni0iii3);
	wire_nlill_w_lg_nilOi167w(0) <= nilOi AND wire_nlill_w_lg_nii0l166w(0);
	wire_nlill_w_lg_nii0l166w(0) <= NOT nii0l;
	wire_ni0iiO_aclr <= wire_w_lg_reset_n87w(0);
	wire_ni0iiO_dataa <= ( phi_inc_i(31 DOWNTO 0));
	wire_ni0iiO_datab <= ( freq_mod_i(31 DOWNTO 0));
	ni0iiO :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 32
	  )
	  PORT MAP ( 
		aclr => wire_ni0iiO_aclr,
		add_sub => wire_vcc,
		clken => clken,
		clock => clk,
		dataa => wire_ni0iiO_dataa,
		datab => wire_ni0iiO_datab,
		result => wire_ni0iiO_result
	  );
	wire_ni0ili_aclr <= wire_w_lg_reset_n87w(0);
	wire_ni0ili_dataa <= ( ni0ill & ni0ilO & ni0iOi & ni0iOl & ni0iOO & ni0l1i & ni0l1l & ni0l1O & ni0l0i & ni0l0l & ni0l0O & ni0lii & ni0lil & ni0liO & ni0lli & ni0lll & ni0llO & ni0lOi & ni0lOl & ni0lOO & ni0O1i & ni0O1l & ni0O1O & ni0O0i & ni0O0l & ni0O0O & ni0Oii & ni0Oil & ni0OiO & ni0Oli & ni0Oll & niiO1i);
	wire_ni0ili_datab <= ( wire_ni0ili_result(31 DOWNTO 0));
	wire_ni0ili_w_result_range981w(0) <= wire_ni0ili_result(14);
	wire_ni0ili_w_result_range987w(0) <= wire_ni0ili_result(16);
	wire_ni0ili_w_result_range996w(0) <= wire_ni0ili_result(19);
	wire_ni0ili_w_result_range1005w(0) <= wire_ni0ili_result(22);
	ni0ili :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 32
	  )
	  PORT MAP ( 
		aclr => wire_ni0ili_aclr,
		clken => clken,
		clock => clk,
		dataa => wire_ni0ili_dataa,
		datab => wire_ni0ili_datab,
		result => wire_ni0ili_result
	  );
	wire_nii1O_cin <= wire_nlill_w_lg_w_lg_nilOi167w170w(0);
	wire_nlill_w_lg_w_lg_nilOi167w170w(0) <= wire_nlill_w_lg_nilOi167w(0) AND (ni00lO10 XOR ni00lO9);
	wire_nii1O_dataa <= ( nii0l & nii0O & niiii & niiil & niiiO & niili & niill & niilO & niiOi & niiOl & niiOO & nil1i & nil1l & nil1O & nil0i & nil0l & nil0O & nilii & nilil & niliO & nilli & nilll & nillO & nli0l);
	wire_nii1O_datab <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nii1O :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 24
	  )
	  PORT MAP ( 
		cin => wire_nii1O_cin,
		clken => clken,
		clock => clk,
		dataa => wire_nii1O_dataa,
		datab => wire_nii1O_datab,
		result => wire_nii1O_result
	  );
	wire_niOOOi_aclr <= wire_w_lg_reset_n87w(0);
	wire_niOOOi_dataa <= ( nilOii & nilOil & nilOiO & nilOli & nilOll & nilOlO & nilOOi & nilOOl & nilOOO & niO11i & niO11l & niO11O & niO10i & niO10l & niO10O & niO1ii);
	wire_niOOOi_datab <= ( nl10Ol & nl10OO & nl1i1i & nl1i1l & nl1i1O & nl1i0i & nl1i0l & nl1i0O & nl1iii & nl1iil & nl1iiO & nl1ili & nl1ill & nl1ilO & nl1iOi & nl1lOi);
	wire_niOOOi_w_result_range876w(0) <= wire_niOOOi_result(13);
	niOOOi :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 16
	  )
	  PORT MAP ( 
		aclr => wire_niOOOi_aclr,
		add_sub => wire_vcc,
		clken => clken,
		clock => clk,
		dataa => wire_niOOOi_dataa,
		datab => wire_niOOOi_datab,
		result => wire_niOOOi_result
	  );
	wire_nlliOl_dataa <= ( nlliOO & nlll1i & nlll1l & nlll1O & nlll0i & nlll0l & nlll0O & nlllii & nlllil & nllliO & nlllli & nlllll & nllllO & nlllOi & nlllOl & nlllOO & nllO1i & nllO1l & nllO1O & nllO0i & nllO0l & nllO0O & nllOii & nllOil & nllOiO & nllOli & nllOll & nllOlO & nllOOi & nllOOl & nllOOO & nlO11i & nlO11l & nlO11O & nlO10i & nlO10l & nlO10O & nlO1ii & nlO1il & nlO1iO & nlO1li & nlO1ll & nlO1lO & nlO1Oi & nlO1Ol & nlO1OO & nlO01i & nlO01l);
	wire_nlliOl_datab <= ( nlO01O & nlO00i & nlO00l & nlO00O & nlO0ii & nlO0il & nlO0iO & nlO0li & nlO0ll & nlO0lO & nlO0Oi & nlO0Ol & nlO0OO & nlOi1i & nlOi1l & nlOi1O & nlOi0i & nlOi0l & nlOi0O & nlOiii & nlOiil & nlOiiO & nlOili & nlOill & nlOilO & nlOiOi & nlOiOl & nlOiOO & nlOl1i & nlOl1l & nlOl1O & nlOl0i & nlOl0l & nlOl0O & nlOlii & nlOlil & nlOliO & nlOlli & nlOlll & nlOllO & nlOlOi & nlOlOl & nlOlOO & nlOO1i & nlOO1l & nlOO1O & nlOO0i & nii1l);
	nlliOl :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 48
	  )
	  PORT MAP ( 
		add_sub => wire_vcc,
		clken => clken,
		clock => clk,
		dataa => wire_nlliOl_dataa,
		datab => wire_nlliOl_datab,
		result => wire_nlliOl_result
	  );
	wire_nli0O_sclr <= wire_w_lg_reset_n87w(0);
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
	wire_nllilO_dataa <= ( wire_nlliiO_q_a(23 DOWNTO 0));
	wire_nllilO_datab <= ( wire_nllill_q_a(23 DOWNTO 0));
	nllilO :  lpm_mult
	  GENERIC MAP (
		LPM_PIPELINE => 3,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTHA => 24,
		LPM_WIDTHB => 24,
		LPM_WIDTHP => 48,
		LPM_WIDTHS => 48,
		lpm_hint => "INPUT_A_FIXED_VALUE=Bx, INPUT_B_FIXED_VALUE=Bx"
	  )
	  PORT MAP ( 
		clken => clken,
		clock => clk,
		dataa => wire_nllilO_dataa,
		datab => wire_nllilO_datab,
		result => wire_nllilO_result
	  );
	wire_nlliOi_dataa <= ( wire_nllili_q_a(23 DOWNTO 0));
	wire_nlliOi_datab <= ( wire_nlliiO_q_b(23 DOWNTO 0));
	nlliOi :  lpm_mult
	  GENERIC MAP (
		LPM_PIPELINE => 3,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTHA => 24,
		LPM_WIDTHB => 24,
		LPM_WIDTHP => 48,
		LPM_WIDTHS => 48,
		lpm_hint => "INPUT_A_FIXED_VALUE=Bx, INPUT_B_FIXED_VALUE=Bx"
	  )
	  PORT MAP ( 
		clken => clken,
		clock => clk,
		dataa => wire_nlliOi_dataa,
		datab => wire_nlliOi_datab,
		result => wire_nlliOi_result
	  );
	wire_n000i_dataout <= wire_nlliOi_result(8) WHEN clken = '1'  ELSE nlOllO;
	wire_n000l_dataout <= wire_nlliOi_result(9) WHEN clken = '1'  ELSE nlOlll;
	wire_n000O_dataout <= wire_nlliOi_result(10) WHEN clken = '1'  ELSE nlOlli;
	wire_n001i_dataout <= wire_nlliOi_result(5) WHEN clken = '1'  ELSE nlOlOO;
	wire_n001l_dataout <= wire_nlliOi_result(6) WHEN clken = '1'  ELSE nlOlOl;
	wire_n001O_dataout <= wire_nlliOi_result(7) WHEN clken = '1'  ELSE nlOlOi;
	wire_n00ii_dataout <= wire_nlliOi_result(11) WHEN clken = '1'  ELSE nlOliO;
	wire_n00il_dataout <= wire_nlliOi_result(12) WHEN clken = '1'  ELSE nlOlil;
	wire_n00iO_dataout <= wire_nlliOi_result(13) WHEN clken = '1'  ELSE nlOlii;
	wire_n00li_dataout <= wire_nlliOi_result(14) WHEN clken = '1'  ELSE nlOl0O;
	wire_n00ll_dataout <= wire_nlliOi_result(15) WHEN clken = '1'  ELSE nlOl0l;
	wire_n00lO_dataout <= wire_nlliOi_result(16) WHEN clken = '1'  ELSE nlOl0i;
	wire_n00Oi_dataout <= wire_nlliOi_result(17) WHEN clken = '1'  ELSE nlOl1O;
	wire_n00Ol_dataout <= wire_nlliOi_result(18) WHEN clken = '1'  ELSE nlOl1l;
	wire_n00OO_dataout <= wire_nlliOi_result(19) WHEN clken = '1'  ELSE nlOl1i;
	wire_n010i_dataout <= wire_ni0li_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n010l_dataout <= wire_ni0ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n010O_dataout <= wire_ni0lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n011i_dataout <= wire_ni0ii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n011l_dataout <= wire_ni0il_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n011O_dataout <= wire_ni0iO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n01ii_dataout <= wire_ni0Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n01il_dataout <= wire_ni0Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n01iO_dataout <= wire_ni0OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n01li_dataout <= wire_nii1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n01ll_dataout <= wire_nlliOi_result(0) WHEN clken = '1'  ELSE nii1l;
	wire_n01lO_dataout <= wire_nlliOi_result(1) WHEN clken = '1'  ELSE nlOO0i;
	wire_n01Oi_dataout <= wire_nlliOi_result(2) WHEN clken = '1'  ELSE nlOO1O;
	wire_n01Ol_dataout <= wire_nlliOi_result(3) WHEN clken = '1'  ELSE nlOO1l;
	wire_n01OO_dataout <= wire_nlliOi_result(4) WHEN clken = '1'  ELSE nlOO1i;
	wire_n0i0i_dataout <= wire_nlliOi_result(23) WHEN clken = '1'  ELSE nlOilO;
	wire_n0i0l_dataout <= wire_nlliOi_result(24) WHEN clken = '1'  ELSE nlOill;
	wire_n0i0O_dataout <= wire_nlliOi_result(25) WHEN clken = '1'  ELSE nlOili;
	wire_n0i1i_dataout <= wire_nlliOi_result(20) WHEN clken = '1'  ELSE nlOiOO;
	wire_n0i1l_dataout <= wire_nlliOi_result(21) WHEN clken = '1'  ELSE nlOiOl;
	wire_n0i1O_dataout <= wire_nlliOi_result(22) WHEN clken = '1'  ELSE nlOiOi;
	wire_n0iii_dataout <= wire_nlliOi_result(26) WHEN clken = '1'  ELSE nlOiiO;
	wire_n0iil_dataout <= wire_nlliOi_result(27) WHEN clken = '1'  ELSE nlOiil;
	wire_n0iiO_dataout <= wire_nlliOi_result(28) WHEN clken = '1'  ELSE nlOiii;
	wire_n0ili_dataout <= wire_nlliOi_result(29) WHEN clken = '1'  ELSE nlOi0O;
	wire_n0ill_dataout <= wire_nlliOi_result(30) WHEN clken = '1'  ELSE nlOi0l;
	wire_n0ilO_dataout <= wire_nlliOi_result(31) WHEN clken = '1'  ELSE nlOi0i;
	wire_n0iOi_dataout <= wire_nlliOi_result(32) WHEN clken = '1'  ELSE nlOi1O;
	wire_n0iOl_dataout <= wire_nlliOi_result(33) WHEN clken = '1'  ELSE nlOi1l;
	wire_n0iOO_dataout <= wire_nlliOi_result(34) WHEN clken = '1'  ELSE nlOi1i;
	wire_n0l0i_dataout <= wire_nlliOi_result(38) WHEN clken = '1'  ELSE nlO0lO;
	wire_n0l0l_dataout <= wire_nlliOi_result(39) WHEN clken = '1'  ELSE nlO0ll;
	wire_n0l0O_dataout <= wire_nlliOi_result(40) WHEN clken = '1'  ELSE nlO0li;
	wire_n0l1i_dataout <= wire_nlliOi_result(35) WHEN clken = '1'  ELSE nlO0OO;
	wire_n0l1l_dataout <= wire_nlliOi_result(36) WHEN clken = '1'  ELSE nlO0Ol;
	wire_n0l1O_dataout <= wire_nlliOi_result(37) WHEN clken = '1'  ELSE nlO0Oi;
	wire_n0lii_dataout <= wire_nlliOi_result(41) WHEN clken = '1'  ELSE nlO0iO;
	wire_n0lil_dataout <= wire_nlliOi_result(42) WHEN clken = '1'  ELSE nlO0il;
	wire_n0liO_dataout <= wire_nlliOi_result(43) WHEN clken = '1'  ELSE nlO0ii;
	wire_n0lli_dataout <= wire_nlliOi_result(44) WHEN clken = '1'  ELSE nlO00O;
	wire_n0lll_dataout <= wire_nlliOi_result(45) WHEN clken = '1'  ELSE nlO00l;
	wire_n0llO_dataout <= wire_nlliOi_result(46) WHEN clken = '1'  ELSE nlO00i;
	wire_n0lOi_dataout <= wire_nlliOi_result(47) WHEN clken = '1'  ELSE nlO01O;
	wire_n0lOl_dataout <= wire_nllilO_result(0) WHEN clken = '1'  ELSE nlO01l;
	wire_n0lOO_dataout <= wire_nllilO_result(1) WHEN clken = '1'  ELSE nlO01i;
	wire_n0O0i_dataout <= wire_nllilO_result(5) WHEN clken = '1'  ELSE nlO1lO;
	wire_n0O0l_dataout <= wire_nllilO_result(6) WHEN clken = '1'  ELSE nlO1ll;
	wire_n0O0O_dataout <= wire_nllilO_result(7) WHEN clken = '1'  ELSE nlO1li;
	wire_n0O1i_dataout <= wire_nllilO_result(2) WHEN clken = '1'  ELSE nlO1OO;
	wire_n0O1l_dataout <= wire_nllilO_result(3) WHEN clken = '1'  ELSE nlO1Ol;
	wire_n0O1O_dataout <= wire_nllilO_result(4) WHEN clken = '1'  ELSE nlO1Oi;
	wire_n0Oii_dataout <= wire_nllilO_result(8) WHEN clken = '1'  ELSE nlO1iO;
	wire_n0Oil_dataout <= wire_nllilO_result(9) WHEN clken = '1'  ELSE nlO1il;
	wire_n0OiO_dataout <= wire_nllilO_result(10) WHEN clken = '1'  ELSE nlO1ii;
	wire_n0Oli_dataout <= wire_nllilO_result(11) WHEN clken = '1'  ELSE nlO10O;
	wire_n0Oll_dataout <= wire_nllilO_result(12) WHEN clken = '1'  ELSE nlO10l;
	wire_n0OlO_dataout <= wire_nllilO_result(13) WHEN clken = '1'  ELSE nlO10i;
	wire_n0OOi_dataout <= wire_nllilO_result(14) WHEN clken = '1'  ELSE nlO11O;
	wire_n0OOl_dataout <= wire_nllilO_result(15) WHEN clken = '1'  ELSE nlO11l;
	wire_n0OOO_dataout <= wire_nllilO_result(16) WHEN clken = '1'  ELSE nlO11i;
	wire_n100i_dataout <= wire_n0ili_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n100l_dataout <= wire_n0ill_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n100O_dataout <= wire_n0ilO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n101i_dataout <= wire_n0iii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n101l_dataout <= wire_n0iil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n101O_dataout <= wire_n0iiO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n10ii_dataout <= wire_n0iOi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n10il_dataout <= wire_n0iOl_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n10iO_dataout <= wire_n0iOO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n10li_dataout <= wire_n0l1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n10ll_dataout <= wire_n0l1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n10lO_dataout <= wire_n0l1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n10Oi_dataout <= wire_n0l0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n10Ol_dataout <= wire_n0l0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n10OO_dataout <= wire_n0l0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n110i_dataout <= wire_n00li_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n110l_dataout <= wire_n00ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n110O_dataout <= wire_n00lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n111i_dataout <= wire_n00ii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n111l_dataout <= wire_n00il_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n111O_dataout <= wire_n00iO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n11ii_dataout <= wire_n00Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n11il_dataout <= wire_n00Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n11iO_dataout <= wire_n00OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n11li_dataout <= wire_n0i1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n11ll_dataout <= wire_n0i1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n11lO_dataout <= wire_n0i1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n11Oi_dataout <= wire_n0i0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n11Ol_dataout <= wire_n0i0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n11OO_dataout <= wire_n0i0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1i0i_dataout <= wire_n0lli_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1i0l_dataout <= wire_n0lll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1i0O_dataout <= wire_n0llO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1i1i_dataout <= wire_n0lii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1i1l_dataout <= wire_n0lil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1i1O_dataout <= wire_n0liO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1iii_dataout <= wire_n0lOi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1iil_dataout <= wire_n0lOl_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1iiO_dataout <= wire_n0lOO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1ili_dataout <= wire_n0O1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1ill_dataout <= wire_n0O1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1ilO_dataout <= wire_n0O1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1iOi_dataout <= wire_n0O0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1iOl_dataout <= wire_n0O0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1iOO_dataout <= wire_n0O0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1l0i_dataout <= wire_n0Oli_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1l0l_dataout <= wire_n0Oll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1l0O_dataout <= wire_n0OlO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1l1i_dataout <= wire_n0Oii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1l1l_dataout <= wire_n0Oil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1l1O_dataout <= wire_n0OiO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1lii_dataout <= wire_n0OOi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1lil_dataout <= wire_n0OOl_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1liO_dataout <= wire_n0OOO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1lli_dataout <= wire_ni11i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1lll_dataout <= wire_ni11l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1llO_dataout <= wire_ni11O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1lOi_dataout <= wire_ni10i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1lOl_dataout <= wire_ni10l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1lOO_dataout <= wire_ni10O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1O0i_dataout <= wire_ni1li_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1O0l_dataout <= wire_ni1ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1O0O_dataout <= wire_ni1lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1O1i_dataout <= wire_ni1ii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1O1l_dataout <= wire_ni1il_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1O1O_dataout <= wire_ni1iO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1Oii_dataout <= wire_ni1Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1Oil_dataout <= wire_ni1Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1OiO_dataout <= wire_ni1OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1Oli_dataout <= wire_ni01i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1Oll_dataout <= wire_ni01l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1OlO_dataout <= wire_ni01O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1OOi_dataout <= wire_ni00i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1OOl_dataout <= wire_ni00l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_n1OOO_dataout <= wire_ni00O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_ni00i_dataout <= wire_nllilO_result(35) WHEN clken = '1'  ELSE nllllO;
	wire_ni00l_dataout <= wire_nllilO_result(36) WHEN clken = '1'  ELSE nlllll;
	wire_ni00O_dataout <= wire_nllilO_result(37) WHEN clken = '1'  ELSE nlllli;
	wire_ni01i_dataout <= wire_nllilO_result(32) WHEN clken = '1'  ELSE nlllOO;
	wire_ni01l_dataout <= wire_nllilO_result(33) WHEN clken = '1'  ELSE nlllOl;
	wire_ni01O_dataout <= wire_nllilO_result(34) WHEN clken = '1'  ELSE nlllOi;
	wire_ni0ii_dataout <= wire_nllilO_result(38) WHEN clken = '1'  ELSE nllliO;
	wire_ni0il_dataout <= wire_nllilO_result(39) WHEN clken = '1'  ELSE nlllil;
	wire_ni0iO_dataout <= wire_nllilO_result(40) WHEN clken = '1'  ELSE nlllii;
	wire_ni0li_dataout <= wire_nllilO_result(41) WHEN clken = '1'  ELSE nlll0O;
	wire_ni0ll_dataout <= wire_nllilO_result(42) WHEN clken = '1'  ELSE nlll0l;
	wire_ni0lO_dataout <= wire_nllilO_result(43) WHEN clken = '1'  ELSE nlll0i;
	wire_ni0Oi_dataout <= wire_nllilO_result(44) WHEN clken = '1'  ELSE nlll1O;
	wire_ni0Ol_dataout <= wire_nllilO_result(45) WHEN clken = '1'  ELSE nlll1l;
	wire_ni0OlO_dataout <= wire_nii0Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_ni0OO_dataout <= wire_nllilO_result(46) WHEN clken = '1'  ELSE nlll1i;
	wire_ni0OOi_dataout <= wire_nii0OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_ni0OOl_dataout <= wire_niii1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_ni0OOO_dataout <= wire_niii1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_ni10i_dataout <= wire_nllilO_result(20) WHEN clken = '1'  ELSE nllOlO;
	wire_ni10l_dataout <= wire_nllilO_result(21) WHEN clken = '1'  ELSE nllOll;
	wire_ni10O_dataout <= wire_nllilO_result(22) WHEN clken = '1'  ELSE nllOli;
	wire_ni11i_dataout <= wire_nllilO_result(17) WHEN clken = '1'  ELSE nllOOO;
	wire_ni11l_dataout <= wire_nllilO_result(18) WHEN clken = '1'  ELSE nllOOl;
	wire_ni11O_dataout <= wire_nllilO_result(19) WHEN clken = '1'  ELSE nllOOi;
	wire_ni1ii_dataout <= wire_nllilO_result(23) WHEN clken = '1'  ELSE nllOiO;
	wire_ni1il_dataout <= wire_nllilO_result(24) WHEN clken = '1'  ELSE nllOil;
	wire_ni1iO_dataout <= wire_nllilO_result(25) WHEN clken = '1'  ELSE nllOii;
	wire_ni1li_dataout <= wire_nllilO_result(26) WHEN clken = '1'  ELSE nllO0O;
	wire_ni1ll_dataout <= wire_nllilO_result(27) WHEN clken = '1'  ELSE nllO0l;
	wire_ni1lO_dataout <= wire_nllilO_result(28) WHEN clken = '1'  ELSE nllO0i;
	wire_ni1Oi_dataout <= wire_nllilO_result(29) WHEN clken = '1'  ELSE nllO1O;
	wire_ni1Ol_dataout <= wire_nllilO_result(30) WHEN clken = '1'  ELSE nllO1l;
	wire_ni1OO_dataout <= wire_nllilO_result(31) WHEN clken = '1'  ELSE nllO1i;
	wire_nii00i_dataout <= wire_niil0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii00l_dataout <= wire_niilii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii00O_dataout <= wire_niilil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii01i_dataout <= wire_niil1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii01l_dataout <= wire_niil0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii01O_dataout <= wire_niil0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii0ii_dataout <= wire_niiliO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii0il_dataout <= wire_niilli_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii0iO_dataout <= wire_niilll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii0li_dataout <= wire_niillO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii0ll_dataout <= wire_niilOi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii0lO_dataout <= wire_niilOl_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii0Oi_dataout <= wire_niilOO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii0Ol_dataout <= wire_ni0iiO_result(0) WHEN clken = '1'  ELSE niiO1i;
	wire_nii0OO_dataout <= wire_ni0iiO_result(1) WHEN clken = '1'  ELSE ni0Oll;
	wire_nii10i_dataout <= wire_niii0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii10l_dataout <= wire_niiiii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii10O_dataout <= wire_niiiil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii11i_dataout <= wire_niii1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii11l_dataout <= wire_niii0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii11O_dataout <= wire_niii0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii1i_dataout <= wire_nllilO_result(47) WHEN clken = '1'  ELSE nlliOO;
	wire_nii1ii_dataout <= wire_niiiiO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii1il_dataout <= wire_niiili_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii1iO_dataout <= wire_niiill_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii1li_dataout <= wire_niiilO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii1ll_dataout <= wire_niiiOi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii1lO_dataout <= wire_niiiOl_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii1Oi_dataout <= wire_niiiOO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii1Ol_dataout <= wire_niil1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nii1OO_dataout <= wire_niil1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niii0i_dataout <= wire_ni0iiO_result(5) WHEN clken = '1'  ELSE ni0Oii;
	wire_niii0l_dataout <= wire_ni0iiO_result(6) WHEN clken = '1'  ELSE ni0O0O;
	wire_niii0O_dataout <= wire_ni0iiO_result(7) WHEN clken = '1'  ELSE ni0O0l;
	wire_niii1i_dataout <= wire_ni0iiO_result(2) WHEN clken = '1'  ELSE ni0Oli;
	wire_niii1l_dataout <= wire_ni0iiO_result(3) WHEN clken = '1'  ELSE ni0OiO;
	wire_niii1O_dataout <= wire_ni0iiO_result(4) WHEN clken = '1'  ELSE ni0Oil;
	wire_niiiii_dataout <= wire_ni0iiO_result(8) WHEN clken = '1'  ELSE ni0O0i;
	wire_niiiil_dataout <= wire_ni0iiO_result(9) WHEN clken = '1'  ELSE ni0O1O;
	wire_niiiiO_dataout <= wire_ni0iiO_result(10) WHEN clken = '1'  ELSE ni0O1l;
	wire_niiili_dataout <= wire_ni0iiO_result(11) WHEN clken = '1'  ELSE ni0O1i;
	wire_niiill_dataout <= wire_ni0iiO_result(12) WHEN clken = '1'  ELSE ni0lOO;
	wire_niiilO_dataout <= wire_ni0iiO_result(13) WHEN clken = '1'  ELSE ni0lOl;
	wire_niiiOi_dataout <= wire_ni0iiO_result(14) WHEN clken = '1'  ELSE ni0lOi;
	wire_niiiOl_dataout <= wire_ni0iiO_result(15) WHEN clken = '1'  ELSE ni0llO;
	wire_niiiOO_dataout <= wire_ni0iiO_result(16) WHEN clken = '1'  ELSE ni0lll;
	wire_niil0i_dataout <= wire_ni0iiO_result(20) WHEN clken = '1'  ELSE ni0lii;
	wire_niil0l_dataout <= wire_ni0iiO_result(21) WHEN clken = '1'  ELSE ni0l0O;
	wire_niil0O_dataout <= wire_ni0iiO_result(22) WHEN clken = '1'  ELSE ni0l0l;
	wire_niil1i_dataout <= wire_ni0iiO_result(17) WHEN clken = '1'  ELSE ni0lli;
	wire_niil1l_dataout <= wire_ni0iiO_result(18) WHEN clken = '1'  ELSE ni0liO;
	wire_niil1O_dataout <= wire_ni0iiO_result(19) WHEN clken = '1'  ELSE ni0lil;
	wire_niilii_dataout <= wire_ni0iiO_result(23) WHEN clken = '1'  ELSE ni0l0i;
	wire_niilil_dataout <= wire_ni0iiO_result(24) WHEN clken = '1'  ELSE ni0l1O;
	wire_niiliO_dataout <= wire_ni0iiO_result(25) WHEN clken = '1'  ELSE ni0l1l;
	wire_niilli_dataout <= wire_ni0iiO_result(26) WHEN clken = '1'  ELSE ni0l1i;
	wire_niilll_dataout <= wire_ni0iiO_result(27) WHEN clken = '1'  ELSE ni0iOO;
	wire_niillO_dataout <= wire_ni0iiO_result(28) WHEN clken = '1'  ELSE ni0iOl;
	wire_niilOi_dataout <= wire_ni0iiO_result(29) WHEN clken = '1'  ELSE ni0iOi;
	wire_niilOl_dataout <= wire_ni0iiO_result(30) WHEN clken = '1'  ELSE ni0ilO;
	wire_niilOO_dataout <= wire_ni0iiO_result(31) WHEN clken = '1'  ELSE ni0ill;
	wire_nil00i_dataout <= wire_niliiO_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil00l_dataout <= wire_nilili_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nil00O_dataout <= wire_nilill_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil01i_dataout <= wire_nili0O_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil01l_dataout <= wire_niliii_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil01O_dataout <= wire_niliil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nil0ii_dataout <= wire_nililO_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil0il_dataout <= wire_niliOi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nil0iO_dataout <= wire_niliOl_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nil0li_dataout <= wire_niliOO_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil0ll_dataout <= wire_nill1i_o(0) WHEN clken = '1'  ELSE nill0l;
	wire_nil0lO_dataout <= wire_nill1i_o(1) WHEN clken = '1'  ELSE nil10l;
	wire_nil0Oi_dataout <= wire_nill1i_o(2) WHEN clken = '1'  ELSE nil10i;
	wire_nil0Ol_dataout <= wire_nill1i_o(3) WHEN clken = '1'  ELSE nil11O;
	wire_nil0OO_dataout <= ((niiO1O XOR niiO1l) XOR ((niiOOl XOR niiO0l) XOR (NOT (ni001l28 XOR ni001l27)))) WHEN clken = '1'  ELSE nil11l;
	wire_nil10O_dataout <= wire_nil0ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nil1ii_dataout <= wire_nil0lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nil1il_dataout <= wire_nil0Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nil1iO_dataout <= wire_nil0Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nil1li_dataout <= wire_nil0OO_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil1ll_dataout <= wire_nili1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nil1lO_dataout <= wire_nili1l_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil1Oi_dataout <= wire_nili1O_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil1Ol_dataout <= wire_nili0i_dataout OR wire_w_lg_reset_n87w(0);
	wire_nil1OO_dataout <= wire_nili0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nili0i_dataout <= niiOOl WHEN clken = '1'  ELSE niiOOi;
	wire_nili0l_dataout <= niiOOi WHEN clken = '1'  ELSE niiOlO;
	wire_nili0O_dataout <= niiOlO WHEN clken = '1'  ELSE niiOll;
	wire_nili1i_dataout <= nil11l WHEN clken = '1'  ELSE nil11i;
	wire_nili1l_dataout <= nil11i WHEN clken = '1'  ELSE niiOOO;
	wire_nili1O_dataout <= niiOOO WHEN clken = '1'  ELSE niiOOl;
	wire_niliii_dataout <= niiOll WHEN clken = '1'  ELSE niiOli;
	wire_niliil_dataout <= niiOli WHEN clken = '1'  ELSE niiOiO;
	wire_niliiO_dataout <= niiOiO WHEN clken = '1'  ELSE niiOil;
	wire_nilili_dataout <= niiOil WHEN clken = '1'  ELSE niiOii;
	wire_nilill_dataout <= niiOii WHEN clken = '1'  ELSE niiO0O;
	wire_nililO_dataout <= niiO0O WHEN clken = '1'  ELSE niiO0l;
	wire_niliOi_dataout <= niiO0l WHEN clken = '1'  ELSE niiO0i;
	wire_niliOl_dataout <= niiO0i WHEN clken = '1'  ELSE niiO1O;
	wire_niliOO_dataout <= niiO1O WHEN clken = '1'  ELSE niiO1l;
	wire_nilOl_dataout <= wire_nl1il_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nilOO_dataout <= wire_nl1iO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO00i_dataout <= wire_niOi0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO00l_dataout <= wire_niOi0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO00O_dataout <= wire_niOiii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO01i_dataout <= wire_niOi1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO01l_dataout <= wire_niOi1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO01O_dataout <= wire_niOi0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO0i_dataout <= wire_nl1Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO0ii_dataout <= wire_niOiil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO0il_dataout <= wire_niOiiO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO0iO_dataout <= nilO0O WHEN clken = '1'  ELSE niO1ii;
	wire_niO0l_dataout <= wire_nl1Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO0li_dataout <= nilO0l WHEN clken = '1'  ELSE niO10O;
	wire_niO0ll_dataout <= nilO0i WHEN clken = '1'  ELSE niO10l;
	wire_niO0lO_dataout <= nilO1O WHEN clken = '1'  ELSE niO10i;
	wire_niO0O_dataout <= wire_nl1OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO0Oi_dataout <= nilO1l WHEN clken = '1'  ELSE niO11O;
	wire_niO0Ol_dataout <= nilO1i WHEN clken = '1'  ELSE niO11l;
	wire_niO0OO_dataout <= nillOO WHEN clken = '1'  ELSE niO11i;
	wire_niO1i_dataout <= wire_nl1li_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1il_dataout <= wire_niO0iO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1iO_dataout <= wire_niO0li_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1l_dataout <= wire_nl1ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1li_dataout <= wire_niO0ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1ll_dataout <= wire_niO0lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1lO_dataout <= wire_niO0Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1O_dataout <= wire_nl1lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1Oi_dataout <= wire_niO0Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1Ol_dataout <= wire_niO0OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niO1OO_dataout <= wire_niOi1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOi0i_dataout <= nillll WHEN clken = '1'  ELSE nilOlO;
	wire_niOi0l_dataout <= nillli WHEN clken = '1'  ELSE nilOll;
	wire_niOi0O_dataout <= nilliO WHEN clken = '1'  ELSE nilOli;
	wire_niOi1i_dataout <= nillOl WHEN clken = '1'  ELSE nilOOO;
	wire_niOi1l_dataout <= nillOi WHEN clken = '1'  ELSE nilOOl;
	wire_niOi1O_dataout <= nilllO WHEN clken = '1'  ELSE nilOOi;
	wire_niOii_dataout <= wire_nl01i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOiii_dataout <= nillil WHEN clken = '1'  ELSE nilOiO;
	wire_niOiil_dataout <= nillii WHEN clken = '1'  ELSE nilOil;
	wire_niOiiO_dataout <= nill0O WHEN clken = '1'  ELSE nilOii;
	wire_niOil_dataout <= wire_nl01l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOili_dataout <= wire_niOlll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOill_dataout <= wire_niOllO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOilO_dataout <= wire_niOlOi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOiO_dataout <= wire_nl01O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOiOi_dataout <= wire_niOlOl_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOiOl_dataout <= wire_niOlOO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOiOO_dataout <= wire_niOO1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOl0i_dataout <= wire_niOO0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOl0l_dataout <= wire_niOO0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOl0O_dataout <= wire_niOOii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOl1i_dataout <= wire_niOO1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOl1l_dataout <= wire_niOO1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOl1O_dataout <= wire_niOO0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOli_dataout <= wire_nl00i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOlii_dataout <= wire_niOOil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOlil_dataout <= wire_niOOiO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOliO_dataout <= wire_niOOli_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOll_dataout <= wire_nl00l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOlli_dataout <= wire_niOOll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOlll_dataout <= wire_niOOlO_o(5) WHEN clken = '1'  ELSE nilO0O;
	wire_niOllO_dataout <= wire_niOOlO_o(6) WHEN clken = '1'  ELSE nilO0l;
	wire_niOlO_dataout <= wire_nl00O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOlOi_dataout <= wire_niOOlO_o(7) WHEN clken = '1'  ELSE nilO0i;
	wire_niOlOl_dataout <= wire_niOOlO_o(8) WHEN clken = '1'  ELSE nilO1O;
	wire_niOlOO_dataout <= wire_niOOlO_o(9) WHEN clken = '1'  ELSE nilO1l;
	wire_niOO0i_dataout <= wire_niOOlO_o(13) WHEN clken = '1'  ELSE nillOi;
	wire_niOO0l_dataout <= wire_niOOlO_o(14) WHEN clken = '1'  ELSE nilllO;
	wire_niOO0O_dataout <= wire_niOOlO_o(15) WHEN clken = '1'  ELSE nillll;
	wire_niOO1i_dataout <= wire_niOOlO_o(10) WHEN clken = '1'  ELSE nilO1i;
	wire_niOO1l_dataout <= wire_niOOlO_o(11) WHEN clken = '1'  ELSE nillOO;
	wire_niOO1O_dataout <= wire_niOOlO_o(12) WHEN clken = '1'  ELSE nillOl;
	wire_niOOi_dataout <= wire_nl0ii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOOii_dataout <= wire_niOOlO_o(16) WHEN clken = '1'  ELSE nillli;
	wire_niOOil_dataout <= wire_niOOlO_o(17) WHEN clken = '1'  ELSE nilliO;
	wire_niOOiO_dataout <= wire_niOOlO_o(18) WHEN clken = '1'  ELSE nillil;
	wire_niOOl_dataout <= wire_nl0il_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_niOOli_dataout <= wire_niOOlO_o(19) WHEN clken = '1'  ELSE nillii;
	wire_niOOll_dataout <= wire_niOOlO_o(20) WHEN clken = '1'  ELSE nill0O;
	wire_niOOO_dataout <= wire_nl0iO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl000i_dataout <= wire_nl0i0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl000l_dataout <= wire_nl0i0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl000O_dataout <= wire_nl0iii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl001l_dataout <= wire_nl0i1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl001O_dataout <= wire_nl0i0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl00i_dataout <= wire_nlliOl_result(34) WHEN clken = '1'  ELSE nil1l;
	wire_nl00ii_dataout <= wire_nl0iil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl00il_dataout <= wire_nl0iiO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl00iO_dataout <= wire_nl0ili_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl00l_dataout <= wire_nlliOl_result(35) WHEN clken = '1'  ELSE nil1i;
	wire_nl00li_dataout <= wire_nl0ill_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl00ll_dataout <= wire_nl0ilO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl00lO_dataout <= wire_nl0iOi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl00O_dataout <= wire_nlliOl_result(36) WHEN clken = '1'  ELSE niiOO;
	wire_nl00Oi_dataout <= wire_nl0iOl_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl00Ol_dataout <= wire_nl0iOO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl00OO_dataout <= wire_nl0l1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl010i_dataout <= phase_mod_i(4) WHEN clken = '1'  ELSE nl1lli;
	wire_nl010l_dataout <= phase_mod_i(5) WHEN clken = '1'  ELSE nl1liO;
	wire_nl010O_dataout <= phase_mod_i(6) WHEN clken = '1'  ELSE nl1lil;
	wire_nl011i_dataout <= phase_mod_i(1) WHEN clken = '1'  ELSE nliili;
	wire_nl011l_dataout <= phase_mod_i(2) WHEN clken = '1'  ELSE nl1llO;
	wire_nl011O_dataout <= phase_mod_i(3) WHEN clken = '1'  ELSE nl1lll;
	wire_nl01i_dataout <= wire_nlliOl_result(31) WHEN clken = '1'  ELSE nil0l;
	wire_nl01ii_dataout <= phase_mod_i(7) WHEN clken = '1'  ELSE nl1lii;
	wire_nl01il_dataout <= phase_mod_i(8) WHEN clken = '1'  ELSE nl1l0O;
	wire_nl01iO_dataout <= phase_mod_i(9) WHEN clken = '1'  ELSE nl1l0l;
	wire_nl01l_dataout <= wire_nlliOl_result(32) WHEN clken = '1'  ELSE nil0i;
	wire_nl01li_dataout <= phase_mod_i(10) WHEN clken = '1'  ELSE nl1l0i;
	wire_nl01ll_dataout <= phase_mod_i(11) WHEN clken = '1'  ELSE nl1l1O;
	wire_nl01lO_dataout <= phase_mod_i(12) WHEN clken = '1'  ELSE nl1l1l;
	wire_nl01O_dataout <= wire_nlliOl_result(33) WHEN clken = '1'  ELSE nil1O;
	wire_nl01Oi_dataout <= phase_mod_i(13) WHEN clken = '1'  ELSE nl1l1i;
	wire_nl01Ol_dataout <= phase_mod_i(14) WHEN clken = '1'  ELSE nl1iOO;
	wire_nl01OO_dataout <= phase_mod_i(15) WHEN clken = '1'  ELSE nl1iOl;
	wire_nl0i0i_dataout <= nl10Oi WHEN clken = '1'  ELSE nl1iOi;
	wire_nl0i0l_dataout <= nl10lO WHEN clken = '1'  ELSE nl1ilO;
	wire_nl0i0O_dataout <= nl10ll WHEN clken = '1'  ELSE nl1ill;
	wire_nl0i1i_dataout <= wire_nl0l1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0i1l_dataout <= wire_nl0l1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0i1O_dataout <= nl001i WHEN clken = '1'  ELSE nl1lOi;
	wire_nl0ii_dataout <= wire_nlliOl_result(37) WHEN clken = '1'  ELSE niiOl;
	wire_nl0iii_dataout <= nl10li WHEN clken = '1'  ELSE nl1ili;
	wire_nl0iil_dataout <= nl10iO WHEN clken = '1'  ELSE nl1iiO;
	wire_nl0iiO_dataout <= nl10il WHEN clken = '1'  ELSE nl1iil;
	wire_nl0il_dataout <= wire_nlliOl_result(38) WHEN clken = '1'  ELSE niiOi;
	wire_nl0ili_dataout <= nl10ii WHEN clken = '1'  ELSE nl1iii;
	wire_nl0ill_dataout <= nl100O WHEN clken = '1'  ELSE nl1i0O;
	wire_nl0ilO_dataout <= nl100l WHEN clken = '1'  ELSE nl1i0l;
	wire_nl0iO_dataout <= wire_nlliOl_result(39) WHEN clken = '1'  ELSE niilO;
	wire_nl0iOi_dataout <= nl100i WHEN clken = '1'  ELSE nl1i0i;
	wire_nl0iOl_dataout <= nl101O WHEN clken = '1'  ELSE nl1i1O;
	wire_nl0iOO_dataout <= nl101l WHEN clken = '1'  ELSE nl1i1l;
	wire_nl0l0O_dataout <= wire_nl0Oii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0l1i_dataout <= nl101i WHEN clken = '1'  ELSE nl1i1i;
	wire_nl0l1l_dataout <= nl11OO WHEN clken = '1'  ELSE nl10OO;
	wire_nl0l1O_dataout <= nl11Ol WHEN clken = '1'  ELSE nl10Ol;
	wire_nl0li_dataout <= wire_nlliOl_result(40) WHEN clken = '1'  ELSE niill;
	wire_nl0lii_dataout <= wire_nl0Oil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0lil_dataout <= wire_nl0OiO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0liO_dataout <= wire_nl0Oli_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0ll_dataout <= wire_nlliOl_result(41) WHEN clken = '1'  ELSE niili;
	wire_nl0lli_dataout <= wire_nl0Oll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0lll_dataout <= wire_nl0OlO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0llO_dataout <= wire_nl0OOi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0lO_dataout <= wire_nlliOl_result(42) WHEN clken = '1'  ELSE niiiO;
	wire_nl0lOi_dataout <= wire_nl0OOl_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0lOl_dataout <= wire_nl0OOO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0lOO_dataout <= wire_nli11i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0O0i_dataout <= wire_nli10l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0O0l_dataout <= wire_nli10O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0O0O_dataout <= wire_nli1ii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0O1i_dataout <= wire_nli11l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0O1l_dataout <= wire_nli11O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0O1O_dataout <= wire_nli10i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl0Oi_dataout <= wire_nlliOl_result(43) WHEN clken = '1'  ELSE niiil;
	wire_nl0Oii_dataout <= nl0l0l WHEN clken = '1'  ELSE nl001i;
	wire_nl0Oil_dataout <= nl11Oi WHEN clken = '1'  ELSE nl10Oi;
	wire_nl0OiO_dataout <= nl11lO WHEN clken = '1'  ELSE nl10lO;
	wire_nl0Ol_dataout <= wire_nlliOl_result(44) WHEN clken = '1'  ELSE niiii;
	wire_nl0Oli_dataout <= nl11ll WHEN clken = '1'  ELSE nl10ll;
	wire_nl0Oll_dataout <= nl11li WHEN clken = '1'  ELSE nl10li;
	wire_nl0OlO_dataout <= nl11iO WHEN clken = '1'  ELSE nl10iO;
	wire_nl0OO_dataout <= wire_nlliOl_result(45) WHEN clken = '1'  ELSE nii0O;
	wire_nl0OOi_dataout <= nl11il WHEN clken = '1'  ELSE nl10il;
	wire_nl0OOl_dataout <= nl11ii WHEN clken = '1'  ELSE nl10ii;
	wire_nl0OOO_dataout <= nl110O WHEN clken = '1'  ELSE nl100O;
	wire_nl10i_dataout <= wire_nl0Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl10l_dataout <= wire_nl0Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl10O_dataout <= wire_nl0OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl11i_dataout <= wire_nl0li_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl11l_dataout <= wire_nl0ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl11O_dataout <= wire_nl0lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1ii_dataout <= wire_nli1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1il_dataout <= wire_nlliOl_result(23) WHEN clken = '1'  ELSE nli0l;
	wire_nl1iO_dataout <= wire_nlliOl_result(24) WHEN clken = '1'  ELSE nillO;
	wire_nl1li_dataout <= wire_nlliOl_result(25) WHEN clken = '1'  ELSE nilll;
	wire_nl1ll_dataout <= wire_nlliOl_result(26) WHEN clken = '1'  ELSE nilli;
	wire_nl1lO_dataout <= wire_nlliOl_result(27) WHEN clken = '1'  ELSE niliO;
	wire_nl1lOl_dataout <= wire_nl1OOO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1lOO_dataout <= wire_nl011i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1O0i_dataout <= wire_nl010l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1O0l_dataout <= wire_nl010O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1O0O_dataout <= wire_nl01ii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1O1i_dataout <= wire_nl011l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1O1l_dataout <= wire_nl011O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1O1O_dataout <= wire_nl010i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1Oi_dataout <= wire_nlliOl_result(28) WHEN clken = '1'  ELSE nilil;
	wire_nl1Oii_dataout <= wire_nl01il_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1Oil_dataout <= wire_nl01iO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1OiO_dataout <= wire_nl01li_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1Ol_dataout <= wire_nlliOl_result(29) WHEN clken = '1'  ELSE nilii;
	wire_nl1Oli_dataout <= wire_nl01ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1Oll_dataout <= wire_nl01lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1OlO_dataout <= wire_nl01Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1OO_dataout <= wire_nlliOl_result(30) WHEN clken = '1'  ELSE nil0O;
	wire_nl1OOi_dataout <= wire_nl01Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1OOl_dataout <= wire_nl01OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nl1OOO_dataout <= phase_mod_i(0) WHEN clken = '1'  ELSE nl0l0i;
	wire_nli00i_dataout <= wire_nlii0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli00l_dataout <= wire_nlii0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli00O_dataout <= wire_nliiii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli01i_dataout <= wire_nlii1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli01l_dataout <= wire_nlii1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli01O_dataout <= wire_nlii0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli0i_dataout <= wire_w_lg_ni0i1i88w(0) WHEN clken = '1'  ELSE nilOi;
	wire_nli0ii_dataout <= wire_nliiil_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli0il_dataout <= wire_nliiiO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli0iO_dataout <= nl0l0i WHEN clken = '1'  ELSE nl0l0l;
	wire_nli0li_dataout <= nliili WHEN clken = '1'  ELSE nl11Oi;
	wire_nli0ll_dataout <= nl1llO WHEN clken = '1'  ELSE nl11lO;
	wire_nli0lO_dataout <= nl1lll WHEN clken = '1'  ELSE nl11ll;
	wire_nli0Oi_dataout <= nl1lli WHEN clken = '1'  ELSE nl11li;
	wire_nli0Ol_dataout <= nl1liO WHEN clken = '1'  ELSE nl11iO;
	wire_nli0OO_dataout <= nl1lil WHEN clken = '1'  ELSE nl11il;
	wire_nli10i_dataout <= nl111l WHEN clken = '1'  ELSE nl101l;
	wire_nli10l_dataout <= nl111i WHEN clken = '1'  ELSE nl101i;
	wire_nli10O_dataout <= niOOOO WHEN clken = '1'  ELSE nl11OO;
	wire_nli11i_dataout <= nl110l WHEN clken = '1'  ELSE nl100l;
	wire_nli11l_dataout <= nl110i WHEN clken = '1'  ELSE nl100i;
	wire_nli11O_dataout <= nl111O WHEN clken = '1'  ELSE nl101O;
	wire_nli1i_dataout <= wire_nlliOl_result(46) WHEN clken = '1'  ELSE nii0l;
	wire_nli1ii_dataout <= niOOOl WHEN clken = '1'  ELSE nl11Ol;
	wire_nli1il_dataout <= wire_nli0iO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli1iO_dataout <= wire_nli0li_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli1li_dataout <= wire_nli0ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli1ll_dataout <= wire_nli0lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli1lO_dataout <= wire_nli0Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli1O_dataout <= wire_nli0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli1Oi_dataout <= wire_nli0Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli1Ol_dataout <= wire_nli0OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nli1OO_dataout <= wire_nlii1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlii0i_dataout <= nl1l0i WHEN clken = '1'  ELSE nl110i;
	wire_nlii0l_dataout <= nl1l1O WHEN clken = '1'  ELSE nl111O;
	wire_nlii0O_dataout <= nl1l1l WHEN clken = '1'  ELSE nl111l;
	wire_nlii1i_dataout <= nl1lii WHEN clken = '1'  ELSE nl11ii;
	wire_nlii1l_dataout <= nl1l0O WHEN clken = '1'  ELSE nl110O;
	wire_nlii1O_dataout <= nl1l0l WHEN clken = '1'  ELSE nl110l;
	wire_nliiii_dataout <= nl1l1i WHEN clken = '1'  ELSE nl111i;
	wire_nliiil_dataout <= nl1iOO WHEN clken = '1'  ELSE niOOOO;
	wire_nliiiO_dataout <= nl1iOl WHEN clken = '1'  ELSE niOOOl;
	wire_nliil_dataout <= wire_nliiO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliiO_dataout <= nlilO OR (clken AND ((((wire_nli0O_q(1) AND wire_nli0O_q(2)) AND wire_nli0O_q(3)) AND (NOT wire_nli0O_q(0))) AND (ni0i1l6 XOR ni0i1l5)));
	wire_nliO0i_dataout <= wire_nll1Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliO0l_dataout <= wire_nll1OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliO0O_dataout <= wire_nll01i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliOii_dataout <= wire_nll01l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliOil_dataout <= wire_nll01O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliOiO_dataout <= wire_nll00i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliOli_dataout <= wire_nll00l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliOll_dataout <= wire_nll00O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliOlO_dataout <= wire_nll0ii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliOOi_dataout <= wire_nll0il_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliOOl_dataout <= wire_nll0iO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nliOOO_dataout <= wire_nll0li_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll00i_dataout <= wire_niOOOi_result(5) WHEN clken = '1'  ELSE nlilOl;
	wire_nll00l_dataout <= wire_niOOOi_result(6) WHEN clken = '1'  ELSE nlilOi;
	wire_nll00O_dataout <= wire_niOOOi_result(7) WHEN clken = '1'  ELSE nlillO;
	wire_nll01i_dataout <= wire_niOOOi_result(2) WHEN clken = '1'  ELSE nliO1l;
	wire_nll01l_dataout <= wire_niOOOi_result(3) WHEN clken = '1'  ELSE nliO1i;
	wire_nll01O_dataout <= wire_niOOOi_result(4) WHEN clken = '1'  ELSE nlilOO;
	wire_nll0ii_dataout <= wire_nlliil_o(0) WHEN clken = '1'  ELSE nlilll;
	wire_nll0il_dataout <= wire_nlliil_o(1) WHEN clken = '1'  ELSE nlilli;
	wire_nll0iO_dataout <= wire_nlliil_o(2) WHEN clken = '1'  ELSE nliliO;
	wire_nll0li_dataout <= wire_nlliil_o(3) WHEN clken = '1'  ELSE nlilil;
	wire_nll0ll_dataout <= wire_nlliil_o(4) WHEN clken = '1'  ELSE nlilii;
	wire_nll0lO_dataout <= wire_nlliil_o(5) WHEN clken = '1'  ELSE nlil0O;
	wire_nll0Oi_dataout <= wire_nlliil_o(6) WHEN clken = '1'  ELSE nlil0l;
	wire_nll0Ol_dataout <= wire_nlliil_o(7) WHEN clken = '1'  ELSE nlil0i;
	wire_nll0OO_dataout <= wire_niOOOi_result(8) WHEN clken = '1'  ELSE nlil1O;
	wire_nll10i_dataout <= wire_nll0Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll10O_dataout <= wire_nll0OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll11i_dataout <= wire_nll0ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll11l_dataout <= wire_nll0lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll11O_dataout <= wire_nll0Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll1ii_dataout <= wire_nlli1i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll1il_dataout <= wire_nlli1l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll1iO_dataout <= wire_nlli1O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll1li_dataout <= wire_nlli0i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll1ll_dataout <= wire_nlli0l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll1lO_dataout <= wire_nlli0O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll1Oi_dataout <= wire_nlliii_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nll1Ol_dataout <= wire_niOOOi_result(0) WHEN clken = '1'  ELSE nll10l;
	wire_nll1OO_dataout <= wire_niOOOi_result(1) WHEN clken = '1'  ELSE nliO1O;
	wire_nlli0i_dataout <= wire_niOOOi_result(12) WHEN clken = '1'  ELSE nliiOl;
	wire_nlli0l_dataout <= wire_niOOOi_result(13) WHEN clken = '1'  ELSE nliiOi;
	wire_nlli0O_dataout <= wire_niOOOi_result(14) WHEN clken = '1'  ELSE nliilO;
	wire_nlli1i_dataout <= wire_niOOOi_result(9) WHEN clken = '1'  ELSE nlil1l;
	wire_nlli1l_dataout <= wire_niOOOi_result(10) WHEN clken = '1'  ELSE nlil1i;
	wire_nlli1O_dataout <= wire_niOOOi_result(11) WHEN clken = '1'  ELSE nliiOO;
	wire_nlliii_dataout <= wire_niOOOi_result(15) WHEN clken = '1'  ELSE nliill;
	wire_nlOO0l_dataout <= wire_n01ll_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOO0O_dataout <= wire_n01lO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOOii_dataout <= wire_n01Oi_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOOil_dataout <= wire_n01Ol_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOOiO_dataout <= wire_n01OO_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOOli_dataout <= wire_n001i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOOll_dataout <= wire_n001l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOOlO_dataout <= wire_n001O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOOOi_dataout <= wire_n000i_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOOOl_dataout <= wire_n000l_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nlOOOO_dataout <= wire_n000O_dataout AND NOT(wire_w_lg_reset_n87w(0));
	wire_nill1i_a <= ( niiO1l & niiO1O & niiO0i & niiO0l);
	wire_nill1i_b <= ( "0" & "0" & "0" & wire_ni000i26_w_lg_w_lg_q1082w1083w);
	nill1i :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 4,
		width_b => 4,
		width_o => 4
	  )
	  PORT MAP ( 
		a => wire_nill1i_a,
		b => wire_nill1i_b,
		cin => wire_gnd,
		o => wire_nill1i_o
	  );
	wire_niOOlO_a <= ( wire_ni0ili_result(31 DOWNTO 23) & wire_ni00ii20_w_lg_w_lg_q1006w1007w & wire_ni0ili_result(21 DOWNTO 20) & wire_ni00il18_w_lg_w_lg_q997w998w & wire_ni0ili_result(18 DOWNTO 17) & wire_ni00iO16_w_lg_w_lg_q988w989w & wire_ni0ili_result(15) & wire_ni00li14_w_lg_w_lg_q982w983w & wire_ni0ili_result(13 DOWNTO 11));
	wire_niOOlO_b <= ( nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & nil11O & wire_ni000l24_w_lg_w_lg_q1043w1044w & nil11O & nil11O & wire_ni000O22_w_lg_w_lg_q1038w1039w & nil10l & nill0l);
	niOOlO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 21,
		width_b => 21,
		width_o => 21
	  )
	  PORT MAP ( 
		a => wire_niOOlO_a,
		b => wire_niOOlO_b,
		cin => wire_gnd,
		o => wire_niOOlO_o
	  );
	wire_nlliil_a <= ( "0" & wire_niOOOi_result(15 DOWNTO 14) & wire_ni00ll12_w_lg_w_lg_q877w878w & wire_niOOOi_result(12 DOWNTO 8));
	wire_nlliil_b <= ( "0" & "0" & "1" & "0" & "0" & "0" & "0" & "0" & "0");
	nlliil :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 9,
		width_b => 9,
		width_o => 9
	  )
	  PORT MAP ( 
		a => wire_nlliil_a,
		b => wire_nlliil_b,
		cin => wire_gnd,
		o => wire_nlliil_o
	  );

 END RTL; --sine_nco_ii_0
--synopsys translate_on
--VALID FILE
