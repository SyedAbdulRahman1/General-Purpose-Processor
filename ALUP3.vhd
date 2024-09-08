library ieee;
USE ieee.STD_LOGIC_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;
USE ieee.NUMERIC_STD.ALL;

ENTITY ALUP3 IS
PORT(Clk:IN STD_LOGIC;
A,B : IN UNSIGNED(7 DOWNTO 0);
student_id : IN UNSIGNED(3 DOWNTO 0);
OP : IN UNSIGNED(15 DOWNTO 0);
Neg : OUT STD_LOGIC;
R1: OUT UNSIGNED(3 DOWNTO 0);
R2: OUT UNSIGNED(3 DOWNTO 0));
END ALUP3;

ARCHITECTURE calculation of ALUP3 IS
SIGNAL Reg2,Result : UNSIGNED(7 DOWNTO 0) :=(OTHERS=> '0');
signal Reg4, Reg5 : unsigned(3 downto 0); --using r4 and r5 to hold upper and lower 4 bits of A
BEGIN	

Reg2 <= B;
Reg4 <= A(7 downto 4); -- Upper 4 bits of A 
Reg5 <= A (3 downto 0); -- Lower 4 bits of A
PROCESS(Clk,OP)
BEGIN	
IF(clk'EVENT AND clk = '1') THEN 
CASE OP IS

WHEN "0000000000000001" => 
		IF (Reg4 < student_id OR Reg5 < student_id) THEN
                        Result <= "00000001"; -- Y
                    ELSE 
                        Result <= "00000000"; -- N
                    END IF;

WHEN "0000000000000010" => 

		IF (Reg4 < student_id OR Reg5 < student_id) THEN
                        Result <= "00000001"; -- Y
                    ELSE 
                        Result <= "00000000"; -- N
                    END IF;
WHEN "0000000000000100" => 

		IF (Reg4 < student_id OR Reg5 < student_id) THEN
                        Result <= "00000001"; -- Y
                    ELSE 
                        Result <= "00000000"; -- N
                    END IF;

WHEN "0000000000001000" => 

		IF (Reg4 < student_id OR Reg5 < student_id) THEN
                        Result <= "00000001"; -- Y
                    ELSE 
                        Result <= "00000000"; -- N
                    END IF;
						  
WHEN "0000000000010000" => 

		IF (Reg4 < student_id OR Reg5 < student_id) THEN
                        Result <= "00000001"; -- Y
                    ELSE 
                        Result <= "00000000"; -- N
                    END IF;
						  
WHEN "0000000000100000" => 

		IF (Reg4 < student_id OR Reg5 < student_id) THEN
                        Result <= "00000001"; -- Y
                    ELSE 
                        Result <= "00000000"; -- N
                    END IF;

WHEN "0000000001000000" => 

		IF (Reg4 < student_id OR Reg5 < student_id) THEN
                        Result <= "00000001"; -- Y
                    ELSE 
                        Result <= "00000000"; -- N
                    END IF;

WHEN "0000000010000000" => 

		IF (Reg4 < student_id OR Reg5 < student_id) THEN
                        Result <= "00000001"; -- Y
                    ELSE 
                        Result <= "00000000"; -- N
                    END IF;

WHEN "0000000100000000" => 

		IF (Reg4 < student_id OR Reg5 < student_id) THEN
                        Result <= "00000001"; -- Y
                    ELSE 
                        Result <= "00000000"; -- N
                    END IF;

WHEN OTHERS => 
Result<= "--------";

END CASE;
END IF;
END PROCESS;

R1 <= Result(3 DOWNTO 0);
R2 <= Result(7 DOWNTO 4);
END calculation;