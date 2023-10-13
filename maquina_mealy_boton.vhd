Library IEEE;
use IEEE.std_logic_1164.all;

entity maquina_mealy_boton is
port( X, CLK, RESET : in std_logic;
		z             : out std_logic);
end entity maquina_mealy_boton;

architecture behai of maquina_mealy_boton is
	type maquina is (s0, s1, s2, s3);
	signal PS, NS : maquina;
begin
	proceso1 : process(CLK, RESET) is
	begin
		if (RESET = '0') then
			PS <= S0;
			elsif (CLK'event and CLK = '1') then
			PS <= NS;
		end if;
	end process proceso1;
	
	proceso2 : process(PS, X) is
	begin
		case PS is
			When S0 =>
				if (X = '1') then
					z <= '1';
					NS <= S1;
					else
						z <= '0';
						NS <= S0;
				end if;
			When S1 =>
				if (X = '1') then
					z <= '1';
					NS <= S1;
					else
						z <= '1';
						NS <= S2;
				end if;
			When S2 =>
				if (X = '1') then
					z <= '0';
					NS <= S3;
					else
						z <= '1';
						NS <= S2;
				end if;
			When S3 =>
				if (X = '1') then
					z <= '0';
					NS <= S3;
					else
						z <= '0';
						NS <= S0;
				end if;
		end case;
	end process proceso2;
end architecture behai;