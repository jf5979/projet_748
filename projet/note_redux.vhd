----------------------------------------------------------
--ringmod.vhd
--
--Permet d'ajouter un effet en reduisant la resolution
--du signal
--
--Par : Jean-Francois Penven et Xavier Mercure-Gagnon
----------------------------------------------------------

library ieee;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
use work.my_lib.all;

entity note_redux is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Input sonore
		signal_in 	: in std_logic_vector (23 downto 0);
		nb_byte	:in std_logic_vector (4 downto 0);
		enable		: in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--result
		noteredux_out 	:out std_logic_vector(23 downto 0)
	);
end note_redux;


architecture structural of note_redux is
	
	begin
	
		signal_generation:process(clk)
		begin
			if rising_edge(Clk) then
				if reset = '1' then
					noteredux_out<=x"000000";
					
				else
					if enable='0' then
						noteredux_out<=x"000000";
					else
						if nb_byte="00000" then
							noteredux_out<=signal_in(23 downto 0);
						elsif nb_byte="00000" then
							noteredux_out<=signal_in(23 downto 1)&'0';
						elsif nb_byte="00001" then
							noteredux_out<=signal_in(23 downto 2)&"00";
						elsif nb_byte="00010" then
							noteredux_out<=signal_in(23 downto 3)&"000";
						elsif nb_byte="00011" then
							noteredux_out<=signal_in(23 downto 4)&"0000";
						elsif nb_byte="00100" then
							noteredux_out<=signal_in(23 downto 5)&"00000";
						elsif nb_byte="00101" then
							noteredux_out<=signal_in(23 downto 6)&"000000";
						elsif nb_byte="00110" then
							noteredux_out<=signal_in(23 downto 7)&"0000000";
						elsif nb_byte="00111" then
							noteredux_out<=signal_in(23 downto 8)&"00000000";
						elsif nb_byte="01000" then
							noteredux_out<=signal_in(23 downto 9)&"000000000";
						elsif nb_byte="01001" then
							noteredux_out<=signal_in(23 downto 10)&"0000000000";
						elsif nb_byte="01010" then
							noteredux_out<=signal_in(23 downto 11)&"00000000000";
						elsif nb_byte="01011" then
							noteredux_out<=signal_in(23 downto 12)&"000000000000";
						elsif nb_byte="01100" then
							noteredux_out<=signal_in(23 downto 13)&"0000000000000";
						elsif nb_byte="01101" then
							noteredux_out<=signal_in(23 downto 14)&"00000000000000";
						elsif nb_byte="01110" then
							noteredux_out<=signal_in(23 downto 15)&"000000000000000";
						elsif nb_byte="01111" then
							noteredux_out<=signal_in(23 downto 16)&"0000000000000000";
						elsif nb_byte="10000" then
							noteredux_out<=signal_in(23 downto 17)&"00000000000000000";
						elsif nb_byte="10000" then
							noteredux_out<=signal_in(23 downto 18)&"000000000000000000";
						elsif nb_byte="10001" then
							noteredux_out<=signal_in(23 downto 19)&"0000000000000000000";
						elsif nb_byte="10010" then
							noteredux_out<=signal_in(23 downto 20)&"00000000000000000000";
						elsif nb_byte="10011" then
							noteredux_out<=signal_in(23 downto 21)&"000000000000000000000";
						elsif nb_byte="10100" then
							noteredux_out<=signal_in(23 downto 22)&"0000000000000000000000";
						elsif nb_byte="10101" then
							noteredux_out<=signal_in(23 downto 23)&"00000000000000000000000";
						else 
							noteredux_out<= x"000000";
						end if;
						
						
					end if;
				end if;
			end if;
			
		end process;

end;
