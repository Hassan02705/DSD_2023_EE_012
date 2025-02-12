# Combinational Circuit Simulation

## Overview
This project focuses on simulating a **combinational logic circuit** using **SystemVerilog** and testing it in **QuestaSim** and **Xcelium** simulators. The circuit implements the equation:

\[
y = (a \cdot b) + c
\]

## Files Included
- `lab3.sv` → SystemVerilog code for the combinational circuit.
- `lab3_tb.sv` → Testbench code for simulating the circuit.
- `full_adder.sv` → SystemVerilog code for a Full Adder circuit.
- `full_adder_tb.sv` → Testbench code for the Full Adder.

## Simulation Setup

### **QuestaSim Instructions**
1. Open **QuestaSim**.
2. Create a new project and add the provided RTL and testbench files.
3. Compile all files by clicking **Compile All**.
4. Simulate the testbench (`lab3_tb.sv` or `full_adder_tb.sv`).
5. View waveform outputs in the **Wave** window.

### **Xcelium Instructions**
1. Open the Linux terminal.
2. Run the following command to compile and simulate:
   ```bash
   xrun lab3.sv lab3_tb.sv -access +rwc
   ```
3. To view waveforms in **SimVision**, run:
   ```bash
   xrun lab3.sv lab3_tb.sv -access +rwc -gui
   ```
4. Click on the module name and select **Add to Waveform Window**.
5. Click **Run** to see the simulation results.

## Deliverables
1. **Truth Table** of the given circuit.
2. **Errors Found & Corrections** in provided Full Adder codes.
3. **SystemVerilog Code** for the circuit in **Figure 3.17**.
4. **Testbench Code** for the circuit.
5. **Simulation Results** from QuestaSim.

## Notes
- Ensure **file names and module names match**.
- Add the **`timescale` directive** at the beginning of RTL and testbench files:
  ```verilog
  `timescale 1ns/10ps
  ```

