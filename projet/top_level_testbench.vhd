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
 
ENTITY top_level_testbench IS
END top_level_testbench;
 
ARCHITECTURE behavior OF top_level_testbench IS 
 

   

   --Main
   signal Clk 			: std_logic := '0';
   signal reset_sim 	: std_logic := '0';
   signal enable_sim 	: std_logic := '1';
   --Music
   signal type_sim		: std_logic_vector(1 downto 0);
   signal note_on_sim	: std_logic:='0';
   signal new_event_sim	: std_logic:='0';
   signal frequency_sim : std_logic_vector(15 downto 0) :=x"4e20";--20khz
   --effects
   signal parametre_sim : std_logic_vector(4 downto 0):="00000";
   signal type_effet_sim	: std_logic_vector(1 downto 0):="00";
   

 	--Outputs
	signal music_out 	: STD_LOGIC_VECTOR (23 downto 0) ;
   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
	    -- Component Declaration for the Unit Under Test (UUT)
	uut: top_level 
	port map(
		--Signal d'horloge a 100MHz
		clk 		=>clk,
		--Input effets
		type_effet	=>type_effet_sim,
		parametre	=>parametre_sim,
		--Pour la generation de note
		note_type	=>type_sim,
		frequency_in=>frequency_sim,
		note_on		=>note_on_sim,
		new_event	=>new_event_sim,
		
		enable		=>enable_sim,
		--signal de remise a zero
		reset 		=>reset_sim,
		--result
		song	 	=>music_out
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
	--Ajout de notes
	new_event_sim<='1';
	type_sim<="00";
	note_on_sim<='1';
	wait for Clk_period;
	note_on_sim<='0';
	new_event_sim<='0';
	wait for 100 us;
	--effects
	type_effet_sim<="01";
	parametre_sim<="01111";
	wait for 100 us;
	--Nouvelle note
	new_event_sim<='1';
	frequency_sim<=x"43FF";
	type_sim<="00";
	note_on_sim<='1';
	wait for Clk_period;
	note_on_sim<='0';
	new_event_sim<='0';
	wait for 100 us;
	--effects
	type_effet_sim<="00";
	parametre_sim<="01111";
	wait for 100 us;
	--Nouvelle note
	new_event_sim<='1';
	frequency_sim<=x"3FFF";
	type_sim<="00";
	note_on_sim<='1';
	wait for Clk_period;
	note_on_sim<='0';
	new_event_sim<='0';
	wait for 100 us;
	--effects
	type_effet_sim<="10";
	parametre_sim<="01111";
	wait for 500 us;
	
	wait for 20000 ms;




   end process;
END;