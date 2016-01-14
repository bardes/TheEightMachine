EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:lm386_bypass
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C2
U 1 1 5669CD36
P 1600 1200
F 0 "C2" H 1625 1300 50  0000 L CNN
F 1 "50nF" H 1625 1100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 1638 1050 50  0001 C CNN
F 3 "" H 1600 1200 50  0000 C CNN
	1    1600 1200
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5669D053
P 5050 2600
F 0 "Y1" H 5050 2750 50  0000 C CNN
F 1 "16Mhz" H 5050 2450 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 5050 2600 50  0001 C CNN
F 3 "" H 5050 2600 50  0000 C CNN
	1    5050 2600
	0    1    -1   0   
$EndComp
$Comp
L C C4
U 1 1 5669D0AA
P 5200 2950
F 0 "C4" H 5225 3050 50  0000 L CNN
F 1 "22pF" H 5225 2850 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 5238 2800 50  0001 C CNN
F 3 "" H 5200 2950 50  0000 C CNN
	1    5200 2950
	0    1    -1   0   
$EndComp
$Comp
L R R5
U 1 1 5669D10F
P 4600 2900
F 0 "R5" V 4680 2900 50  0000 C CNN
F 1 "10K" V 4600 2900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4530 2900 50  0001 C CNN
F 3 "" H 4600 2900 50  0000 C CNN
	1    4600 2900
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5669D1A6
P 4600 2750
F 0 "#PWR01" H 4600 2600 50  0001 C CNN
F 1 "VCC" H 4600 2900 50  0000 C CNN
F 2 "" H 4600 2750 50  0000 C CNN
F 3 "" H 4600 2750 50  0000 C CNN
	1    4600 2750
	-1   0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5669D1F4
P 5200 2300
F 0 "C3" H 5225 2400 50  0000 L CNN
F 1 "22pF" H 5225 2200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 5238 2150 50  0001 C CNN
F 3 "" H 5200 2300 50  0000 C CNN
	1    5200 2300
	0    1    -1   0   
$EndComp
Wire Wire Line
	5350 2300 5450 2300
Wire Wire Line
	5450 2300 5450 2950
Wire Wire Line
	5450 2950 5350 2950
$Comp
L GND #PWR02
U 1 1 5669D455
P 5450 2600
F 0 "#PWR02" H 5450 2350 50  0001 C CNN
F 1 "GND" H 5450 2450 50  0000 C CNN
F 2 "" H 5450 2600 50  0000 C CNN
F 3 "" H 5450 2600 50  0000 C CNN
	1    5450 2600
	0    -1   1    0   
$EndComp
Connection ~ 5450 2600
Wire Wire Line
	5050 2300 5050 2450
Wire Wire Line
	5050 2750 5050 2950
Wire Wire Line
	5050 2300 4050 2300
Wire Wire Line
	5050 2950 4800 2950
Wire Wire Line
	4800 2950 4800 2400
Wire Wire Line
	4800 2400 4050 2400
$Comp
L CONN_02X03 P6
U 1 1 5669D6EB
P 10100 1250
F 0 "P6" H 10100 1450 50  0000 C CNN
F 1 "ISP" H 10100 1050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 10100 50  50  0001 C CNN
F 3 "" H 10100 50  50  0000 C CNN
	1    10100 1250
	1    0    0    -1  
$EndComp
Text GLabel 9850 1150 0    60   Input ~ 0
MISO
$Comp
L VCC #PWR03
U 1 1 5669D787
P 10350 1150
F 0 "#PWR03" H 10350 1000 50  0001 C CNN
F 1 "VCC" H 10350 1300 50  0000 C CNN
F 2 "" H 10350 1150 50  0000 C CNN
F 3 "" H 10350 1150 50  0000 C CNN
	1    10350 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5669D7DF
P 10350 1350
F 0 "#PWR04" H 10350 1100 50  0001 C CNN
F 1 "GND" H 10350 1200 50  0000 C CNN
F 2 "" H 10350 1350 50  0000 C CNN
F 3 "" H 10350 1350 50  0000 C CNN
	1    10350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3150 4700 3150
Text GLabel 4700 3150 2    60   Input ~ 0
Reset
Text GLabel 9850 1350 0    60   Input ~ 0
Reset
Text GLabel 9850 1250 0    60   Input ~ 0
SCK
Text GLabel 10350 1250 2    60   Input ~ 0
MOSI
Wire Notes Line
	9450 900  9450 1600
Wire Notes Line
	9450 1600 10750 1600
Wire Notes Line
	10750 1600 10750 900 
Wire Notes Line
	10750 900  9450 900 
Text Notes 9550 850  0    60   ~ 0
ISP Programming Header
$Comp
L ULN2003 U1
U 1 1 5669DAFE
P 2600 6300
F 0 "U1" H 2600 6400 50  0000 C CNN
F 1 "ULN2003" H 2600 6200 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 2600 6300 50  0001 C CNN
F 3 "" H 2600 6300 50  0000 C CNN
	1    2600 6300
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P1
U 1 1 5669DB67
P 4000 6150
F 0 "P1" H 4000 6450 50  0000 C CNN
F 1 "DISP" H 4000 5850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 4000 4950 50  0001 C CNN
F 3 "" H 4000 4950 50  0000 C CNN
	1    4000 6150
	1    0    0    -1  
$EndComp
Text Label 3250 5900 0    60   ~ 0
D1
Text Label 3250 6000 0    60   ~ 0
D2
Text Label 3250 6100 0    60   ~ 0
D3
Text Label 3250 6200 0    60   ~ 0
D4
Text Label 3250 6300 0    60   ~ 0
D5
Text Label 3250 6400 0    60   ~ 0
D6
Text Label 3250 6500 0    60   ~ 0
D7
Text Label 3750 5950 2    60   ~ 0
D1
Text Label 3750 6050 2    60   ~ 0
D2
Text Label 4250 6050 0    60   ~ 0
D3
Text Label 4250 6150 0    60   ~ 0
D4
Text Label 3750 6250 2    60   ~ 0
D5
Text Label 4250 6250 0    60   ~ 0
D6
Text Label 3750 6350 2    60   ~ 0
D7
Text Label 3750 6150 2    60   ~ 0
_DP
$Comp
L R R1
U 1 1 5669E07F
P 2600 5650
F 0 "R1" V 2680 5650 50  0000 C CNN
F 1 "220" V 2600 5650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2530 5650 50  0001 C CNN
F 3 "" H 2600 5650 50  0000 C CNN
	1    2600 5650
	0    1    1    0   
$EndComp
NoConn ~ 3250 6700
Text Label 3250 5650 0    60   ~ 0
_DP
Wire Wire Line
	1950 5650 2450 5650
Wire Wire Line
	2750 5650 3250 5650
$Comp
L R R2
U 1 1 5669E585
P 8000 3450
F 0 "R2" V 8080 3450 50  0000 C CNN
F 1 "10K" V 8000 3450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7930 3450 50  0001 C CNN
F 3 "" H 8000 3450 50  0000 C CNN
	1    8000 3450
	0    1    1    0   
$EndComp
$Comp
L C C6
U 1 1 5669E5E7
P 8200 3750
F 0 "C6" H 8225 3850 50  0000 L CNN
F 1 ".1uF" H 8225 3650 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 8238 3600 50  0001 C CNN
F 3 "" H 8200 3750 50  0000 C CNN
	1    8200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3450 8400 3450
Wire Wire Line
	8200 3450 8200 3600
$Comp
L GND #PWR05
U 1 1 5669E695
P 8200 3900
F 0 "#PWR05" H 8200 3650 50  0001 C CNN
F 1 "GND" H 8200 3750 50  0000 C CNN
F 2 "" H 8200 3900 50  0000 C CNN
F 3 "" H 8200 3900 50  0000 C CNN
	1    8200 3900
	1    0    0    -1  
$EndComp
Connection ~ 8200 3450
Text GLabel 8400 3450 2    60   Input ~ 0
Audio
Wire Notes Line
	4500 5450 4500 7100
Wire Notes Line
	4500 7100 1500 7100
Wire Notes Line
	1500 7100 1500 5450
Wire Notes Line
	1500 5450 4500 5450
Text Notes 2750 5350 0    60   ~ 0
Main Display
Text Notes 7900 3250 0    60   ~ 0
Audio Low Pass
Wire Notes Line
	7500 3300 8850 3300
Wire Notes Line
	8850 3300 8850 4150
Wire Notes Line
	8850 4150 7500 4150
Wire Notes Line
	7500 4150 7500 3300
$Comp
L CONN_02X05 P4
U 1 1 5669ED4B
P 8300 2550
F 0 "P4" H 8300 2850 50  0000 C CNN
F 1 "SDISP" H 8300 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 8300 1350 50  0001 C CNN
F 3 "" H 8300 1350 50  0000 C CNN
	1    8300 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5669F143
P 7650 2650
F 0 "#PWR06" H 7650 2400 50  0001 C CNN
F 1 "GND" H 7650 2500 50  0000 C CNN
F 2 "" H 7650 2650 50  0000 C CNN
F 3 "" H 7650 2650 50  0000 C CNN
	1    7650 2650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 5669F177
P 8050 2350
F 0 "#PWR07" H 8050 2200 50  0001 C CNN
F 1 "VCC" H 8050 2500 50  0000 C CNN
F 2 "" H 8050 2350 50  0000 C CNN
F 3 "" H 8050 2350 50  0000 C CNN
	1    8050 2350
	1    0    0    -1  
$EndComp
Text GLabel 8050 2750 0    60   Input ~ 0
Data
Text GLabel 8050 2450 0    60   Input ~ 0
Latch
Wire Notes Line
	7450 2150 8900 2150
Wire Notes Line
	8900 2150 8900 2900
Wire Notes Line
	8900 2900 7450 2900
Wire Notes Line
	7450 2900 7450 2150
Text Notes 7900 2100 0    60   ~ 0
Side Display
$Comp
L CONN_01X03 P3
U 1 1 5669F3DA
P 7700 5400
F 0 "P3" H 7700 5600 50  0000 C CNN
F 1 "POT" V 7800 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7700 5400 50  0001 C CNN
F 3 "" H 7700 5400 50  0000 C CNN
	1    7700 5400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P7
U 1 1 5669F4D5
P 9650 2750
F 0 "P7" H 9650 2900 50  0000 C CNN
F 1 "BTN" V 9750 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 9650 2750 50  0001 C CNN
F 3 "" H 9650 2750 50  0000 C CNN
	1    9650 2750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5669F55B
P 7900 5500
F 0 "#PWR08" H 7900 5250 50  0001 C CNN
F 1 "GND" H 7900 5350 50  0000 C CNN
F 2 "" H 7900 5500 50  0000 C CNN
F 3 "" H 7900 5500 50  0000 C CNN
	1    7900 5500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5669F595
P 10250 3050
F 0 "#PWR09" H 10250 2800 50  0001 C CNN
F 1 "GND" H 10250 2900 50  0000 C CNN
F 2 "" H 10250 3050 50  0000 C CNN
F 3 "" H 10250 3050 50  0000 C CNN
	1    10250 3050
	1    0    0    -1  
$EndComp
Text GLabel 7900 5000 1    60   Input ~ 0
Audio
Wire Wire Line
	7650 2650 8050 2650
$Comp
L R R4
U 1 1 5669FB44
P 10250 2500
F 0 "R4" V 10330 2500 50  0000 C CNN
F 1 "10K" V 10250 2500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 10180 2500 50  0001 C CNN
F 3 "" H 10250 2500 50  0000 C CNN
	1    10250 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 5669FBFF
P 10250 2300
F 0 "#PWR010" H 10250 2150 50  0001 C CNN
F 1 "VCC" H 10250 2450 50  0000 C CNN
F 2 "" H 10250 2300 50  0000 C CNN
F 3 "" H 10250 2300 50  0000 C CNN
	1    10250 2300
	1    0    0    -1  
$EndComp
Text GLabel 10550 2700 2    60   Input ~ 0
BTN
Wire Notes Line
	9500 2100 9500 3300
Wire Notes Line
	9500 3300 10800 3300
Wire Notes Line
	10800 3300 10800 2100
Wire Notes Line
	10800 2100 9500 2100
Text Notes 10000 2050 0    60   ~ 0
Button
$Comp
L GND #PWR011
U 1 1 5669FEF9
P 8300 5200
F 0 "#PWR011" H 8300 4950 50  0001 C CNN
F 1 "GND" H 8300 5050 50  0000 C CNN
F 2 "" H 8300 5200 50  0000 C CNN
F 3 "" H 8300 5200 50  0000 C CNN
	1    8300 5200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5669FF54
P 8600 5400
F 0 "#PWR012" H 8600 5150 50  0001 C CNN
F 1 "GND" H 8600 5250 50  0000 C CNN
F 2 "" H 8600 5400 50  0000 C CNN
F 3 "" H 8600 5400 50  0000 C CNN
	1    8600 5400
	-1   0    0    -1  
$EndComp
$Comp
L +9V #PWR013
U 1 1 5669FF89
P 8600 4800
F 0 "#PWR013" H 8600 4650 50  0001 C CNN
F 1 "+9V" H 8600 4940 50  0000 C CNN
F 2 "" H 8600 4800 50  0000 C CNN
F 3 "" H 8600 4800 50  0000 C CNN
	1    8600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5850 8600 5600
Wire Wire Line
	8600 5600 8700 5600
Wire Wire Line
	8700 5600 8700 5400
Wire Wire Line
	8800 5400 8800 5600
Wire Wire Line
	8800 5600 8900 5600
Wire Wire Line
	8900 5600 8900 5850
$Comp
L CP1 C7
U 1 1 566A02DA
P 8750 5850
F 0 "C7" V 8900 5800 50  0000 L CNN
F 1 "10uF" V 8600 5750 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D10_L16_P5" H 8750 5850 50  0001 C CNN
F 3 "" H 8750 5850 50  0000 C CNN
	1    8750 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 5100 9450 5100
Wire Wire Line
	9750 5100 9850 5100
$Comp
L R R3
U 1 1 566A06C9
P 9150 5550
F 0 "R3" V 9230 5550 50  0000 C CNN
F 1 "10" V 9150 5550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 9080 5550 50  0001 C CNN
F 3 "" H 9150 5550 50  0000 C CNN
	1    9150 5550
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 566A077F
P 9150 5250
F 0 "C9" H 9175 5350 50  0000 L CNN
F 1 "50nF" H 9175 5150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 9188 5100 50  0001 C CNN
F 3 "" H 9150 5250 50  0000 C CNN
	1    9150 5250
	1    0    0    -1  
$EndComp
Connection ~ 9150 5100
$Comp
L GND #PWR014
U 1 1 566A087F
P 9150 5700
F 0 "#PWR014" H 9150 5450 50  0001 C CNN
F 1 "GND" H 9150 5550 50  0000 C CNN
F 2 "" H 9150 5700 50  0000 C CNN
F 3 "" H 9150 5700 50  0000 C CNN
	1    9150 5700
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 566A08BA
P 10050 5150
F 0 "P5" H 10050 5300 50  0000 C CNN
F 1 "SPK" V 10150 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 10050 5150 50  0001 C CNN
F 3 "" H 10050 5150 50  0000 C CNN
	1    10050 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 566A09E1
P 9850 5200
F 0 "#PWR015" H 9850 4950 50  0001 C CNN
F 1 "GND" H 9850 5050 50  0000 C CNN
F 2 "" H 9850 5200 50  0000 C CNN
F 3 "" H 9850 5200 50  0000 C CNN
	1    9850 5200
	-1   0    0    -1  
$EndComp
$Comp
L CP1 C10
U 1 1 566A0C15
P 9600 5100
F 0 "C10" V 9750 5050 50  0000 L CNN
F 1 "250uF" V 9450 5000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D10_L16_P5" H 9600 5100 50  0001 C CNN
F 3 "" H 9600 5100 50  0000 C CNN
	1    9600 5100
	0    -1   -1   0   
$EndComp
Wire Notes Line
	7500 4550 7500 6100
Wire Notes Line
	7500 6100 10250 6100
Wire Notes Line
	10250 6100 10250 4550
Wire Notes Line
	10250 4550 7500 4550
Text Notes 8700 4500 0    60   ~ 0
Audio Amp
$Comp
L +9V #PWR016
U 1 1 566A15B2
P 7950 1150
F 0 "#PWR016" H 7950 1000 50  0001 C CNN
F 1 "+9V" H 7950 1290 50  0000 C CNN
F 2 "" H 7950 1150 50  0000 C CNN
F 3 "" H 7950 1150 50  0000 C CNN
	1    7950 1150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 566A15FA
P 8900 1150
F 0 "#PWR017" H 8900 1000 50  0001 C CNN
F 1 "VCC" H 8900 1300 50  0000 C CNN
F 2 "" H 8900 1150 50  0000 C CNN
F 3 "" H 8900 1150 50  0000 C CNN
	1    8900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1150 8900 1150
$Comp
L CP1 C8
U 1 1 566A1837
P 8900 1300
F 0 "C8" H 8925 1400 50  0000 L CNN
F 1 "10uF" H 8925 1200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D10_L16_P5" H 8900 1300 50  0001 C CNN
F 3 "" H 8900 1300 50  0000 C CNN
	1    8900 1300
	1    0    0    -1  
$EndComp
$Comp
L CP1 C5
U 1 1 566A196F
P 7900 5150
F 0 "C5" H 7925 5250 50  0000 L CNN
F 1 "10uF" H 7925 5050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D10_L16_P5" H 7900 5150 50  0001 C CNN
F 3 "" H 7900 5150 50  0000 C CNN
	1    7900 5150
	1    0    0    -1  
$EndComp
$Comp
L LM386_Bypass U3
U 1 1 5669F363
P 8600 5100
F 0 "U3" H 8750 5400 50  0000 L CNN
F 1 "LM386" H 8750 5300 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8700 5200 50  0001 C CNN
F 3 "" H 8800 5300 50  0000 C CNN
	1    8600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5000 8150 5000
Wire Wire Line
	8150 5000 8150 5400
Wire Wire Line
	8150 5400 7900 5400
$Comp
L GND #PWR018
U 1 1 566A1E2C
P 8350 1450
F 0 "#PWR018" H 8350 1200 50  0001 C CNN
F 1 "GND" H 8350 1300 50  0000 C CNN
F 2 "" H 8350 1450 50  0000 C CNN
F 3 "" H 8350 1450 50  0000 C CNN
	1    8350 1450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 566A1E71
P 7550 1400
F 0 "P2" H 7550 1550 50  0000 C CNN
F 1 "PWR" V 7650 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 7550 1400 50  0001 C CNN
F 3 "" H 7550 1400 50  0000 C CNN
	1    7550 1400
	0    1    1    0   
$EndComp
$Comp
L +9V #PWR019
U 1 1 566A1FCD
P 7500 1100
F 0 "#PWR019" H 7500 950 50  0001 C CNN
F 1 "+9V" H 7500 1240 50  0000 C CNN
F 2 "" H 7500 1100 50  0000 C CNN
F 3 "" H 7500 1100 50  0000 C CNN
	1    7500 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 566A202F
P 7600 1200
F 0 "#PWR020" H 7600 950 50  0001 C CNN
F 1 "GND" H 7600 1050 50  0000 C CNN
F 2 "" H 7600 1200 50  0000 C CNN
F 3 "" H 7600 1200 50  0000 C CNN
	1    7600 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7500 1100 7500 1200
$Comp
L +9V #PWR021
U 1 1 566A2389
P 4250 5950
F 0 "#PWR021" H 4250 5800 50  0001 C CNN
F 1 "+9V" H 4250 6090 50  0000 C CNN
F 2 "" H 4250 5950 50  0000 C CNN
F 3 "" H 4250 5950 50  0000 C CNN
	1    4250 5950
	-1   0    0    -1  
$EndComp
$Comp
L +9V #PWR022
U 1 1 566A23F2
P 4250 6350
F 0 "#PWR022" H 4250 6200 50  0001 C CNN
F 1 "+9V" H 4250 6490 50  0000 C CNN
F 2 "" H 4250 6350 50  0000 C CNN
F 3 "" H 4250 6350 50  0000 C CNN
	1    4250 6350
	1    0    0    1   
$EndComp
Wire Notes Line
	7350 850  7350 1650
Wire Notes Line
	7350 1650 9150 1650
Wire Notes Line
	9150 1650 9150 850 
Wire Notes Line
	9150 850  7350 850 
Text Notes 8150 750  0    60   ~ 0
Power
Wire Wire Line
	4600 3050 4600 3150
Connection ~ 4600 3150
Text GLabel 8050 2550 0    60   Input ~ 0
SCK
Text GLabel 4050 2200 2    60   Input ~ 0
SCK
Text GLabel 4050 2100 2    60   Input ~ 0
MISO
Text GLabel 4050 2000 2    60   Input ~ 0
MOSI
$Comp
L GND #PWR023
U 1 1 566A86C4
P 1600 1050
F 0 "#PWR023" H 1600 800 50  0001 C CNN
F 1 "GND" H 1600 900 50  0000 C CNN
F 2 "" H 1600 1050 50  0000 C CNN
F 3 "" H 1600 1050 50  0000 C CNN
	1    1600 1050
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 566A87BC
P 1600 2000
F 0 "C1" H 1625 2100 50  0000 L CNN
F 1 "50nF" H 1625 1900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 1638 1850 50  0001 C CNN
F 3 "" H 1600 2000 50  0000 C CNN
	1    1600 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 566A87C3
P 1600 1850
F 0 "#PWR024" H 1600 1600 50  0001 C CNN
F 1 "GND" H 1600 1700 50  0000 C CNN
F 2 "" H 1600 1850 50  0000 C CNN
F 3 "" H 1600 1850 50  0000 C CNN
	1    1600 1850
	-1   0    0    1   
$EndComp
NoConn ~ 2150 2300
NoConn ~ 2150 3050
NoConn ~ 2150 3150
Text GLabel 4050 2550 2    60   Input ~ 0
SD0
Text GLabel 4050 2650 2    60   Input ~ 0
SD1
Text GLabel 4050 2750 2    60   Input ~ 0
SD2
Text GLabel 4050 2850 2    60   Input ~ 0
SD3
Text GLabel 4050 2950 2    60   Input ~ 0
SD4
Text GLabel 8550 2350 2    60   Input ~ 0
SD0
Text GLabel 8550 2450 2    60   Input ~ 0
SD1
Text GLabel 8550 2550 2    60   Input ~ 0
SD2
Text GLabel 8550 2650 2    60   Input ~ 0
SD3
Text GLabel 8550 2750 2    60   Input ~ 0
SD4
Text GLabel 4050 3050 2    60   Input ~ 0
DP
Text GLabel 4050 3300 2    60   Input ~ 0
A
Text GLabel 4050 3500 2    60   Input ~ 0
B
Text GLabel 4050 3600 2    60   Input ~ 0
C
Text GLabel 4050 3700 2    60   Input ~ 0
D
Text GLabel 4050 3800 2    60   Input ~ 0
E
Text GLabel 4050 3900 2    60   Input ~ 0
F
Text GLabel 4050 4000 2    60   Input ~ 0
G
Text GLabel 4050 3400 2    60   Input ~ 0
Data
Text GLabel 4050 1800 2    60   Input ~ 0
PWM
Text GLabel 7850 3450 0    60   Input ~ 0
PWM
Text GLabel 4050 1700 2    60   Input ~ 0
BTN
Text GLabel 4050 1900 2    60   Input ~ 0
Latch
Text GLabel 1950 5650 0    60   Input ~ 0
DP
Text GLabel 1950 6500 0    60   Input ~ 0
A
Text GLabel 1950 6400 0    60   Input ~ 0
B
Text GLabel 1950 6300 0    60   Input ~ 0
C
Text GLabel 1950 6200 0    60   Input ~ 0
D
Text GLabel 1950 6100 0    60   Input ~ 0
E
Text GLabel 1950 6000 0    60   Input ~ 0
F
Text GLabel 1950 5900 0    60   Input ~ 0
G
Connection ~ 8900 1150
$Comp
L GND #PWR025
U 1 1 566AF7BD
P 8900 1450
F 0 "#PWR025" H 8900 1200 50  0001 C CNN
F 1 "GND" H 8900 1300 50  0000 C CNN
F 2 "" H 8900 1450 50  0000 C CNN
F 3 "" H 8900 1450 50  0000 C CNN
	1    8900 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 566B2E85
P 2000 3800
F 0 "#PWR026" H 2000 3550 50  0001 C CNN
F 1 "GND" H 2000 3650 50  0000 C CNN
F 2 "" H 2000 3800 50  0000 C CNN
F 3 "" H 2000 3800 50  0000 C CNN
	1    2000 3800
	0    1    1    0   
$EndComp
$Comp
L C C11
U 1 1 566B433E
P 10250 2900
F 0 "C11" H 10100 3000 50  0000 L CNN
F 1 ".1uF" H 10100 2800 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 10288 2750 50  0001 C CNN
F 3 "" H 10250 2900 50  0000 C CNN
	1    10250 2900
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR027
U 1 1 566B82B2
P 1600 2150
F 0 "#PWR027" H 1600 2000 50  0001 C CNN
F 1 "VCC" H 1600 2300 50  0000 C CNN
F 2 "" H 1600 2150 50  0000 C CNN
F 3 "" H 1600 2150 50  0000 C CNN
	1    1600 2150
	-1   0    0    1   
$EndComp
NoConn ~ 2950 2800
$Comp
L ATMEGA328-A IC1
U 1 1 566DB262
P 3050 2800
F 0 "IC1" H 2300 4050 50  0000 L BNN
F 1 "ATMEGA328-A" H 3450 1400 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 3050 2800 50  0000 C CIN
F 3 "" H 3050 2800 50  0000 C CNN
	1    3050 2800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR028
U 1 1 566DD532
P 1600 1350
F 0 "#PWR028" H 1600 1200 50  0001 C CNN
F 1 "VCC" H 1600 1500 50  0000 C CNN
F 2 "" H 1600 1350 50  0000 C CNN
F 3 "" H 1600 1350 50  0000 C CNN
	1    1600 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 1350 1950 1350
Wire Wire Line
	1950 1800 1950 2150
Wire Wire Line
	1950 1800 2150 1800
Wire Wire Line
	1950 2150 1600 2150
Wire Wire Line
	1950 1350 1950 1700
Wire Wire Line
	1950 1700 2150 1700
Wire Wire Line
	2150 2000 1950 2000
Connection ~ 1950 2000
Wire Wire Line
	2000 3800 2150 3800
Wire Wire Line
	2100 3800 2100 4000
Wire Wire Line
	2100 4000 2150 4000
Connection ~ 2100 3800
Wire Wire Line
	2150 3900 2100 3900
Connection ~ 2100 3900
$Comp
L GND #PWR029
U 1 1 56721B97
P 9350 4750
F 0 "#PWR029" H 9350 4500 50  0001 C CNN
F 1 "GND" H 9350 4600 50  0000 C CNN
F 2 "" H 9350 4750 50  0000 C CNN
F 3 "" H 9350 4750 50  0000 C CNN
	1    9350 4750
	0    -1   1    0   
$EndComp
$Comp
L CP1 C12
U 1 1 56721ADA
P 9200 4750
F 0 "C12" V 9350 4700 50  0000 L CNN
F 1 "10uF" V 9050 4650 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D10_L16_P5" H 9200 4750 50  0001 C CNN
F 3 "" H 9200 4750 50  0000 C CNN
	1    9200 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 4800 8700 4750
Wire Wire Line
	8700 4750 9050 4750
$Comp
L GND #PWR030
U 1 1 5696EC27
P 9850 2800
F 0 "#PWR030" H 9850 2550 50  0001 C CNN
F 1 "GND" H 9850 2650 50  0000 C CNN
F 2 "" H 9850 2800 50  0000 C CNN
F 3 "" H 9850 2800 50  0000 C CNN
	1    9850 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9850 2700 10550 2700
Wire Wire Line
	10250 2650 10250 2750
Connection ~ 10250 2700
Wire Wire Line
	10250 2300 10250 2350
$Comp
L LM2931Z-3.3/5.0 U2
U 1 1 5696F484
P 8350 1200
F 0 "U2" H 8350 1450 50  0000 C CNN
F 1 "LM2931Z-3.3/5.0" H 8350 1400 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 8350 1300 50  0000 C CIN
F 3 "" H 8350 1200 50  0000 C CNN
	1    8350 1200
	1    0    0    -1  
$EndComp
$EndSCHEMATC