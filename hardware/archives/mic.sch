EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "TM4C1231C3PM Microcontroller Connections"
Date "2019-12-15"
Rev "1.2"
Comp ""
Comment1 ""
Comment2 "creativecommons.org/licenses/by/4.0"
Comment3 "License: CC BY 4.0"
Comment4 "Author: E. Lincoln Uehara"
$EndDescr
Entry Wire Line
	7850 3950 7950 4050
Entry Wire Line
	7850 4050 7950 4150
Entry Wire Line
	7850 3850 7950 3950
Entry Wire Line
	7850 3750 7950 3850
Entry Wire Line
	3250 2950 3350 2850
Entry Wire Line
	3250 3050 3350 2950
Entry Wire Line
	7850 4650 7950 4750
Entry Wire Line
	7850 4750 7950 4850
Entry Wire Line
	7850 5150 7950 5250
Entry Wire Line
	7850 5250 7950 5350
Entry Wire Line
	7850 3050 7950 3150
Entry Wire Line
	7850 3150 7950 3250
Entry Wire Line
	3250 3350 3350 3250
Text HLabel 8200 2350 2    50   Output ~ 0
LED[0..12]
Text HLabel 3000 2350 0    50   Output ~ 0
LED[0..12]
Text Label 7400 3950 2    50   ~ 0
LED0
Text Label 7400 4050 2    50   ~ 0
LED1
Text Label 7400 3750 2    50   ~ 0
LED2
Text Label 7400 3850 2    50   ~ 0
LED3
Text Label 4000 2850 2    50   ~ 0
LED4
Text Label 4000 2950 2    50   ~ 0
LED5
Text Label 7410 4650 2    50   ~ 0
LED6
Text Label 7410 4750 2    50   ~ 0
LED7
Text Label 7420 5150 2    50   ~ 0
LED8
Text Label 7420 5250 2    50   ~ 0
LED9
Text Label 7440 3050 2    50   ~ 0
LED10
Text Label 7440 3150 2    50   ~ 0
LED11
Text Label 4000 3250 2    50   ~ 0
LED12
Text Label 7360 4250 2    50   ~ 0
TCK
Text Label 7370 4350 2    50   ~ 0
TMS
Text Label 7340 4450 2    50   ~ 0
TDI
Text Label 7370 4550 2    50   ~ 0
TDO
Text Label 7200 2450 0    50   ~ 0
D+
Text Label 7200 2550 0    50   ~ 0
D-
$Comp
L Device:Crystal Y1
U 1 1 5CBE4ABD
P 2550 5050
F 0 "Y1" H 2550 5318 50  0000 C CNN
F 1 "16MHz" H 2550 5227 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM3-2Pin_5.0x3.2mm" H 2550 5050 50  0001 C CNN
F 3 "~" H 2550 5050 50  0001 C CNN
	1    2550 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CBE4C2F
P 2900 4650
F 0 "R1" H 2970 4696 50  0000 L CNN
F 1 "0" H 2970 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2830 4650 50  0001 C CNN
F 3 "~" H 2900 4650 50  0001 C CNN
	1    2900 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5CBE4CE4
P 2150 5450
F 0 "C1" H 2265 5496 50  0000 L CNN
F 1 "10pF" H 2265 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2188 5300 50  0001 C CNN
F 3 "~" H 2150 5450 50  0001 C CNN
	1    2150 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5CBE5BC3
P 2900 5450
F 0 "C2" H 3015 5496 50  0000 L CNN
F 1 "10pF" H 3015 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2938 5300 50  0001 C CNN
F 3 "~" H 2900 5450 50  0001 C CNN
	1    2900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4350 2900 4500
Wire Wire Line
	2900 5300 2900 5050
Wire Wire Line
	2700 5050 2900 5050
Connection ~ 2900 5050
Wire Wire Line
	2900 5050 2900 4800
Wire Wire Line
	2400 5050 2150 5050
Wire Wire Line
	2150 5050 2150 5300
Wire Wire Line
	2150 4150 2150 5050
Connection ~ 2150 5050
$Comp
L power:GNDD #PWR01
U 1 1 5CBE9D60
P 2550 5900
F 0 "#PWR01" H 2550 5650 50  0001 C CNN
F 1 "GNDD" H 2554 5745 50  0000 C CNN
F 2 "" H 2550 5900 50  0001 C CNN
F 3 "" H 2550 5900 50  0001 C CNN
	1    2550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5600 2150 5750
Wire Wire Line
	2150 5750 2550 5750
Wire Wire Line
	2900 5750 2900 5600
Wire Wire Line
	2550 5900 2550 5750
Connection ~ 2550 5750
Wire Wire Line
	2550 5750 2900 5750
$Comp
L power:+3V3 #PWR05
U 1 1 5CBF3EC3
P 5650 1900
F 0 "#PWR05" H 5650 1750 50  0001 C CNN
F 1 "+3V3" H 5665 2073 50  0000 C CNN
F 2 "" H 5650 1900 50  0001 C CNN
F 3 "" H 5650 1900 50  0001 C CNN
	1    5650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2000 6050 2150
Wire Wire Line
	5550 2150 5550 2000
Wire Wire Line
	5550 2000 5650 2000
Wire Wire Line
	5650 2150 5650 2000
Connection ~ 5650 2000
Wire Wire Line
	5650 2000 5750 2000
Wire Wire Line
	5750 2150 5750 2000
Connection ~ 5750 2000
Wire Wire Line
	5750 2000 5850 2000
Wire Wire Line
	5850 2150 5850 2000
Connection ~ 5850 2000
Wire Wire Line
	5850 2000 6050 2000
Wire Wire Line
	5650 2000 5650 1900
$Comp
L power:GNDA #PWR06
U 1 1 5CC02F8D
P 5950 6700
F 0 "#PWR06" H 5950 6450 50  0001 C CNN
F 1 "GNDA" H 5955 6527 50  0000 C CNN
F 2 "" H 5950 6700 50  0001 C CNN
F 3 "" H 5950 6700 50  0001 C CNN
	1    5950 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6650 5750 6350
Wire Wire Line
	5450 6350 5450 6650
Wire Wire Line
	5550 6350 5550 6650
Connection ~ 5550 6650
Wire Wire Line
	5650 6350 5650 6650
Connection ~ 5650 6650
Wire Wire Line
	5650 6650 5750 6650
$Comp
L power:GNDD #PWR03
U 1 1 5CC15100
P 3750 2150
F 0 "#PWR03" H 3750 1900 50  0001 C CNN
F 1 "GNDD" H 3754 1995 50  0000 C CNN
F 2 "" H 3750 2150 50  0001 C CNN
F 3 "" H 3750 2150 50  0001 C CNN
	1    3750 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5CC1515B
P 4850 1850
F 0 "C6" H 4965 1896 50  0000 L CNN
F 1 "0.1uF" H 4965 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4888 1700 50  0001 C CNN
F 3 "~" H 4850 1850 50  0001 C CNN
	1    4850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5CC171C5
P 4400 1850
F 0 "C5" H 4515 1896 50  0000 L CNN
F 1 "0.1uF" H 4515 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 1700 50  0001 C CNN
F 3 "~" H 4400 1850 50  0001 C CNN
	1    4400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5CC17244
P 3950 1850
F 0 "C4" H 4065 1896 50  0000 L CNN
F 1 "1.0uF" H 4065 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3988 1700 50  0001 C CNN
F 3 "~" H 3950 1850 50  0001 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5CC17299
P 3500 1850
F 0 "C3" H 3615 1896 50  0000 L CNN
F 1 "2.2uF" H 3615 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 1700 50  0001 C CNN
F 3 "~" H 3500 1850 50  0001 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1650 4850 1650
Wire Wire Line
	3500 1650 3500 1700
Wire Wire Line
	3500 2000 3500 2100
Wire Wire Line
	3500 2100 3750 2100
Wire Wire Line
	4850 2100 4850 2000
Wire Wire Line
	3750 2150 3750 2100
Connection ~ 3750 2100
Wire Wire Line
	3750 2100 3950 2100
Wire Wire Line
	3950 2000 3950 2100
Connection ~ 3950 2100
Wire Wire Line
	3950 2100 4400 2100
Wire Wire Line
	3950 1700 3950 1650
Connection ~ 3950 1650
Wire Wire Line
	3950 1650 3500 1650
Wire Wire Line
	4400 1700 4400 1650
Connection ~ 4400 1650
Wire Wire Line
	4400 1650 3950 1650
Wire Wire Line
	4400 2000 4400 2100
Connection ~ 4400 2100
Wire Wire Line
	4400 2100 4850 2100
Wire Wire Line
	4850 1700 4850 1650
Connection ~ 4850 1650
Wire Wire Line
	4850 1650 4400 1650
Text HLabel 3800 3850 0    50   Input ~ 0
RST
Text HLabel 3800 2750 0    50   Input ~ 0
POT00
Text Label 7210 3350 0    50   ~ 0
PB0
Text Notes 3850 1500 0    50   ~ 0
VDCC: "Positive supply for most of the logic function,\nincluding the processor core and most peripherals.\nThe voltage on this pin is 1.2 V and is supplied by the\non-chip LDO. The VDDC pins should only be connected\nto each other and an external capacitor as specified in\nTable 24-12 on page 1367 ."
NoConn ~ 4250 5250
NoConn ~ 4250 4750
Wire Wire Line
	5250 6350 5250 6650
Wire Wire Line
	5250 6650 5450 6650
Connection ~ 5450 6650
Wire Wire Line
	5250 1650 5250 2000
Wire Wire Line
	5350 2150 5350 2000
Wire Wire Line
	5350 2000 5250 2000
Connection ~ 5250 2000
Wire Wire Line
	5250 2000 5250 2150
Entry Bus Bus
	3150 2350 3250 2450
Wire Bus Line
	3150 2350 3000 2350
Entry Bus Bus
	7950 2450 8050 2350
Wire Bus Line
	8050 2350 8200 2350
Text Notes 8250 2900 0    50   ~ 0
Kicad Bug Report: It does not\nsupport to write the hierarquical\npin to bus as "LED[00..12]"\n(starting with two zeros).\n
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5CD36F74
P 3500 1500
F 0 "#FLG0102" H 3500 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 1674 50  0000 C CNN
F 2 "" H 3500 1500 50  0001 C CNN
F 3 "~" H 3500 1500 50  0001 C CNN
	1    3500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1500 3500 1650
Connection ~ 3500 1650
Text HLabel 7550 2450 2    50   Input ~ 0
D+
Text HLabel 7550 2550 2    50   Output ~ 0
D-
Text HLabel 7550 3350 2    50   BiDi ~ 0
PB0
Text HLabel 7550 4250 2    50   Output ~ 0
TCK
Text HLabel 7550 4350 2    50   Output ~ 0
TMS
Text HLabel 7550 4450 2    50   Output ~ 0
TDI
Text HLabel 7550 4550 2    50   Input ~ 0
TDO
Wire Wire Line
	7050 2450 7550 2450
Wire Wire Line
	7550 2550 7050 2550
Wire Wire Line
	7050 3050 7850 3050
Wire Wire Line
	7850 3150 7050 3150
Wire Wire Line
	7050 3350 7550 3350
Wire Wire Line
	7050 3850 7850 3850
Wire Wire Line
	7050 3750 7850 3750
Wire Wire Line
	7850 3950 7050 3950
Wire Wire Line
	7050 4050 7850 4050
Wire Wire Line
	7050 4250 7550 4250
Wire Wire Line
	7550 4350 7050 4350
Wire Wire Line
	7050 4450 7550 4450
Wire Wire Line
	7550 4550 7050 4550
Wire Wire Line
	7050 4650 7850 4650
Wire Wire Line
	7850 4750 7050 4750
Wire Wire Line
	7050 5150 7850 5150
Wire Wire Line
	7050 5250 7850 5250
Wire Wire Line
	2150 4150 4250 4150
Wire Wire Line
	2900 4350 4250 4350
Wire Wire Line
	4250 3850 3800 3850
Wire Wire Line
	3350 2950 4250 2950
Wire Wire Line
	3350 2850 4250 2850
Wire Wire Line
	3800 2750 4250 2750
Wire Wire Line
	5950 6700 5950 6350
$Comp
L power:+3V3 #PWR02
U 1 1 5CBFCF74
P 3950 5450
F 0 "#PWR02" H 3950 5300 50  0001 C CNN
F 1 "+3V3" H 3965 5623 50  0000 C CNN
F 2 "" H 3950 5450 50  0001 C CNN
F 3 "" H 3950 5450 50  0001 C CNN
	1    3950 5450
	1    0    0    -1  
$EndComp
Text Notes 2600 7000 0    50   ~ 0
More information about connection on\nunused pins can be found in table 23-7 on\nTM4C123GH6PM datasheet, page 1351.
Connection ~ 5500 6650
Wire Wire Line
	5500 6650 5550 6650
Wire Wire Line
	5450 6650 5500 6650
Wire Wire Line
	5550 6650 5650 6650
Wire Wire Line
	5500 6700 5500 6650
$Comp
L power:GNDD #PWR04
U 1 1 5CC03027
P 5500 6700
F 0 "#PWR04" H 5500 6450 50  0001 C CNN
F 1 "GNDD" H 5504 6545 50  0000 C CNN
F 2 "" H 5500 6700 50  0001 C CNN
F 3 "" H 5500 6700 50  0001 C CNN
	1    5500 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR015
U 1 1 5DFE004A
P 4150 3600
F 0 "#PWR015" H 4150 3350 50  0001 C CNN
F 1 "GNDD" H 4154 3445 50  0000 C CNN
F 2 "" H 4150 3600 50  0001 C CNN
F 3 "" H 4150 3600 50  0001 C CNN
	1    4150 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR016
U 1 1 5DFE7229
P 7150 5900
F 0 "#PWR016" H 7150 5650 50  0001 C CNN
F 1 "GNDD" H 7154 5745 50  0000 C CNN
F 2 "" H 7150 5900 50  0001 C CNN
F 3 "" H 7150 5900 50  0001 C CNN
	1    7150 5900
	1    0    0    -1  
$EndComp
$Comp
L MCU_Texas:TM4C1231C3PM U1
U 1 1 5CBB570B
P 5650 4250
F 0 "U1" H 5650 2064 50  0000 C CNN
F 1 "TM4C1231C3PM" H 6600 2200 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 6850 2150 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tm4c1231c3pm.pdf" H 5650 4450 50  0001 C CNN
	1    5650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2450 4150 2450
Wire Wire Line
	4150 3550 4250 3550
Wire Wire Line
	4150 2450 4150 2550
Wire Wire Line
	3350 3250 4250 3250
Wire Wire Line
	4250 2550 4150 2550
Connection ~ 4150 2550
Wire Wire Line
	4150 2550 4150 2650
Wire Wire Line
	4250 2650 4150 2650
Connection ~ 4150 2650
Wire Wire Line
	4150 2650 4150 3150
Wire Wire Line
	4250 3150 4150 3150
Connection ~ 4150 3150
Wire Wire Line
	4150 3150 4150 3350
Wire Wire Line
	4250 3350 4150 3350
Connection ~ 4150 3350
Wire Wire Line
	4150 3350 4150 3450
Wire Wire Line
	4250 3450 4150 3450
Connection ~ 4150 3450
Wire Wire Line
	4150 3450 4150 3550
Wire Wire Line
	4150 3600 4150 3550
Connection ~ 4150 3550
Wire Wire Line
	7050 2650 7150 2650
Wire Wire Line
	7150 2650 7150 2750
Wire Wire Line
	7150 5850 7050 5850
Wire Wire Line
	7050 2750 7150 2750
Connection ~ 7150 2750
Wire Wire Line
	7150 2750 7150 2850
Wire Wire Line
	7050 2850 7150 2850
Connection ~ 7150 2850
Wire Wire Line
	7150 2850 7150 2950
Wire Wire Line
	7050 2950 7150 2950
Connection ~ 7150 2950
Wire Wire Line
	7150 2950 7150 3450
Wire Wire Line
	7050 3450 7150 3450
Connection ~ 7150 3450
Wire Wire Line
	7150 3450 7150 3550
Wire Wire Line
	7050 3550 7150 3550
Connection ~ 7150 3550
Wire Wire Line
	7150 3550 7150 3650
Wire Wire Line
	7050 3650 7150 3650
Connection ~ 7150 3650
Wire Wire Line
	7150 3650 7150 4850
Wire Wire Line
	7050 4850 7150 4850
Connection ~ 7150 4850
Wire Wire Line
	7150 4850 7150 4950
Wire Wire Line
	7050 4950 7150 4950
Connection ~ 7150 4950
Wire Wire Line
	7150 4950 7150 5350
Wire Wire Line
	7050 5350 7150 5350
Connection ~ 7150 5350
Wire Wire Line
	7150 5350 7150 5450
Wire Wire Line
	7050 5450 7150 5450
Connection ~ 7150 5450
Wire Wire Line
	7150 5450 7150 5550
Wire Wire Line
	7050 5550 7150 5550
Connection ~ 7150 5550
Wire Wire Line
	7150 5550 7150 5650
Wire Wire Line
	7050 5650 7150 5650
Connection ~ 7150 5650
Wire Wire Line
	7150 5650 7150 5750
Wire Wire Line
	7050 5750 7150 5750
Connection ~ 7150 5750
Wire Wire Line
	7150 5750 7150 5850
Wire Wire Line
	7150 5900 7150 5850
Connection ~ 7150 5850
Wire Wire Line
	3950 5450 3950 5550
Wire Wire Line
	3950 5550 4250 5550
$Comp
L power:GNDD #PWR014
U 1 1 5E087697
P 3950 4850
F 0 "#PWR014" H 3950 4600 50  0001 C CNN
F 1 "GNDD" H 3954 4695 50  0000 C CNN
F 2 "" H 3950 4850 50  0001 C CNN
F 3 "" H 3950 4850 50  0001 C CNN
	1    3950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4650 3950 4850
Wire Wire Line
	3950 4650 4150 4650
Wire Wire Line
	4250 5050 4150 5050
Wire Wire Line
	4150 5050 4150 4650
Connection ~ 4150 4650
Wire Wire Line
	4150 4650 4250 4650
Wire Bus Line
	3250 2450 3250 6150
Wire Bus Line
	7950 2450 7950 6050
$EndSCHEMATC
