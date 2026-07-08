# 4-bit Carry Lookahead Adder (CLA) in Verilog

## Overview

This project implements a **4-bit Carry Lookahead Adder (CLA)** using Verilog HDL. A Carry Lookahead Adder is a high-speed arithmetic circuit designed to overcome the propagation delay of a Ripple Carry Adder (RCA) by computing carry signals in parallel using **Generate** and **Propagate** logic.

The design is functionally verified using a Verilog testbench and synthesized in Xilinx Vivado for timing and resource analysis.

---

## Features

* 4-bit binary addition
* Parallel carry generation
* Reduced carry propagation delay
* Combinational circuit implementation
* Functional verification using a Verilog testbench
* RTL synthesis and timing analysis in Vivado

---

## Theory

A Ripple Carry Adder generates the carry sequentially from one Full Adder to the next, increasing the overall delay as the number of bits increases.

A Carry Lookahead Adder improves performance by computing carry signals in parallel.

### Generate Signal

A carry is generated when both input bits are 1.

```
G = A & B
```

### Propagate Signal

A carry is propagated when exactly one input bit is 1.

```
P = A ^ B
```

### Carry Equations

```
C1 = G0 + (P0 · Cin)

C2 = G1 + (P1 · G0) + (P1 · P0 · Cin)

C3 = G2 + (P2 · G1) + (P2 · P1 · G0)
     + (P2 · P1 · P0 · Cin)

Cout = G3 + (P3 · G2)
      + (P3 · P2 · G1)
      + (P3 · P2 · P1 · G0)
      + (P3 · P2 · P1 · P0 · Cin)
```

The sum bits are calculated as:

```
S0 = P0 ^ Cin

S1 = P1 ^ C1

S2 = P2 ^ C2

S3 = P3 ^ C3
```

---

## Project Structure

```text
Carry_Lookahead_Adder/
│── carry_lookahead_adder.v
│── carry_lookahead_adder_tb.v
│── rtl_schematic.png
│── waveform.png
│── timing_summary.png
│── utilization_report.png
│── README.md
```

---

## Simulation

The design is verified using a dedicated testbench covering multiple input combinations.

Example:

```
A   = 1010
B   = 0101
Cin = 0
```

Output:

```
Sum  = 1111
Cout = 0
```

---

## Synthesis Results

After implementation in **Xilinx Vivado 2024.1**, the timing report indicates:

* Worst-case Data Path Delay: **6.619 ns**
* Critical Path: **A[0] → Cout**
* Maximum Logic Levels: **4**

These values are obtained from the post-implementation timing report and may vary depending on the target FPGA device and synthesis settings.

---

## Tools Used

* Verilog HDL
* Xilinx Vivado 2024.1
* Vivado Simulator

---

## Applications

* Arithmetic Logic Units (ALUs)
* High-speed processors
* Microprocessors
* Digital Signal Processors (DSPs)
* FPGA-based digital systems
* Computer architecture

---

## Advantages

* Faster than Ripple Carry Adder
* Parallel carry computation
* Reduced propagation delay
* Improved processor performance

---

## Limitations

* More complex hardware
* Higher logic utilization than Ripple Carry Adder
* Wiring complexity increases with larger bit widths

---

## Future Improvements

* Parameterize the design for N-bit operation
* Structural (gate-level) implementation
* Compare timing with Ripple Carry Adder
* Implement hierarchical Carry Lookahead blocks for 16-bit and 32-bit adders

---

## Learning Outcomes

This project demonstrates:

* Combinational circuit design
* Carry propagation optimization
* Generate and Propagate logic
* Verilog HDL coding
* Functional simulation
* RTL synthesis
* FPGA timing analysis

---

## Author

**Srinivas K.**

GitHub Portfolio – Verilog HDL & Digital Design Projects
