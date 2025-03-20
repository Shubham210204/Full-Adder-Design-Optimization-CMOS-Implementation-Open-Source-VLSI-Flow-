# **Full Adder Design & Optimization (CMOS Implementation | Open-Source VLSI Flow)**  

## **Introduction**  
This project focuses on the **design, simulation, synthesis, and physical implementation** of a **Full Adder circuit** using **CMOS technology** with the **least number of transistors**. The entire design flow is executed using **open-source VLSI tools**, ensuring an efficient and fabrication-ready implementation.  

## **Objectives**  
- Design a **3-bit Full Adder** circuit with an **optimized transistor count**.  
- Implement the design using **CMOS technology** with open-source EDA tools.  
- Validate functionality through **Verilog simulation and SPICE analysis**.  
- Perform **synthesis, physical layout design, and verification**.  

## **Contents**
1. [Tools and PDK Setup](#1-tools-and-pdk-setup)
   - [1.1 Tools Setup](#11-tools-setup)
   - [1.2 PDK Setup](#12-pdk-setup)  
2. [Full Adder Design Flow](#2-full-adder-design-flow)  
   - [2.1 RTL Design & Simulation](#21-rtl-design--simulation)  
   - [2.2 Synthesis & Netlist Generation](#22-synthesis--netlist-generation)  
   - [2.3 Schematic Design & SPICE Simulation](#23-schematic-design--spice-simulation)  
   - [2.4 Layout Design & Verification](#24-layout-design--verification)  
3. [Results & Discussion](#3-results--discussion)  

## **1. Tools and PDK Setup**  

### **1.1 Tools Setup**

> **⚠️ Note:** Make sure all necessary libraries for these tools are installed on your system.  
> 🔹 At least **50GB storage** and **8GB RAM** are recommended.

The following open-source tools and **SKY130 PDK** were used in this project:  

### **Tools Used:**  

### **1.1.1 VS Code**
**VS Code** is a **lightweight and powerful code editor** used for writing, debugging, and managing Verilog and VLSI design files.  
It offers **extensions for syntax highlighting, simulation, and debugging** to enhance the HDL design workflow.

### **Installation Steps**
```bash
sudo apt update
sudo apt install code
```

### **1.1.2 Icarus Verilog (Iverilog)**
**Icarus Verilog (Iverilog)** is an **open-source Verilog simulator** used for compiling and simulating digital designs.  
It is widely used in **VLSI design, FPGA development, and digital logic verification**.

### **Installation Steps**
```bash
git clone https://github.com/steveicarus/iverilog.git
cd iverilog
sh autoconf.sh
./configure
make
sudo make install
```

### **1.1.3 GTKWave**
**GTKWave** is an **open-source waveform viewer** used for analyzing **digital simulation outputs** from Verilog and VHDL simulations.  
It supports **VCD (Value Change Dump), LXT, LXT2, FST**, and other common waveform formats.

### **Installation Steps**
```bash
git clone https://github.com/gtkwave/gtkwave.git
cd gtkwave
./configure
make
sudo make install
```

### **1.1.4 Yosys**
**Yosys** is an **open-source framework for Verilog RTL synthesis**.  
It is widely used for **logic synthesis, verification, and FPGA/ASIC design flows**.

### **Installation Steps**
```bash
git clone https://github.com/YosysHQ/yosys.git
cd yosys
make
sudo make install
```

### **1.1.5 Xschem**
**Xschem** is a **schematic capture tool** used for designing electronic circuits interactively.  
It provides a **graphical interface** and generates netlists for simulation.

### **Installation Steps**
```bash
git clone https://github.com/StefanSchippers/xschem.git
cd xschem
./configure
make
sudo make install
```

### **1.1.6 Ngspice**
**Ngspice** is an **open-source SPICE simulator** for electronic circuits.  
🔗 **[Ngspice Reference Manual](http://ngspice.sourceforge.net/docs.html)**  

### **Installation Steps**
```bash
sudo apt install -y ngspice
ngspice -v #verify install
```

### **1.1.7 Magic VLSI**  
**Magic** is a **VLSI layout tool** for designing IC layouts.  

### **Installation Steps**
1. Follow the official installation guide at: [OpenCircuitDesign](http://opencircuitdesign.com/magic/)  
2. Recommended configuration options:
```bash
./configure --enable-sky130-pdk
make
sudo make install
```

### **1.1.8 Netgen**
**Netgen** is a tool for comparing netlists, a process known as **LVS (Layout vs. Schematic)**.  
This is an **important step in the VLSI design flow**, ensuring that the **schematic and layout** match.

### **Installation Steps**
```bash
git clone git://opencircuitdesign.com/netgen
cd netgen
./configure
make
sudo make install
```

### **1.2 PDK Setup**
A **Process Design Kit (PDK)** contains libraries, rules, and models for **IC design and fabrication**.
We will use **Google's SKY130 (130nm) PDK**.

### **Installation Steps**
```bash
git clone https://github.com/RTimothyEdwards/open_pdks.git
cd open_pdks
./configure --enable-sky130-pdk
make
sudo make install
```

📌 **Here ends the Tools and PDK setup** 

## **2. Full Adder Design Flow**  

### **2.1 RTL Design & Simulation**  
- Developed **Verilog code** for the Full Adder using **VS Code**.
Verilog module for full adder:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/module.png?raw=true">
<br>

Test bench for the above module:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/tb.png?raw=true">
<br><br>

- Simulated the functionality using **Icarus Verilog (Iverilog)** and analyzed the output waveforms in **GTKWave**.  
Verilog simulation:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/rtl_simulation.png?raw=true">
<br><br>

### **2.2 Synthesis & Netlist Generation**  
- Synthesized the RTL design to generate a **gate-level netlist** using **Yosys**, ensuring logical correctness.
Synthesised block diagram:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/synthesis.png?raw=true">
<br><br>

### **2.3 Schematic Design & SPICE Simulation**  
- Created an **optimized schematic** with **minimal transistor usage** in **Xschem**.
Schematic of full adder:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/full_adder.png?raw=true">
<br><br>

- Verified circuit behavior through **SPICE simulations** using **NGSpice**.
According to these inputs:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/input.png?raw=true">
<br>

These are the output waveforms:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/output.png?raw=true">
<br><br>

### **2.4 Layout Design & Verification**  
- Designed the **layout** in **Magic VLSI**, ensuring **compact area and adherence to fabrication constraints**.
Final physical layout of full adder:<img src="https://github.com/Shubham210204/Full-Adder-Design-Optimization-CMOS-Implementation-Open-Source-VLSI-Flow-/blob/main/images/layout.png?raw=true">
<br><br>

- Performed **Design Rule Check (DRC)** in Magic to validate layout correctness.  
- Conducted **Layout vs Schematic (LVS) check** using **Netgen**, ensuring **schematic-to-layout accuracy**.  
 

## **3. Results & Discussion**  
- Achieved a **functional 3-bit Full Adder** with a **minimal-transistor implementation**.  
- Ensured correct operation across all input states through **Verilog and SPICE simulations**.  
- Layout verified with **DRC-clean and LVS-matching** results.  
- **Optimized area and power consumption** compared to traditional CMOS adders.  
<br>This project successfully demonstrates the **design and optimization of a Full Adder** using **open-source VLSI tools**, covering the entire flow from **RTL to physical verification**. The **minimal-transistor approach** improves **efficiency, area utilization, and power consumption**, making it a suitable design for **low-power digital applications**.  
