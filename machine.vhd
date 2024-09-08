library ieee;
use ieee.std_logic_1164.all;
entity machine is
    port (
        clk         : in  std_logic;
        data_in     : in  std_logic;
        reset       : in  std_logic;
        student_id  : out std_logic_vector(3 downto 0);
        current_state : out std_logic_vector(3 DOWNTO 0)
    );
end entity;

architecture fsm of machine is
    -- Build an enumerated type with 9 states for the state machine (9 states for parsing 9 digits of student id)
    type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
    -- Register to hold the current state
    signal yfsm : state_type;
begin
    process (clk, reset)
    begin
        if reset = '0' then
            yfsm <= s0;
        elsif (rising_edge(Clk)) then
            -- Determine the next state synchronously, based on the current state and the input
            case yfsm is
                when s0=>
					 
					 if data_in='1' then
					 yfsm <= s1;
					 else yfsm <= s0;
					 end if;
					 
                when s1=>
					 
					 if data_in='1' then
					 yfsm <= s2;
					 else yfsm <= s1;
					 end if;
					 
                when s2=>
					 					 
					 if data_in='1' then
					 yfsm <= s3;
					 else yfsm <= s2;
					 end if;
					 					 
                when s3=>
					 
					 if data_in='1' then
					 yfsm <= s4;
					 else yfsm <= s3;
					 end if;
					 
                when s4=>
					 
					 if data_in='1' then
					 yfsm <= s5;
					 else yfsm <= s4;
					 end if;
					 					 
                when s5=>
					 
					 if data_in='1' then
					 yfsm <= s6;
					 else yfsm <= s5;
					 end if;
					 					 
                when s6=>
					 
					 if data_in='1' then
					 yfsm <= s7;
					 else yfsm <= s6;
					 end if;
					 					 
                when s7=>
					 
					 if data_in='1' then
					 yfsm <= s8;
					 else yfsm <= s7;
					 end if;
					 					 
                when s8=>
					 
					 if data_in='1' then
					 yfsm <= s0;
					 else yfsm <= s8;
					 end if;

            end case;
				end if;
				end process;

    -- Implement the Moore or Mealy logic here
    process (yfsm, data_in) -- data_in if reqd only
    begin
        case yfsm is
            when s0=> --s5 points to s0
				student_id <= "0101"; --5
				current_state <= "0000";  -- current state s0
				
            when s1=> --s1 points to s8
				student_id <= "0000"; --0
				current_state <= "0001"; -- current state s1
				
            when s2=> --s8 points to s1
				student_id <= "0001"; --1
				current_state <= "0010"; -- current state s2
				
            when s3=> --s1 points to s6
				student_id <= "0001"; --1
				current_state <= "0011"; -- current state s3
				
            when s4=> --s6 points to s2
				student_id <= "1000"; --8
				current_state <= "0100"; -- current state s4

            when s5=> --s2 points to s4
				student_id <= "0111"; --7
				current_state <= "0101"; -- current state s5
				
            when s6=> --s4 points to s7
				student_id <= "1000"; --8
				current_state <= "0110"; -- current state s6
	
	         when s7=> --s7 points to s3
				student_id <= "0011"; --3
				current_state <= "0111"; -- current state s7

            when s8=> --s3 points to s5
				student_id <= "0100"; --4
				current_state <= "1000"; -- current state s8
				
         end case;
			end process;
			end architecture;
