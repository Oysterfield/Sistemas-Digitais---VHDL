library ieee;
use ieee.std_logic_1164.all;

entity Testbench1 is 
end entity;

architecture sim of Testbench1 is

    signal clk : std_logic := '0';
	 signal rst: std_logic;

begin

    clk <= not clk after 100 ns;
    rst <= '0',
           '1' after 120 ns,
           '0' after 240 ns; 
			 
end architecture;