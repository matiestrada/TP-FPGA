-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/07/2024 18:43:03"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	comparador IS
    PORT (
	CH0 : IN std_logic_vector(11 DOWNTO 0);
	CH1 : IN std_logic_vector(11 DOWNTO 0);
	A : OUT std_logic;
	B : OUT std_logic
	);
END comparador;

-- Design Ports Information
-- A	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[8]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[9]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[10]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[11]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[7]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[9]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[11]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[6]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH1[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CH0 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CH1 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \CH0[2]~input_o\ : std_logic;
SIGNAL \CH0[1]~input_o\ : std_logic;
SIGNAL \CH0[0]~input_o\ : std_logic;
SIGNAL \CH1[2]~input_o\ : std_logic;
SIGNAL \CH1[1]~input_o\ : std_logic;
SIGNAL \CH1[0]~input_o\ : std_logic;
SIGNAL \CH0[11]~input_o\ : std_logic;
SIGNAL \CH0[4]~input_o\ : std_logic;
SIGNAL \CH1[8]~input_o\ : std_logic;
SIGNAL \CH1[4]~input_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \CH0[8]~input_o\ : std_logic;
SIGNAL \CH0[10]~input_o\ : std_logic;
SIGNAL \CH0[9]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \CH0[7]~input_o\ : std_logic;
SIGNAL \CH0[3]~input_o\ : std_logic;
SIGNAL \CH0[6]~input_o\ : std_logic;
SIGNAL \CH0[5]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \CH1[11]~input_o\ : std_logic;
SIGNAL \CH1[9]~input_o\ : std_logic;
SIGNAL \CH1[10]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \CH1[7]~input_o\ : std_logic;
SIGNAL \CH1[3]~input_o\ : std_logic;
SIGNAL \CH1[6]~input_o\ : std_logic;
SIGNAL \CH1[5]~input_o\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;

BEGIN

ww_CH0 <= CH0;
ww_CH1 <= CH1;
A <= ww_A;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X1_Y0_N8
\CH0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(11),
	o => \CH0[11]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\CH0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(4),
	o => \CH0[4]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\CH1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(8),
	o => \CH1[8]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\CH1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(4),
	o => \CH1[4]~input_o\);

-- Location: IOOBUF_X0_Y5_N23
\A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOIBUF_X3_Y0_N1
\CH0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(8),
	o => \CH0[8]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\CH0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(10),
	o => \CH0[10]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\CH0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(9),
	o => \CH0[9]~input_o\);

-- Location: LCCOMB_X2_Y2_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\CH0[11]~input_o\ & (!\CH0[8]~input_o\ & (!\CH0[10]~input_o\ & !\CH0[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CH0[11]~input_o\,
	datab => \CH0[8]~input_o\,
	datac => \CH0[10]~input_o\,
	datad => \CH0[9]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\CH0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(7),
	o => \CH0[7]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\CH0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(3),
	o => \CH0[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\CH0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(6),
	o => \CH0[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\CH0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(5),
	o => \CH0[5]~input_o\);

-- Location: LCCOMB_X2_Y2_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!\CH0[4]~input_o\ & (!\CH0[3]~input_o\ & !\CH0[5]~input_o\))) # (!\CH0[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CH0[4]~input_o\,
	datab => \CH0[3]~input_o\,
	datac => \CH0[6]~input_o\,
	datad => \CH0[5]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y2_N28
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # (!\CH0[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \CH0[7]~input_o\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X53_Y20_N15
\CH1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(11),
	o => \CH1[11]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\CH1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(9),
	o => \CH1[9]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\CH1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(10),
	o => \CH1[10]~input_o\);

-- Location: LCCOMB_X52_Y16_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\CH1[8]~input_o\ & (!\CH1[11]~input_o\ & (!\CH1[9]~input_o\ & !\CH1[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CH1[8]~input_o\,
	datab => \CH1[11]~input_o\,
	datac => \CH1[9]~input_o\,
	datad => \CH1[10]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: IOIBUF_X27_Y0_N15
\CH1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(7),
	o => \CH1[7]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\CH1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(3),
	o => \CH1[3]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\CH1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(6),
	o => \CH1[6]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\CH1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(5),
	o => \CH1[5]~input_o\);

-- Location: LCCOMB_X52_Y16_N2
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ((!\CH1[4]~input_o\ & (!\CH1[3]~input_o\ & !\CH1[5]~input_o\))) # (!\CH1[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CH1[4]~input_o\,
	datab => \CH1[3]~input_o\,
	datac => \CH1[6]~input_o\,
	datad => \CH1[5]~input_o\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X52_Y16_N20
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~0_combout\ & ((\LessThan1~1_combout\) # (!\CH1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \CH1[7]~input_o\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: IOIBUF_X0_Y11_N8
\CH0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(2),
	o => \CH0[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\CH0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(1),
	o => \CH0[1]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\CH0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH0(0),
	o => \CH0[0]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\CH1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(2),
	o => \CH1[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\CH1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(1),
	o => \CH1[1]~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\CH1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CH1(0),
	o => \CH1[0]~input_o\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;
END structure;


