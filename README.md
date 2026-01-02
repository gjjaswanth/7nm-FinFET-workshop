# VSD Workshop on 7nm FinFET Circuit Design & Characterization  
**Author:** Jaswanth  

This repository contains my work from the **10-Day Workshop on “7nm FinFET Circuit Design and Characterization using ASAP7 PDK”**, conducted by **VLSI System Design (VSD)** from **26th December to 4th January**.

The workshop focuses on **advanced FinFET device physics**, **technology scaling challenges**, and **SPICE-based circuit characterization** using the **ASAP7 open-source 7nm PDK**. All simulations and characterizations were carried out using **Ngspice** for circuit simulation and **Xschem** for schematic capture and visualization.

---

## 🚀 Objectives
- Develop a clear understanding of **7nm FinFET device physics**
- Study **scaling limitations of planar CMOS** and motivation for FinFETs
- Perform **SPICE-based device and circuit simulations**
- Characterize **NFET devices and CMOS inverter circuits**
- Analyze key performance metrics:
  - Delay
  - Power
  - Gain
  - Noise margins
- Design and simulate a **Bandgap Reference Circuit**
- Study the effect of **temperature variation, supply variation, and startup behavior**

---

## Why FinFET?
As CMOS technology scaled below **22nm**, planar MOSFETs began to suffer from severe **short-channel effects**, including:
- Drain Induced Barrier Lowering (DIBL)
- Threshold voltage roll-off
- Increased leakage current
- Poor electrostatic gate control  

**FinFETs** overcome these limitations by introducing a **three-dimensional fin-shaped channel**, where the gate wraps around the channel from multiple sides. This geometry provides much stronger electrostatic control over the channel, significantly reducing leakage and improving device scalability.

### Key Advantages of FinFETs
- Strong suppression of short-channel effects  
- Lower static and dynamic leakage power  
- Higher drive current per unit area  
- Improved performance at reduced supply voltages  

---

## Technology Scaling Overview
- **≤180nm:** Dennard voltage scaling regime
- **45nm:** Introduction of High-K Metal Gate (HKMG)
- **22nm:** Commercial adoption of FinFETs
- **7nm:** EUV lithography with highly optimized FinFET structures
- **≤3nm:** Transition toward Gate-All-Around (GAA) / nanosheet devices
- **Sub-1nm:** Research into 2D materials and Complementary FETs (CFETs)

---

## Tools and Technology Stack
- **Technology Node:** ASAP7 (7nm FinFET)
- **Circuit Simulator:** Ngspice
- **Schematic Editor:** Xschem
- **Analyses Performed:** DC, AC, Transient, Temperature sweep

---

## Unique Voltage Assignment
For the username **gjjaswanth**, the ASCII-based unique value is:

- **Unique Voltage:** `1.073 V`
- **Unique Resistance (Bandgap):** `1073 Ω`

These values are consistently used across inverter and bandgap simulations to ensure uniform characterization.

---

## Module 2: 7nm FinFET Device & Inverter Characterization

### NFET Characterization
The NMOS FinFET device was characterized using DC simulations to extract:
- **Id vs Vgs** (transfer characteristics)
- **Id vs Vds** (output characteristics)
- Threshold voltage (Vth)
- Transconductance (gm)
- Output resistance (rout)

These characteristics provide insight into **drive strength**, **short-channel effects**, and **small-signal behavior** at the 7nm node.

---

### CMOS Inverter Characterization
A CMOS inverter was designed and simulated using ASAP7 NMOS and PMOS FinFET models.

#### Key Results
- **Switching Threshold (Vth):** `0.543 V`
- **Drain Current (Id):** `564 µA`
- **Maximum Voltage Gain:** `≈ 4.3`
- **Propagation Delay (tpd):** `≈ 25 ps`
- **Maximum Operating Frequency:** `≈ 22.6 GHz`

#### Noise Margins
- **NMH:** Positive and stable
- **NML:** Positive and stable  

This indicates **robust noise immunity** and reliable digital switching behavior.

---

### Effect of Transistor Sizing

#### Increasing NMOS Width
- Stronger pull-down network
- Increased drain current
- Reduced fall delay
- VTC curve shifts **left**
- Lower switching threshold

#### Increasing PMOS Width
- Stronger pull-up network
- Faster output charging
- Reduced rise delay
- VTC curve shifts **right**
- Increased dynamic and static power consumption

#### Balanced NMOS–PMOS Sizing
- Switching threshold near `VDD / 2`
- Nearly symmetric rise and fall delays
- Optimal trade-off between speed and power

**Key Insight:**  
Increasing device width improves speed but increases power consumption. The PMOS/NMOS sizing ratio directly controls the inverter switching point and delay symmetry.

---

## Module 3: Bandgap Reference Circuit Design (7nm)

A **Bandgap Reference Circuit (BGR)** is used to generate a **stable DC reference voltage** that is largely independent of **temperature**, **supply voltage**, and **process variations**.

### Operating Principle
- **CTAT Component:** Base–emitter voltage (Vbe), decreases with temperature
- **PTAT Component:** ΔVbe across mismatched devices, increases with temperature
- Proper weighting of PTAT and CTAT terms produces a **temperature-stable Vref**

---

### Bandgap Characterization Results

| VDD (V) | Temp (°C) | Vref (mV) | Line Regulation (mV/V) | Startup Time (ns) |
|------|------|---------|------------------|----------------|
| 0.8  | 27   | 230 | 287.5 | 6.09 |
| 0.9  | 27   | 256 | 284.4 | 5.09 |
| 1.0  | 27   | 285 | 285.0 | 4.00 |
| 1.0  | -40  | 299 | 299.0 | 72.0 |
| 1.0  | 125  | 268 | 268.0 | 2.04 |

---

### Analyses Performed
- DC operating point analysis
- Temperature sweep from **-40°C to 125°C**
- Supply voltage sweep
- Transient startup analysis
- Measurement of:
  - Vref
  - Vptat
  - Vctat
  - Temperature coefficient

---

### Startup Time
Startup time is measured using **transient analysis**, observing the time taken for **Vref** to reach and settle at its steady-state value after power-up.

---

## References
- Bandgap Reference Circuit (ASAP7)  
  https://github.com/RSMadhuri66/avsdbgr_7nm  

- Ngspice Documentation  
  https://ngspice.sourceforge.io/docs.html  

- 7nm FinFET Inverter Reference  
  https://github.com/RSMadhuri66/Bandgap-Reference-Circuit-with-SCMB-with-ASAP-7nm-PDK-

---

## Acknowledgements
- **VLSI System Design (VSD)**
- Workshop mentors and contributors
- Open-source ASAP7 PDK community
