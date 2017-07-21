----------------------------------------------------------------------------------
-- University: ETS
-- student : JFP & XMG
-- 
-- Create Date:     23/06/2017 
-- Design Name: 
-- Module Name:    adsr_testbench - Behavioral 
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
 
ENTITY dsr_testbench IS
END dsr_testbench;
 
ARCHITECTURE behavior OF dsr_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

   

   --Inputs
   signal Clk : std_logic := '0';
   signal reset_sim : std_logic := '0';
   signal	note_on	:std_logic :='0';
   signal frequency_sim : std_logic_vector(15 downto 0) := "0010011100010000";--10khz
   --signal frequency_sim : std_logic_vector(15 downto 0) :=x"59D8";--10khz
  -- signal frequency_sim : std_logic_vector(15 downto 0) :=x"00FF";--255hz

 	--Outputs
	signal sinus : STD_LOGIC_VECTOR (23 downto 0) ;
	signal dsr_out: STD_LOGIC_VECTOR (23 downto 0) ;
	signal done		:std_logic;
	
   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   sinus_gen:sin_gen PORT MAP (
        Clk => Clk,
		frequency =>frequency_sim,
		--signal de remise a zero et d'activation
		reset	=>reset_sim,
		sin_out 	=> sinus
        );
		
	uut:dsr port map(
		--Signal d'horloge a 100MHz
		clk 		=>clk,
		--Input sonore
		signal_in 	=>sinus,
		note_on		=>note_on,
		--signal de remise a zero
		reset 		=>reset_sim,
		--sinus result
		done		=>done,
		dsr_out 	=>dsr_out
	
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
	wait for Clk_period*8;
	reset_sim<='0';
	note_on<='1';
	wait for Clk_period*10000;
	note_on<='0';
	wait for 2000ms;




   end process;
END;