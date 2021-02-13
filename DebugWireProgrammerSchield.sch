EESchema Schematic File Version 4
LIBS:DebugWireProgrammerSchield-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "DebugWireDebuggerProgrammer Arduino Nano Shield"
Date "2021-02-13"
Rev "2.0"
Comp ""
Comment1 "Based on: https://sites.google.com/site/wayneholder/debugwire3"
Comment2 "Author: Joost Oostdijk"
Comment3 ""
Comment4 "joostoostdijk.com"
$EndDescr
$Sheet
S 2400 4700 1375 2425
U 6026BBAE
F0 "arduino-nano-connectors" 50
F1 "arduino-nano-connectors.sch" 50
F2 "D13" B R 3775 4875 50 
F3 "3V3" O L 2400 4875 50 
F4 "AREF" I L 2400 4975 50 
F5 "A0" I R 3775 7000 50 
F6 "A1" I R 3775 6900 50 
F7 "A2" I R 3775 6800 50 
F8 "A3" I R 3775 6700 50 
F9 "A4" I R 3775 6600 50 
F10 "A5" I R 3775 6500 50 
F11 "A6" I R 3775 6400 50 
F12 "A7" I R 3775 6300 50 
F13 "5V" O L 2400 5100 50 
F14 "RST" I L 2400 5225 50 
F15 "GND" I L 2400 5350 50 
F16 "Vin" I L 2400 5500 50 
F17 "D12" B R 3775 4975 50 
F18 "D11" B R 3775 5075 50 
F19 "D10" B R 3775 5175 50 
F20 "D9" B R 3775 5275 50 
F21 "D8" B R 3775 5375 50 
F22 "D7" B R 3775 5475 50 
F23 "D6" B R 3775 5575 50 
F24 "D5" B R 3775 5675 50 
F25 "D4" B R 3775 5775 50 
F26 "D3" B R 3775 5875 50 
F27 "D2" B R 3775 5975 50 
F28 "RX0" I L 2400 5850 50 
F29 "TX1" O L 2400 5975 50 
$EndSheet
$Comp
L Transistor_FET:BS250 Q1
U 1 1 6026DD7B
P 5125 2875
F 0 "Q1" H 5331 2921 50  0000 L CNN
F 1 "TP2104" H 5331 2830 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5325 2800 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 5125 2875 50  0001 L CNN
	1    5125 2875
	0    -1   -1   0   
$EndComp
Text Label 5125 3075 2    50   ~ 0
G
Text Label 5325 2775 0    50   ~ 0
D
Text Label 4925 2775 0    50   ~ 0
S
$Comp
L Device:R R3
U 1 1 6026FC63
P 4425 3275
F 0 "R3" V 4218 3275 50  0000 C CNN
F 1 "51K" V 4309 3275 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4355 3275 50  0001 C CNN
F 3 "~" H 4425 3275 50  0001 C CNN
	1    4425 3275
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BCE Q2
U 1 1 60270368
P 5025 3975
F 0 "Q2" H 5216 4021 50  0000 L CNN
F 1 "2N3904" H 5216 3930 50  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 5225 4075 50  0001 C CNN
F 3 "~" H 5025 3975 50  0001 C CNN
	1    5025 3975
	1    0    0    -1  
$EndComp
Text Label 4825 3975 0    50   ~ 0
B
Text Label 5125 3775 0    50   ~ 0
C
Text Label 5125 4175 2    50   ~ 0
E
$Comp
L Device:R R4
U 1 1 60270B2A
P 4425 3975
F 0 "R4" V 4218 3975 50  0000 C CNN
F 1 "1K" V 4309 3975 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4355 3975 50  0001 C CNN
F 3 "~" H 4425 3975 50  0001 C CNN
	1    4425 3975
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 60271264
P 6075 3125
F 0 "R1" H 6145 3171 50  0000 L CNN
F 1 "1K" H 6145 3080 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6005 3125 50  0001 C CNN
F 3 "~" H 6075 3125 50  0001 C CNN
	1    6075 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 602716A5
P 6075 3925
F 0 "D1" V 6114 3808 50  0000 R CNN
F 1 "PWR" V 6023 3808 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6075 3925 50  0001 C CNN
F 3 "~" H 6075 3925 50  0001 C CNN
	1    6075 3925
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C1
U 1 1 60271DDC
P 5925 2025
F 0 "C1" V 5673 2025 50  0000 C CNN
F 1 "10µF" V 5764 2025 50  0000 C CNN
F 2 "freetronics-footprints:CAP_ELECTRO_D5S2" H 5925 2025 50  0001 C CNN
F 3 "~" H 5925 2025 50  0001 C CNN
	1    5925 2025
	0    1    1    0   
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U1
U 1 1 60274CB8
P 7675 3725
F 0 "U1" H 7145 3771 50  0000 R CNN
F 1 "ATtiny85" H 7145 3680 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7675 3725 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 7675 3725 50  0001 C CNN
	1    7675 3725
	-1   0    0    -1  
$EndComp
Text Label 3825 2025 0    50   ~ 0
RST
Text Label 3825 2225 0    50   ~ 0
D8
Text Label 3825 2775 0    50   ~ 0
Vcc
Text Label 3825 3525 0    50   ~ 0
D10
Text Label 3825 3975 0    50   ~ 0
D9
$Comp
L Switch:SW_SPDT SW1
U 1 1 60277D37
P 6525 2125
F 0 "SW1" H 6525 2410 50  0000 C CNN
F 1 "PRG/DBG" H 6525 2319 50  0000 C CNN
F 2 "digikey-footprints:Switch_Slide_11.6x4mm_EG1218" H 6525 2125 50  0001 C CNN
F 3 "~" H 6525 2125 50  0001 C CNN
	1    6525 2125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3825 3975 4275 3975
Wire Wire Line
	4575 3975 4825 3975
Wire Wire Line
	5125 3075 5125 3275
Wire Wire Line
	3825 2775 4000 2775
Wire Wire Line
	4575 3275 5125 3275
Connection ~ 5125 3275
Wire Wire Line
	5125 3275 5125 3775
Wire Wire Line
	4275 3275 4000 3275
Wire Wire Line
	4000 3275 4000 2775
Connection ~ 4000 2775
Wire Wire Line
	4000 2775 4925 2775
Wire Wire Line
	5325 2775 6075 2775
Wire Wire Line
	6075 2775 6075 2975
Wire Wire Line
	6075 3275 6075 3775
Wire Wire Line
	5125 4175 5125 4500
Wire Wire Line
	5125 4500 6075 4500
Wire Wire Line
	6075 4500 6075 4075
Wire Wire Line
	6075 2775 7675 2775
Wire Wire Line
	7675 2775 7675 2975
Connection ~ 6075 2775
Connection ~ 6075 4500
Wire Wire Line
	7075 3925 6500 3925
Wire Wire Line
	6500 3925 6500 3525
Wire Wire Line
	6500 3525 3825 3525
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 60289778
P 7275 2975
F 0 "JP1" H 7275 3210 50  0000 C CNN
F 1 "jumper" H 7275 3119 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7275 2975 50  0001 C CNN
F 3 "~" H 7275 2975 50  0001 C CNN
	1    7275 2975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6028A521
P 6500 3125
F 0 "R2" H 6570 3171 50  0000 L CNN
F 1 ">10K" H 6570 3080 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 3125 50  0001 C CNN
F 3 "~" H 6500 3125 50  0001 C CNN
	1    6500 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3525 6500 3275
Connection ~ 6500 3525
Wire Wire Line
	7075 2975 6500 2975
Wire Wire Line
	7475 2975 7675 2975
Wire Wire Line
	3825 2025 5775 2025
Wire Wire Line
	6075 2025 6325 2025
Wire Wire Line
	3825 2225 6325 2225
Wire Wire Line
	6725 2125 9250 2125
Wire Wire Line
	9250 2125 9250 4500
Wire Wire Line
	9250 4500 8900 4500
$Comp
L power:GND #PWR0101
U 1 1 6028F248
P 9250 4950
F 0 "#PWR0101" H 9250 4750 50  0001 C CNN
F 1 "GND" H 9255 4777 50  0000 C CNN
F 2 "" H 9250 4900 50  0001 C CNN
F 3 "" H 9250 4900 50  0001 C CNN
	1    9250 4950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60290255
P 6075 2775
F 0 "#FLG0101" H 6075 2850 50  0001 C CNN
F 1 "PWR_FLAG" H 6075 2948 50  0000 C CNN
F 2 "" H 6075 2775 50  0001 C CNN
F 3 "~" H 6075 2775 50  0001 C CNN
	1    6075 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4950 9250 4750
Connection ~ 9250 4500
Text Label 3950 4875 0    50   ~ 0
SCK
Wire Wire Line
	3775 4875 3950 4875
Wire Wire Line
	3775 4975 3950 4975
Wire Wire Line
	3775 5075 3950 5075
Wire Wire Line
	3775 5175 3950 5175
Wire Wire Line
	3775 5275 3950 5275
Wire Wire Line
	3775 5375 3950 5375
Wire Wire Line
	3775 5475 3950 5475
Wire Wire Line
	3775 5575 3950 5575
Wire Wire Line
	3775 5675 3950 5675
Wire Wire Line
	3775 5775 3950 5775
Wire Wire Line
	3775 5875 3950 5875
Wire Wire Line
	3775 5975 3950 5975
Wire Wire Line
	3775 6300 3950 6300
Wire Wire Line
	3775 6400 3950 6400
Wire Wire Line
	3775 6500 3950 6500
Wire Wire Line
	3775 6600 3950 6600
Wire Wire Line
	3775 6700 3950 6700
Wire Wire Line
	3775 6800 3950 6800
Wire Wire Line
	3775 6900 3950 6900
Wire Wire Line
	3775 7000 3950 7000
Wire Wire Line
	2400 4875 2200 4875
Wire Wire Line
	2400 4975 2200 4975
Wire Wire Line
	2400 5100 2200 5100
Wire Wire Line
	2400 5225 2200 5225
Wire Wire Line
	2400 5350 2200 5350
Wire Wire Line
	2400 5500 2200 5500
Wire Wire Line
	2400 5850 2200 5850
Wire Wire Line
	2400 5975 2200 5975
Text Label 3950 4975 0    50   ~ 0
MISO
Text Label 3950 5075 0    50   ~ 0
MOSI
Text Label 3950 5175 0    50   ~ 0
D10
Text Label 3950 5275 0    50   ~ 0
D9
Text Label 2200 5100 2    50   ~ 0
Vcc
Text Label 2200 5225 2    50   ~ 0
RST
Text Label 2200 5350 2    50   ~ 0
GND
NoConn ~ 3950 6300
NoConn ~ 3950 6400
NoConn ~ 3950 6500
NoConn ~ 3950 6600
NoConn ~ 3950 6700
NoConn ~ 3950 6800
NoConn ~ 3950 6900
NoConn ~ 3950 7000
NoConn ~ 2200 5850
NoConn ~ 2200 5975
NoConn ~ 2200 5500
NoConn ~ 2200 4975
NoConn ~ 2200 4875
Text Label 3950 5375 0    50   ~ 0
D8
NoConn ~ 3950 5475
NoConn ~ 3950 5575
NoConn ~ 3950 5675
NoConn ~ 3950 5775
NoConn ~ 3950 5875
NoConn ~ 3950 5975
Text Label 7075 3425 2    50   ~ 0
MOSI
Text Label 7075 3525 2    50   ~ 0
MISO
Text Label 7075 3625 2    50   ~ 0
SCK
Text Label 7075 3725 2    50   ~ 0
PB3(TEST)
NoConn ~ 7075 3825
$Comp
L Device:LED D2
U 1 1 602CC3E0
P 8900 3925
F 0 "D2" V 8939 3808 50  0000 R CNN
F 1 "IND." V 8848 3808 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8900 3925 50  0001 C CNN
F 3 "~" H 8900 3925 50  0001 C CNN
	1    8900 3925
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 602CD19B
P 8900 3100
F 0 "R5" H 8970 3146 50  0000 L CNN
F 1 "1K" H 8970 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8830 3100 50  0001 C CNN
F 3 "~" H 8900 3100 50  0001 C CNN
	1    8900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3250 8900 3775
Wire Wire Line
	8900 4075 8900 4500
Connection ~ 8900 4500
Text Label 8900 2500 0    50   ~ 0
PB3(TEST)
Wire Wire Line
	8900 2500 8900 2950
Wire Wire Line
	6075 4500 7675 4500
Wire Wire Line
	7675 4325 7675 4500
Connection ~ 7675 4500
Wire Wire Line
	7675 4500 8900 4500
Text Label 9250 4875 0    50   ~ 0
GND
Wire Wire Line
	7675 3125 7675 2975
Connection ~ 7675 2975
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 602E26C2
P 9250 4750
F 0 "#FLG0102" H 9250 4825 50  0001 C CNN
F 1 "PWR_FLAG" V 9250 4878 50  0000 L CNN
F 2 "" H 9250 4750 50  0001 C CNN
F 3 "~" H 9250 4750 50  0001 C CNN
	1    9250 4750
	0    1    1    0   
$EndComp
Connection ~ 9250 4750
Wire Wire Line
	9250 4750 9250 4500
Connection ~ 7675 2775
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 602E3C51
P 8325 2675
F 0 "J3" H 8375 2350 50  0000 C CNN
F 1 "ICSP" H 8375 2441 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 8325 2675 50  0001 C CNN
F 3 "~" H 8325 2675 50  0001 C CNN
	1    8325 2675
	-1   0    0    1   
$EndComp
Text Label 7075 3925 2    50   ~ 0
PB5
Text Label 8525 2575 0    50   ~ 0
PB5
Text Label 8525 2675 0    50   ~ 0
SCK
Text Label 8525 2775 0    50   ~ 0
MISO
Wire Wire Line
	8025 2775 7675 2775
Wire Wire Line
	7675 2775 7675 2750
Text Label 8025 2675 2    50   ~ 0
MOSI
Text Label 8025 2575 2    50   ~ 0
GND
Text Label 6325 2025 2    50   ~ 0
PROG
Text Label 6325 2225 2    50   ~ 0
DBG
$EndSCHEMATC
