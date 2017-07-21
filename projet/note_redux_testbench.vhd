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
 
ENTITY note_redux_testbench IS
END note_redux_testbench;
 
ARCHITECTURE behavior OF note_redux_testbench IS 
 

   

   --Inputs
   signal Clk 			: std_logic := '0';
   signal reset_sim 	: std_logic := '0';
   signal enable_sim 	: std_logic := '1';
   signal type_sim		: std_logic_vector(1 downto 0);
   signal note_on_sim	: std_logic:='0';
   signal new_event_sim	: std_logic:='0';
   
   signal note_sin		:std_logic_vector(23 downto 0);
   signal frequency_sin :std_logic_vector(15 downto 0):=x"7ffA";--tres haute frequence
   --signal frequency_sin :std_logic_vector(15 downto 0):=x"006e";--110hz La2
   
   signal freq_mod_sim : std_logic_vector(4 downto 0) :="00001";--1hz

 	--Outputs
	signal music_out 	: STD_LOGIC_VECTOR (23 downto 0) ;
   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
	    -- Component Declaration for the Unit Under Test (UUT)
	uut:note_redux 
	port map(
		--Signal d'horloge a 100MHz
		clk 		=>clk,
		--Input sonore
		signal_in 	=>note_sin,
		nb_byte	=>freq_mod_sim,
		enable		=>enable_sim,
		--signal de remise a zero
		reset 		=>reset_sim,
		--result
		noteredux_out =>music_out
	);
	
	sinus:sin_gen port map(
		   Clk => Clk,
		frequency =>frequency_sin,
		enable=>enable_sim,
		--signal de remise a zero et d'activation
		reset	=>reset_sim,
		
		sin_out 	=> note_sin
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
	--Onde sinusoidale
	--Ajout de notes
	reset_sim<='0';
	wait for 50 us;
	freq_mod_sim<="11111";
	wait for 50 us;
	freq_mod_sim<="00001";
	wait for 50 us;
	freq_mod_sim<="00111";
	wait for 50 us;
	freq_mod_sim<="10101";
	wait for 50 us;
	freq_mod_sim<="10011";
	wait for 50 us;
	freq_mod_sim<="01011";
	
	
	
	
	
	
	wait for 20000 ms;




   end process;
END;