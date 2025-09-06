# DAB + Consensus Control for Stable DC Microgrids — Overview

This repository summarizes a control strategy for DC microgrids that combines:
- an **isolated Dual Active Bridge (DAB)** interlinking converter,
- a **discrete consensus** loop for balanced current sharing, and
- a **secondary voltage-restoration** loop.

**Goal:** mitigate DC-bus voltage sag and prevent converter overloading when loads change or local converters hit current limits.

---

## Method at a Glance

- **Event-driven DAB linking:** The DAB is connected only when needed—e.g., when the bus falls below about **0.95 × V_nom** or local converters reach their current limits. When conditions recover, DAB current is ramped to zero and the link opens smoothly.

- **Consensus current sharing:** A lightweight sampled-data consensus law steers each converter’s current toward the network average, fixing the sharing mismatch that plain droop control leaves due to line impedances.

- **Modified droop + restoration:** A small adaptive voltage shift restores the DC bus toward nominal while maintaining balanced sharing.

---

## What the Results Show

**Simulation (400 V bus):**
- With conventional droop only, a step in load caused the bus to drop to about **355 V** (outside the acceptable band).
- With the proposed strategy, the bus recovered close to nominal and currents remained balanced; the DAB linked in only when necessary and disengaged with minimal ripple.

**Experiment (48 V lab setup):**
- Under heavy load, the bus dipped to about **45.8 V**.
- The controller restored the bus and kept each branch under its current limit, matching the simulation trend.

**Bottom line:** The strategy reduces voltage sag, balances currents, and smooths transients compared with conventional droop control.

---

## What’s in This Repository
Consensus_DAB_FULL_Presentation.pdf # Slides with approach & results
Consensus_DAB_Matlab_Layout.pdf # Notes/diagram of the simulation layout
Parameter_for_Matlab_Simulation.m # Example parameter file for simulations


---

## Read the Paper

- ResearchGate: [Enhancing DC Microgrids Stability by Integrating DAB Converters with Consensus Algorithms for Bus Voltage Drop Mitigation](https://www.researchgate.net/publication/384680222_Enhancing_DC_Microgrids_Stability_by_Integrating_DAB_Converters_with_Consensus_Algorithms_for_Bus_Voltage_Drop_Mitigation)



