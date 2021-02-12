# DebugWireDebuggerProgrammer

> A sketch enabling you to program AND debug a certain range of AVR microprocessors.
> It is highly recommended to read the following original articles created by Wayne Holder first:
> https://sites.google.com/site/wayneholder/debugwire
> https://sites.google.com/site/wayneholder/debugwire2
> https://sites.google.com/site/wayneholder/debugwire3

## Quick start

1. Make sure your Arduino IDE has support for [programming ATtiny controllers](https://github.com/SpenceKonde/ATTinyCore)

2. Program the Arduino used as programmer with the `DebugWireDebuggerProgrammer` sketch.

3. Assemble this programmer [circuit](https://sites.google.com/site/wayneholder/debugwire3)

4. Put the switch on the circuit in PROGRAMMING state.
Flash (Upload using programmer) the following sketch onto the ATtiny (or any other supported chip)
```
//
//  Toggle ATTiny85 (Toggle PORTB.PB4, pin 3)
//
//                +-\/-+
//  RESET / PB5 1 |    | 8 Vcc
//   CLKI / PB3 2 |    | 7 PB2 / SCK
//   CLK) / PB4 3 |    | 6 PB1 / MISO
//          Gnd 4 |    | 5 PB0 / MOSI
//                +----+

#define LEDBIT    (1 << 4)            // PB4 (connected to LED to ground via 330 ohm resistor
#define INBIT     (1 << 3)            // PB3 (connected to pushbutton switch to gnd)

void setup() {
  DDRB = LEDBIT;                      // Set PB4 as output, all others as inputs
  PORTB = INBIT;                      // Set pullups on input pin PB3
}

void loop() {
  while (true) {
    PORTB |= LEDBIT;                  // Turn the LED On
    PORTB &= ~LEDBIT;                 // Turn the LED Off
    if ((PINB & INBIT) == 0) {        // Check if switch pressed
      __asm__ ("break\n\t");          // If so, return control to debugger
    }
  }
}
```

5. Switch to DEBUG mode, reset the programmer and open the Arduino IDE serial monitor. You'll be greeted with a little menu.

6. In serial monitor, press '+' to enable on chip debugging.
7. In serial monitor, press 'B' to engage the debugger.

## Program and Debugging

If DWEN Fuse is enabled and you want to Upload new code, follow these steps:

1. Put switch in DEBUG position
2. Open the Serial Monitor (sketch will display menu of commands)
3. Type 'B' and press Send to engage the Debugger
4. Type "EXIT" and press Send to exit the Debugger (this puts the target in a mode where you can change fuse settings)
5. Type '-' (Minus symbol) and press Send to disable the DWEN Fuse
6. Type 'F" and press Send to verify DWEN fuse is disabled
7. Move switch to PROGRAM position (good idea to also press the RESET button on the Arduino)
8. Verify the Arduino IDE is configured properly to compile and upload to your target device
9. Compile and upload your code

If DWEN Fuse is not enabled and you want to Debug your code, follow these steps:

1. Put switch in DEBUG position
2. Open the Serial Monitor (sketch will display menu of commands)
3. Type '+' (Plus symbol) and press Send to enable the DWEN Fuse
4. Type 'B' and press Send to engage the Debugger

If DWEN Fuse is already enabled and you want to debug some more, follow these steps:
1. Put switch in DEBUG position
2. Open the Serial Monitor (sketch will display menu of commands)
3. Type 'B' and press Send to engage the Debugger

NOTE: Make sure you have 'Both NL & CR' and 115200 baud set in the serial monitor.

## Using debugWire

Once in debugWire mode, all the In-System Programming Protocol commands are disabled (as they will not work while debugWire is enabled) and a new set of commands is now available to you.  I'll start by showing a list of the most useful available commands, but resist the temptation to randomly try a few until I can explain a bit more about the proper way to use these commands:

PC            Read and print Program Counter
PC=xxxx       Set Program Counter to xxxx
BREAK         Send Async BREAK to Target (stops execution)
STEP          Single Step One Instruction at Current PC
RESET         Reset Target
SIG           Read and Print Device Signature
REGS          Print Registers labelled as 0-31
Rdd           Print Reg dd, where dd is a decimal value from 0 - 31
Rdd=xx        Set Reg dd to new value xx, where dd is a decimal value from 0 - 31
IOxx          Print I/O space location xx, where xx is address for "in", or "out"
IOxx=xx       Set I/O space location xx to new value
IOxx.0=b      Change bit 'o' (0-7) in I/O location xx to 'b' (1 or 0)
SRAMxxxx      Read and Print 32 bytes from SRAM address xxxx
SBxxxx        Print byte value of SRAM location xxxx
SBxxxx=yy     Set SRAM location xxxx to new byte value yy
SWxxxx        Print word value of SRAM location xxxx
SWxxxx=yyyy  Set SRAM location xxxx to new word value yyyy
EBxxxx        Print byte value of EEPROM location xxxx
EBxxxx=yy     Set EEPROM location xxxx to new byte value yy
EWxxxx        Print word value of EEPROM location xxxx
EWxxxx=yyyy   Set EEPROM location xxxx to new word value yyyy
EXIT          Exit from debugWire mode back to In-System Programming
CMD=xxxx      Send sequence of bytes xxxx... and show response
FWxxxx        Print 64 words (128 bytes) from Flash addr xxxx
FB0000        Print 128 bytes from Flash addr xxxx
Lxxxx         Disassemble 64 words (128 bytes) from Flash addr xxxx
RUN           Start execution on Target at current value of PC (use BREAK to stop)
RUNxxxx yyyy  Start execution on Target at xxxx with A breakpoint at yyyy
RUN xxxx      Start execution on Target at current value of PC with breakpoint at xxxx

The first thing you should note is that, should things stop working as you expect, you can usually get control again by issuing a "BREAK" or "break" command (case does not matter.)  This avoids power cycling the target like the 'B' command, but does send the BREAK signal to it again.  If everything is ok, the response to the BREAK command should be something like:

BREAK: Ok
L0110:  0000  nop

Where the 2nd line shows the address where the target was just about to execute the instruction shown when it was interrupted and stopped by the BREAK command.  If the target code is running normally, a BREAK command should be able to give you control again.  But, **if everything goes south** and even a BREAK command fails to make the target respond, you can 

1. close and reopen the Serial Monitor window to get back to the In-System Programming Protocol menu.  

2. After the "Ready" prompt prints, you can then type the 'B' command which will force a full power cycle.

3. and then issue the BREAK signal.

Note: since the DWEN fuse is still enabled, none of the other In-System Programming commands will work.  You should then be back in debugWire mode.

Unsetting the DWEN Fuse to disable debugWire

If you need to update the code on the ATTiny85, you'll need to first disable the DWEN fuse.  You can do this by following these steps:
Close and Reopen the Serial Monitor Window (or open, if not already open)
Type 'B' and press Send
Type "EXIT" and press Send (this should echo back "debugWire Disabled")
Type the minus (or dash) symbol ('-') and press Send.  (This should echo back "DWEN Disabled")
You can now remove the ATTiny85 from the test circuit and connect it to a programmer to program in new code.

## Arduino Nano Shield

I created a Arduino Nano Shield based on the work done by Wayne Holder, first check out:
- https://sites.google.com/site/wayneholder/debugwire
- https://sites.google.com/site/wayneholder/debugwire2
- https://sites.google.com/site/wayneholder/debugwire3
- https://github.com/wholder/DebugWireDebuggerProgrammer

The Kicad Designs here are for a Arduino Nano Shield, the schematics barely changed, just the PCB has been adjusted to fit an Arduino Nano. I'm just trying out KiCad and creating some designs for fun.

## Resource

- [ATTiny Pinout](https://arduino.pinout.guide/attiny_generic_pinout_and_ISP_pins.png)
- [DebugWireDebuggerProgrammer sketch](https://github.com/wholder/DebugWireDebuggerProgrammer)
- [First installment of blog covering the sketch](https://sites.google.com/site/wayneholder/debugwire)