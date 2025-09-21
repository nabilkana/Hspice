* 2:1 Pass-Transistor MUX
Vdd vdd 0 1.8



* Pass transistor network
Mn1 y sbar a 0 nmod W=1u L=180n
Mn2 y sel b 0 nmod W=1u L=180n





Mp sbar sel vdd vdd pmod W=2u L=180n
Mn sbar sel 0 0 nmod W=1u L=180n







.model nmod nmos level=1 VTO=0.5 Kp=1e-4 LAMBDA=0.02
.model pmod pmos level=1 VTO=-0.5 Kp=1e-4 LAMBDA=0.02

* Simulation
.option post=2 nomod
.tran 0.1n 500n
.print tran v(y) v(a) v(b) v(sel)

.measure tran trise TRIG v(y) VAL=0.1 RISE=1 TARG v(y) VAL=0.9 RISE=1
.measure tran tfall TRIG v(y) VAL=0.9 FALL=1 TARG v(y) VAL=0.1 FALL=1
.measure tran tpd TRIG v(sel) VAL=0.5 RISE=1 TARG v(y) VAL=0.5 RISE=1

.vec mux2.vec

.end
