# VSD Workshop on 7nm FinFET Circuit Design & Characterization  
**Author:** Jaswanth  

This repository contains my work from the **10-Day Workshop on “7nm FinFET Circuit Design and Characterization using ASAP7 PDK”**, conducted by **:contentReference[oaicite:0]{index=0}** from **26th December to 4th January**.

The workshop focuses on **advanced FinFET device physics**, **technology scaling**, and **SPICE-based circuit characterization** using the **ASAP7 open-source 7nm PDK**, with simulations carried out using **Ngspice** and **Xschem**.

---

## 🚀 Objectives
- Understand **7nm FinFET device physics**
- Study **technology scaling limits** of planar CMOS
- Perform **SPICE-based device and circuit simulations**
- Characterize **NFET devices and CMOS inverter**
- Analyze **delay, power, gain, noise margins**
- Design and simulate a **Bandgap Reference Circuit**
- Study **temperature, supply variation, and startup behavior**

---

## Why FinFET?
As CMOS scaled below **22nm**, planar MOSFETs suffered from severe **short-channel effects** such as:
- Drain Induced Barrier Lowering (DIBL)
- Threshold voltage roll-off
- High leakage current
- Poor gate control  

**FinFETs** use a **3D fin-shaped channel**, allowing the gate to control the channel from multiple sides, improving electrostatics and scalability.

### Key Advantages
- Reduced short-channel effects  
- Lower leakage power  
- Higher drive current  
- Better performance at low supply voltages  

---

## Technology Scaling Overview
- **≤180nm:** Dennard scaling
- **45nm:** High-K Metal Gate
- **22nm:** FinFET introduction
- **7nm:** EUV + optimized FinFETs
- **≤3nm:** GAA / nanosheet devices
- **Sub-1nm:** 2D materials & CFETs

---

## Tools and Technology Stack
- **Technology Node:** ASAP7 (7nm FinFET)
- **Simulator:** Ngspice
- **Schematic Editor:** Xschem
- **Analyses:** DC, AC, Transient, Temperature sweep

---

## Unique Voltage Assignment
For the username **gjjaswanth**, the ASCII-based unique value is:

- **Voltage:** `1.073 V`
- **Resistance (Bandgap):** `1073 Ω`

This value is consistently used across all simulations.

---

## Module 2: 7nm FinFET Device & Inverter Characterization

### NFET Characterization
- Id vs Vgs
- Id vs Vds
- Threshold voltage extraction
- Transconductance (gm)
- Output resistance (rout)

These plots help analyze **drive strength** and **short-channel behavior** at 7nm.

---

### CMOS Inverter Characterization

#### Key Results
- **Vth (Switching Threshold):** `0.543 V`
- **Drain Current (Id):** `564 µA`
- **Maximum Gain:** `≈ 4.3`
- **Propagation Delay (tpd):** `≈ 25 ps`
- **Operating Frequency:** `≈ 22.6 GHz`

#### Noise Margins
- **NMH:** Positive and stable
- **NML:** Positive and stable  
Indicates **robust noise immunity**.

---

### Effect of Transistor Sizing

#### Increasing NMOS Width
- Higher pull-down strength
- Increased drain current
- Reduced fall delay
- VTC shifts **left**
- Lower switching threshold

#### Increasing PMOS Width
- Higher pull-up strength
- Faster charging
- Reduced rise delay
- VTC shifts **right**
- Increased power consumption

#### Balanced PMOS & NMOS
- Switching point near `VDD/2`
- Nearly equal rise & fall delays
- Best trade-off between speed and power

**Key Takeaway:**  
Increasing width improves speed but increases power. PMOS/NMOS ratio controls switching point and delay symmetry.

---

## Module 3: Bandgap Reference Circuit Design (7nm)

A **Bandgap Reference Circuit (BGR)** generates a **temperature- and supply-independent reference voltage**.

### Principle
- **CTAT:** Vbe (decreases with temperature)
- **PTAT:** ΔVbe (increases with temperature)
- Weighted sum → **stable Vref**

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
- DC operating point
- Temperature sweep: **-40°C to 125°C**
- Supply voltage sweep
- Transient startup analysis
- Vref, Vptat, Vctat, temperature coefficient

---

### Startup Time
Startup time is measured using **transient analysis**, observing how quickly **Vref settles to steady-state** after power-up.

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
