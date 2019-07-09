/*
 Copyright (C) 2018  Intel Corporation. All rights reserved.
 Your use of Intel Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Intel Program License 
 Subscription Agreement, the Intel Quartus Prime License Agreement,
 the Intel FPGA IP License Agreement, or other applicable license
 agreement, including, without limitation, that your use is for
 the sole purpose of programming logic devices manufactured by
 Intel and sold by Intel or its authorized distributors.  Please
 refer to the applicable agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Slow Corner delays for the design using part 10M08DAF256C8G
 with speed grade 8, core voltage 1.2V, and temperature 0 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "projekt_na_vhdl-a";
DATE "07/09/2019 21:40:10";
PROGRAM "Quartus Prime";



INPUT OSC_IN;
INPUT nRST;
INPUT SLOWER;
INPUT FASTER;
INPUT INPUT[0];
INPUT INPUT[1];
INPUT INPUT[2];
INPUT INPUT[3];
INPUT INPUT[4];
INPUT INPUT[5];
INPUT INPUT[6];
INPUT INPUT[7];
OUTPUT H_SYNC;
OUTPUT V_SYNC;
OUTPUT RGB[0];
OUTPUT RGB[1];
OUTPUT RGB[2];

/*Arc definitions start here*/
pos_nRST__OSC_IN__setup:		SETUP (POSEDGE) nRST OSC_IN ;
pos_nRST__OSC_IN__hold:		HOLD (POSEDGE) nRST OSC_IN ;
pos_OSC_IN__H_SYNC__delay:		DELAY (POSEDGE) OSC_IN H_SYNC ;
pos_OSC_IN__RGB[0]__delay:		DELAY (POSEDGE) OSC_IN RGB[0] ;
pos_OSC_IN__RGB[1]__delay:		DELAY (POSEDGE) OSC_IN RGB[1] ;
pos_OSC_IN__RGB[2]__delay:		DELAY (POSEDGE) OSC_IN RGB[2] ;
pos_OSC_IN__V_SYNC__delay:		DELAY (POSEDGE) OSC_IN V_SYNC ;

ENDMODEL
