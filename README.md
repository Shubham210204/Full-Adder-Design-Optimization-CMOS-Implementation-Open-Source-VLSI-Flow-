# **Full Adder Design & Optimization (CMOS Implementation | Open-Source VLSI Flow)**  

## **Overview**  
This project focuses on the **design, simulation, synthesis, and physical implementation** of a **Full Adder circuit** using **CMOS technology**, optimized for **minimal transistor count**. The entire design flow is executed using **open-source VLSI tools**, ensuring an efficient and fabrication-ready implementation.  

## **Project Workflow**  

### **1. RTL Design & Simulation**  
- Developed **Verilog code** for the Full Adder using **VS Code**.
Verilog module for full adder:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/module.png?raw=true">
<br>

Test bench for the above module:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/tb.png?raw=true">
<br><br>

- Simulated the functionality using **Icarus Verilog (Iverilog)** and analyzed the output waveforms in **GTKWave**.  
Verilog simulation:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/rtl_simulation.png?raw=true">
<br><br>

### **2. Synthesis & Netlist Generation**  
- Synthesized the RTL design to generate a **gate-level netlist** using **Yosys**, ensuring logical correctness.
Synthesised block diagram:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/synthesis.png?raw=true">
<br><br>

### **3. Schematic Design & SPICE Simulation**  
- Created an **optimized schematic** with **minimal transistor usage** in **Xschem**.
Schematic of full adder:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/full_adder.png?raw=true">
<br><br>

- Verified circuit behavior through **SPICE simulations** using **NGSpice**.
According to these inputs:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/input.png?raw=true">
<br>

These are the output waveforms:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/output.png?raw=true">
<br><br>

### **4. Physical Design & Verification**  
- Designed the **layout** in **Magic VLSI**, ensuring **compact area and adherence to fabrication constraints**.
Final physical layout of full adder:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/layout.png?raw=true">
<br><br>

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
