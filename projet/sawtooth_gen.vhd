----------------------------------------------------------
--sin_gen.vhd
--
--Generateur d'onde a dent de scie frequence variable 
--Developper dans le cadre du cours ELE748
--a l'ETS, ete 2017
--
--Par : Jean-Francois Penven et Xavier Mercure-Gagnon
----------------------------------------------------------

library ieee;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
use work.my_lib.all;

entity sawtooth_gen is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--frequence
		frequency 	: in std_logic_vector (15 downto 0);
		--Enable module
		enable		:in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--sinus result
		sawtooth_out 	:out std_logic_vector(23 downto 0)
	);
end sawtooth_gen;


architecture structural of sawtooth_gen is
	signal	sawtooth_buffer :std_logic_vector(23 downto 0):=x"000000";
	--frequence pour le calcul de l'onde triangulaire
	--Ration pour calculer l'increment de la pente ((freq*plagepossible)/periodeCPU)
	constant ratio			:unsigned(2 downto 0):="110";--permet d'affecter la durée de la descente
	signal increment_value 	: std_logic_vector (15 downto 0):=x"0000";
	
	begin
		signal_generation:process(clk)
		begin
			if rising_edge(Clk) then
				if reset = '1' then
					sawtooth_buffer<=x"7FFFFF";	
				else
					if enable='0' then
						sawtooth_buffer<=x"7FFFFF";	
					else	
						sawtooth_buffer<=std_logic_vector(signed(sawtooth_buffer)-signed(increment_value));	
					end if;	
				end if;	
				sawtooth_out<= sawtooth_buffer;
			elsif falling_edge(clk) then
				if reset ='0' then
					if enable='1' then
						increment_value<=std_logic_vector(unsigned(frequency)/ratio);
					end if;	
				end if;
			end if;
		end process;

end;
