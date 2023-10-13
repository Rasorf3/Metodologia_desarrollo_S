Library IEEE;
use IEEE.std_logic_1164.all;

entity maquina_boton is
port(q1, q0, clk, reset, x: in std_logic;
     z                    : out std_logic);
end entity maquina_boton;

architecture estruc of maquina_boton is
signal d1, d0,z_aux : std_logic;
begin
	d0 <= x;
	d1 <= (not(x) and not(q1)) or (q1 and not(q0)) or (x and q1);
	
	z <= x and not(q0);

	ff_d0: entity work.FF_D port map(clk, reset, d0, open);
	ff_d1: entity work.FF_D port map(clk, reset, d1, open);

end architecture estruc;
	
		
	