--================ mypackage.vhd ===============================
-- Description: 
--	mypackage est utile pour la declaration des components
-- Utilisation:
--	1: compiler mypackage.vhd
--	2: le declarer dans tous les fichiers vhdl
---	   avec: USE WORK.mypackage.ALL;
-- =============================================================


LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned. all;


package my_lib is



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
	end component;

    COMPONENT sin_gen is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Amplitude frequence et phase des sinus
		frequency 	: in std_logic_vector (15 downto 0);
		--Enable module
		enable		:in std_logic;
		--signal de remise a zero et d'activation
		reset 		: in std_logic;
		--sinus result
		sin_out 	:out std_logic_vector(23 downto 0)
	);
    END COMPONENT;
	
	component square_gen is 
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
	end component;
	
	component compteur IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		sclr		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END component;
	
	component triangle_gen is 
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
	end component;
	
	component sawtooth_gen is 
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
	end component;
	component dsr is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Input sonore
		signal_in 	: in std_logic_vector (23 downto 0);
		note_on		: in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--sinus result
		done		:out std_logic:='0';
		dsr_out 	:out std_logic_vector(23 downto 0)
	);
	end component;
	
	component note_gen is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Input sonore
		frequency 	: in std_logic_vector (15 downto 0);
		note_on		: in std_logic;
		type_in		: in std_logic_vector(1 downto 0);
		enable		:in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--sinus result
		done		:out std_logic:='0';
		note_out 	:out std_logic_vector(23 downto 0)
	);
	end component;
	
	component accelerateur is 
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
	end component;
	
	component ringmod is 
	port(
		--Signal d'horloge a 100MHz
		clk 		: in std_logic ;
		--Input sonore
		signal_in 	: in std_logic_vector (23 downto 0);
		freq_mod	:in std_logic_vector (4 downto 0);
		enable		: in std_logic;
		--signal de remise a zero
		reset 		: in std_logic;
		--result
		ringmod_out 	:out std_logic_vector(23 downto 0)
	);
	end component;
	
	component note_redux is 
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
	end component;
	
	component effets is 
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
		music_out 	: out std_logic_vector(23 downto 0)
	);
	end component;
	
	component top_level is 
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
	end component;

end my_lib;
