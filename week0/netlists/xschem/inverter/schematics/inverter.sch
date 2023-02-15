v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 6720 250 6720 300 {
lab=B}
N 6630 330 6680 330 {
lab=A}
N 6630 220 6630 330 {
lab=A}
N 6630 220 6680 220 {
lab=A}
N 6590 270 6630 270 {
lab=A}
N 6720 270 6760 270 {
lab=B}
N 6720 170 6720 190 {
lab=vdd}
N 6720 360 6720 380 {
lab=vss}
N 6720 190 6720 220 {
lab=vdd}
N 6720 330 6720 360 {
lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 6700 220 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 6700 330 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 6760 270 0 0 {name=p1 lab=B}
C {devices/ipin.sym} 6590 270 0 0 {name=p2 lab=A}
C {devices/iopin.sym} 6720 170 3 0 {name=p3 lab=vdd}
C {devices/iopin.sym} 6720 380 1 0 {name=p4 lab=vss}
