v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2710 -1420 2900 -1420 {
lab=vdd}
N 2900 -1420 2900 -1400 {
lab=vdd}
N 2710 -1380 2710 -1310 {
lab=vss}
N 2710 -1310 2900 -1310 {
lab=vss}
N 2900 -1340 2900 -1310 {
lab=vss}
N 2080 -1360 2080 -1240 {
lab=vss}
N 2080 -1240 2330 -1240 {
lab=vss}
N 2710 -1310 2710 -1240 {
lab=vss}
N 2330 -1240 2710 -1240 {
lab=vss}
N 2710 -1400 2740 -1400 {
lab=Fn}
N 2080 -1420 2410 -1420 {
lab=A}
N 2410 -1420 2410 -1400 {
lab=A}
N 2410 -1400 2410 -1380 {
lab=A}
N 2410 -1380 2410 -1360 {
lab=A}
N 2410 -1360 2410 -1340 {
lab=A}
N 2410 -1340 2410 -1320 {
lab=A}
C {fn.sym} 2560 -1370 0 0 {name=x1}
C {devices/vsource.sym} 2900 -1370 0 0 {name=v0 value=1.8}
C {devices/vsource.sym} 2080 -1390 0 0 {name=v1 value="pulse(0 1.8 0.1n 10p 10p 1n 2n)"}
C {devices/gnd.sym} 2330 -1240 0 0 {name=l1 lab=vss}
C {devices/lab_pin.sym} 2080 -1420 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/code.sym} 2970 -1410 0 0 {name=fn_spice only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {devices/code_shown.sym} 2980 -1250 0 0 {name=fn_code only_toplevel=false value="
.tran 10p 4n

.control
  run
.endc
"}
C {devices/opin.sym} 2740 -1400 0 0 {name=p1 lab=Y}
C {devices/lab_pin.sym} 2900 -1420 0 1 {name=p3 sig_type=std_logic lab=vdd}
