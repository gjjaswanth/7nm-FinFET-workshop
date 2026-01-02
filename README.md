# VSD Workshop on 7nm FinFET Circuit Design & Characterization  
**Author:** Jaswanth  

This repository contains my work from the **VLSI System Design (VSD) 10-Day Workshop on “7nm FinFET Circuit Design and Characterization using ASAP7 PDK”**, conducted from **26th December to 4th January**.

The workshop focuses on **advanced FinFET device physics**, **technology scaling**, and **SPICE-based circuit characterization** using the **ASAP7 open-source 7nm PDK**, with simulations carried out using **Ngspice** and **Xschem**.

---

## 🚀 Objectives
- Gain a deep understanding of **7nm FinFET device physics**
- Study the **evolution of transistors** from planar CMOS to sub-nanometer nodes
- Perform **SPICE-based device and circuit simulations**
- Characterize a **CMOS inverter**, including:
  - Voltage Transfer Characteristics (VTC)
  - Drain current, transconductance, and gain
  - Noise margins
  - Propagation delay and power consumption
- Design and simulate a **Bandgap Reference Circuit**
  - Analyze temperature and supply voltage dependence
  - Measure reference voltage stability and startup behavior

---

## Why FinFET?
As CMOS technology scaled below **22nm**, planar MOSFETs faced severe **short-channel effects** such as Drain Induced Barrier Lowering (DIBL), threshold voltage roll-off, increased leakage current, and poor electrostatic gate control.

**FinFETs** overcome these limitations by introducing a **3D fin-shaped channel**, where the gate wraps around the channel on multiple sides. This results in stronger electrostatic control, reduced leakage, higher drive current, and improved switching speed.

### Key Advantages
- Suppression of short-channel effects  
- Lower static and dynamic power consumption  
- Higher drive current per unit area  
- Better scalability for advanced technology nodes  

---

## Technology Scaling Overview
- **≤180nm:** Dennard voltage scaling
- **45nm:** High-K Metal Gate (HKMG)
- **22nm:** Introduction of FinFETs
- **7nm:** EUV lithography and optimized FinFETs
- **≤3nm:** Transition to GAA / nanosheet devices
- **Sub-1nm:** Exploration of 2D materials and CFETs

---

## Tools and Technology Stack
- **Technology Node:** ASAP7 (7nm FinFET)
- **Simulator:** Ngspice
- **Schematic Editor:** Xschem
- **Analysis:** DC and Transient simulations

---

## 1. NFET Characterization
- Id vs Vgs
- Id vs Vds
- Threshold voltage extraction
- Transconductance (gm)
- Output resistance (rout)

These plots help analyze short-channel behavior and drive capability at 7nm.

---

## 2. CMOS Inverter Characterization
### Analyses Performed
- Voltage Transfer Characteristics (VTC)
- Switching threshold (Vth)
- Noise margins (NMH, NML)
- Drain current and gain
- Propagation delay
- Transient power consumption

### Observations
- Increasing **PMOS fins** shifts VTC to the right
- Increasing **NMOS fins** shifts VTC to the left
- Increasing fins increases drain current
- Gain increases with NMOS sizing
- Power increases with both NMOS and PMOS sizing

---

## Unique Voltage Assignment
For the username **gjjaswanth**, the ASCII-based unique voltage is: 1073 mV

This voltage is used for inverter characterization across different fin counts.

---

## 3. Bandgap Reference Circuit
A **Bandgap Reference Circuit (BGR)** generates a temperature- and supply-independent reference voltage.

### Concepts
- **CTAT (Complementary To Absolute Temperature)**
  - Based on Vbe of diode-connected transistor
  - Decreases with temperature

- **PTAT (Proportional To Absolute Temperature)**
  - Generated from ΔVbe across devices of different sizes
  - Increases with temperature

The weighted sum of CTAT and PTAT produces a stable **Vref**.

---

## Bandgap Analysis
### Simulations
- DC analysis
- Temperature sweep (-45°C to 125°C)
- Supply voltage sweep
- Transient startup analysis


## Startup Time
Startup time is measured using transient analysis by observing the time taken for **Vref** to settle to steady state.

---

## References
- Bandgap Reference Circuit  
  https://github.com/RSMadhuri66/avsdbgr_7nm  

- Ngspice Documentation  
  https://ngspice.sourceforge.io/docs.html  

- 7nm FinFET Inverter Reference  
  https://github.com/RSMadhuri66/Bandgap-Reference-Circuit-with-SCMB-with-ASAP-7nm-PDK-

---

## Acknowledgements
- **VLSI System Design (VSD)**
- Workshop mentors and contributors


