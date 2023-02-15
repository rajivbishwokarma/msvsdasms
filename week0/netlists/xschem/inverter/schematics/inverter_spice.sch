v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -160 290 -160 {
lab=A}
N 170 -100 590 -100 {
lab=GND}
N 590 -120 590 -100 {
lab=GND}
N 590 -190 590 -160 {
lab=#net1}
N 170 -190 590 -190 {
lab=#net1}
N 110 -190 110 -160 {
lab=#net1}
N 110 -190 170 -190 {
lab=#net1}
N 110 -100 170 -100 {
lab=GND}
N 590 -140 610 -140 {
lab=B}
C {devices/vsource.sym} 110 -130 0 0 {name=V1 value="1.8"}
C {devices/vsource.sym} 170 -130 0 0 {name=V2 value=0
//value="PWL(0 0 20n 0.0 900n 1.8)"}
C {devices/code_shown.sym} 220 -410 0 0 {name=inverter_spice only_toplevel=false value="

.dc V2 0 1.8 0.01
.control
  run
  plot a b
.endc

.save all
"}
C {devices/lab_pin.sym} 170 -160 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/gnd.sym} 170 -100 0 0 {name=l1 lab=GND}
C {devices/code.sym} 70 -400 0 0 {name=tt only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {inverter.sym} 440 -140 0 0 {name=x1}
C {devices/opin.sym} 610 -140 0 0 {name=p2 lab=B}
