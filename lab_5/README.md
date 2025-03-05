# Combinational Circuit Design: Seven Segment Display using K-Maps

## Experiment Overview
This experiment involved designing a driver circuit for a seven-segment display using Karnaugh Maps (K-Maps). The objective was to control the display of hexadecimal characters (0 to F) on a selected seven-segment display using an FPGA.

## Methodology
1. **Understanding Seven-Segment Display:**
   - The Nexys-A7 board was used, containing eight common anode seven-segment displays.
   - Each display has its anode and cathode connections controlled through transistors.
   
2. **Truth Table and K-Map Minimization:**
   - A truth table was created for the cathodes to represent each hexadecimal digit.
   - K-Maps were used to minimize the Boolean expressions for each segment.
   
3. **Circuit Design:**
   - The reduced Boolean expressions were implemented in a combinational circuit.
   - A modular design was followed, where a `num[3:0]` bus controlled the character to be displayed and a `sel[2:0]` bus selected the specific seven-segment display.
   
4. **Implementation on FPGA:**
   - The design was implemented on the Nexys-A7 board.
   - FPGA segment control and anode control were mapped to respective pins.
   
5. **Simulation and Synthesis:**
   - The design was verified using QuestaSim for simulation.
   - The circuit was synthesized using Xilinx Vivado.
   - The synthesized design was compared with the manually designed circuit.
   
## Results
- The circuit successfully displayed hexadecimal characters (0 to F) on the selected seven-segment display.
- The minimized Boolean equations reduced resource utilization on the FPGA.
- Maximum combinational delay paths were identified in both synthesis and implementation reports.
- The synthesized design matched the manually designed schematic inferred from K-Maps.

## Conclusion
This experiment demonstrated the design and implementation of a seven-segment display driver using combinational logic. K-Map optimization played a crucial role in minimizing the circuit complexity and FPGA resource utilization.
