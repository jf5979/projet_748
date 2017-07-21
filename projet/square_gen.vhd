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

entity square_gen is 
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
		square_out 	:out std_logic_vector(23 downto 0)
	);
end square_gen;


architecture structural of square_gen is
	signal	square_buffer 		: std_logic_vector(23 downto 0):=x"7fffff";
	
	--frequence pour le calcul de l'onde carre
	constant period_cpu		: unsigned(31 downto 0):=x"02FAF080";--moitie periode cpu
	signal 	 period 		: unsigned(31 downto 0):=x"00000000";
	--compteur
	signal	cnt				:std_logic_vector(31 downto 0):=x"00000000";
	signal done				:std_logic:='0';
	
	begin
	
		cmpt:component compteur 
		port map(
			clock	=> clk,
			sclr	=> done,
			q		=> cnt
		);
		
		signal_generation:process(clk)
		begin
			if rising_edge(Clk) then
				if reset = '1' then
					square_buffer<=x"7fffff";
					done<='1';
				else
					if enable ='0' then
						square_buffer<=x"7fffff";
						done<='1';
					else
						period<=period_cpu/unsigned(frequency);
						if done='0' then
							if cnt=std_logic_vector(period) then
								done<='1';
								if square_buffer(23)='1' then 
									square_buffer<=x"7fffff";
								else
									square_buffer<=x"800001";
								end if;
							end if;
						else
							done<='0';
						end if;
					end if;
				end if;	
				square_out<= square_buffer;
			end if;
		
		end process;
end;
