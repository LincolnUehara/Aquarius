EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "Inputs"
Date "2019-12-15"
Rev "1.2"
Comp ""
Comment1 "USB, trimpots, reset button and debug interface"
Comment2 "creativecommons.org/licenses/by/4.0"
Comment3 "License: CC BY 4.0"
Comment4 "Author: E. Lincoln Uehara"
$EndDescr
$Comp
L Switch:SW_Push SW?
U 1 1 5CBCF3E0
P 2100 2850
AR Path="/5CBB5070/5CBCF3E0" Ref="SW?"  Part="1" 
AR Path="/5CBE97AC/5CBCF3E0" Ref="SW?"  Part="1" 
AR Path="/5CBCC667/5CBCF3E0" Ref="SW2"  Part="1" 
F 0 "SW2" H 2100 3135 50  0000 C CNN
F 1 "SW_Push" H 2100 3044 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 2100 3050 50  0001 C CNN
F 3 "~" H 2100 3050 50  0001 C CNN
	1    2100 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CBCF3E7
P 2550 2500
AR Path="/5CBB5070/5CBCF3E7" Ref="R?"  Part="1" 
AR Path="/5CBE97AC/5CBCF3E7" Ref="R?"  Part="1" 
AR Path="/5CBCC667/5CBCF3E7" Ref="R22"  Part="1" 
F 0 "R22" H 2620 2546 50  0000 L CNN
F 1 "10k" H 2620 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2480 2500 50  0001 C CNN
F 3 "~" H 2550 2500 50  0001 C CNN
	1    2550 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CBCF3EE
P 2550 3200
AR Path="/5CBB5070/5CBCF3EE" Ref="C?"  Part="1" 
AR Path="/5CBE97AC/5CBCF3EE" Ref="C?"  Part="1" 
AR Path="/5CBCC667/5CBCF3EE" Ref="C15"  Part="1" 
F 0 "C15" H 2665 3246 50  0000 L CNN
F 1 "0.1uF" H 2665 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2588 3050 50  0001 C CNN
F 3 "~" H 2550 3200 50  0001 C CNN
	1    2550 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5CBCF3F5
P 1700 3100
AR Path="/5CBB5070/5CBCF3F5" Ref="#PWR?"  Part="1" 
AR Path="/5CBE97AC/5CBCF3F5" Ref="#PWR?"  Part="1" 
AR Path="/5CBCC667/5CBCF3F5" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 1700 2850 50  0001 C CNN
F 1 "GNDD" H 1704 2945 50  0000 C CNN
F 2 "" H 1700 3100 50  0001 C CNN
F 3 "" H 1700 3100 50  0001 C CNN
	1    1700 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5CBCF3FB
P 2550 3550
AR Path="/5CBB5070/5CBCF3FB" Ref="#PWR?"  Part="1" 
AR Path="/5CBE97AC/5CBCF3FB" Ref="#PWR?"  Part="1" 
AR Path="/5CBCC667/5CBCF3FB" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 2550 3300 50  0001 C CNN
F 1 "GNDD" H 2554 3395 50  0000 C CNN
F 2 "" H 2550 3550 50  0001 C CNN
F 3 "" H 2550 3550 50  0001 C CNN
	1    2550 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5CBCF401
P 2550 2150
AR Path="/5CBB5070/5CBCF401" Ref="#PWR?"  Part="1" 
AR Path="/5CBE97AC/5CBCF401" Ref="#PWR?"  Part="1" 
AR Path="/5CBCC667/5CBCF401" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 2550 2000 50  0001 C CNN
F 1 "+3V3" H 2565 2323 50  0000 C CNN
F 2 "" H 2550 2150 50  0001 C CNN
F 3 "" H 2550 2150 50  0001 C CNN
	1    2550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2850 1700 2850
Wire Wire Line
	1700 2850 1700 3100
Wire Wire Line
	2550 3050 2550 2850
Connection ~ 2550 2850
Wire Wire Line
	2550 2850 2300 2850
Wire Wire Line
	2550 2650 2550 2850
Wire Wire Line
	2550 2150 2550 2350
Wire Wire Line
	2550 3350 2550 3550
Text HLabel 3450 2850 2    50   Output ~ 0
RST
$Comp
L Device:R_POT RV1
U 1 1 5CBCF4C5
P 9000 2950
F 0 "RV1" H 8930 2996 50  0000 R CNN
F 1 "R_POT" H 8930 2905 50  0000 R CNN
F 2 "aquarius:PVG3A" H 9000 2950 50  0001 C CNN
F 3 "~" H 9000 2950 50  0001 C CNN
	1    9000 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR053
U 1 1 5CBCF5EA
P 9000 2650
F 0 "#PWR053" H 9000 2500 50  0001 C CNN
F 1 "+3V3" H 9015 2823 50  0000 C CNN
F 2 "" H 9000 2650 50  0001 C CNN
F 3 "" H 9000 2650 50  0001 C CNN
	1    9000 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR054
U 1 1 5CBCF694
P 9000 3250
F 0 "#PWR054" H 9000 3000 50  0001 C CNN
F 1 "GNDA" H 9005 3077 50  0000 C CNN
F 2 "" H 9000 3250 50  0001 C CNN
F 3 "" H 9000 3250 50  0001 C CNN
	1    9000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2650 9000 2800
Wire Wire Line
	9000 3100 9000 3250
Text HLabel 9350 2950 2    50   Output ~ 0
POT00
Wire Wire Line
	9150 2950 9350 2950
$Comp
L Device:R_POT RV2
U 1 1 5CBCF953
P 9000 4250
F 0 "RV2" H 8930 4296 50  0000 R CNN
F 1 "R_POT" H 8930 4205 50  0000 R CNN
F 2 "aquarius:PVG3A" H 9000 4250 50  0001 C CNN
F 3 "~" H 9000 4250 50  0001 C CNN
	1    9000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3950 9000 4100
Wire Wire Line
	9000 4400 9000 4550
Text HLabel 9350 4250 2    50   Output ~ 0
LED_PWR
Wire Wire Line
	9150 4250 9350 4250
$Comp
L Connector:USB_B_Micro J?
U 1 1 5CC47EDD
P 5750 3250
AR Path="/5CBE97AC/5CC47EDD" Ref="J?"  Part="1" 
AR Path="/5CBCC667/5CC47EDD" Ref="J2"  Part="1" 
F 0 "J2" H 5805 3717 50  0000 C CNN
F 1 "USB_B_Micro" H 5805 3626 50  0000 C CNN
F 2 "aquarius:ZX62B5PA33" H 5900 3200 50  0001 C CNN
F 3 "~" H 5900 3200 50  0001 C CNN
	1    5750 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CC47EE6
P 5750 3950
AR Path="/5CBE97AC/5CC47EE6" Ref="R?"  Part="1" 
AR Path="/5CBCC667/5CC47EE6" Ref="R16"  Part="1" 
F 0 "R16" H 5820 3996 50  0000 L CNN
F 1 "0" H 5820 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5680 3950 50  0001 C CNN
F 3 "~" H 5750 3950 50  0001 C CNN
	1    5750 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 5CC47EED
P 5750 4250
AR Path="/5CBE97AC/5CC47EED" Ref="#PWR?"  Part="1" 
AR Path="/5CBCC667/5CC47EED" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5750 4050 50  0001 C CNN
F 1 "GNDPWR" H 5754 4096 50  0000 C CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3650 5650 3750
Wire Wire Line
	5650 3750 5750 3750
Wire Wire Line
	5750 3750 5750 3650
Wire Wire Line
	5750 3800 5750 3750
Connection ~ 5750 3750
Wire Wire Line
	5750 4250 5750 4100
$Comp
L Device:R R?
U 1 1 5CC47EFC
P 6200 3700
AR Path="/5CBE97AC/5CC47EFC" Ref="R?"  Part="1" 
AR Path="/5CBCC667/5CC47EFC" Ref="R17"  Part="1" 
F 0 "R17" H 6270 3746 50  0000 L CNN
F 1 "0" H 6270 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6130 3700 50  0001 C CNN
F 3 "~" H 6200 3700 50  0001 C CNN
	1    6200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3450 6200 3450
Wire Wire Line
	6200 3450 6200 3550
Wire Wire Line
	6200 3850 6200 4000
Wire Wire Line
	6200 4000 6900 4000
Text Label 6500 4000 0    50   ~ 0
PB0
Text HLabel 6900 4000 2    50   BiDi ~ 0
PB0
Text HLabel 6300 3050 2    50   Output ~ 0
USB_PWR
Wire Wire Line
	6050 3050 6300 3050
Text Label 2250 5450 0    50   ~ 0
TCK
Text Label 2250 5550 0    50   ~ 0
TMS
Text Label 2250 5650 0    50   ~ 0
TDO
Text Label 2250 5750 0    50   ~ 0
TDI
Text HLabel 3200 5450 2    50   Input ~ 0
TCK
Text HLabel 3200 5550 2    50   Input ~ 0
TMS
Text HLabel 3200 5650 2    50   Output ~ 0
TDO
Text HLabel 3200 5750 2    50   Input ~ 0
TDI
$Comp
L Device:R R23
U 1 1 5CD056D8
P 2800 4900
F 0 "R23" H 2950 4900 50  0000 C CNN
F 1 "100k" H 2600 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2730 4900 50  0001 C CNN
F 3 "~" H 2800 4900 50  0001 C CNN
	1    2800 4900
	-1   0    0    1   
$EndComp
Text HLabel 6900 3250 2    50   Output ~ 0
D+
Text HLabel 6900 3350 2    50   Input ~ 0
D-
Wire Wire Line
	6050 3350 6900 3350
Wire Wire Line
	6050 3250 6900 3250
$Comp
L power:VBUS #PWR012
U 1 1 5CEA29FF
P 9000 3950
F 0 "#PWR012" H 9000 3800 50  0001 C CNN
F 1 "VBUS" H 9015 4123 50  0000 C CNN
F 2 "" H 9000 3950 50  0001 C CNN
F 3 "" H 9000 3950 50  0001 C CNN
	1    9000 3950
	1    0    0    -1  
$EndComp
Text Label 6600 3250 0    50   ~ 0
D+
Text Label 6600 3350 0    50   ~ 0
D-
Text Notes 1700 6450 0    50   ~ 0
"If the JTAG signals are greater than 2 in. (51 mm)\nor routed near an area where they could pick up\nnoise, TCK should be externally pulled-up with a\n10K or stronger resistor or pulled-down with a\n1K or stronger resistor to prevent any\ntransitions that could unexpectedly execute a\nJTAG instruction." (spma059 - page 30)
Wire Wire Line
	2550 2850 3450 2850
$Comp
L power:+3V3 #PWR013
U 1 1 5DF9F8D2
P 2800 4450
F 0 "#PWR013" H 2800 4300 50  0001 C CNN
F 1 "+3V3" H 2815 4623 50  0000 C CNN
F 2 "" H 2800 4450 50  0001 C CNN
F 3 "" H 2800 4450 50  0001 C CNN
	1    2800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5450 2800 5450
Connection ~ 2800 5450
Wire Wire Line
	2800 5450 3200 5450
Wire Wire Line
	2800 4450 2800 4750
Wire Wire Line
	2800 5050 2800 5450
Wire Wire Line
	1950 5550 3200 5550
Wire Wire Line
	1950 5650 3200 5650
Wire Wire Line
	1950 5750 3200 5750
Wire Notes Line
	2550 5100 3150 5100
Wire Notes Line
	3150 5100 3150 4700
Wire Notes Line
	3150 4700 2550 4700
Wire Notes Line
	2550 4700 2550 5100
Text Notes 2200 4900 0    50   ~ 0
Optional\n
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5DFBE50F
P 1750 5550
F 0 "J1" H 1668 5867 50  0000 C CNN
F 1 "Conn_01x04" H 1668 5776 50  0000 C CNN
F 2 "aquarius:PinHeader_1x04_P2.54mm_SMD" H 1750 5550 50  0001 C CNN
F 3 "~" H 1750 5550 50  0001 C CNN
	1    1750 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5E03023C
P 9000 4550
AR Path="/5CBB5070/5E03023C" Ref="#PWR?"  Part="1" 
AR Path="/5CBE97AC/5E03023C" Ref="#PWR?"  Part="1" 
AR Path="/5CBCC667/5E03023C" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 9000 4300 50  0001 C CNN
F 1 "GNDD" H 9004 4395 50  0000 C CNN
F 2 "" H 9000 4550 50  0001 C CNN
F 3 "" H 9000 4550 50  0001 C CNN
	1    9000 4550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
