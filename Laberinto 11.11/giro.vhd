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

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Mon Nov 11 14:15:01 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY giro IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        Giro : IN STD_LOGIC := '0';
        IZQ_DER : IN STD_LOGIC := '0';
        fin_cont : IN STD_LOGIC := '0';
        M1I : OUT STD_LOGIC;
        M0I : OUT STD_LOGIC;
        M1D : OUT STD_LOGIC;
        M0D : OUT STD_LOGIC;
        hab_cont : OUT STD_LOGIC
    );
END giro;

ARCHITECTURE BEHAVIOR OF giro IS
    TYPE type_fstate IS (idle,giro_izq,giro_der);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,Giro,IZQ_DER,fin_cont)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= idle;
            M1I <= '0';
            M0I <= '0';
            M1D <= '0';
            M0D <= '0';
            hab_cont <= '0';
        ELSE
            M1I <= '0';
            M0I <= '0';
            M1D <= '0';
            M0D <= '0';
            hab_cont <= '0';
            CASE fstate IS
                WHEN idle =>
                    IF ((Giro = '0')) THEN
                        reg_fstate <= idle;
                    ELSIF (((Giro = '1') AND (IZQ_DER = '1'))) THEN
                        reg_fstate <= giro_izq;
                    ELSIF (((Giro = '1') AND (IZQ_DER = '0'))) THEN
                        reg_fstate <= giro_der;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= idle;
                    END IF;

                    hab_cont <= '0';

                    M0D <= '0';

                    M1D <= '0';

                    M0I <= '0';

                    M1I <= '0';
                WHEN giro_izq =>
                    IF ((fin_cont = '1')) THEN
                        reg_fstate <= idle;
                    ELSIF ((fin_cont = '0')) THEN
                        reg_fstate <= giro_izq;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= giro_izq;
                    END IF;

                    hab_cont <= '1';

                    M0D <= '1';

                    M1D <= '0';

                    M0I <= '0';

                    M1I <= '1';
                WHEN giro_der =>
                    IF ((fin_cont = '1')) THEN
                        reg_fstate <= idle;
                    ELSIF ((fin_cont = '0')) THEN
                        reg_fstate <= giro_der;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= giro_der;
                    END IF;

                    hab_cont <= '1';

                    M0D <= '0';

                    M1D <= '1';

                    M0I <= '1';

                    M1I <= '0';
                WHEN OTHERS => 
                    M1I <= 'X';
                    M0I <= 'X';
                    M1D <= 'X';
                    M0D <= 'X';
                    hab_cont <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;