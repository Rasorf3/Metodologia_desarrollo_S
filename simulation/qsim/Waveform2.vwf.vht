-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/17/2023 16:14:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          maquina_mealy_boton
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY maquina_mealy_boton_vhd_vec_tst IS
END maquina_mealy_boton_vhd_vec_tst;
ARCHITECTURE maquina_mealy_boton_arch OF maquina_mealy_boton_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT maquina_mealy_boton
	PORT (
	CLK : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	X : IN STD_LOGIC;
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : maquina_mealy_boton
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	RESET => RESET,
	X => X,
	z => z
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
	WAIT FOR 120000 ps;
	X <= '0';
	WAIT FOR 50000 ps;
	X <= '1';
	WAIT FOR 120000 ps;
	X <= '0';
	WAIT FOR 120000 ps;
	X <= '1';
	WAIT FOR 80000 ps;
	X <= '0';
	WAIT FOR 140000 ps;
	X <= '1';
	WAIT FOR 100000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;
END maquina_mealy_boton_arch;
