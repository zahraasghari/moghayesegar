--do reshte vurudi 5bit begirad/moghayese konad/ kodam bozorgtar ast
--porarzesh tarin bit ekhtelaf ra bedahad(shomareye bit)
library ieee;
use ieee.std_logic_1164.all ;
entity moghayesegar  is
port (a,b : in std_logic_vector (4 downto 0) ;
    out1: out std_logic_vector (4 downto 0) ;
	 --adade bozorgtar
	out2: out std_logic_vector (4 downto 0) );
	--dar kodam bit ekhtelaf darand
	end moghayesegar;
	architecture fivebit of moghayesegar is
	begin
	pro: process (a,b)
	begin
	if a(4) > b(4) then
	out1 <= a;
	out2 <= "10000";
	elsif b(4)> a(4) then
	out1 <= b;
	out2 <= "10000";
	elsif b(4) = a(4) then
	if a(3) > b(3) then
	out1 <= a;
	out2 <= "01000";
	elsif b(3)> a(3) then
	out1 <= b;
	out2 <= "01000";
	elsif b(3) = a(3) then
	if a(2) > b(2) then
	out1 <= a;
	out2 <= "00100";
	elsif b(2)> a(2) then
	out1 <= b;
	out2 <= "00100";
	elsif b(2) = a(2) then
	if a(1) > b(1) then
	out1 <= a;
	out2 <= "00010";
	elsif b(1)> a(1) then
	out1 <= b;
	out2 <= "00010";
	elsif b(0) = a(0) then
	if a(0) > b(0) then
	out1 <= a;
	out2 <= "00001";
	elsif b(0)> a(0) then
	out1 <= b;
	out2 <= "00001";
	elsif b(0) = a(0) then
	end if;
	end if;
	end if;
	end if;
	end if;  
	end process pro;
	end fivebit;
	
