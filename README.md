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

This module focuses on **device-level and circuit-level characterization** of a 7nm FinFET-based CMOS inverter using the ASAP7 PDK. DC and transient analyses are performed to extract key electrical parameters and evaluate inverter performance.

---

### NFET Characterization
The NMOS FinFET device is characterized using DC sweep simulations to understand its electrical behavior at the 7nm node.

<details>
<summary><b>Id vs Vgs (Transfer Characteristics)</b></summary>

This plot shows how the drain current varies with gate voltage, helping determine threshold voltage and subthreshold behavior.

<p align="center">
  <img src="images/I_d.jpg" width="650">
</p>

</details>

<details>
<summary><b>Transconductance (gm)</b></summary>

Transconductance represents the sensitivity of drain current to gate voltage. A higher gm indicates stronger gate control and faster switching.

<p align="center">
  <img src="images/gm.jpg" width="650">
</p>

</details>

<details>
<summary><b>Output Resistance (r<sub>out</sub>)</b></summary>

Output resistance reflects channel-length modulation and affects gain and output stability.

<p align="center">
  <img src="images/r_out.jpg" width="650">
</p>

</details>

---

### CMOS Inverter Characterization

The CMOS inverter is constructed using ASAP7 NMOS and PMOS FinFETs and analyzed under DC and transient conditions.

<details>
<summary><b>Inverter Schematic</b></summary>

The schematic shows the FinFET-based CMOS inverter with PMOS as the pull-up network and NMOS as the pull-down network.

<p align="center">
  <img src="images/inverter_sch.jpg" width="650">
</p>

</details>

<details>
<summary><b>Voltage Transfer Characteristics (VTC)</b></summary>

The VTC curve shows the relationship between input and output voltage.  
The point where `Vin = Vout` represents the switching threshold (Vth).

<p align="center">
  <img src="images/vtc_curve.jpg" width="650">
</p>

</details>

<details>
<summary><b>Gain and Switching Threshold Extraction</b></summary>

Maximum gain occurs near the switching region and determines noise immunity and sharpness of transition.

<p align="center">
  <img src="images/gain.jpg" width="650">
</p>

</details>

---

### Noise Margin Analysis

Noise margins indicate the robustness of the inverter against noise.

<details>
<summary><b>Noise Margin Extraction</b></summary>

- **NMH:** Noise margin high  
- **NML:** Noise margin low  

Positive noise margins indicate reliable digital operation.

<p align="center">
  <img src="images/noise.jpg" width="650">
</p>

</details>

---

### Transient Analysis

Transient simulations are used to analyze delay, frequency, and power consumption.

<details>
<summary><b>Propagation Delay & Operating Frequency</b></summary>

Propagation delay is measured at 50% of VDD for both input and output waveforms.  
Operating frequency is derived from total delay.

<p align="center">
  <img src="images/pwr,freq.jpg" width="650">
</p>

</details>

---

### Key Extracted Results

- **Switching Threshold (Vth):** `0.543 V`
- **Maximum Gain:** `≈ 4.3`
- **Drain Current (Id):** `≈ 564 µA`
- **Propagation Delay (tpd):** `≈ 25 ps`
- **Operating Frequency:** `≈ 22.6 GHz`
- **Noise Margins:** Positive and stable

---

### Effect of Transistor Sizing

- Increasing **NMOS width**:
  - Increases pull-down strength
  - Shifts VTC left
  - Reduces fall delay
  - Increases gain

- Increasing **PMOS width**:
  - Improves pull-up strength
  - Shifts VTC right
  - Reduces rise delay
  - Increases power consumption

- **Balanced sizing**:
  - Switching point near `VDD/2`
  - Symmetric rise/fall delays
  - Optimal speed–power trade-off

**Conclusion:**  
Device sizing directly controls inverter speed, power, and noise robustness at advanced nodes.


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
