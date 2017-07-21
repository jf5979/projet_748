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

entity effets is 
	port(
			--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Input sonore
		signal_in 	: in std_logic_vector (23 downto 0);
		type_effet	: in std_logic_vector(1 downto 0);
		parametre	: in std_logic_vector (4 downto 0);
		enable		: in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--result
		music_out 	: out std_logic_vector(23 downto 0):=x"000000"
	);
end effets;


architecture structural of effets is
	signal ring_mod_out	:std_logic_vector(23 downto 0):=x"000000";
	signal bit_redux_out:std_logic_vector(23 downto 0):=x"000000";
	signal sig_buffer	:std_logic_vector(23 downto 0):=x"000000";
	signal enable_redux	:std_logic:='0';
	signal enable_ring	:std_logic:='0';

begin
	
	ring_modulation:ringmod
	port map(
		--Signal d'horloge a 100MHz
		clk 		=>clk,
		--Input sonore
		signal_in 	=>signal_in,
		freq_mod	=>parametre,
		enable		=>enable_ring,
		--signal de remise a zero
		reset 		=>reset,
		--result
		ringmod_out 	=>ring_mod_out
	);
	
	reduction:note_redux 
	port map(
		--Signal d'horloge a 100MHz
		clk 		=>clk,
		--Input sonore
		signal_in 	=>signal_in,
		nb_byte		=>parametre,
		enable		=>enable_redux,
		--signal de remise a zero
		reset 		=>reset,
		--result
		noteredux_out 	=>bit_redux_out
	);
	
	
	control_logic:process(clk) 
	begin
		if rising_edge(clk)then
			if reset='1' then
				sig_buffer<=x"000000";
			else
				if enable='0' then
					sig_buffer<=x"000000";
				else
					if type_effet="01" then
						sig_buffer<=bit_redux_out;
						enable_redux<='1';
						enable_ring<='0';
					elsif	type_effet="10" then
						sig_buffer<=ring_mod_out;
						enable_redux<='0';
						enable_ring<='1';
					else
						sig_buffer<=signal_in;
						enable_redux<='0';
						enable_ring<='0';
					end if;
				end if;		
			end if;
			music_out<=sig_buffer;
			
		end if;
		
	end process;
end;