EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "REMOTE VFO"
Date "2021-12-16"
Rev "B"
Comp "LDO SYSTEMS LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:DB9_Female J1
U 1 1 61BBDE94
P 1500 5300
F 0 "J1" V 1200 6050 50  0000 R CNN
F 1 "DB9_Female" V 1100 6050 50  0000 R CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset4.94mm_Housed_MountingHolesOffset7.48mm" H 1500 5300 50  0001 C CNN
F 3 " ~" H 1500 5300 50  0001 C CNN
	1    1500 5300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:DB9_Male J2
U 1 1 61BC069E
P 1500 7150
F 0 "J2" V 1372 7705 50  0000 L CNN
F 1 "DB9_Male" V 1463 7705 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset4.94mm_Housed_MountingHolesOffset7.48mm" H 1500 7150 50  0001 C CNN
F 3 " ~" H 1500 7150 50  0001 C CNN
	1    1500 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 5600 1400 6850
Wire Wire Line
	1600 5600 1600 6850
Wire Wire Line
	1700 5600 1700 6850
Text Label 2450 5950 0    50   ~ 0
PCRX
Text Label 2450 6150 0    50   ~ 0
RADTX
Text Label 2450 5850 0    50   ~ 0
PCTX
Text Label 2450 6250 0    50   ~ 0
RADRX
Text Label 6700 5950 2    50   ~ 0
ePCRX
Text Label 6750 6150 2    50   ~ 0
eRADTX
Text Label 6700 5850 2    50   ~ 0
ePCTX
Text Label 6750 6250 2    50   ~ 0
eRADRX
Wire Wire Line
	6150 5750 6500 5750
Wire Wire Line
	6500 5750 6500 5450
$Comp
L power:VCC #PWR07
U 1 1 61BD7C77
P 6500 5250
F 0 "#PWR07" H 6500 5100 50  0001 C CNN
F 1 "VCC" H 6517 5423 50  0000 C CNN
F 2 "" H 6500 5250 50  0001 C CNN
F 3 "" H 6500 5250 50  0001 C CNN
	1    6500 5250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61BE8DE1
P 7200 4150
F 0 "C2" V 7100 4000 50  0000 C CNN
F 1 "0.1uF" V 7100 4250 50  0000 C CNN
F 2 "Capacitors:0805" H 7238 4000 50  0001 C CNN
F 3 "~" H 7200 4150 50  0001 C CNN
F 4 "C2594299" H 7200 4150 50  0001 C CNN "JLCPCB"
	1    7200 4150
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 61BEA6FF
P 7200 4550
F 0 "C3" V 7100 4400 50  0000 C CNN
F 1 "0.1uF" V 7100 4650 50  0000 C CNN
F 2 "Capacitors:0805" H 7238 4400 50  0001 C CNN
F 3 "~" H 7200 4550 50  0001 C CNN
F 4 "C2594299" H 7200 4550 50  0001 C CNN "JLCPCB"
	1    7200 4550
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 61BEB724
P 9450 4650
F 0 "C5" H 9250 4750 50  0000 C CNN
F 1 "0.1uF" H 9289 4650 50  0000 C CNN
F 2 "Capacitors:0805" H 9488 4500 50  0001 C CNN
F 3 "~" H 9450 4650 50  0001 C CNN
F 4 "C2594299" H 9450 4650 50  0001 C CNN "JLCPCB"
	1    9450 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 61BEBCE0
P 9900 4650
F 0 "C6" H 9750 4750 50  0000 C CNN
F 1 "0.1uF" H 9739 4650 50  0000 C CNN
F 2 "Capacitors:0805" H 9938 4500 50  0001 C CNN
F 3 "~" H 9900 4650 50  0001 C CNN
F 4 "C2594299" H 9900 4650 50  0001 C CNN "JLCPCB"
	1    9900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4150 7350 4150
Wire Wire Line
	6900 4150 7050 4150
Wire Wire Line
	6900 4350 6900 4150
$Comp
L SparkFun-IC-Comms:MAX2323SOIC16 U3
U 1 1 61BE3C63
P 8350 4700
F 0 "U3" H 7950 5550 45  0000 C CNN
F 1 "SP3232EEN-L" H 7950 5450 45  0000 C CNN
F 2 "Silicon-Standard:SO16" H 8350 5650 20  0001 C CNN
F 3 "" H 8350 4700 60  0001 C CNN
F 4 "IC-08171" H 7900 5550 60  0001 C CNN "Field4"
F 5 "C9378" H 8350 4700 50  0001 C CNN "JLCPCB"
	1    8350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4350 6900 4350
Wire Wire Line
	7650 4550 7350 4550
Wire Wire Line
	7650 4750 6900 4750
Wire Wire Line
	6900 4750 6900 4550
Wire Wire Line
	6900 4550 7050 4550
Wire Wire Line
	9450 4500 9450 4450
Wire Wire Line
	9450 4450 9050 4450
Wire Wire Line
	9900 4500 9900 4250
Wire Wire Line
	9900 4250 9050 4250
$Comp
L Device:C C4
U 1 1 61BEFF63
P 9050 3850
F 0 "C4" V 8798 3850 50  0000 C CNN
F 1 "0.1uF" V 8889 3850 50  0000 C CNN
F 2 "Capacitors:0805" H 9088 3700 50  0001 C CNN
F 3 "~" H 9050 3850 50  0001 C CNN
F 4 "C2594299" H 9050 3850 50  0001 C CNN "JLCPCB"
	1    9050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3850 8350 3600
Wire Wire Line
	9050 3700 9050 3600
Wire Wire Line
	9050 3600 8350 3600
Connection ~ 8350 3600
Wire Wire Line
	8350 3600 8350 3500
Wire Wire Line
	9050 4000 9050 4050
$Comp
L power:GND #PWR010
U 1 1 61BF2E7C
P 9050 4050
F 0 "#PWR010" H 9050 3800 50  0001 C CNN
F 1 "GND" H 9150 3950 50  0000 C CNN
F 2 "" H 9050 4050 50  0001 C CNN
F 3 "" H 9050 4050 50  0001 C CNN
	1    9050 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 61BF5C29
P 9900 4950
F 0 "#PWR011" H 9900 4700 50  0001 C CNN
F 1 "GND" H 9905 4777 50  0000 C CNN
F 2 "" H 9900 4950 50  0001 C CNN
F 3 "" H 9900 4950 50  0001 C CNN
	1    9900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4950 9900 4850
Wire Wire Line
	9450 4800 9450 4850
Wire Wire Line
	9450 4850 9900 4850
Connection ~ 9900 4850
Wire Wire Line
	9900 4850 9900 4800
Wire Wire Line
	9250 5150 9050 5150
Wire Wire Line
	9150 6250 9150 5250
Wire Wire Line
	9150 5250 9050 5250
Wire Wire Line
	9350 4950 9050 4950
Wire Wire Line
	9450 6150 9450 5050
Wire Wire Line
	9450 5050 9050 5050
Wire Wire Line
	6150 6150 9450 6150
$Comp
L power:GND #PWR06
U 1 1 61BFC4C8
P 6350 6400
F 0 "#PWR06" H 6350 6150 50  0001 C CNN
F 1 "GND" H 6355 6227 50  0000 C CNN
F 2 "" H 6350 6400 50  0001 C CNN
F 3 "" H 6350 6400 50  0001 C CNN
	1    6350 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4950 6900 4950
Wire Wire Line
	7650 5050 6900 5050
Wire Wire Line
	7650 5150 6900 5150
Wire Wire Line
	7650 5250 6900 5250
Text Label 7150 4950 0    50   ~ 0
TX1
Text Label 7150 5050 0    50   ~ 0
TX2
Text Label 7150 5150 0    50   ~ 0
RX1
Text Label 7150 5250 0    50   ~ 0
RX2
Wire Wire Line
	5600 2150 5350 2150
Wire Wire Line
	5600 2250 5350 2250
Wire Wire Line
	7750 2450 7400 2450
Wire Wire Line
	7750 2550 7400 2550
Text Label 5350 2150 0    50   ~ 0
TX1
Text Label 7600 2550 0    50   ~ 0
TX2
Text Label 5350 2250 0    50   ~ 0
RX1
Text Label 7600 2450 0    50   ~ 0
RX2
Wire Wire Line
	5300 1650 5600 1650
Wire Wire Line
	5300 1150 5300 1650
Wire Wire Line
	5000 1150 5300 1150
Wire Wire Line
	5200 1750 5600 1750
Wire Wire Line
	5200 1500 5200 1750
Wire Wire Line
	5000 1500 5200 1500
Wire Wire Line
	5000 1850 5600 1850
$Comp
L Device:LED D1
U 1 1 61C225CF
P 4850 1150
F 0 "D1" H 4843 1366 50  0000 C CNN
F 1 "LED" H 4843 1275 50  0000 C CNN
F 2 "LED:LED_3MM" H 4850 1150 50  0001 C CNN
F 3 "~" H 4850 1150 50  0001 C CNN
	1    4850 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 61C2100E
P 4850 1500
F 0 "D2" H 4843 1716 50  0000 C CNN
F 1 "LED" H 4843 1625 50  0000 C CNN
F 2 "LED:LED_3MM" H 4850 1500 50  0001 C CNN
F 3 "~" H 4850 1500 50  0001 C CNN
	1    4850 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 61C1FC4E
P 4850 1850
F 0 "D3" H 4843 2066 50  0000 C CNN
F 1 "LED" H 4843 1975 50  0000 C CNN
F 2 "LED:LED_3MM" H 4850 1850 50  0001 C CNN
F 3 "~" H 4850 1850 50  0001 C CNN
	1    4850 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 61C49472
P 4400 1150
F 0 "R1" V 4300 1150 50  0000 C CNN
F 1 "2.2K" V 4400 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4330 1150 50  0001 C CNN
F 3 "~" H 4400 1150 50  0001 C CNN
F 4 "C17520" H 4400 1150 50  0001 C CNN "JLCPCB"
	1    4400 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1150 4550 1150
Wire Wire Line
	4250 1150 4100 1150
$Comp
L Device:R R2
U 1 1 61C4E3C2
P 4400 1500
F 0 "R2" V 4300 1500 50  0000 C CNN
F 1 "2.2K" V 4400 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4330 1500 50  0001 C CNN
F 3 "~" H 4400 1500 50  0001 C CNN
F 4 "C17520" H 4400 1500 50  0001 C CNN "JLCPCB"
	1    4400 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1500 4550 1500
Wire Wire Line
	4250 1500 4100 1500
$Comp
L Device:R R3
U 1 1 61C50307
P 4400 1850
F 0 "R3" V 4300 1850 50  0000 C CNN
F 1 "2.2K" V 4400 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4330 1850 50  0001 C CNN
F 3 "~" H 4400 1850 50  0001 C CNN
F 4 "C17520" H 4400 1850 50  0001 C CNN "JLCPCB"
	1    4400 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1850 4550 1850
Wire Wire Line
	4250 1850 4100 1850
$Comp
L power:VCC #PWR03
U 1 1 61C524A5
P 4100 1000
F 0 "#PWR03" H 4100 850 50  0001 C CNN
F 1 "VCC" H 4117 1173 50  0000 C CNN
F 2 "" H 4100 1000 50  0001 C CNN
F 3 "" H 4100 1000 50  0001 C CNN
	1    4100 1000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 1000 4100 1150
Connection ~ 4100 1150
Wire Wire Line
	4100 1150 4100 1500
Connection ~ 4100 1500
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S8
U 1 1 61C7ACED
P 9800 1300
F 0 "S8" H 9800 1610 45  0000 C CNN
F 1 "PB" H 9800 1526 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 9800 1500 20  0001 C CNN
F 3 "" H 9800 1300 50  0001 C CNN
F 4 " SWCH-08441" H 9800 1431 60  0000 C CNN "Field4"
	1    9800 1300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S2
U 1 1 61C7D4BC
P 8550 2750
F 0 "S2" H 8550 3060 45  0000 C CNN
F 1 "PB" H 8550 2976 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 8550 2950 20  0001 C CNN
F 3 "" H 8550 2750 50  0001 C CNN
F 4 " SWCH-08441" H 8550 2881 60  0000 C CNN "Field4"
	1    8550 2750
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S5
U 1 1 61C7FB51
P 9000 2750
F 0 "S5" H 9000 3060 45  0000 C CNN
F 1 "PB" H 9000 2976 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 9000 2950 20  0001 C CNN
F 3 "" H 9000 2750 50  0001 C CNN
F 4 " SWCH-08441" H 9000 2881 60  0000 C CNN "Field4"
	1    9000 2750
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S7
U 1 1 61C820F8
P 9400 2750
F 0 "S7" H 9400 3060 45  0000 C CNN
F 1 "PB" H 9400 2976 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 9400 2950 20  0001 C CNN
F 3 "" H 9400 2750 50  0001 C CNN
F 4 " SWCH-08441" H 9400 2881 60  0000 C CNN "Field4"
	1    9400 2750
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S9
U 1 1 61C8483B
P 9800 2750
F 0 "S9" H 9800 3060 45  0000 C CNN
F 1 "PB" H 9800 2976 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 9800 2950 20  0001 C CNN
F 3 "" H 9800 2750 50  0001 C CNN
F 4 " SWCH-08441" H 9800 2881 60  0000 C CNN "Field4"
	1    9800 2750
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S6
U 1 1 61C786A8
P 9400 1300
F 0 "S6" H 9400 1610 45  0000 C CNN
F 1 "PB" H 9400 1526 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 9400 1500 20  0001 C CNN
F 3 "" H 9400 1300 50  0001 C CNN
F 4 " SWCH-08441" H 9400 1431 60  0000 C CNN "Field4"
	1    9400 1300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S4
U 1 1 61C75F0F
P 9000 1300
F 0 "S4" H 9000 1610 45  0000 C CNN
F 1 "PB" H 9000 1526 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 9000 1500 20  0001 C CNN
F 3 "" H 9000 1300 50  0001 C CNN
F 4 " SWCH-08441" H 9000 1431 60  0000 C CNN "Field4"
	1    9000 1300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S3
U 1 1 61C6C61C
P 8600 1300
F 0 "S3" H 8600 1610 45  0000 C CNN
F 1 "PB" H 8600 1526 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 8600 1500 20  0001 C CNN
F 3 "" H 8600 1300 50  0001 C CNN
F 4 " SWCH-08441" H 8600 1431 60  0000 C CNN "Field4"
	1    8600 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 1650 8600 1500
Wire Wire Line
	9000 1750 9000 1500
Wire Wire Line
	7400 1750 7550 1750
Wire Wire Line
	9400 1850 9400 1500
Wire Wire Line
	7400 1850 7650 1850
Wire Wire Line
	9800 1950 9800 1500
Wire Wire Line
	7400 1950 7750 1950
Wire Wire Line
	8550 2350 8550 2550
Wire Wire Line
	7400 2350 8150 2350
Wire Wire Line
	9000 2250 9000 2550
Wire Wire Line
	9400 2150 9400 2550
Wire Wire Line
	7400 2150 7950 2150
Wire Wire Line
	9800 2050 9800 2550
Wire Wire Line
	7400 2050 7850 2050
Wire Wire Line
	8600 1100 8600 900 
Wire Wire Line
	8600 900  9000 900 
Wire Wire Line
	10050 900  10050 1850
Wire Wire Line
	8550 3100 8550 2950
Wire Wire Line
	9000 2950 9000 3100
Connection ~ 9000 3100
Wire Wire Line
	9000 3100 8550 3100
Wire Wire Line
	9400 2950 9400 3100
Connection ~ 9400 3100
Wire Wire Line
	9400 3100 9000 3100
Wire Wire Line
	9800 2950 9800 3100
Wire Wire Line
	9400 3100 9800 3100
Connection ~ 9800 3100
Wire Wire Line
	9800 3100 10050 3100
Wire Wire Line
	9000 1100 9000 900 
Connection ~ 9000 900 
Wire Wire Line
	9000 900  9400 900 
Wire Wire Line
	9400 1100 9400 900 
Connection ~ 9400 900 
Wire Wire Line
	9400 900  9800 900 
Wire Wire Line
	9800 1100 9800 900 
Connection ~ 9800 900 
Wire Wire Line
	9800 900  10050 900 
$Comp
L power:GND #PWR012
U 1 1 61CE4B28
P 10200 2000
F 0 "#PWR012" H 10200 1750 50  0001 C CNN
F 1 "GND" H 10100 2000 50  0000 C CNN
F 2 "" H 10200 2000 50  0001 C CNN
F 3 "" H 10200 2000 50  0001 C CNN
	1    10200 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2000 10200 1850
Wire Wire Line
	10200 1850 10050 1850
Connection ~ 10050 1850
Wire Wire Line
	10050 1850 10050 3100
$Comp
L Device:CP C1
U 1 1 61D35D19
P 6950 5550
F 0 "C1" H 7068 5596 50  0000 L CNN
F 1 "10uF" H 7068 5505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.7" H 6988 5400 50  0001 C CNN
F 3 "~" H 6950 5550 50  0001 C CNN
F 4 "C59932" H 6950 5550 50  0001 C CNN "JLCPCB"
	1    6950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5400 6950 5350
Connection ~ 6500 5350
Wire Wire Line
	6500 5350 6500 5250
Wire Wire Line
	1900 5600 1900 6050
Connection ~ 1900 6050
Wire Wire Line
	1900 6050 2350 6050
$Comp
L Connector:USB_B_Micro J3
U 1 1 61C40B97
P 2350 4450
F 0 "J3" H 2407 4917 50  0000 C CNN
F 1 "USB_B_Micro" H 2407 4826 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 2500 4400 50  0001 C CNN
F 3 "~" H 2500 4400 50  0001 C CNN
F 4 "C10418" H 2350 4450 50  0001 C CNN "JLCPCB"
	1    2350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4250 2800 4250
Wire Wire Line
	2800 4250 2800 5750
Wire Wire Line
	2350 4850 2350 4950
Connection ~ 2350 6050
Wire Wire Line
	2350 6050 3250 6050
Wire Wire Line
	2650 4650 2700 4650
Wire Wire Line
	2700 4650 2700 4950
Wire Wire Line
	2700 4950 2350 4950
Connection ~ 2350 4950
Wire Wire Line
	2350 4950 2350 6050
Wire Wire Line
	6350 6050 6150 6050
Wire Wire Line
	6350 6050 6350 6400
Wire Wire Line
	6950 6050 6950 5700
Wire Wire Line
	6350 6050 6950 6050
Connection ~ 6350 6050
Wire Wire Line
	9350 4950 9350 5850
Wire Wire Line
	9250 5150 9250 5950
Wire Wire Line
	6500 5350 6950 5350
$Comp
L Connector:RJ12 J5
U 1 1 61BD7C7D
P 5750 6050
F 0 "J5" H 5420 6054 50  0000 R CNN
F 1 "RJ12" H 5420 6145 50  0000 R CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 5750 6075 50  0001 C CNN
F 3 "~" V 5750 6075 50  0001 C CNN
	1    5750 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ12 J4
U 1 1 61BD0B61
P 3650 6050
F 0 "J4" H 3320 6054 50  0000 R CNN
F 1 "RJ12" H 3320 6145 50  0000 R CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 3650 6075 50  0001 C CNN
F 3 "~" V 3650 6075 50  0001 C CNN
	1    3650 6050
	-1   0    0    -1  
$EndComp
Text Notes 1600 4450 0    50   ~ 0
5V Adapter\n
Text Notes 1350 5050 0    50   ~ 0
From PC\n
Text Notes 1350 7450 0    50   ~ 0
To Radio\n
Wire Wire Line
	6150 5850 9350 5850
Wire Wire Line
	6150 5950 9250 5950
Wire Wire Line
	1300 5850 1300 5600
Wire Wire Line
	1300 5850 3250 5850
Wire Wire Line
	1500 5600 1500 5950
Wire Wire Line
	1500 5950 3250 5950
Wire Wire Line
	1300 6250 1300 6850
Wire Wire Line
	1300 6250 3250 6250
Wire Wire Line
	1500 6850 1500 6150
Wire Wire Line
	1500 6150 3250 6150
$Comp
L YAAJ_BlackPill_Part_Like_SWD_Breakout:YAAJ_BlackPill_Part_Like_SWD_Breakout U2
U 1 1 61E6A3B5
P 6500 2450
F 0 "U2" H 6500 1477 50  0000 C CNN
F 1 "YAAJ_BlackPill_Part_Like_SWD_Breakout" H 6500 1386 50  0000 C CNN
F 2 "BlackAndBlue:YAAJ_BlackPill_SWD_2" H 7150 1250 50  0001 C CNN
F 3 "" H 7150 1250 50  0001 C CNN
	1    6500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3250 7550 3250
Wire Wire Line
	7550 3250 7550 3350
$Comp
L power:GND #PWR08
U 1 1 61EBAB29
P 7550 3350
F 0 "#PWR08" H 7550 3100 50  0001 C CNN
F 1 "GND" H 7555 3177 50  0000 C CNN
F 2 "" H 7550 3350 50  0001 C CNN
F 3 "" H 7550 3350 50  0001 C CNN
	1    7550 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 61EC180C
P 4300 3150
F 0 "#PWR05" H 4300 2900 50  0001 C CNN
F 1 "GND" H 4305 2977 50  0000 C CNN
F 2 "" H 4300 3150 50  0001 C CNN
F 3 "" H 4300 3150 50  0001 C CNN
	1    4300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1500 4100 1850
$Comp
L Memory_EEPROM:AT24CS32-SSHM U1
U 1 1 61EE715B
P 4600 4100
F 0 "U1" H 4750 4400 50  0000 C CNN
F 1 "AT24CS32-SSHM" H 4150 4400 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4600 4100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8869-SEEPROM-AT24CS32-Datasheet.pdf" H 4600 4100 50  0001 C CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61EE87E2
P 4600 4550
F 0 "#PWR04" H 4600 4300 50  0001 C CNN
F 1 "GND" H 4605 4377 50  0000 C CNN
F 2 "" H 4600 4550 50  0001 C CNN
F 3 "" H 4600 4550 50  0001 C CNN
	1    4600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4550 4600 4500
Wire Wire Line
	4200 4000 4100 4000
Wire Wire Line
	4100 4000 4100 4100
Wire Wire Line
	4100 4450 4600 4450
Connection ~ 4600 4450
Wire Wire Line
	4600 4450 4600 4400
Wire Wire Line
	4200 4100 4100 4100
Connection ~ 4100 4100
Wire Wire Line
	4100 4100 4100 4200
Wire Wire Line
	4200 4200 4100 4200
Connection ~ 4100 4200
Wire Wire Line
	4100 4200 4100 4450
Wire Wire Line
	5300 3650 5300 3150
Wire Wire Line
	5300 3150 5600 3150
Wire Wire Line
	4600 3650 4600 3800
Wire Wire Line
	5000 4000 5200 4000
Wire Wire Line
	5200 4000 5200 3350
Wire Wire Line
	5200 3050 5600 3050
Wire Wire Line
	5600 2950 5100 2950
Wire Wire Line
	5100 2950 5100 3150
Wire Wire Line
	5100 4100 5000 4100
Wire Wire Line
	5000 4200 5050 4200
Wire Wire Line
	5050 4200 5050 4500
Wire Wire Line
	5050 4500 4600 4500
Connection ~ 4600 4500
Wire Wire Line
	4600 4500 4600 4450
Wire Wire Line
	5600 3250 5500 3250
Wire Wire Line
	5500 3250 5500 5450
Wire Wire Line
	5500 5450 6500 5450
Connection ~ 6500 5450
Wire Wire Line
	6500 5450 6500 5350
$Comp
L Mechanical:MountingHole H1
U 1 1 61FE6E87
P 1050 2050
F 0 "H1" H 1150 2096 50  0000 L CNN
F 1 "MountingHole" H 1150 2005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 1050 2050 50  0001 C CNN
F 3 "~" H 1050 2050 50  0001 C CNN
	1    1050 2050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61FE7A0B
P 1050 2300
F 0 "H2" H 1150 2346 50  0000 L CNN
F 1 "MountingHole" H 1150 2255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 1050 2300 50  0001 C CNN
F 3 "~" H 1050 2300 50  0001 C CNN
	1    1050 2300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61FF0CA6
P 1050 2550
F 0 "H3" H 1150 2596 50  0000 L CNN
F 1 "MountingHole" H 1150 2505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 1050 2550 50  0001 C CNN
F 3 "~" H 1050 2550 50  0001 C CNN
	1    1050 2550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61FF9D2F
P 1050 2800
F 0 "H4" H 1150 2846 50  0000 L CNN
F 1 "MountingHole" H 1150 2755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 1050 2800 50  0001 C CNN
F 3 "~" H 1050 2800 50  0001 C CNN
	1    1050 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6202F181
P 7450 850
F 0 "R7" V 7500 1050 50  0000 C CNN
F 1 "2.2K" V 7450 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 850 50  0001 C CNN
F 3 "~" H 7450 850 50  0001 C CNN
F 4 "C17520" H 7450 850 50  0001 C CNN "JLCPCB"
	1    7450 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 62030A71
P 7550 850
F 0 "R8" V 7600 1050 50  0000 C CNN
F 1 "2.2K" V 7550 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7480 850 50  0001 C CNN
F 3 "~" H 7550 850 50  0001 C CNN
F 4 "C17520" H 7550 850 50  0001 C CNN "JLCPCB"
	1    7550 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 62030C8F
P 7650 850
F 0 "R9" V 7700 1050 50  0000 C CNN
F 1 "2.2K" V 7650 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7580 850 50  0001 C CNN
F 3 "~" H 7650 850 50  0001 C CNN
F 4 "C17520" H 7650 850 50  0001 C CNN "JLCPCB"
	1    7650 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 62030E2A
P 7750 850
F 0 "R10" V 7800 1050 50  0000 C CNN
F 1 "2.2K" V 7750 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 850 50  0001 C CNN
F 3 "~" H 7750 850 50  0001 C CNN
F 4 "C17520" H 7750 850 50  0001 C CNN "JLCPCB"
	1    7750 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 62031014
P 7850 850
F 0 "R11" V 7900 1050 50  0000 C CNN
F 1 "2.2K" V 7850 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7780 850 50  0001 C CNN
F 3 "~" H 7850 850 50  0001 C CNN
F 4 "C17520" H 7850 850 50  0001 C CNN "JLCPCB"
	1    7850 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 62031195
P 7950 850
F 0 "R12" V 8000 1050 50  0000 C CNN
F 1 "2.2K" V 7950 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7880 850 50  0001 C CNN
F 3 "~" H 7950 850 50  0001 C CNN
F 4 "C17520" H 7950 850 50  0001 C CNN "JLCPCB"
	1    7950 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 6203132D
P 8050 850
F 0 "R13" V 8100 1050 50  0000 C CNN
F 1 "2.2K" V 8050 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7980 850 50  0001 C CNN
F 3 "~" H 8050 850 50  0001 C CNN
F 4 "C17520" H 8050 850 50  0001 C CNN "JLCPCB"
	1    8050 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 62031511
P 8150 850
F 0 "R14" V 8200 1050 50  0000 C CNN
F 1 "2.2K" V 8150 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8080 850 50  0001 C CNN
F 3 "~" H 8150 850 50  0001 C CNN
F 4 "C17520" H 8150 850 50  0001 C CNN "JLCPCB"
	1    8150 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 600  8150 700 
Wire Wire Line
	8050 700  8050 600 
Connection ~ 8050 600 
Wire Wire Line
	8050 600  8150 600 
Wire Wire Line
	7950 700  7950 600 
Connection ~ 7950 600 
Wire Wire Line
	7950 600  8050 600 
Wire Wire Line
	7850 700  7850 600 
Connection ~ 7850 600 
Wire Wire Line
	7850 600  7950 600 
Wire Wire Line
	7750 700  7750 600 
Connection ~ 7750 600 
Wire Wire Line
	7750 600  7850 600 
Wire Wire Line
	7650 700  7650 600 
Connection ~ 7650 600 
Wire Wire Line
	7650 600  7750 600 
Wire Wire Line
	7550 700  7550 600 
Connection ~ 7550 600 
Wire Wire Line
	7550 600  7650 600 
Wire Wire Line
	7450 700  7450 600 
Wire Wire Line
	7450 600  7550 600 
Wire Wire Line
	7450 1000 7450 1650
Wire Wire Line
	7400 1650 7450 1650
Connection ~ 7450 1650
Wire Wire Line
	7450 1650 8600 1650
Wire Wire Line
	7550 1000 7550 1750
Connection ~ 7550 1750
Wire Wire Line
	7550 1750 9000 1750
Wire Wire Line
	7650 1000 7650 1850
Connection ~ 7650 1850
Wire Wire Line
	7650 1850 9400 1850
Wire Wire Line
	7750 1000 7750 1950
Connection ~ 7750 1950
Wire Wire Line
	7750 1950 9800 1950
Wire Wire Line
	7850 1000 7850 2050
Connection ~ 7850 2050
Wire Wire Line
	7850 2050 9800 2050
Wire Wire Line
	7950 1000 7950 2150
Connection ~ 7950 2150
Wire Wire Line
	7950 2150 9400 2150
Wire Wire Line
	8050 1000 8050 2250
Wire Wire Line
	7400 2250 8050 2250
Connection ~ 8050 2250
Wire Wire Line
	8050 2250 9000 2250
Wire Wire Line
	8150 1000 8150 2350
Connection ~ 8150 2350
Wire Wire Line
	8150 2350 8550 2350
$Comp
L Device:R R5
U 1 1 620DECEB
P 4900 2450
F 0 "R5" V 4950 2300 50  0000 C CNN
F 1 "2.2K" V 4900 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4830 2450 50  0001 C CNN
F 3 "~" H 4900 2450 50  0001 C CNN
F 4 "C17520" H 4900 2450 50  0001 C CNN "JLCPCB"
	1    4900 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 620E0041
P 5050 2450
F 0 "R6" V 5000 2300 50  0000 C CNN
F 1 "2.2K" V 5050 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4980 2450 50  0001 C CNN
F 3 "~" H 5050 2450 50  0001 C CNN
F 4 "C17520" H 5050 2450 50  0001 C CNN "JLCPCB"
	1    5050 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 2600 4900 2850
Wire Wire Line
	4900 2850 5600 2850
Wire Wire Line
	5050 2600 5050 2750
Wire Wire Line
	5050 2750 5600 2750
Wire Wire Line
	5050 2300 5050 2150
Wire Wire Line
	4900 2300 4900 2150
Connection ~ 4900 2150
Wire Wire Line
	4900 2150 5050 2150
$Comp
L Device:R R4
U 1 1 6212F9E9
P 4750 2450
F 0 "R4" V 4800 2300 50  0000 C CNN
F 1 "2.2K" V 4750 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4680 2450 50  0001 C CNN
F 3 "~" H 4750 2450 50  0001 C CNN
F 4 "C17520" H 4750 2450 50  0001 C CNN "JLCPCB"
	1    4750 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 2300 4750 2150
Wire Wire Line
	4900 2150 4750 2150
$Comp
L power:+3V3 #PWR0101
U 1 1 62212BC0
P 6850 800
F 0 "#PWR0101" H 6850 650 50  0001 C CNN
F 1 "+3V3" H 6865 973 50  0000 C CNN
F 2 "" H 6850 800 50  0001 C CNN
F 3 "" H 6850 800 50  0001 C CNN
	1    6850 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0102
U 1 1 62213414
P 3650 2000
F 0 "#PWR0102" H 3650 1850 50  0001 C CNN
F 1 "+3V3" H 3665 2173 50  0000 C CNN
F 2 "" H 3650 2000 50  0001 C CNN
F 3 "" H 3650 2000 50  0001 C CNN
	1    3650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2000 3650 2150
Wire Wire Line
	3650 3650 4550 3650
Connection ~ 4600 3650
Wire Wire Line
	4600 3650 5300 3650
Wire Wire Line
	6850 800  6850 850 
Wire Wire Line
	6850 850  7150 850 
Wire Wire Line
	7150 850  7150 600 
Wire Wire Line
	7150 600  7450 600 
Connection ~ 7450 600 
$Comp
L power:+3V3 #PWR0103
U 1 1 62232794
P 8350 3500
F 0 "#PWR0103" H 8350 3350 50  0001 C CNN
F 1 "+3V3" H 8365 3673 50  0000 C CNN
F 2 "" H 8350 3500 50  0001 C CNN
F 3 "" H 8350 3500 50  0001 C CNN
	1    8350 3500
	1    0    0    -1  
$EndComp
Connection ~ 4750 2150
Connection ~ 3650 2150
Wire Wire Line
	3650 2150 3650 3650
Wire Wire Line
	4750 2600 4750 2650
Wire Wire Line
	4750 2650 5200 2650
$Comp
L Connector:Conn_01x06_Female J6
U 1 1 62438AA6
P 3950 2850
F 0 "J6" H 3842 2325 50  0000 C CNN
F 1 "C14N32P-C3" H 3950 2450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3950 2850 50  0001 C CNN
F 3 "~" H 3950 2850 50  0001 C CNN
	1    3950 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 3150 4300 3050
Wire Wire Line
	4300 2950 4150 2950
Connection ~ 4300 3050
Wire Wire Line
	4300 3050 4300 2950
Wire Wire Line
	4150 3050 4300 3050
Wire Wire Line
	4150 2850 4900 2850
Connection ~ 4900 2850
Wire Wire Line
	4150 2750 5050 2750
Connection ~ 5050 2750
Wire Wire Line
	4150 2650 4750 2650
Connection ~ 4750 2650
Wire Wire Line
	3650 2150 4750 2150
Wire Wire Line
	4150 2550 4600 2550
Wire Wire Line
	4600 2550 4600 2000
Wire Wire Line
	4600 2000 4100 2000
Wire Wire Line
	4100 2000 4100 1850
Connection ~ 4100 1850
Wire Wire Line
	1900 6050 1900 6850
Text Label 2050 6050 0    50   ~ 0
iGND
$Comp
L Device:R R15
U 1 1 625165A4
P 4800 3150
F 0 "R15" V 4700 3150 50  0000 C CNN
F 1 "2.2K" V 4800 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4730 3150 50  0001 C CNN
F 3 "~" H 4800 3150 50  0001 C CNN
F 4 "C17520" H 4800 3150 50  0001 C CNN "JLCPCB"
	1    4800 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 6251717F
P 4800 3350
F 0 "R16" V 4700 3350 50  0000 C CNN
F 1 "2.2K" V 4800 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4730 3350 50  0001 C CNN
F 3 "~" H 4800 3350 50  0001 C CNN
F 4 "C17520" H 4800 3350 50  0001 C CNN "JLCPCB"
	1    4800 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3150 5100 3150
Connection ~ 5100 3150
Wire Wire Line
	5100 3150 5100 4100
Wire Wire Line
	4950 3350 5200 3350
Connection ~ 5200 3350
Wire Wire Line
	5200 3350 5200 3050
Wire Wire Line
	4650 3150 4550 3150
Wire Wire Line
	4550 3150 4550 3350
Connection ~ 4550 3650
Wire Wire Line
	4550 3650 4600 3650
Wire Wire Line
	4650 3350 4550 3350
Connection ~ 4550 3350
Wire Wire Line
	4550 3350 4550 3650
Wire Wire Line
	6150 6250 9150 6250
$Comp
L power:GND #PWR0104
U 1 1 61C8AD44
P 8350 5650
F 0 "#PWR0104" H 8350 5400 50  0001 C CNN
F 1 "GND" H 8450 5550 50  0000 C CNN
F 2 "" H 8350 5650 50  0001 C CNN
F 3 "" H 8350 5650 50  0001 C CNN
	1    8350 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5650 8350 5550
Wire Wire Line
	5600 2550 5200 2550
Wire Wire Line
	5200 2550 5200 2650
NoConn ~ 5600 1950
NoConn ~ 5600 2050
NoConn ~ 5600 2350
NoConn ~ 5600 2450
NoConn ~ 5600 2650
NoConn ~ 7400 3150
NoConn ~ 7400 3050
NoConn ~ 7400 2950
NoConn ~ 7400 2850
NoConn ~ 7400 2750
NoConn ~ 7400 2650
NoConn ~ 6600 1350
NoConn ~ 6500 1350
NoConn ~ 6400 1350
NoConn ~ 6300 1350
NoConn ~ 2650 4450
NoConn ~ 2650 4550
NoConn ~ 1100 5600
NoConn ~ 1200 5600
NoConn ~ 1800 5600
NoConn ~ 1800 6850
NoConn ~ 1200 6850
NoConn ~ 1100 6850
Wire Wire Line
	2800 5750 3250 5750
NoConn ~ 2250 4850
Text Label 4350 2650 0    50   ~ 0
PHA
Text Label 4350 2750 0    50   ~ 0
PHB
Text Label 4350 2850 0    50   ~ 0
EENT
$Comp
L Connector:Conn_01x06_Female J7
U 1 1 61EDD3AC
P 3000 2850
F 0 "J7" H 2892 2325 50  0000 C CNN
F 1 "S9014E-06-ND" H 3000 2450 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 3000 2850 50  0001 C CNN
F 3 "~" H 3000 2850 50  0001 C CNN
F 4 "A9BBA-0603E-ND CABLE" H 3250 3150 50  0000 C CNN "MATE"
	1    3000 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61EDFBF3
P 3350 3100
F 0 "#PWR02" H 3350 2850 50  0001 C CNN
F 1 "GND" H 3355 2927 50  0000 C CNN
F 2 "" H 3350 3100 50  0001 C CNN
F 3 "" H 3350 3100 50  0001 C CNN
	1    3350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 61EDFFD0
P 3350 2450
F 0 "#PWR01" H 3350 2300 50  0001 C CNN
F 1 "VCC" H 3367 2623 50  0000 C CNN
F 2 "" H 3350 2450 50  0001 C CNN
F 3 "" H 3350 2450 50  0001 C CNN
	1    3350 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 2450 3350 2550
Wire Wire Line
	3350 2550 3200 2550
Wire Wire Line
	3350 3100 3350 3050
Wire Wire Line
	3350 3050 3200 3050
Wire Wire Line
	3200 2950 3350 2950
Wire Wire Line
	3350 2950 3350 3050
Connection ~ 3350 3050
Wire Wire Line
	3200 2650 3500 2650
Wire Wire Line
	3200 2750 3500 2750
Wire Wire Line
	3200 2850 3500 2850
Text Label 3300 2650 0    50   ~ 0
PHA
Text Label 3300 2750 0    50   ~ 0
PHB
Text Label 3300 2850 0    50   ~ 0
EENT
$EndSCHEMATC
