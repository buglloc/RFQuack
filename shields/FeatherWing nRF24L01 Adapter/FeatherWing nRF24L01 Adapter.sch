EESchema Schematic File Version 4
LIBS:FeatherWing nRF24L01 Adapter-cache
EELAYER 30 0
EELAYER END
$Descr User 11980 8268
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
Wire Wire Line
	2500 4700 2400 4700
Connection ~ 2500 4700
Text Label 2500 4700 0    10   ~ 0
GND
Wire Wire Line
	2800 4300 2800 4250
Text Label 2800 4300 0    10   ~ 0
3.3V
Wire Wire Line
	2400 4300 2500 4300
Wire Wire Line
	2500 4300 2700 4300
Connection ~ 2500 4300
Wire Wire Line
	3800 4300 3800 3500
Text Label 3800 4200 1    70   ~ 0
MOSI
Wire Wire Line
	3900 3500 3900 4300
Text Label 3900 4200 1    70   ~ 0
MISO
Wire Wire Line
	3700 3500 3700 4300
Text Label 3700 4200 1    70   ~ 0
SCK
Text Label 7550 3200 0    70   ~ 0
CE
Text Label 7550 3100 0    70   ~ 0
CS
Text Label 7550 3000 0    70   ~ 0
IRQ
Wire Wire Line
	3500 4000 3500 3500
Wire Wire Line
	3400 4000 3400 3500
Wire Wire Line
	3300 4000 3300 3500
Wire Wire Line
	3200 4000 3200 3500
Wire Wire Line
	3100 4000 3100 3500
Wire Wire Line
	2900 4000 2900 3500
Wire Wire Line
	3200 1500 3400 1800
Wire Wire Line
	3300 1500 3500 1800
Wire Wire Line
	3600 3500 3600 3700
Wire Wire Line
	3600 3700 5100 3700
Text Label 4600 3700 0    70   ~ 0
F
Wire Wire Line
	4100 3500 4100 3900
Wire Wire Line
	4100 3900 5100 3900
Text Label 4600 3900 0    70   ~ 0
TX
Wire Wire Line
	4000 3500 4000 3800
Wire Wire Line
	5100 3800 4000 3800
Text Label 4600 3800 0    70   ~ 0
RX
Wire Wire Line
	3500 1500 3600 1800
Wire Wire Line
	3600 1500 3700 1800
Wire Wire Line
	3700 1500 3800 1800
Wire Wire Line
	3800 1500 3900 1800
Wire Wire Line
	3900 1500 4000 1800
Wire Wire Line
	4100 1500 4100 1800
Wire Wire Line
	4200 1500 4200 1800
Wire Wire Line
	4200 3500 4200 3600
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:3.3V #U$01
U 1 1 4D826FCC
P 2800 4400
F 0 "#U$01" H 2800 4400 50  0001 C CNN
F 1 "3.3V" H 2740 4440 42  0000 L BNN
F 2 "" H 2800 4400 50  0001 C CNN
F 3 "" H 2800 4400 50  0001 C CNN
	1    2800 4400
	-1   0    0    1   
$EndComp
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:GND #GND03
U 1 1 E2B99DEF
P 2500 4800
F 0 "#GND03" H 2500 4800 50  0001 C CNN
F 1 "GND" H 2440 4700 42  0000 L BNN
F 2 "" H 2500 4800 50  0001 C CNN
F 3 "" H 2500 4800 50  0001 C CNN
	1    2500 4800
	-1   0    0    -1  
$EndComp
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:HEADER-1X376MIL JP5
U 1 1 EB76D72F
P 8050 3100
F 0 "JP5" H 7800 3325 59  0000 L BNN
F 1 "HEADER-1X376MIL" H 7800 2800 59  0000 L BNN
F 2 "FeatherWing nRF24L01 Adapter:1X03_ROUND_76" H 8050 3100 50  0001 C CNN
F 3 "" H 8050 3100 50  0001 C CNN
	1    8050 3100
	1    0    0    -1  
$EndComp
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:HEADER-1X376MIL JP4
U 1 1 24D01FBA
P 5200 3800
F 0 "JP4" H 4950 4025 59  0000 L BNN
F 1 "HEADER-1X376MIL" H 4950 3500 59  0000 L BNN
F 2 "FeatherWing nRF24L01 Adapter:1X03_ROUND_76" H 5200 3800 50  0001 C CNN
F 3 "" H 5200 3800 50  0001 C CNN
	1    5200 3800
	1    0    0    -1  
$EndComp
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:HEADER-1X576MIL JP7
U 1 1 F6917365
P 3700 1400
F 0 "JP7" H 3450 1725 59  0001 L BNN
F 1 "HEADER-1X576MIL" H 3800 1600 59  0000 L BNN
F 2 "FeatherWing nRF24L01 Adapter:1X05_ROUND_76" H 3700 1400 50  0001 C CNN
F 3 "" H 3700 1400 50  0001 C CNN
	1    3700 1400
	0    -1   -1   0   
$EndComp
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:MOUNTINGHOLE2.5 U$7
U 1 1 9C312127
P 8000 6000
F 0 "U$7" H 8000 6000 50  0001 C CNN
F 1 "MOUNTINGHOLE2.5" H 8000 6000 50  0001 C CNN
F 2 "FeatherWing nRF24L01 Adapter:MOUNTINGHOLE_2.5_PLATED" H 8000 6000 50  0001 C CNN
F 3 "" H 8000 6000 50  0001 C CNN
	1    8000 6000
	1    0    0    -1  
$EndComp
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:MOUNTINGHOLE2.5 U$8
U 1 1 34842870
P 8000 6300
F 0 "U$8" H 8000 6300 50  0001 C CNN
F 1 "MOUNTINGHOLE2.5" H 8000 6300 50  0001 C CNN
F 2 "FeatherWing nRF24L01 Adapter:MOUNTINGHOLE_2.5_PLATED" H 8000 6300 50  0001 C CNN
F 3 "" H 8000 6300 50  0001 C CNN
	1    8000 6300
	1    0    0    -1  
$EndComp
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:FIDUCIAL"" FID1
U 1 1 5F8860D4
P 8300 6100
F 0 "FID1" H 8300 6100 50  0001 C CNN
F 1 "FIDUCIAL\"\"" H 8300 6100 50  0001 C CNN
F 2 "FeatherWing nRF24L01 Adapter:FIDUCIAL_1MM" H 8300 6100 50  0001 C CNN
F 3 "" H 8300 6100 50  0001 C CNN
	1    8300 6100
	1    0    0    -1  
$EndComp
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:FIDUCIAL"" FID2
U 1 1 7EDAA0E9
P 8300 6200
F 0 "FID2" H 8300 6200 50  0001 C CNN
F 1 "FIDUCIAL\"\"" H 8300 6200 50  0001 C CNN
F 2 "FeatherWing nRF24L01 Adapter:FIDUCIAL_1MM" H 8300 6200 50  0001 C CNN
F 3 "" H 8300 6200 50  0001 C CNN
	1    8300 6200
	1    0    0    -1  
$EndComp
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:FRAME_A4_ADAFRUIT #U$17
U 1 1 158347E1
P 1100 7300
F 0 "#U$17" H 1100 7300 50  0001 C CNN
F 1 "FRAME_A4_ADAFRUIT" H 1100 7300 50  0001 C CNN
F 2 "" H 1100 7300 50  0001 C CNN
F 3 "" H 1100 7300 50  0001 C CNN
	1    1100 7300
	1    0    0    -1  
$EndComp
Text Notes 7700 850  0    59   ~ 0
RADIO MODULE
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:SWITCH_TACT_SMT4.6X2.8 SW1
U 1 1 13E8CF2B
P 2400 4500
F 0 "SW1" H 2300 4750 42  0000 L BNN
F 1 "SWITCH_TACT_SMT4.6X2.8" H 2300 4300 42  0000 L BNN
F 2 "FeatherWing nRF24L01 Adapter:BTN_KMR2_4.6X2.8" H 2400 4500 50  0001 C CNN
F 3 "" H 2400 4500 50  0001 C CNN
	1    2400 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DD235DC
P 2800 4250
F 0 "#FLG0101" H 2800 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 4378 50  0000 L CNN
F 2 "" H 2800 4250 50  0001 C CNN
F 3 "~" H 2800 4250 50  0001 C CNN
	1    2800 4250
	0    1    1    0   
$EndComp
Connection ~ 2800 4250
NoConn ~ 4200 3600
Wire Wire Line
	7550 2300 7850 2300
$Comp
L Device:C C2
U 1 1 5DD3C1AE
P 8000 2300
F 0 "C2" V 7748 2300 50  0000 C CNN
F 1 "47µF" V 7839 2300 50  0000 C CNN
F 2 "FeatherWing nRF24L01 Adapter:0805-SMD_C" H 8038 2150 50  0001 C CNN
F 3 "~" H 8000 2300 50  0001 C CNN
	1    8000 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 2300 8450 2300
Wire Wire Line
	7950 3200 7450 3200
Wire Wire Line
	7450 3100 7950 3100
Wire Wire Line
	7950 3000 7450 3000
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:nRF24L01 U1
U 1 1 5DD2ACAB
P 7950 2300
F 0 "U1" H 8000 3565 50  0000 C CNN
F 1 "nRF24L01" H 8000 3474 50  0000 C CNN
F 2 "FeatherWing nRF24L01 Adapter:nRF24L01_Breakout" H 7950 2300 50  0001 C CNN
F 3 "" H 7950 2300 50  0001 C CNN
	1    7950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2300 7550 1750
Wire Wire Line
	7550 1750 7600 1750
Wire Wire Line
	8450 2300 8450 1750
Wire Wire Line
	8450 1750 8400 1750
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:3.3V #U$02
U 1 1 5DD3B7BA
P 7550 2400
F 0 "#U$02" H 7550 2400 50  0001 C CNN
F 1 "3.3V" H 7490 2440 42  0000 L BNN
F 2 "" H 7550 2400 50  0001 C CNN
F 3 "" H 7550 2400 50  0001 C CNN
	1    7550 2400
	-1   0    0    1   
$EndComp
Connection ~ 7550 2300
Wire Wire Line
	7600 1300 7450 1300
Wire Wire Line
	7600 1450 7450 1450
Wire Wire Line
	7600 1600 7450 1600
Wire Wire Line
	8400 1300 8600 1300
Wire Wire Line
	8400 1450 8600 1450
Wire Wire Line
	8400 1600 8600 1600
Text Label 8450 1600 0    50   ~ 0
CE
Text Label 8450 1450 0    50   ~ 0
SCK
Text Label 8450 1300 0    50   ~ 0
MISO
Text Label 7450 1300 0    50   ~ 0
IRQ
Text Label 7450 1450 0    50   ~ 0
MOSI
Text Label 7450 1600 0    50   ~ 0
CS
Text Label 7550 2100 1    50   ~ 0
VDD
Text Label 8450 1950 3    50   ~ 0
GND
Text Label 2700 3800 1    50   ~ 0
RST
Text Label 2800 3800 1    50   ~ 0
3V
Text Label 2900 3800 1    50   ~ 0
AREF
Text Label 3100 3800 1    50   ~ 0
M
Text Label 3200 3800 1    50   ~ 0
L
Text Label 3300 3800 1    50   ~ 0
I
Text Label 3400 3800 1    50   ~ 0
H
Text Label 3500 3800 1    50   ~ 0
G
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:FEATHERWING_NOHOLES MS1
U 1 1 1CFA43A0
P 2500 3300
F 0 "MS1" H 2500 3300 50  0001 C CNN
F 1 "FEATHERWING_NOHOLES" H 2500 3300 50  0001 C CNN
F 2 "FeatherWing nRF24L01 Adapter:FEATHERWING_NOHOLES" H 2500 3300 50  0001 C CNN
F 3 "" H 2500 3300 50  0001 C CNN
	1    2500 3300
	1    0    0    -1  
$EndComp
NoConn ~ 3100 1800
NoConn ~ 3200 1800
NoConn ~ 3300 1800
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:HEADER-1X2ROUND JP6
U 1 1 C9C1B9CE
P 4200 1400
F 0 "JP6" H 3950 1625 59  0001 L BNN
F 1 "HEADER-1X2ROUND" H 4300 1500 59  0000 L BNN
F 2 "FeatherWing nRF24L01 Adapter:1X02_ROUND" H 4200 1400 50  0001 C CNN
F 3 "" H 4200 1400 50  0001 C CNN
	1    4200 1400
	0    -1   -1   0   
$EndComp
Text Label 3300 1400 1    50   ~ 0
12
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:HEADER-1X570MIL JP2
U 1 1 93E45719
P 3100 1400
F 0 "JP2" H 2850 1725 59  0001 L BNN
F 1 "HEADER-1X570MIL" H 3200 1350 59  0000 L BNN
F 2 "FeatherWing nRF24L01 Adapter:1X02_ROUND" H 3100 1400 50  0001 C CNN
F 3 "" H 3100 1400 50  0001 C CNN
	1    3100 1400
	0    -1   -1   0   
$EndComp
Text Label 3200 1400 1    50   ~ 0
13
Wire Wire Line
	2700 4000 2700 3500
Wire Wire Line
	2700 4300 2700 4000
Connection ~ 2700 4000
Wire Wire Line
	2800 4250 2800 4000
Wire Wire Line
	2800 4000 2800 3500
Connection ~ 2800 4000
$Comp
L FeatherWing_nRF24L01_Adapter-eagle-import:HEADER-1X970MIL JP1
U 1 1 A75A2B47
P 3100 4100
F 0 "JP1" H 2850 4625 59  0001 L BNN
F 1 "HEADER-1X970MIL" H 3200 4500 59  0000 L BNN
F 2 "FeatherWing nRF24L01 Adapter:1X09_ROUND_70" H 3100 4100 50  0001 C CNN
F 3 "" H 3100 4100 50  0001 C CNN
	1    3100 4100
	0    1    1    0   
$EndComp
NoConn ~ 3000 3500
Text Label 3600 1800 1    50   ~ 0
A
Text Label 3700 1800 1    50   ~ 0
B
Text Label 3800 1800 1    50   ~ 0
C
Text Label 3900 1800 1    50   ~ 0
D
Text Label 4000 1800 1    50   ~ 0
E
$EndSCHEMATC
