-- Complete abaixo com o nome dos alunos que fazem esta avaliacao (sem caracteres especiais nos nomes, como acentos)
-- ALUNO 1: André Lemos Piucco
-- ALUNO 2:

library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity moduleCounterWrapperDE2 is
	generic(	module: positive := 1e6;
				generateLoad: boolean := false;
				generateEnb: boolean := true;
				generateInc: boolean := false;
				resetValue: integer := 0 );
	port(	-- control
			CLOCK_50: in std_logic;
			KEY: in std_logic_vector(3 downto 0);
			SW: in std_logic_vector(17 downto 0);
			-- data
		   LEDR: out std_logic_vector(17 downto 0)
		);
end entity;

architecture Estrutural of moduleCounterWrapperDE2 is
    component moduleCounter


	 
	 
	 
	 
-- entidade e arquitetura originais
entity moduleCounter is
	generic(	module: positive;
				generateLoad: boolean;
				generateEnb: boolean;
				generateInc: boolean;
				resetValue: integer := 0 );
	port(	-- control
			clock, reset: in std_logic;
			load, enb, inc: in std_logic;
			-- data
			input: in std_logic_vector(integer(ceil(log2(real(module))))-1 downto 0);
			output: out std_logic_vector(integer(ceil(log2(real(module))))-1 downto 0)
		);
end entity;


architecture behav0 of moduleCounter is
    -- Nao altere as duas linhas abaixo
    subtype state is unsigned(integer(ceil(log2(real(module))))-1 downto 0);
    signal nextState, currentState: state;
    -- COMPLETE AQUI, SE NECESSARIO
begin
	-- next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	-- COMPLETE
	currentState <= input when load='1' else
						 nextState when enb='1'else
						 currentState
				
	-- end-next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock, reset) is
	begin
		if reset='1' then
			currentState <= (to_unsigned(resetValue, currentState'length));
		elsif rising_edge(clock) then
			currentState <= nextState;
		end if;
	end process;
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
	output <= currentState;
    -- COMPLETE
    -- end-output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
end architecture;