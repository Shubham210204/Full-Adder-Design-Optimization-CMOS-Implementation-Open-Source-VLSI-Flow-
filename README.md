# **Full Adder Design & Optimization (CMOS Implementation | Open-Source VLSI Flow)**  

## **Overview**  
This project focuses on the **design, simulation, synthesis, and physical implementation** of a **Full Adder circuit** using **CMOS technology**, optimized for **minimal transistor count**. The entire design flow is executed using **open-source VLSI tools**, ensuring an efficient and fabrication-ready implementation.  

## **Project Workflow**  

### **1. RTL Design & Simulation**  
- Developed **Verilog code** for the Full Adder using **VS Code**.
<br>
Verilog module for full adder:
<br>

Test bench for the above module:
<br>

- Simulated the functionality using **Icarus Verilog (Iverilog)** and analyzed the output waveforms in **GTKWave**.  
<br>
Verilog simulation:
<br>

### **2. Synthesis & Netlist Generation**  
- Synthesized the RTL design to generate a **gate-level netlist** using **Yosys**, ensuring logical correctness.
<br>
Synthesised block diagram:
<br>

### **3. Schematic Design & SPICE Simulation**  
- Created an **optimized schematic** with **minimal transistor usage** in **Xschem**.
<br>
Schematic of full adder:
<br>

- Verified circuit behavior through **SPICE simulations** using **NGSpice**.
<br>
According to these inputs:
<br>

These are the output waveforms:
<br>

### **4. Physical Design & Verification**  
- Designed the **layout** in **Magic VLSI**, ensuring **compact area and adherence to fabrication constraints**.
<br>
<br>

- Performed **Design Rule Check (DRC)** in Magic to validate layout correctness.  
- Conducted **Layout vs Schematic (LVS) check** using **Netgen**, ensuring **schematic-to-layout accuracy**.  

## **Tools & Technologies Used**  
- **VS Code** – Verilog coding  
- **Icarus Verilog (Iverilog)** – Functional simulation  
- **GTKWave** – Waveform analysis  
- **Yosys** – RTL synthesis and netlist generation  
- **Xschem** – Schematic design  
- **NGSpice** – Circuit simulation  
- **Magic VLSI** – Layout design and DRC verification  
- **Netgen** – LVS verification  

## **Project Outcome**  
Successfully designed and verified a **Full Adder circuit** with an **optimized transistor count**, ensuring **correctness from RTL to layout**. This project demonstrates expertise in **CMOS circuit design, VLSI implementation, and open-source EDA tools**.  
