EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title ""
Date "2019-04-20"
Rev "0.0.0"
Comp "Everton Lincoln Uehara"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Texas:TM4C1231C3PM U?
U 1 1 5CBB570B
P 5800 3600
F 0 "U?" H 5800 1414 50  0000 C CNN
F 1 "TM4C1231C3PM" H 5800 1323 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 7000 1500 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tm4c1231c3pm.pdf" H 5800 3800 50  0001 C CNN
	1    5800 3600
	1    0    0    -1  
$EndComp
Entry Wire Line
	8600 3300 8700 3400
Entry Wire Line
	8600 3400 8700 3500
Entry Wire Line
	8600 3200 8700 3300
Entry Wire Line
	8600 3100 8700 3200
Wire Wire Line
	7200 3100 8600 3100
Wire Wire Line
	7200 3200 8600 3200
Wire Wire Line
	7200 3300 8600 3300
Wire Wire Line
	7200 3400 8600 3400
Entry Wire Line
	2650 2300 2750 2200
Wire Wire Line
	4400 2200 2750 2200
Entry Wire Line
	2650 2400 2750 2300
Wire Wire Line
	4400 2300 2750 2300
Entry Wire Line
	8600 4000 8700 4100
Entry Wire Line
	8600 4100 8700 4200
Wire Wire Line
	8600 4100 7200 4100
Entry Wire Line
	8600 4500 8700 4600
Entry Wire Line
	8600 4600 8700 4700
Wire Wire Line
	8600 4500 7200 4500
Wire Wire Line
	8600 4600 7200 4600
Entry Wire Line
	8600 2400 8700 2500
Entry Wire Line
	8600 2500 8700 2600
Wire Wire Line
	8600 2400 7200 2400
Wire Wire Line
	8600 2500 7200 2500
Entry Wire Line
	2650 2700 2750 2600
Wire Wire Line
	4400 2600 2750 2600
Text HLabel 8950 1700 2    50   Output ~ 0
LEDS_CTRL
Text HLabel 2400 1700 0    50   Output ~ 0
LEDS_CTRL
Text Label 7850 3300 2    50   ~ 0
LED00
Text Label 7850 3400 2    50   ~ 0
LED01
Text Label 7850 3100 2    50   ~ 0
LED02
Text Label 7850 3200 2    50   ~ 0
LED03
Text Label 3800 2200 2    50   ~ 0
LED04
Text Label 3800 2300 2    50   ~ 0
LED05
Text Label 7850 4000 2    50   ~ 0
LED06
Text Label 7850 4100 2    50   ~ 0
LED07
Text Label 7850 4500 2    50   ~ 0
LED08
Text Label 7850 4600 2    50   ~ 0
LED09
Text Label 7850 2400 2    50   ~ 0
LED10
Text Label 7850 2500 2    50   ~ 0
LED11
Text Label 3800 2600 2    50   ~ 0
LED12
Entry Bus Bus
	2550 1700 2650 1800
Wire Bus Line
	2400 1700 2550 1700
Entry Bus Bus
	8700 1800 8800 1700
Wire Bus Line
	8800 1700 8950 1700
Entry Wire Line
	8150 3600 8250 3700
Entry Wire Line
	8150 3700 8250 3800
Entry Wire Line
	8150 3800 8250 3900
Entry Wire Line
	8150 3900 8250 4000
Wire Wire Line
	7200 3600 8150 3600
Wire Wire Line
	7200 3700 8150 3700
Wire Wire Line
	7200 3800 8150 3800
Wire Wire Line
	7200 3900 8150 3900
Text Label 7850 3600 2    50   ~ 0
SWCLK
Text Label 7850 3700 2    50   ~ 0
SWDIO
Text Label 7850 3800 2    50   ~ 0
TDI
Text Label 7850 3900 2    50   ~ 0
SWO
Entry Bus Bus
	8250 1450 8350 1350
Text HLabel 8550 1350 2    50   Input ~ 0
DEBUG
Wire Bus Line
	8350 1350 8550 1350
Wire Wire Line
	7200 4000 8600 4000
Wire Bus Line
	8250 1450 8250 4450
Wire Bus Line
	2650 1800 2650 5500
Wire Bus Line
	8700 1800 8700 5200
$EndSCHEMATC
