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

entity accelerateur is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--frequence
		frequency 	: in std_logic_vector (15 downto 0);
		--type of note
		types		: in std_logic_vector(1 downto 0);
		--Note On ou OFF
		note_on 	:in std_logic;
		--nouvel evenement
		new_event	:in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--sinus result
		music 	:out std_logic_vector(23 downto 0)
	);
end accelerateur;


architecture structural of accelerateur is
	signal done_array	:std_logic_vector(9 downto 0):="1111111111";
	signal music_out	:std_logic_vector(27 downto 0):=x"0000000";
	signal note_on_arr	:std_logic_vector(9 downto 0):="0000000000";
	signal notes		:std_logic_vector(239 downto 0):=x"000000000000000000000000000000000000000000000000000000000000";
	signal frequencies	:std_logic_vector(159 downto 0):=x"0001000100010001000100010001000100010001";
	signal enable_array :std_logic_vector(9 downto 0):="0000000000";
	--Pour les calculs
	signal somme_music	:signed(27 downto 0):=x"0000000";
	signal somme_used	:signed (7 downto 0):=x"00";
	signal somme_over	:integer range 0 to 10;
	signal toggle		:std_logic:='0';

begin
	
	polyphonie:for i in 0 to 9 generate
		noteX : note_gen port map(
			--Signal d'horloge a 100MHz
			clk 		=>clk,
			--Input sonore
			frequency	=>frequencies((15+(i*16)) downto (i*16)), 	
			note_on		=>note_on_arr(i),
			type_in		=>types,
			enable		=>enable_array(i),
			--signal de remise a zero
			reset 		=>reset,
			--sinus result
			done		=>done_array(i),
			note_out 	=>notes((23+(i*24)) downto (i*24))
		);
	end generate polyphonie;
	
	
	control_logic:process(clk) 
	begin
		if rising_edge(clk)then
			if reset='1' then
				music<=x"000000";
			else
				if new_event='1' then
					if note_on='1' then
						--Assigne les notes aux generateurs de notes
						if done_array(0)='1' then
							note_on_arr(0)<='1';
							enable_array(0)<= done_array(0);
							frequencies(15 downto 0)<=frequency;
							somme_used<=somme_used+1;
						elsif done_array(1)='1' then
							note_on_arr(1)<='1';
							enable_array(1)<= done_array(1);
							frequencies(31 downto 16)<=frequency;
							somme_used<=somme_used+1;
						elsif done_array(2)='1' then
							note_on_arr(2)<='1';
							enable_array(2)<= done_array(2);
							frequencies(47 downto 32)<=frequency;
							somme_used<=somme_used+1;
						elsif done_array(3)='1' then
							note_on_arr(3)<='1';
							enable_array(3)<= done_array(3);
							frequencies(63 downto 48)<=frequency;
							somme_used<=somme_used+1;
						elsif done_array(4)='1' then
							note_on_arr(4)<='1';
							enable_array(4)<= done_array(4);
							frequencies(79 downto 64)<=frequency;
							somme_used<=somme_used+1;
						elsif done_array(5)='1' then
							note_on_arr(5)<='1';
							enable_array(5)<= done_array(5);
							frequencies(95 downto 80)<=frequency;
							somme_used<=somme_used+1;
						elsif done_array(6)='1' then
							note_on_arr(6)<='1';
							enable_array(6)<= done_array(6);
							frequencies(111 downto 96)<=frequency;
							somme_used<=somme_used+1;
						elsif done_array(7)='1' then
							note_on_arr(7)<='1';
							enable_array(7)<= done_array(7);
							frequencies(127 downto 112)<=frequency;
							somme_used<=somme_used+1;
						elsif done_array(8)='1' then
							note_on_arr(8)<='1';
							enable_array(8)<= done_array(8);
							frequencies(143 downto 128)<=frequency;
							somme_used<=somme_used+1;
						elsif done_array(9)='1' then
							note_on_arr(9)<='1';
							enable_array(9)<= done_array(9);
							frequencies(159 downto 144)<=frequency;
							somme_used<=somme_used+1;
						end if;
					else
						
						somme_over<=to_integer(unsigned(done_array(0 downto 0)))+to_integer(unsigned(done_array(1 downto 1)))+
									to_integer(unsigned(done_array(2 downto 2)))+to_integer(unsigned(done_array(3 downto 3)))+
									to_integer(unsigned(done_array(4 downto 4)))+to_integer(unsigned(done_array(5 downto 5)))+
									to_integer(unsigned(done_array(6 downto 6)))+to_integer(unsigned(done_array(7 downto 7)))+
									to_integer(unsigned(done_array(8 downto 8)))+to_integer(unsigned(done_array(9 downto 9)));
						
						somme_used<=(10-to_signed(somme_over,8));--10 etant le nombre de note max
					
						--Eteint les notes lorsque celles-ci sont relachees
						if frequencies(15 downto 0)=frequency then
							note_on_arr(0)<='0';
						elsif frequencies(31 downto 16)=frequency then
							note_on_arr(1)<='0';
						elsif frequencies(47 downto 32)<=frequency then
							note_on_arr(2)<='0';
						elsif frequencies(63 downto 48)=frequency then
							note_on_arr(3)<='0';
						elsif frequencies(79 downto 64)=frequency then
							note_on_arr(4)<='0';
						elsif frequencies(95 downto 80)=frequency then
							note_on_arr(5)<='0';
						elsif frequencies(111 downto 96)=frequency then
							note_on_arr(6)<='0';
						elsif frequencies(127 downto 112)=frequency then
							note_on_arr(7)<='0';
						elsif frequencies(143 downto 128)=frequency then
							note_on_arr(8)<='0';
						elsif frequencies(159 downto 144)=frequency then
							note_on_arr(9)<='0';
						end if;
					end if;
					
					
				end if;
				
				
				--Addition et moyenne
				if toggle ='0' then
					somme_music<=resize(signed(notes(23 downto 0)),28)+signed(notes(47 downto 24))+signed(notes(71 downto 48))+signed(notes(95 downto 72 ))+signed(notes(119 downto 96))+signed(notes(143 downto 120))+signed(notes(167 downto 144))+signed(notes(191 downto 168))+signed(notes(215 downto 192))+signed(notes(239 downto 216));
					
					toggle<='1';
				else
					toggle<='0';
					if somme_used=x"0" then
						music_out<=x"0000000";
					else	
						music_out<=std_logic_vector(somme_music/somme_used);
					end if;	
				end if;
				
				music<=music_out(23 downto 0);
			end if;
			
		end if;
		
	end process;
end;