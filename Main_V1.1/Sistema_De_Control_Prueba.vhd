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
-- Created on Fri Nov 15 16:56:06 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Sistema_De_Control_Prueba IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        Pared_Delante : IN STD_LOGIC := '0';
        Fin_Giro : IN STD_LOGIC := '0';
        FW : OUT STD_LOGIC;
        Girar : OUT STD_LOGIC;
        Izq_Der : OUT STD_LOGIC
    );
END Sistema_De_Control_Prueba;

ARCHITECTURE BEHAVIOR OF Sistema_De_Control_Prueba IS
    TYPE type_fstate IS (Derecho,Giro);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,Pared_Delante,Fin_Giro)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= Derecho;
            FW <= '0';
            Girar <= '0';
            Izq_Der <= '0';
        ELSE
            FW <= '0';
            Girar <= '0';
            Izq_Der <= '0';
            CASE fstate IS
                WHEN Derecho =>
                    IF ((Pared_Delante = '0')) THEN
                        reg_fstate <= Derecho;
                    ELSIF ((Pared_Delante = '1')) THEN
                        reg_fstate <= Giro;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= Derecho;
                    END IF;

                    FW <= '1';

                    Girar <= '0';

                    Izq_Der <= '1';
                WHEN Giro =>
                    IF ((Fin_Giro = '0')) THEN
                        reg_fstate <= Giro;
                    ELSIF ((Fin_Giro = '1')) THEN
                        reg_fstate <= Derecho;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= Giro;
                    END IF;

                    FW <= '0';

                    Girar <= '1';

                    Izq_Der <= '1';
                WHEN OTHERS => 
                    FW <= 'X';
                    Girar <= 'X';
                    Izq_Der <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;