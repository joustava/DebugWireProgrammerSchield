# DebugWireDebuggerProgrammerShield

> This repository contains [KiCad](https://www.kicad.org/) designs for an Arduino Nano Shield (atm [THT](https://en.wikipedia.org/wiki/Through-hole_technology)) that can be used as a Programmer and Debugger by using the [DebugWire protocol](https://en.wikipedia.org/wiki/DebugWIRE). It supports several AVR's like ATtiny85. The sketch to enable this is not made by me, it can be found from [wholder/DebugWireDebuggerProgrammer](https://github.com/wholder/DebugWireDebuggerProgrammer).

## Getting started

Once assembled, put the shield on top of a Arduino Nano (assuming you have connectors soldered on the front). Then flash the Arduino Nano with the DebugWireDebuggerProgrammer [sketch](https://github.com/wholder/DebugWireDebuggerProgrammer).

It is now possible to either put a Attiny85 in the socket found on the shield, or to connect to your project by means of a In Circuit Serial Programming (ICSP) connector.

If you use [PlatformIO](https://platformio.org/) you can use the supplied config and src to upload a simple firmware that flashes the IND. LED on the shield.

If you don't, please read through the instructions in [DebugWireDebuggerProgrammerShield.md](./DebugWireDebuggerProgrammerShield.md) for details.

## Note

I am a complete beginner at PCB/Schematics design and *cannot* guarantee that this works. It is a work in progress, a hobby project.
If you do find something odd or plain wrong, feel free to open an issue/contribute and I'll happily try to learn from your wisdom!


