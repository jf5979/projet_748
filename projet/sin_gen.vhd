----------------------------------------------------------
--sin_gen.vhd
--
--Generateur de sinus a amplitude variable et frequence 
--variable. Developper dans le cadre du cours ELE748
--a l'ETS, ete 2017
--
--Par : Jean-Francois Penven et Xavier Mercure-Gagnon
----------------------------------------------------------

library ieee;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_1164.all;

entity sin_gen is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Amplitude frequence et phase des sinus
		--amplitude 	: in std_logic_vector (15 downto 0); 
		frequency 	: in std_logic_vector (15 downto 0);
		phase		: in std_logic_vector (15 downto 0);
		--signal de remise a zero et d'activation
		reset 		: in std_logic;
		enable		: in std_logic;
		--sinus result
		sin_out 	:out std_logic_vector(23 downto 0)
	);
end sin_gen;


architecture structural of sin_gen is
	signal	sin_buffer 		: std_logic_vector(23 downto 0);
	signal out_valide 		: std_logic;
	signal frequency_mod 	:std_logic_vector(31 downto 0) :=x"00000001";
	--frequence pour le calcul du sinus
	constant freq_to_phi 	: std_logic_vector(7 downto 0) :="00101011";
	signal 	 phi_cal 		: std_logic_vector(31 downto 0);
	signal reset_n			: std_logic :='1';
	component sine is
		port (
			clk         : in  std_logic                     := 'X';             -- clk
			clken       : in  std_logic                     := 'X';             -- clken
			phi_inc_i   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- phi_inc_i
			freq_mod_i  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- freq_mod_i
			phase_mod_i : in  std_logic_vector(15 downto 0) := (others => 'X'); -- phase_mod_i
			fsin_o      : out std_logic_vector(23 downto 0);                    -- fsin_o
			out_valid   : out std_logic;                                        -- out_valid
			reset_n     : in  std_logic                     := 'X'              -- reset_n
		);
	end component sine;
	begin
		
		
		sin:component sine
			port map (
				clk         => clk,         -- clk.clk
				clken       => enable,       --  in.clken
				phi_inc_i   => phi_cal,   --    .phi_inc_i
				freq_mod_i  => frequency_mod,  --    .freq_mod_i
				phase_mod_i => phase, --    .phase_mod_i
				fsin_o      => sin_buffer,      -- out.fsin_o
				out_valid   => out_valide,   --    .out_valid
				reset_n     => reset_n      -- rst.reset_n
			);
		
		
		
		signal_generation:process(clk)
		begin
			if rising_edge(Clk) then
				if reset = '1' then
					reset_n<='0';
					phi_cal<="00000000"&std_logic_vector(unsigned(frequency)*unsigned(freq_to_phi));
				else
					reset_n<='1';
					phi_cal<="00000000"&std_logic_vector(unsigned(frequency)*unsigned(freq_to_phi));
				end if;	
			end if;
		
		end process;
		
		--attenuation control:process(clk)
		--begin
		
		--end process;
		sin_out<=sin_buffer;

end;
