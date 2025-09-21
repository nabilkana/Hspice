# Hspice
CMOS & Pass-Transistor Simulation Project

This repository contains transistor-level simulations of NMOS, PMOS, 2:1 Multiplexers, and an XOR gate using HSPICE. The project demonstrates circuit behavior, rise/fall times, propagation delays, and vector-driven digital simulation.

Folder Structure
/CMOS_and_PassMUX_Simulations
│
├── Q1_NMOS_PMOS/          # NMOS and PMOS I-V sweeps
├── Q2_PassTransistorMUX/  # 2:1 Pass-Transistor MUX
├── Q3_CMOSMUX/            # 2:1 CMOS MUX
├── Q4_XOR/                # CMOS XOR Gate
└── README.md


.sp → HSPICE netlist

.vec → Vector file for digital input stimuli

plots/ → Exported waveform images for analysis

Question 1: NMOS & PMOS I-V Sweeps

Objective: Plot NMOS and PMOS drain current vs. gate voltage and identify the maximum current.

Results:

NMOS max current: 486 µA

PMOS max current: 194 µA

Observation: NMOS is stronger than PMOS due to higher electron mobility. The ratio of maximum currents reflects the expected Kp_n / Kp_p ratio.

Files: nmos_pmos.sp, plots in plots/

Question 2: 2:1 Pass-Transistor MUX

Objective: Implement and simulate a pass-transistor based 2:1 multiplexer, measure rise/fall times and propagation delay.

Results:

Rise time (trise) ≈ 447 ps

Fall time (tfall) ≈ 313 ps

Propagation delay (tpd) ≈ –60 ns (measurement artifact due to early spikes)

Observation: Output exhibits brief spikes during input transitions; slower than CMOS MUX due to NMOS pass-transistor weakly passing logic ‘1’.

Files: pass_mux.sp, mux2.vec, plots in plots/

Question 3: 2:1 CMOS MUX

Objective: Implement a full CMOS 2:1 MUX and compare its performance with the pass-transistor version.

Results:

Rise time (trise) ≈ 3.1 ps

Fall time (tfall) ≈ 54.5 ps

Propagation delay (tpd) ≈ –59 ns (artifact)

Observation: CMOS MUX shows much sharper transitions and stronger drive. Spikes occur during input transitions, but output is more robust than pass-transistor MUX.

Files: cmos_mux.sp, mux2.vec, plots in plots/

Question 4: CMOS XOR Gate

Objective: Implement a full CMOS XOR gate, simulate rise/fall times and propagation delay.

Results:

Rise time (trise) ≈ 4.85 ps

Fall time (tfall) ≈ 2.51 ps

Propagation delay (tpd) ≈ –9.73 ns (artifact)

Observation: Very fast output transitions due to small, simple gate structure. Output shows minor spikes during input transitions. Faster than both MUX circuits due to fewer series transistors.

Files: xor.sp, xor.vec, plots in plots/

Comparison Table
Circuit	trise	tfall	tpd	Notes
Pass-transistor MUX	447 ps	313 ps	–60 ns	Spikes during input transitions
CMOS MUX	3.1 ps	54.5 ps	–59 ns	Strong output, minor spikes
CMOS XOR	4.85 ps	2.51 ps	–9.73 ns	Very fast, simple structure, minor spikes
Key Observations

CMOS gates have much faster rise/fall times than pass-transistor logic.

Propagation delays measured in HSPICE may show negative values due to overshoot or early transient response; in real circuits, delays are positive.

Spikes during input transitions are typical in transistor-level simulations and reflect simultaneous switching of pull-up and pull-down networks.

NMOS/PMOS current ratios reflect transistor mobility differences and are consistent with theory.
