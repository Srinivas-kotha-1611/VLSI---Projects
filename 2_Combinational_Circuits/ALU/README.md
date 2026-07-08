# 4-bit Arithmetic Logic Unit (ALU) in Verilog

## Overview

This project implements a **4-bit Arithmetic Logic Unit (ALU)** using Verilog HDL. The ALU performs a set of basic arithmetic and logical operations based on a 3-bit select input. It is one of the fundamental building blocks of a processor and is widely used in CPUs, microcontrollers, and digital signal processors.

This project is intended for learning **digital design**, **Verilog HDL**, and **RTL design** concepts.

---

## Features

* 4-bit input operands (`A` and `B`)
* 3-bit operation select input (`S`)
* 4-bit output (`Y`)
* Combinational logic implementation
* Functional verification using a Verilog testbench

---

## Operations

| Select (S) | Operation   | Description     |
| ---------- | ----------- | --------------- |
| 000        | Addition    | `A + B`         |
| 001        | AND         | `A & B`         |
| 010        | OR          | `A \| B`        |
| 011        | XOR         | `A ^ B`         |
| 100        | NOT         | `~A`            |
| 101        | Left Shift  | `A << 1`        |
| 110        | Right Shift | `A >> 1`        |
| 111        | Reserved    | Output = `0000` |

---

## Project Structure

```text
ALU/
│── alu.v                 // ALU design
│── alu_tb.v              // Testbench
│── simulation.png        // Simulation waveform (optional)
│── rtl_schematic.png     // RTL schematic (optional)
│── README.md
```

---

## Module Description

### Inputs

| Signal | Width  | Description      |
| ------ | ------ | ---------------- |
| A      | 4 bits | First operand    |
| B      | 4 bits | Second operand   |
| S      | 3 bits | Operation select |

### Output

| Signal | Width  | Description                  |
| ------ | ------ | ---------------------------- |
| Y      | 4 bits | Result of selected operation |

---

## Functional Block Diagram

```text
          A -----------+
                       |
                       |
                    +------+
          B ------->| ALU  |-------> Y
                    +------+
                       ^
                       |
                  Select (S)
```

---

## Simulation

The design is verified using a Verilog testbench that applies different values of `A`, `B`, and `S` to test every supported operation.

Example test values:

```text
A = 1010 (10)
B = 0101 (5)
```

Expected outputs:

| Operation   | Output |
| ----------- | ------ |
| Addition    | 1111   |
| AND         | 0000   |
| OR          | 1111   |
| XOR         | 1111   |
| NOT         | 0101   |
| Left Shift  | 0100   |
| Right Shift | 0101   |

---

## Tools Used

* Verilog HDL
* Xilinx Vivado
* Vivado Simulator

---

## Applications

* Arithmetic Logic Units in processors
* Microcontrollers
* Embedded systems
* Digital signal processing
* FPGA-based digital designs
* Computer architecture projects

---

## Future Improvements

* Add subtraction operation
* Add overflow and carry flags
* Add zero and negative flags
* Parameterize the ALU for different data widths
* Implement a fully structural (gate-level) ALU

---

## Learning Outcomes

Through this project, the following concepts were practiced:

* Verilog HDL
* Combinational circuit design
* Arithmetic and logical operations
* Testbench development
* Functional simulation
* RTL design methodology

---

## Author

**Srinivas K.**

GitHub Portfolio – Digital Design & Verilog Projects
