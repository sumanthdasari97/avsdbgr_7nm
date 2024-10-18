# avsdbgr_7nm
 Bandgap Reference Circuit Design in ASAP 7nm Technology

## Introduction
A **bandgap reference circuit** is an essential analog building block used to generate a stable reference voltage, which is independent of variations in temperature, supply voltage, and process variations. In ASAP 7nm technology, designing such a circuit requires careful consideration of device matching, parasitics, and power efficiency due to the challenges posed by scaling.



# CTAT CIRCUIT WITH CONSTANT CURRENT SOURCE


![image](https://github.com/user-attachments/assets/59a860b9-f208-4829-9235-bb58213c2a69)
**Figure : CTAT Voltage Generator Circuit**  
This schematic illustrates the basic configuration of a CTAT generator. 

# CTAT (Complementary to Absolute Temperature) Circuit

## Circuit Overview
This schematic shows a **CTAT voltage generator** circuit, designed using the ASAP 7nm technology node. Unlike the PTAT voltage, which increases with temperature, the **CTAT voltage decreases as temperature increases**. This characteristic is utilized in **bandgap reference circuits** to generate a stable reference voltage by compensating for PTAT behavior.

### Key Components:
- **VCTAT**: The output voltage, which exhibits CTAT behavior, meaning it decreases as temperature rises.
- **V1**: A constant voltage source of 0.7V applied across an n-channel FinFET (`nfet7`).
- **I1**: A constant current source of 10 µA, which biases the transistor `nfet7`.

### Transistor:
- **nfet7**: The n-channel FinFET used to generate the CTAT voltage. The gate-source voltage of this transistor is temperature-dependent, and as temperature increases, the threshold voltage decreases, causing the gate-source voltage (and thus `VCTAT`) to decrease. This is what creates the CTAT characteristic.

## CTAT Phenomenon
The **CTAT voltage** behavior is primarily due to the **temperature dependence of the threshold voltage** of the transistor:
- As temperature increases, the **threshold voltage** of the n-channel FinFET decreases.
- This results in a corresponding decrease in the output voltage, VCTAT, since the current through the transistor is maintained constant by the current source I1.




### vctat vs temp from -20 to 125
![Screenshot from 2024-10-09 05-28-24](https://github.com/user-attachments/assets/e148d40c-b131-4cd0-bfb3-d30f767bd584)
voltage  that decreases with an increase in temperature


for different current vlaues
![image](https://github.com/user-attachments/assets/83b325ce-0c42-4afa-8a5c-e79e36bd96f0)

Voltage decreases with decrease in current values 


# PTAT (Proportional to Absolute Temperature) Voltage

## Overview
PTAT (Proportional to Absolute Temperature) voltage is a key component in many temperature-compensated circuits, such as **bandgap reference circuits**. As the name suggests, PTAT voltage increases linearly with temperature, making it an essential element in canceling temperature-dependent variations in circuits.

![image](https://github.com/user-attachments/assets/62868d50-e512-4c97-88b8-17a4f9bcb736)
**Figure : PTAT Voltage Generator Circuit**  
This schematic illustrates the basic configuration of a PTAT generator. 

# PTAT Circuit Explanation

## Circuit Overview
This schematic shows the design of a **PTAT (Proportional to Absolute Temperature) voltage generator** implemented using the ASAP 7nm technology node. The PTAT voltage is generated as the **difference between two voltages, V1 and V2**, where each voltage corresponds to different current densities through matched transistors.

### Key Components:
- **V1**: A reference voltage of 0.7V applied across an n-channel FinFET (`nfet7`).
- **V2**: The voltage at the output of a differential pair of n-channel FinFETs (`nfet1` and `nfet2`), each biased by a constant current source of 20 µA.

### Current Sources:
- **I1 and I2**: These are constant current sources, both supplying 20 µA, providing stable biasing for the transistors. The current through these transistors is directly responsible for generating the temperature-dependent voltage differences.

### Transistors:
- **nfet7**: This n-channel FinFET is biased by the reference voltage (V1), producing a voltage drop that has a slight temperature dependency.
- **nfet1 and nfet2**: These transistors are matched and biased with identical currents, but their base-emitter voltages differ due to the exponential relationship between current density and voltage. This difference generates the PTAT voltage at V2.

## PTAT Phenomenon
The PTAT voltage is obtained as the **difference between V1 and V2**. The mechanism relies on the thermal characteristics of the transistors:
- The **thermal voltage (V_T)**, which is proportional to absolute temperature (T), increases as temperature rises. This thermal voltage appears as the difference between the gate-source voltages of `nfet1` and `nfet2`, forming the PTAT component of the circuit.
- The **difference in the voltages at V1 and V2** is proportional to the thermal voltage, and therefore, **increases linearly with temperature**, which is the hallmark of PTAT behavior.


![image](https://github.com/user-attachments/assets/69ffe6d1-38ec-4f2f-8c26-b9ec4ce79f2c)
**Figure:** Temperature sweep results for \( V_1 \) and \( V_2 \) in a PTAT circuit. Both voltages show a linear decrease as temperature increases from -25°C to 125°C. The PTAT voltage is calculated as the difference between \( V_1 \) and \( V_2 \), demonstrating the proportional relationship to absolute temperature.


![image](https://github.com/user-attachments/assets/d9ca73c6-6d7a-4cf7-88b0-dcb9735ac1a8)

**Figure:** The plot of \( V_1 - V_2 \) across temperature sweep from -50°C to 150°C. This represents the PTAT voltage, which is proportional to absolute temperature, demonstrating the linear behavior expected in PTAT circuits.

## PTAT (Proportional to Absolute Temperature) Circuit with Self-Biased Current Mirror Using MOSFETs

.

### Circuit Description
In this PTAT circuit, a **self-biased current mirror** made of MOSFETs is used to generate a stable current. The PTAT voltage is the voltage measured across a resistor connected to the current mirror. This resistor creates a voltage drop that is proportional to absolute temperature due to the current flowing through it. The current flowing through the resistor is PTAT in nature, leading to a voltage that is also PTAT.

### Key Components:
- **Self-Biased Current Mirror (MOSFETs)**: The current mirror is built using MOSFETs, ensuring that the current through the resistor is stable and self-regulated.
- **Resistor (R1)**: The current flowing through the resistor is proportional to the absolute temperature, leading to a PTAT voltage drop across it.
- **MOSFETs**: The  MOSFETs in the current mirror control the current through the resistor. The current is PTAT due to the temperature dependence of the MOSFET threshold voltages.

### PTAT Voltage Measurement:
1. **Self-Biased Current Mirror Operation**: The current mirror stabilizes the current through the MOSFETs. The current through the mirror creates a voltage drop across the resistor, which is directly proportional to the temperature.
   
2. **PTAT Voltage Across Resistor**: The PTAT current flowing through the resistor produces a voltage drop across it. This voltage is **PTAT in nature** because the current through the resistor increases proportionally with temperature. The voltage across the resistor \( V_R \) is given by Ohm's Law:


![image](https://github.com/user-attachments/assets/017c8c48-3442-4272-8675-ff7994aa3761)

**Figure** This schematic illustrates the Current Mirror Configuration of a PTAT generator.

![image](https://github.com/user-attachments/assets/169fe5ac-49ce-433e-bc46-b1025a82615a)

**Figure** This snapshot is the voltage across the resistor 

### Resistor Value Calculation

In this PTAT circuit, the value of the resistor \( R1 \) can be calculated using the relationship involving the thermal voltage \( V_T \), the natural logarithm of the current ratio \( N \), and the desired PTAT current \( I \). The formula is as follows:

$$
I = \frac{V_T \cdot \ln(N)}{R1}
$$

Where:
- \( I \) is the desired PTAT current (20 µA).
- \( V_T \) is the thermal voltage for the NFET (0.18 V).
- \( N \) is the current ratio between the two MOSFETs (in this case, \( N = 8 \)).

Rearranging the equation to solve for \( R1 \) gives:

$$
R1 = \frac{V_T \cdot \ln(N)}{I}
$$

#### Substituting the values:
- \( V_T =  \, (0.18 V))
- \( N = 8 \)
- \( I =  \, (20 µA))

The calculation proceeds as follows:

1. Calculate \( \ln(N) \):

$$
\ln(8) \approx 2.079
$$

2. Substitute into the equation for \( R \):

$$
R1 = \frac{0.18 \, \text{V} \cdot 2.079}{20 \times 10^{-6} \, \text{A}} 
$$

3. Calculate \( R \):

$$
R1 \approx \frac{0.37422 \, \text{V}}{20 \times 10^{-6} \, \text{A}} = 18711 \, \Omega \approx 18.7\, k\Omega
$$
$$
Thus, the required resistor value \( R1 \) is approximately 18.7 \, k\Omega
$$

# Bandgap Reference (BGR) with Startup Circuit and Current Mirror

A Bandgap Reference (BGR) circuit generates a stable reference voltage, typically around 1.2V, that is nearly independent of temperature, power supply variations, and process variations. This makes BGR circuits essential in analog, mixed-signal, and digital integrated circuits.

## 1. **Basic Principle of BGR**

The output reference voltage $V_{ref}$ is obtained by combining two voltages:
- A **Proportional to Absolute Temperature** (PTAT) voltage.
- A **Complementary to Absolute Temperature** (CTAT) voltage.

The PTAT voltage increases with temperature, while the CTAT voltage decreases with temperature. By combining these two, the BGR provides a voltage that is largely independent of temperature.


### Reference Voltage:

The final reference voltage $V_{ref}$ is a weighted sum of $V_{PTAT}$ and $V_{CTAT}$, designed to cancel out temperature variations:

$$
V_{ref} = V_{CTAT} + \alpha \cdot V_{PTAT}
$$

Where $\alpha$ is a constant chosen such that the temperature dependence is minimized.

---

## 2. **Startup Circuit**

A startup circuit is crucial for ensuring that the BGR circuit starts up correctly and operates in its intended state. Without a startup circuit, there is a risk that the BGR could settle into a zero-current state, where no reference voltage is generated.

The startup circuit introduces a small initial current into the system to "kickstart" the biasing of the transistors, ensuring that the current mirror and reference voltage generation work as expected.

---

## 3. **Current Mirror**

The current mirror is used to replicate and control the current flowing through different parts of the circuit. In the BGR, it ensures that the same current flows through the transistors that generate the PTAT and CTAT voltages.

### Self-Biased Current Mirror:

In some designs, a **self-biased current mirror** is employed, where the current generated by one branch is mirrored onto another branch, creating a stable bias point for the PTAT and CTAT generating circuits.

$$
I_{mirror} = I_{reference}
$$

The current mirror improves the accuracy and stability of the generated current, crucial for achieving a precise reference voltage.

---

## 4. **Final Bandgap Reference Circuit**

The complete BGR circuit combines the following elements:
- **PTAT Generator**: Produces a voltage that increases with temperature.
- **CTAT Generator**: Produces a voltage that decreases with temperature.
- **Current Mirror**: Ensures stable current across the circuit.
- **Startup Circuit**: Ensures the circuit starts up in the correct operational mode.

The final output is a reference voltage that is independent of temperature, and the combined circuit can be described by the equation:

$$
V_{ref} = V_{CTAT} + \alpha \cdot V_{PTAT}
$$

Where:
- $V_{CTAT}$ is the complementary voltage, decreasing with temperature.
- $\alpha \cdot V_{PTAT}$ is the proportional voltage, increasing with temperature.

By adjusting the value of $\alpha$, the temperature coefficient of the reference voltage can be minimized, providing a stable reference voltage over a wide temperature range.

![image](https://github.com/user-attachments/assets/1e5e2826-7136-4f69-bfea-0f160eeac7d1)

**Figure** This schematic illustrates the Final Circuit of the Band Gap Reference Circuit 

# Derivation and Calculation of Alpha and Resistor Values in Bandgap Reference Circuit

In a Bandgap Reference (BGR) circuit, the reference voltage $V_{ref}$ is derived from the combination of the **Complementary to Absolute Temperature** (CTAT) voltage and the **Proportional to Absolute Temperature** (PTAT) voltage:

$$
V_{ref} = V_{CTAT} + \alpha \cdot V_{PTAT}
$$

## 1. **Derivative of $V_{ref}$ with Respect to Temperature**

To minimize the temperature dependence of the reference voltage, we set the derivative of $V_{ref}$ with respect to temperature ($T$) to zero. This ensures that the reference voltage remains constant over a range of temperatures:

$$
\frac{dV_{ref}}{dT} = \frac{dV_{CTAT}}{dT} + \alpha \cdot \frac{dV_{PTAT}}{dT} = 0
$$

Rearranging the equation to solve for $\alpha$ gives:

$$
\alpha = - \frac{\frac{dV_{CTAT}}{dT}}{\frac{dV_{PTAT}}{dT}}
$$

From the graphs of $V_{CTAT}$ and $V_{PTAT}$, we approximate the following derivatives:
- $\frac{dV_{CTAT}}{dT} \approx -231.1275 \, \u V/K$
- $\frac{dV_{PTAT}}{dT} \approx 453.158 \, \u V/K$

Substituting these values into the equation for $\alpha$:

$$
\alpha = - \frac{-231.1275 \, \u V/K}{453.158\, \u V/K} \approx 0.5100373
$$

## 2. **Relationship Between Alpha and Resistor Values**

In the BGR circuit, the value of $\alpha$ is related to the resistor values $R_1$ and $R_2$ as follows:

$$
\alpha = \frac{R_2}{R_1} \cdot \ln(N)
$$

Where:
- $N$ is the current ratio (typically $N = 8$ in this case).
- $R_1$ is the known resistor value ($R_1 = 18.7 \, \text{k}\Omega$).
- $R_2$ is the unknown resistor value that we want to calculate.

Rearranging the equation to solve for $R_2$:

$$
R_2 = \alpha \cdot R_1 \cdot \frac{1}{\ln(N)}
$$

Substituting the known values:

$$
R_2 = 0.5100373 \cdot 18.7 \, \text{k}\Omega \cdot \frac{1}{\ln(8)}
$$

First, calculate $\ln(8)$:

$$
\ln(8) \approx 2.079
$$

Now, substitute this into the equation:

$$
R_2 = 0.5100373 \cdot 18.7 \, \text{k}\Omega \cdot \frac{1}{2.079}
$$

Finally, calculate the value of $R_2$:

$$29
R_2 \approx 4.590 \, \text{k}\Omega
$$

Thus, the resistor $R_2$ should be approximately $4.59 \, \text{k}\Omega$.



## Bandgap Reference Circuit - Temperature Sweep
![image](https://github.com/user-attachments/assets/6ca6f83a-31eb-48e2-81b9-79442596ceac)
This plot shows the temperature sweep from -45°C to 150°C in a Bandgap Reference (BGR) circuit designed using ASAP 7nm technology. The following voltages are displayed:

- **Vref** (yellow): Exhibits a slight increase with temperature, representing its temperature-independent characteristic.
- **Vctat** (red): Shows a negative temperature coefficient, decreasing as the temperature increases, indicating CTAT voltage behavior.
- **Vref - Vctat** (blue): The difference between the two voltages increases with temperature, demonstrating the compensation between the PTAT and CTAT components in the BGR circuit.




# Bandgap Reference Circuit - Key Parameters

This table summarizes the key parameters and operating conditions of the designed Bandgap Reference Circuit. The table provides details on the output reference voltage (VBGP), supply voltage (VDD), supply current (IDD), and load resistance (RL) across different operating conditions such as temperature and supply variations.

## Parameters Table
| Parameter | Description             | Min      | Type   | Max      | Unit | Condition                               |
|-----------|-------------------------|----------|--------|----------|------|-----------------------------------------|
| Vref      | Output reference voltage |   293.127|        | 319.91  |mV | T= -45 to 150C, VDD=0.7v               |
| Vref     | Output reference voltage |   |        |   | mV | VDD=2V to VDD=4V, T=27C                 |
| VDD       | Supply Voltage           |          |   0.7 |          | V | T=-40C to 125C                          |
| IDD       | Supply Current           |          | 20  | uA       |      |                                     |
| R1        |  Resistance          |          | 18.6    | Kohm     |      | VDD=0.7V                        |
| R2      |  Resistance          |          | 4.14    | Kohm     |      | VDD=0.7V                        |

