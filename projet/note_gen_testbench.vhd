----------------------------------------------------------------------------------
-- University: ETS
-- student : JFP & XMG
-- 
-- Create Date:     23/06/2017 
-- Design Name: 
-- Module Name:    sin_testbench - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.my_lib.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY note_gen_testbench IS
END note_gen_testbench;
 
ARCHITECTURE behavior OF note_gen_testbench IS 
 

   

   --Inputs
   signal Clk 			: std_logic := '0';
   signal reset_sim 	: std_logic := '0';
   signal enable_sim 	: std_logic := '1';
   signal type_sim		: std_logic_vector(1 downto 0);
   signal note_on_sim	: std_logic:='0';
   signal new_event_sim	: std_logic:='0';
   signal done_sim		: std_logic;
   
   
   --signal frequency_sim : std_logic_vector(15 downto 0) := "0010011100010000";--10khz
   --signal frequency_sim : std_logic_vector(15 downto 0) :=x"59D8";--10khz
   signal frequency_sim : std_logic_vector(15 downto 0) :=x"00FF";--255hz

 	--Outputs
	signal music_out 	: STD_LOGIC_VECTOR (23 downto 0) ;
   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
	    -- Component Declaration for the Unit Under Test (UUT)
	uut: note_gen port map(
		--Signal d'horloge a 100MHz
		clk 		=>clk,
		--Input sonore
		frequency 	=>frequency_sim,
		note_on		=>note_on_sim,
		type_in		=>type_sim,
		enable		=>enable_sim,
		--signal de remise a zero
		reset 		=>reset_sim,
		--sinus result
		done		=>done_sim,
		note_out =>music_out
	);
   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;

   stm_process :process
   begin	
	reset_sim<='1';
	wait for Clk_period*2;
	reset_sim<='0';
	new_event_sim<='1';
	type_sim<="10";
	frequency_sim<=x"4e20";--20khz
	note_on_sim<='1';
	wait for Clk_period;
	new_event_sim<='0';
	wait for 200 us;
	type_sim<="10";
	frequency_sim<=x"3a98";--15khz
	new_event_sim<='1';
	wait for Clk_period;
	new_event_sim<='0';
	wait for 200 us;
	type_sim<="10";
	frequency_sim<=x"2710";--10khz
	new_event_sim<='1';
	wait for Clk_period;
	new_event_sim<='0';
	wait for 500 us;
	type_sim<="10";
	frequency_sim<=x"1388";--5khz
	new_event_sim<='1';
	wait for Clk_period;
	new_event_sim<='0';
	wait for 200 us;
	type_sim<="10";
	frequency_sim<=x"03e8";--1khz
	new_event_sim<='1';
	wait for Clk_period;
	new_event_sim<='0';
	wait for 1000 us;
	type_sim<="10";
	frequency_sim<=x"01f4";--500hz
	new_event_sim<='1';
	wait for Clk_period;
	new_event_sim<='0';
	wait for 10000 ms;




   end process;
END;