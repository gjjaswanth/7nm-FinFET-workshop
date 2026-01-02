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

This module focuses on **device-level and circuit-level characterization** of a 7nm FinFET-based CMOS inverter using the ASAP7 PDK. Both **DC and transient analyses** are performed to extract key electrical parameters and evaluate inverter performance.

---

### NFET Characterization

The NMOS FinFET device is characterized using DC sweep simulations to understand its electrical behavior at the 7nm technology node.

#### Id vs Vgs (Transfer Characteristics)
The transfer characteristic shows how the drain current varies with gate voltage. This plot is used to extract the **threshold voltage** and study subthreshold behavior.

<p align="center">
  <img src="https://github.com/user-attachments/assets/69487d4f-5f95-49c2-9138-e7174db296cb" width="450">
</p>
<p align="center"><b>Drain Current (Id) Characteristics</b></p>

---

#### Transconductance (gm)
Transconductance represents the sensitivity of drain current to changes in gate voltage. A higher gm indicates stronger gate control and faster switching capability.

<p align="center">
  <img src="https://github.com/user-attachments/assets/2800dac1-935a-4590-958c-90e79640d7da" width="450">
</p>

---

#### Output Resistance (r<sub>out</sub>)
Output resistance reflects the effect of channel-length modulation and impacts voltage gain and output stability.

<p align="center">
  <img src="https://github.com/user-attachments/assets/41f55a2d-5baf-4b38-a966-bbf7562800e5" width="450">
</p>

---

### CMOS Inverter Characterization

A CMOS inverter is implemented using ASAP7 NMOS and PMOS FinFET devices and analyzed under DC and transient conditions.

#### Inverter Schematic
The schematic below shows the FinFET-based CMOS inverter with PMOS as the pull-up network and NMOS as the pull-down network.

<p align="center">
  <img src="https://github.com/user-attachments/assets/0dbfde7e-5850-45eb-91e8-91d00d6a6321" width="500">
</p>

---

#### Voltage Transfer Characteristics (VTC)
The VTC curve represents the relationship between input voltage and output voltage.  
The point where **Vin = Vout** corresponds to the **switching threshold (Vth)** of the inverter.

<p align="center">
  <img src="https://github.com/user-attachments/assets/d6cb36dc-24e2-4493-8ad4-de03088a5315" width="500">
</p>

---

#### Gain, Noise Margin Analysis and Switching Threshold
The maximum voltage gain occurs near the switching region, indicating sharp transition behavior and good noise immunity.

Noise margins determine the robustness of the inverter against noise at logic levels.

- **NMH (Noise Margin High):** Positive  
- **NML (Noise Margin Low):** Positive  

This confirms reliable digital operation.

<p align="center">
  <img src="https://github.com/user-attachments/assets/dd486020-0c77-470f-93f0-8845591359d7" width="550">
</p>

---


### Transient Analysis: Delay, Frequency, and Power

Transient simulations are used to extract propagation delay, operating frequency, and power consumption.

- Propagation delay is measured at **50% of VDD**
- Operating frequency is derived from total delay
- Power is calculated from transient current and supply voltage

<p align="center">
  <img src="https://github.com/user-attachments/assets/a2185d31-b409-4af6-a00d-73de01f83f7e" width="550">
</p

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
  - Shifts VTC to the left
  - Reduces fall delay
  - Increases gain

- Increasing **PMOS width**:
  - Improves pull-up strength
  - Shifts VTC to the right
  - Reduces rise delay
  - Increases power consumption

- **Balanced NMOS–PMOS sizing**:
  - Switching threshold near `VDD/2`
  - Nearly symmetric rise and fall delays
  - Best trade-off between speed and power

**Conclusion:**  
Transistor sizing directly impacts inverter speed, power consumption, and noise robustness in advanced FinFET technologies.

## 📘 Module 3: Bandgap Reference Circuit Design (7nm)

A **Bandgap Reference Circuit (BGR)** is a fundamental **analog building block** used to generate a **stable DC reference voltage (Vref)** that is largely independent of **temperature**, **supply voltage**, and **process variations**.  
This design is implemented and characterized using the **ASAP7 7nm FinFET PDK**.

---

## 🔧 Bandgap Reference Circuit Schematic

<p align="center">
  <img src="https://github.com/user-attachments/assets/5e8f0003-f5ca-4627-a3fa-e2a9f217ea6e" width="650">
</p>

The circuit consists of:
- **CTAT generator** producing a voltage proportional to base-emitter voltage behavior (VCTAT)
- **PTAT generator** producing a voltage proportional to absolute temperature (ΔV)
- **Resistive weighting network** to combine PTAT and CTAT components
- **Current mirrors** implemented using 7nm FinFET devices for biasing and matching

---

## ⚙️ Operating Principle

- **CTAT Component:**  
  VCTAT decreases with increase in temperature.

- **PTAT Component:**  
  ΔV (PTAT voltage) increases linearly with temperature.

- **Bandgap Action:**  
  Proper scaling of PTAT and CTAT components results in a **near temperature-independent Vref**.

---

## 📈 Temperature Sweep Analysis

### 🔹 Temperature Coefficient vs Temperature

<p align="center">
  <img src="https://github.com/user-attachments/assets/4db75be0-1538-4b9d-b0d4-0ead609de3ab" width="500">
</p>

- Temperature coefficient moves closer to zero with increasing temperature
- Non-linearity at temperature extremes is due to device-level effects in 7nm FinFETs

---

### 🔹 Reference Voltage (Vref) vs Temperature

<p align="center">
  <img src="https://github.com/user-attachments/assets/376bb156-fcf8-421e-a11e-841047747b97" width="500">
</p>

- Vref decreases gradually with temperature
- Demonstrates reasonable stability across **−40°C to 125°C**

---

### 🔹 PTAT Component (Vref − VCTAT)

<p align="center">
  <img src="https://github.com/user-attachments/assets/edf53af8-9ab2-43b8-9a82-27bc38f1bd45" width="500">
</p>

- PTAT voltage increases monotonically with temperature
- Confirms correct PTAT voltage generation

---

### 🔹 Vref and VCTAT Comparison

<p align="center">
  <img src="https://github.com/user-attachments/assets/b69f9c62-d1e4-4db1-bcf1-7574425e728d" width="500">
</p>

- VCTAT exhibits a strong negative temperature coefficient
- Vref slope is significantly reduced due to PTAT compensation

---


## 📊 Bandgap Characterization Results

| VDD (V) | Temp (°C) | Vref (mV) | Line Regulation (mV/V) | Startup Time (ns) |
|--------|-----------|-----------|------------------------|------------------|
| 0.8    | 27        | 230       | 287.5                  | 6.09             |
| 0.9    | 27        | 256       | 284.4                  | 5.09             |
| 1.0    | 27        | 285       | 285.0                  | 4.00             |
| 1.0    | -40       | 299       | 299.0                  | 72.0             |
| 1.0    | 125       | 268       | 268.0                  | 2.04             |

---

## 🧪 Analyses Performed

- DC operating point analysis  
- Temperature sweep from **-40°C to 125°C**  
- Supply voltage sweep  
- Transient startup analysis  

Measured parameters:
- Vref  
- VPTAT  
- VCTAT  
- Temperature coefficient  
- Line regulation  

---

## ⏱️ Startup Time Analysis

Startup time is measured using **transient simulation**, defined as the time taken for **Vref** to reach and settle within its steady-state value after power-up.

- Faster startup observed at higher temperatures
- Slower startup at low temperatures due to reduced device mobility

---

## ✅ Key Observations

- PTAT and CTAT components are correctly generated
- Partial temperature compensation achieved in 7nm FinFET technology
- Residual temperature slope indicates scope for resistor and sizing optimization
- Design demonstrates feasibility of bandgap references at advanced nodes


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
