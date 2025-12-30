# Module 2 Assignment

## 7nm FinFET Device and Inverter Characterization

This repository contains the **Module 2 assignment** focused on the **characterization of a 7nm FinFET-based CMOS inverter**. The work involves device-level and circuit-level analysis using simulation results to study inverter behavior, performance, and design trade-offs.

---

## Assignment Details

* **Student Username:** gjjaswanth
* **Voltage Selection Method:**
  The ASCII sum of the username (`gjjaswanth`) is **1.073**, hence
  **VDD (V2) = 1.073 V**

---

## Objectives

* Plot and analyze the **Voltage Transfer Characteristics (VTC)** of a 7nm FinFET inverter
* Extract key inverter parameters such as:

  * Threshold voltage (Vth)
  * Drain current (Id)
  * Transconductance (gm)
  * Output resistance (r_out)
* Evaluate:

  * Gain
  * Noise margins
  * Power consumption
  * Propagation delay
  * Operating frequency
* Study the effect of **PMOS/NMOS width variation** on inverter performance

---

## Results Summary

### 1. Voltage Transfer Characteristics (VTC)

* Shows the relationship between **input voltage (Vin)** and **output voltage (Vout)**
* **Switching Threshold (Vth):**
  [
  V_{th} = 0.543{V}
  ]

---

### 2. Drain Current

* **Maximum Drain Current (Id):**
  [
  Id = 564u A
  ]

---

### 3. Transconductance (gm)

* Extracted from the slope of the Id–Vgs curve
* Indicates the gain capability of the FinFET device

---

### 4. Output Resistance (r_out)

* Obtained from small-signal output characteristics
* Influences gain and frequency response

---

### 5. Gain, Noise Margin & gm (Extracted Values)

* **Maximum Gain (Av):** ~ 4.3
* **VIL:** 0.5536 V
* **VIH:** 0.5579 V
* **VOL:** 0.4793 V
* **VOH:** 0.4980 V
* **Noise Margins:**

  * NMH ≈ 0.060 V
  * NML ≈ 0.074 V

---

### 6. Power Consumption and Delay

* **Average Power:** ≈ 1.32 × 10⁻⁴ W
* **Propagation Delay (tpd):** ≈ 25 ps
* Analysis performed at **27°C (TNOM = 27°C)**

---

### 7. Frequency Analysis

* **Operating Frequency:**
  [
  f \approx 2.26 \times 10^{10}\ \text{Hz}
  ]

---

## Characterization Table

| S.No | W/L (PMOS) | W/L (NMOS) | Vth (V) | Id (µA) | Power (W) | tpd (ps) | Gain (Av) | Frequency (Hz) |
| ---- | ---------- | ---------- | ------- | ------- | --------- | -------- | --------- | -------------- |
| 1    | 0.5        | 2          | 0.439   | 472     | 9.13e-05  | 24.7     | 4.59      | 2.30e10        |
| 2    | 3          | 2          | 0.602   | 632     | 1.56e-04  | 25.6     | 4.51      | 2.23e10        |
| 3    | 2          | 0.5        | 0.641   | 670     | 8.67e-05  | 25.9     | 4.78      | 2.20e10        |
| 4    | 2          | 2          | 0.543   | 546     | 1.32e-04  | 25.3     | 4.30      | 2.26e10        |
| 5    | 2          | 4          | 0.439   | 784     | 1.83e-04  | 24.7     | 4.59      | 2.30e10        |

---

## Observations

### Effect of Increasing NMOS Width

* Stronger pull-down network
* Higher drain current
* Reduced fall delay
* Switching threshold shifts **lower**

### Effect of Increasing PMOS Width

* Stronger pull-up network
* Faster charging (reduced rise delay)
* Switching threshold shifts **higher**
* Increased power consumption

### Balanced PMOS and NMOS Width

* Nearly equal rise and fall delays
* Switching threshold close to **VDD / 2**
* Optimal trade-off between speed and power

---

## Key Takeaway

Increasing transistor width improves **speed and current drive**, but increases **power consumption**.
The **PMOS/NMOS width ratio** is a critical design parameter that controls:

* Switching threshold
* Delay symmetry
* Power–performance trade-off

---

## Tools & Technology

* **Technology Node:** 7nm FinFET
* **Simulation Type:** Device & inverter-level characterization
* **Temperature:** 27°C

---
