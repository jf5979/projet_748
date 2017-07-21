----------------------------------------------------------
--sin_gen.vhd
--
--filtre de type DSR pour diminuer l'amplitude du signal
--le soutenir et finalement le diminuer jusqu'a une valeur
--nulle. Ici on neglige la partie amplification du standar 
--adsr car le signal generer est deja à amplitude maximale
--
--Par : Jean-Francois Penven et Xavier Mercure-Gagnon
----------------------------------------------------------

library ieee;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
use work.my_lib.all;

entity note_gen is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Input sonore
		frequency 	: in std_logic_vector (15 downto 0);
		note_on		: in std_logic;
		type_in		: in std_logic_vector(1 downto 0);
		--enable
		enable		:std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--sinus result
		done		:out std_logic:='0';
		note_out 	:out std_logic_vector(23 downto 0)
	);
end note_gen;


architecture structural of note_gen is
	--signal 
	signal note_sin 	:std_logic_vector(23 downto 0);
	signal note_square 	:std_logic_vector(23 downto 0);
	signal note_tri 	:std_logic_vector(23 downto 0);
	signal note_saw 	:std_logic_vector(23 downto 0);
	signal note			:std_logic_vector(23 downto 0);
	signal enable_array :std_logic_vector(3 downto 0);
	
	
	begin
		
		
	signal_attenuation:dsr port map(
		--Signal d'horloge a 100MHz
		clk 	=>clk,
		--Input sonore
		signal_in 	=>note,
		note_on		=>note_on,
		--signal de remise a zero
		reset 		=>reset,
		--sinus result
		done		=>done,
		dsr_out 	=>note_out
	);
	
	   generateur_sin: sin_gen PORT MAP (
        Clk => Clk,
		frequency =>frequency,
		enable=>enable_array(0),
		--signal de remise a zero et d'activation
		reset	=>reset,
		
		sin_out 	=> note_sin
        );
		
	generateur_square:square_gen port map(
	    Clk => Clk,
		frequency =>frequency,
		enable=>enable_array(1),
		--signal de remise a zero et d'activation
		reset	=>reset,
		square_out 	=> note_square
	
	);	
	generateur_triangle:triangle_gen port map(
	    Clk => Clk,
		frequency =>frequency,
		enable=>enable_array(2),
		--signal de remise a zero et d'activation
		reset	=>reset,
		triangle_out 	=> note_tri
	
	);

	generateur_sawtooth:sawtooth_gen port map(
	    Clk => Clk,
		frequency =>frequency,
		enable=>enable_array(3),
		--signal de remise a zero et d'activation
		reset	=>reset,
		sawtooth_out 	=> note_saw
	
	);	
		signal_generation:process(clk)
		begin
			if rising_edge(Clk) then
				if reset = '1' then
					note<=x"000000";
				else
					if enable='1' then
						if type_in="00" then
							enable_array<="0001";
							note<=note_sin;
						elsif type_in="01" then
							enable_array<="0010";
							note<=note_square;
						elsif type_in="10" then
							enable_array<="0100";
							note<=note_tri;
						else 
							enable_array<="1000";
							note<=note_saw;
						end if;
					else
						note<=x"000000";
					end if;
				end if;	
			end if;
		end process;

end;
