.subckt ring_oscillator_stage i y gnd vdd ctl
mp0 y i vdd ctl sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
mn0 y i gnd ctl sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
.ends

.subckt ring_osc_align ctl y vdd gnd
xi0 n2 vo gnd vdd ctl ring_oscillator_stage
xi1 n1 n2 gnd vdd ctl ring_oscillator_stage
xi2 vo n1 gnd vdd ctl ring_oscillator_stage
.ends

