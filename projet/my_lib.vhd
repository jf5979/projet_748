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

    COMPONENT sin_gen is 
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
    END COMPONENT;

end my_lib;
