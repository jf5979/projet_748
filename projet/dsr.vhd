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

entity dsr is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Input sonore
		signal_in 	: in std_logic_vector (23 downto 0);
		note_on		: in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--sinus result
		done		:out std_logic:='1';
		dsr_out 	:out std_logic_vector(23 downto 0)
	);
end dsr;


architecture structural of dsr is
	--Le filtre se comporte comme ceci
	--Perte d'amplitude de 10% pendant 500ms
	--La note garde la meme amplitude jusqu'a ce
	--que la touche soit relachee. Ensuite l'amplitude
	--tend vers 0 sur 1s

	signal	dsr_buffer 		:std_logic_vector(23 downto 0):=x"000000";
	signal	dsr_buffer2		:std_logic_vector(55 downto 0):=x"00000000000000";
	--signal	dsr_buffer 		:std_logic_vector(47 downto 0):=x"000000";
	--frequence pour le calcul de l'onde triangulaire
	--Ration pour calculer l'increment de la pente ((freq*plagepossible)/periodeCPU)
	
	--constante de temps pour la durée de diminution,500ms donc 5*10^7 coup dhorloge
	constant decrease_time	:std_logic_vector(31 downto 0):=x"02faf080";
	constant release_time	:std_logic_vector(31 downto 0):=x"05f5e100";
	--Pour simulation
	--constant decrease_time	:std_logic_vector(31 downto 0):=x"00000080";
	--constant release_time	:std_logic_vector(31 downto 0):=x"00000100";
	signal clr 				:std_logic:='0';
	--constante de diminution pour atteindre 90%
	--constant diminution		:signed(3 downto 0):=x"7";--4
	--constant dim_release	:signed(7 downto 0):=x"7f";--4
	
	--valeur reelle
	constant diminution		:signed(3 downto 0):=x"4";--4
	constant dim_release	:signed(7 downto 0):=x"24";--36
	signal numerateur		:signed(31 downto 0):=x"3b9aca00";
	constant denominateur	:signed(31 downto 0):=x"3b9aca00";
	--variable d'etat pour le dsr
	signal state			:std_logic_vector(2 downto 0):="000";
	--toggle_diminition
	signal toggle_dim		:std_logic:='0';
	--signal pour le comteur
	signal cnt				:std_logic_vector(31 downto 0);
	
	begin
	
		cmpt:component compteur 
		port map(
					clock	=> clk,
					sclr	=> clr,
					q		=> cnt
		);
	
		signal_generation:process(clk)
		begin
			if rising_edge(Clk) then
				if reset = '1' then
					state<="000";
					numerateur<=x"3b9aca00";
					done<='1';
				else	
					dsr_buffer<=signal_in;
					if state="000" then
						if note_on='1' then
							state<="001";
							done<='0';
						end if;	
					elsif state ="001" then
						if note_on='1' then
							if cnt = decrease_time then
								state<="010";
								clr<='1';
							else
								if toggle_dim='0' then
									dsr_buffer2<=std_logic_vector((signed(dsr_buffer)*numerateur)/denominateur);
									toggle_dim<='1';
								else
									toggle_dim<='0';
									numerateur<=numerateur-diminution;
								end if;	
							end if;
						else
							state<="011";
						end if;
					elsif state="010" then
						if note_on='0' then
							state<="011";
						else
							dsr_buffer2<=std_logic_vector((signed(dsr_buffer)*numerateur)/denominateur);
						end if;
					elsif state<="011"then
						if clr<='1' then
							clr<='0';
						end if;	
						if cnt = release_time then
								state<="000";
								done<='1';
						else
							if toggle_dim='0' then
								dsr_buffer2<=std_logic_vector((signed(dsr_buffer)*numerateur)/denominateur);
								toggle_dim<='1';
							else
								toggle_dim<='0';
								numerateur<=numerateur-dim_release;
							end if;	
						end if;
					end if;
					
				end if;	
				dsr_out<= dsr_buffer2(23 downto 0);
			end if;
		end process;

end;
