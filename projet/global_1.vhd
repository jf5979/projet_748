----------------------------------------------------------
--accelerateur.vhd
--
--Generateur de tonalite pour un synthetiseur
--Developper dans le cadre du cours ELE748
--a l'ETS, ete 2017
--
--Par : Jean-Francois Penven et Xavier Mercure-Gagnon
----------------------------------------------------------

library ieee;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
use work.my_lib.all;

entity global_1 is 
	port(
			--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Input 
		type_effet	: in std_logic_vector(1 downto 0);
		parametre	: in std_logic_vector (4 downto 0);
		--Pour la generation de note
		note_type	: in std_logic_vector(1 downto 0);
		frequency_in: in std_logic_vector(15 downto 0);
		note_on		: in std_logic;
		new_event	: in std_logic;
		
		enable		: in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--result
		song	 	: out std_logic_vector(23 downto 0)
	);
end global_1;


architecture structural of global_1 is
	signal music_out	:std_logic_vector(23 downto 0):=x"000000";
	signal final_out	:std_logic_vector(23 downto 0):=x"000000";
	

begin
	
	note_generator: accelerateur port map(
	--Signal d'horloge a 100MHz
		clk 		=>clk,
		--frequence
		frequency 	=>frequency_in,
		--type of note
		types		=>note_type,
		--Note On ou OFF
		note_on 	=>note_on,
		--nouvel evenement
		new_event	=>new_event,
		--signal de remise a zero
		reset 		=>reset,
		--sinus result
		music 	=>music_out
	);
	
	modification_signal: effets 
	port map(
			--Signal d'horloge a 100MHz
		clk 		=>clk,
		--Input sonore
		signal_in 	=>music_out,
		type_effet	=>type_effet,
		parametre	=>parametre,
		enable		=>enable,
		--signal de remise a zero
		reset 		=>reset,
		--result
		music_out 	=>final_out
	);
	

	
	
	control_logic:process(clk) 
	begin
		if rising_edge(clk)then
			song<=final_out;
			
		end if;
		
	end process;
end;