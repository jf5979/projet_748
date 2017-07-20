----------------------------------------------------------
--sin_gen.vhd
--
--Generateur d'onde carre frequence variable 
--variable. Developper dans le cadre du cours ELE748
--a l'ETS, ete 2017
--
--Par : Jean-Francois Penven et Xavier Mercure-Gagnon
----------------------------------------------------------

library ieee;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
use work.my_lib.all;

entity triangle_gen is 
	port(
	--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--frequence
		frequency 	: in std_logic_vector (15 downto 0);
		--Enable module
		enable		:in std_logic;
		--signal de remise a zero
		reset : in std_logic;
		--sinus result
		triangle_out 	:out std_logic_vector(23 downto 0)
	);
end triangle_gen;


architecture structural of triangle_gen is
	signal	triangle_buffer :std_logic_vector(23 downto 0):=x"7FFFFF";
	constant max 			:signed(23 downto 0):=x"7F1B10";
	constant min 			:signed(23 downto 0):=x"80E4F0";
	
	--Ration pour calculer l'increment de la pente ((freq*plagepossible)/periodeCPU)
	constant ratio			:unsigned(2 downto 0):="011";--(plagepossible/periodCPU)
	--50*10^6
	signal increment_value 	: std_logic_vector (15 downto 0):=x"0000";
	--compteur
	signal increment 		:std_logic:='0';
	
	begin	
		signal_generation:process(clk)
		begin
			if rising_edge(Clk) then
				if reset = '1' then
					triangle_buffer<=x"7FFFFF";
				else
					if enable ='0' then
						triangle_buffer<=x"7FFFFF";
					else
						if signed(triangle_buffer)>max then
							increment<='0';
						elsif signed(triangle_buffer)<min then
							increment<='1';
						end if;
						if increment='1' then
							triangle_buffer<=std_logic_vector(signed(triangle_buffer)+signed(increment_value));
						else
							triangle_buffer<=std_logic_vector(signed(triangle_buffer)-signed(increment_value));
						end if;
					end if;			
				end if;	
				triangle_out<= triangle_buffer;
			end if;
			if falling_edge(clk) then
				if reset ='0' then
					if enable='1' then
						increment_value<=std_logic_vector(unsigned(frequency)/ratio);
					end if;	
				end if;
			end if;
		end process;

end;
