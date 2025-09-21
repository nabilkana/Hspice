* XOR
Vdd vdd 0 1.8




* XOR transistor network
Mn1 y a p1 0 nmod W=1u L=180n
Mn2 p1 b 0 0 nmod W=1u L=180n
Mn3 y abar p2 0 nmod W=1u L=180n
Mn4 p2 bbar 0 0 nmod W=1u L=180n

Mp1 p3 a vdd vdd pmod W=2u L=180n
Mp2 y bbar p3 vdd pmod W=2u L=180n
Mp3 p4 abar vdd vdd pmod W=2u L=180n
Mp4 y b p4 vdd pmod W=2u L=180n





Mp abar a vdd vdd pmod W=2u L=180n
Mn abar a 0 0 nmod W=1u L=180n

Mp11 bbar b vdd vdd pmod W=2u L=180n
Mn11 bbar b 0 0 nmod W=1u L=180n







.model nmod nmos level=1 VTO=0.5 Kp=1e-4 LAMBDA=0.02
.model pmod pmos level=1 VTO=-0.5 Kp=1e-4 LAMBDA=0.02

* Simulation
.option post=2 nomod
.tran 0.1n 50n
.print tran v(y) v(a) v(b) 

.measure tran trise TRIG v(y) VAL=0.1 RISE=1 TARG v(y) VAL=0.9 RISE=1
.measure tran tfall TRIG v(y) VAL=0.9 FALL=1 TARG v(y) VAL=0.1 FALL=1
.measure tran tpd TRIG v(a) VAL=0.5 RISE=1 TARG v(y) VAL=0.5 RISE=1
.vec xor.vec


.end
