# Lab 02: MicroBlaze IP

Team A2

## Overview

A 32-bit MicroBlaze soft processor built on the Nexys A7-100T (Artix-7 `xc7a100tcsg324-1`) from Vivado catalog IP only (no HDL written), plus a first embedded C application that prints text over a UART.

Tools: Vivado and Vitis 2025.2.1.

## Hardware design

| Block | Role |
|---|---|
| MicroBlaze | Soft CPU that runs the C program |
| Local memory (LMB), 128 KB | Block RAM for program and data |
| Debug module (MDM) | JTAG access for download and debug |
| AXI Interconnect | Connects the CPU to the peripherals |
| AXI UART Lite (9600 baud, 8N1) | Serial port to the PC via the board's USB-UART |
| AXI Interrupt Controller + Concat | Collects the UART interrupt for the CPU |
| Clocking Wizard + Processor System Reset | 100 MHz system clock and reset |

### Hardware flow

1. Created the Vivado project **with the Nexys A7-100T board selected** (Digilent board files installed), not just the FPGA part.
2. Created the block design and added the MicroBlaze.
3. Ran Block Automation (128 KB local memory, clock and reset logic, debug module).
4. Checked the Clocking Wizard (board clock `sys_clock`, 100 MHz, active-low reset).
5. Ran Connection Automation. External ports: `sys_clock`, `reset`, `usb_uart_rxd`, `usb_uart_txd`.
6. Added AXI UART Lite and connected it to the board's USB-UART.
7. Added the AXI Interrupt Controller and a Concat block (1 port). Wired the UART interrupt to the Concat, the Concat to the controller, and the controller to the MicroBlaze INTERRUPT pin.
8. Validated the design.
9. Created the HDL wrapper (managed by Vivado).
10. Checked in the elaborated design that every port has a package pin and I/O standard.
11. Ran synthesis, implementation and bitstream generation.
12. Exported the hardware as an XSA file including the bitstream.

## Software

1. Created a Vitis platform component from the XSA (standalone OS, `microblaze_0`) and built it.
2. Created an application component from the Hello World template and changed the messages to my own text.
3. Built the application and ran it on the board (Run programs the FPGA and loads the ELF into local memory through the MDM).
4. Read the output in the serial terminal: COM5, 9600 baud, 8 data bits, no parity, 1 stop bit.

Source: [`src/helloworld.c`](src/helloworld.c)

![Terminal output](screenshots/terminal_output.png)

## Problems and fixes

My first attempt failed at bitstream generation with DRC errors NSTD-1 (unspecified I/O standard) and UCIO-1 (no pin location). The cause was a project created with only the FPGA part. Without a board, Connection Automation created generic differential-clock and reset ports (`diff_clock_rtl_0`, `reset_rtl_0`) with no pins. I installed the Digilent board files, recreated the project with the Nexys A7-100T selected, and the ports were then mapped to the correct board pins.

The block design generated no Concat or interrupt controller in my release, so I added the AXI Interrupt Controller and a Concat block manually.
