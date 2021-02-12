//
//  Toggle ATTiny85 (Toggle PORTB.PB4, pin 3)
//
//                +-\/-+
//  RESET / PB5 1 |    | 8 Vcc
//   CLKI / PB3 2 |    | 7 PB2 / SCK
//   CLK) / PB4 3 |    | 6 PB1 / MISO
//          Gnd 4 |    | 5 PB0 / MOSI
//                +----+
#include "Arduino.h"

#define LEDBIT    (1 << 4)            // PB4 (connected to LED to ground via 330 ohm resistor
#define INBIT     (1 << 3)            // PB3 (connected to pushbutton switch to gnd)

void setup() {
  DDRB = LEDBIT;                      // Set PB4 as output, all others as inputs
  PORTB = INBIT;                      // Set pullups on input pin PB3
}

void loop() {
  while (true) {
    PORTB |= LEDBIT;                  // Turn the LED On  
    delay(250);
    PORTB &= ~LEDBIT;                 // Turn the LED Off
    delay(250);

    if ((PINB & INBIT) == 0) {        // Check if switch pressed
      __asm__ ("break\n\t");          // If so, return control to debugger
    }
  }
}