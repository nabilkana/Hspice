.param VDD=1.8 

* NMOS

Vdn dn 0 1.8
Vgn gn 0 0
M1 dn gn 0 0 nmod W=1u L=180n

.model nmod nmos level=1 VTO=0.5 Kp=1e-4 LAMBDA=0.02 GAMMA=0.4 PHI=0.7

* PMOS
Vdd vdd 0 1.8 
Vdp dp 0 1.8
Vgp gp 0 1.8
M2 dp gp vdd vdd pmod W=1u L=180n

.model pmod pmos level=1 VTO=-0.5 Kp=4e-5 LAMBDA=0.02 GAMMA=0.4 PHI=0.7

.option post = 2 nomod 
* SWEEP
.dc Vdn 0 1.8 0.1 Vgn 0 1.8 0.3 
.dc Vdp 0 1.8 0.1 Vgp 0 1.8 0.1 


.end

 