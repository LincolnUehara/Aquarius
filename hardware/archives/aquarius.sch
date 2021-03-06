EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "Aquarius Project General Overview"
Date "2019-12-15"
Rev "1.2"
Comp ""
Comment1 ""
Comment2 "creativecommons.org/licenses/by/4.0"
Comment3 "License: CC BY 4.0"
Comment4 "Author: E. Lincoln Uehara"
$EndDescr
$Sheet
S 5050 1800 2250 3800
U 5CBB5070
F0 "Microcontroller" 118
F1 "mic.sch" 118
F2 "LED[0..12]" O R 7300 4550 118
F3 "RST" I L 5050 4800 118
F4 "POT00" I L 5050 5200 118
F5 "D+" I L 5050 4400 118
F6 "D-" O L 5050 4600 118
F7 "PB0" B L 5050 5000 118
F8 "TCK" O L 5050 3600 118
F9 "TMS" O L 5050 3800 118
F10 "TDI" O L 5050 4200 118
F11 "TDO" I L 5050 4000 118
$EndSheet
$Sheet
S 8000 4050 2100 1550
U 5CBB508E
F0 "Leds/Stars" 118
F1 "leds.sch" 118
F2 "LED[0..12]" I L 8000 4550 118
F3 "LED_PWR" I L 8000 5050 118
$EndSheet
$Sheet
S 1800 1800 2200 700 
U 5CBE97AC
F0 "Power Management" 118
F1 "power.sch" 118
F2 "USB_PWR" I R 4000 2300 118
$EndSheet
$Sheet
S 1800 3000 2200 2600
U 5CBCC667
F0 "Inputs" 118
F1 "inputs.sch" 118
F2 "RST" O R 4000 4800 118
F3 "POT00" O R 4000 5200 118
F4 "LED_PWR" O R 4000 5400 118
F5 "PB0" B R 4000 5000 118
F6 "USB_PWR" O R 4000 3200 118
F7 "TCK" I R 4000 3600 118
F8 "TMS" I R 4000 3800 118
F9 "TDO" O R 4000 4000 118
F10 "TDI" I R 4000 4200 118
F11 "D+" O R 4000 4400 118
F12 "D-" I R 4000 4600 118
$EndSheet
Text Notes 8000 3700 0    50   ~ 0
Kicad "Bug" Report: Eeschema supports\nhomogeneous buses only (e.g. DATA[31:0]),\nit doesn’t currently support heterogeneous\nbuses (e.g. {DQS0, DM0, DQ[7:0]}).\nMaybe this feature will come along in v6.0.
Wire Bus Line
	7300 4550 8000 4550
Wire Wire Line
	4500 3200 4000 3200
Wire Wire Line
	4000 3600 5050 3600
Wire Wire Line
	4000 3800 5050 3800
Wire Wire Line
	5050 4000 4000 4000
Wire Wire Line
	4000 4200 5050 4200
Wire Wire Line
	5050 4400 4000 4400
Wire Wire Line
	4000 4600 5050 4600
Wire Wire Line
	5050 4800 4000 4800
Wire Wire Line
	4000 5000 5050 5000
Wire Wire Line
	4000 5200 5050 5200
Wire Wire Line
	4000 2300 4500 2300
Wire Wire Line
	4500 2300 4500 3200
Wire Wire Line
	4000 5400 4500 5400
Wire Wire Line
	4500 5400 4500 6000
Wire Wire Line
	4500 6000 7650 6000
Wire Wire Line
	7650 6000 7650 5050
Wire Wire Line
	7650 5050 8000 5050
$Sheet
S 8000 1800 2100 900 
U 5DF68380
F0 "Drawings" 118
F1 "draw.sch" 118
$EndSheet
$EndSCHEMATC
