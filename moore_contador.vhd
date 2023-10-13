Library IEEE;
use IEEE.std_logic_1164.all;

entity moore_contador is
port(CLK, RESET : in std_logic;
     z          : out std_logic_vector(1 downto 0));
end entity moore_contador;

architecture behai of moore_contador is
	signal num : integer range 0 to 25000000 := 0;
	type maquina is(S0, S1, S2, S3);
	signal PS, NS : maquina;
	
begin
	proceso1: process(CLK, RESET) is 
		begin
			if(RESET = '0') then
				PS <= S0;
				elsif (CLK'event and CLK = '1') then
				num <= num + 1;
				PS <= NS;
					if(num = 25000000) then
						num <= 0;
					end if;		
			end if;
		end process;
	proceso2: process(PS) is
		begin
			case PS is
				When S0 => z <= "00";
					if(num = 25000000) then
						NS <= S1;
						else
							NS <= S0;
					end if;
				When S1 => z <= "01";
					if(num = 25000000) then
						NS <= S2;
						else
							NS <= S1;
					end if;
				When S2 => z <= "10";
					if(num = 25000000) then
						NS <= S3;
						else
							NS <= S2;
					end if;
				When S3 => z <= "11";
					if(num = 25000000) then
						NS <= S0;
						else
							NS <= S3;
					end if;
			end case;
		end process proceso2;
end architecture behai;
					
				 