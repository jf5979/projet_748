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
 
ENTITY sin_testbench IS
END sin_testbench;
 
ARCHITECTURE behavior OF sin_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

   

   --Inputs
   signal Clk : std_logic := '0';
   signal reset_sim : std_logic := '0';
   signal enable_sim : std_logic := '1';
   --signal frequency_sim : std_logic_vector(15 downto 0) := "0010011100010000";--10khz
   --signal frequency_sim : std_logic_vector(15 downto 0) :=x"59D8";--10khz
   signal frequency_sim : std_logic_vector(15 downto 0) :=x"00FF";--255hz
   signal phase_sim : std_logic_vector(15 downto 0) := x"0000";

 	--Outputs
	signal sinus : STD_LOGIC_VECTOR (23 downto 0) ;
	signal square: STD_LOGIC_VECTOR (23 downto 0) ;
	signal triangle: STD_LOGIC_VECTOR (23 downto 0) ;
	signal sawtooth: STD_LOGIC_VECTOR (23 downto 0) ;
   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut_sin: sin_gen PORT MAP (
        Clk => Clk,
		frequency =>frequency_sim,
		--signal de remise a zero et d'activation
		reset	=>reset_sim,
		
		sin_out 	=> sinus
        );
		
	uut_square:square_gen port map(
	    Clk => Clk,
		frequency =>frequency_sim,
		--signal de remise a zero et d'activation
		reset	=>reset_sim,
		
		square_out 	=> square
	
	);	
	uut_triangle:triangle_gen port map(
	    Clk => Clk,
		frequency =>frequency_sim,
		--signal de remise a zero et d'activation
		reset	=>reset_sim,
		
		triangle_out 	=> triangle
	
	);

	uut_sawtooth:sawtooth_gen port map(
	    Clk => Clk,
		frequency =>frequency_sim,
		--signal de remise a zero et d'activation
		reset	=>reset_sim,
		
		sawtooth_out 	=> sawtooth
	
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
	-- wait for clk_period*12000;
	-- --reset_sim<='1';
	-- frequency_sim<=x"0200";
	-- wait for Clk_period;
	-- reset_sim<='0';
	-- wait for clk_period*12000;
	-- frequency_sim<=x"ffff";
	wait for 2000ms;




   end process;
END;