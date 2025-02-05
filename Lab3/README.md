# Combinational Circuit Design Using Vivado

## Overview
This project involves implementing a simple combinational circuit using the Vivado Design Suite and an FPGA. The circuit performs the logical operation:

\[ y = (a \cdot b) + c \]

We will use structural modeling in SystemVerilog to design the circuit and synthesize it on an FPGA.

## Repository Structure
The following files will be included in the GitHub repository:
- `docs/` - Contains the schematic diagram of the circuit.
- `rtl/` - Contains the SystemVerilog code for the circuit.
- `constraints/` - Contains the `.xdc` constraints file.
- `README.md` - Documentation for the project.

## Requirements
- Xilinx Vivado Design Suite (WebPack Edition)
- Nexys A7 100T FPGA board
- SystemVerilog for circuit implementation
- Basic knowledge of FPGA pin assignments and synthesis

## Project Setup
### 1. Creating a New Project in Vivado
1. Open Vivado and click on **Create Project**.
2. Name the project and choose **RTL Project**.
3. Select the FPGA board: **Nexys A7 100T (xc7a100tcsg324-1)**.
4. Click **Finish** to initialize the project.

### 2. Adding RTL File
1. Click **Add Sources** > **Create File**.
2. Choose **SystemVerilog**, name the file with `.sv` extension.
3. Define inputs and outputs in the module.

#### SystemVerilog Code:
```verilog
module Lab3(output y, input a, b, c);
  assign y = a & b | c;
endmodule
```

### 3. Assigning FPGA Pins
#### Using I/O Planning:
1. Open **Elaborated Design**.
2. Assign input/output pins under **Package Pin**.
3. Save the constraints file as `.xdc`.

#### Constraints File Example:
```tcl
set_property PACKAGE_PIN J15 [get_ports {a}]
set_property PACKAGE_PIN L16 [get_ports {b}]
set_property PACKAGE_PIN M13 [get_ports {c}]
set_property PACKAGE_PIN H17 [get_ports {y}]
set_property IOSTANDARD LVCMOS33 [get_ports {a b c y}]
```

### 4. Synthesizing and Implementing the Design
1. Click **Run Synthesis**.
2. Click **Run Implementation**.
3. Generate **Bitstream**.
4. Connect FPGA and program it using **Open Hardware Manager**.

## Truth Table
Below is the truth table for the circuit:

| a | b | c | x  |  y |
|---|---|---|----|----|
| 0 | 0 | 0 |  1 |  0 |
| 0 | 0 | 1 |  0 |  0 |
| 0 | 1 | 0 |  0 |  0 |
| 0 | 1 | 1 |  1 |  0 |
| 1 | 0 | 0 |  0 |  0 |
| 1 | 0 | 1 |  1 |  0 |
| 1 | 1 | 0 |  0 |  1 |
| 1 | 1 | 1 |  1 |  1 |

Fill in the values for `y1` and `y2` based on circuit behavior.

## Timing and Resource Analysis
- Check **Report Timing Summary** for maximum combinational delay.
- Check **Synthesis Report Utilization** for FPGA resource usage.

## Deliverables
- [ ] **Truth Table** of the implemented circuit.
- [ ] **Maximum Combinational Delay** identified from synthesis report.
- [ ] **Resource Utilization** details from the synthesis report.
- [ ] **SystemVerilog Code** implementing the circuit using structural modeling.
- [ ] **Bitstream file** programmed onto the FPGA.

## Notes
- Ensure all inputs are tied to board switches and outputs to LEDs.
- Collaboration is encouraged but avoid direct code copying.
- Understanding the code is crucial for evaluation.

## Acknowledgments
This project follows the lab manual from **University of Engineering and Technology, Lahore**, authored by **Mr. Ali Imran and Ms. Shehzeen Malik**.

---
