----------------------------------------------------------
--ringmod.vhd
--
--Permet d'ajouter un effet de type ring modulation
--au signal audio en multipliant un sinus d'une 
--fréquence variable
--
--Par : Jean-Francois Penven et Xavier Mercure-Gagnon
----------------------------------------------------------

library ieee;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
use work.my_lib.all;

entity ringmod is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Input sonore
		signal_in 	: in std_logic_vector (23 downto 0);
		freq_mod	:in std_logic_vector (4 downto 0);
		enable		: in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--result
		ringmod_out 	:out std_logic_vector(23 downto 0)
	);
end ringmod;


architecture structural of ringmod is

	signal	modulant	:std_logic_vector(23 downto 0):=x"000000";
	signal	result		:std_logic_vector(47 downto 0):=x"000000000000";
	signal frequency	:std_logic_vector(15 downto 0):=x"0000";
	signal sin_buffer	:std_logic_vector(23 downto 0):=x"000000";
	
	begin
	
    generateur_sin: sin_gen PORT MAP (
        Clk => Clk,
		frequency =>frequency,
		enable=>enable,
		--signal de remise a zero et d'activation
		reset	=>reset,
		
		sin_out 	=> sin_buffer
        );
	
		signal_generation:process(clk)
		begin
			if rising_edge(Clk) then
				if reset = '1' then
					ringmod_out<=x"000000";
					
				else
					if enable='0' then
						ringmod_out<=x"000000";
					else
						result<=std_logic_vector(signed(signal_in)*signed(sin_buffer));
						
					end if;
				end if;
				ringmod_out<=result(47 downto 24);
				frequency<=x"00"&"000"&freq_mod;
			end if;
			
			
		end process;

end;
