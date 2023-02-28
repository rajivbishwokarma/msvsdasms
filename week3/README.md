## Table of Contents 
| #  |         Topic          |   Description        | Status
|:--:|:-------------------------:|:--------------------:|:-----:|
| 1  | [Three-stage ring oscillator design in Xschem]()      | Creating schematic circuit and simulatin it |:white_check_mark:|
| 2  | [Generating layout for ring oscillator using ALIGN]()      | Passing the xschem generated spice into ALIGN |:large_orange_diamond:|
| 3  | [Creating a manual layout for the ring oscillator using Magic]()      | Importing the xschem generated spice into Magic and routing the cells |:white_check_mark:|
| 4  | [Analaysis of the ring oscillator pre-layout and post-layout results]()      | Comparing pre-layout (Xschem) and post-layout (ALIGN, Magic) outputs |:large_orange_diamond:|

<br><br>

## **1. Three-stage ring oscillator design in Xschem**

A ring oscillator is a self-toggling circuit that generates clock-like pulses without any external input, other than the power that it needs. This is created by cascading inverters back to back in odd numbers (so that the next output is different than the previous). Following figure shows the design of a 3-stage ring oscillator created in **Xschem**. 

<img src="./images/ring_osc.jpg">

This circuit generates the netlist provided here: [**ring_osc.spice**](./netlists/ring_osc.spice).

Then, the above circuit can be simulated using Xschem by creating the following testbench.

<img src="./images/ring_osc_tb.jpg">

The netlist for the complete testbench with the ring oscillator is here: [**ring_osc_sym.spice**](./netlists/ring_osc.spice)

Running the simulation for 4 nanoseconds, we get the following output waveform. 

<img src="./images/ring_osc_wave_xschem.jpg">

<br><br>

## **2. Generating layout for ring oscillator using ALIGN**

We can then move on to generating the layout for the ring oscillator using ALIGN layout tool. The first thing that we need to do is to modify the netlist that we got from Xschem into the following. The first netlist is a generic netlist and the second netlist is created following the way ALIGN-creators have [shown](https://github.com/ALIGN-analoglayout/ALIGN-public/blob/master/examples/ring_oscillator/ring_oscillator.sp).

**Netlist-1**
```
.subckt ring_osc Y vdd gnd
XM1 net1 Y vdd vdd sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
XM2 net1 Y gnd gnd sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
XM3 net2 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
XM4 net2 net1 gnd gnd sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
XM5 Y net2 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
XM6 Y net2 gnd gnd sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
.ends
```

**Netlist-2** (The ALIGN-people way)
```
.subckt ring_oscillator_stage i y gnd vdd ctl
mp0 y i vdd ctl sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
mn0 y i gnd ctl sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
.ends

.subckt osc_align ctl y vdd gnd
xi0 n2 vo gnd vdd ctl ring_oscillator_stage
xi1 n1 n2 gnd vdd ctl ring_oscillator_stage
xi2 vo n1 gnd vdd ctl ring_oscillator_stage
.ends
```

Then, we have to save this new netlist with the **.sp** exension. For this, I am saving it as **ring_osc.sp**. 

The first netlist only requires the following two files to be present in one [directory](./netlists/ring_osc). 

+ [ring_osc.sp](./netlists/ring_osc/ring_osc.sp) 
+ [ring_osc.json](./netlists/ring_osc/ring_osc.json)

The second netlist requires following three files to be present in one [directory](./netlists/ring_osc_align).

+ [ring_osc.sp](./netlists/ring_osc_align/ring_osc_align.sp)
+ [ring_osc.json](./netlists/ring_osc_align/ring_osc.json)
+ [ring_osc_stage.const.json](./netlists/ring_osc_align/ring_osc_stage_const.json)


Then, we can run the ALIGN layout generator using the following command.

[Note: I am placing the netlists in the _ALIGN/designs/ring_osc_ directory and running ALIGN from _ALIGN/designs/work_ring_osc_ directory and my sky130 pdk root is: _~/work/ALIGN/pdks/ALIGN-pdk-sky130/SKY130_PDK_]

```
schematic2layout.py ../ring_osc -p ../../pdks/ALIGN-pdk-sky130/SKY130_PDK 
```

The run log can be seen in the image below. 

<img src="./images/ring_osc_align.jpg">

This has generated the following layout that was opened in Magic.

<img src="./images/ring_osc_gds_align.jpg">

When we extract the spice netlist, we get this netlist: [RING_OSC_0.spice](./netlists/ring_osc/result/RING_OSC_0.spice)

We use these commands to extract the netlist.
```
extract all
ext2spice cthresh 0 rthresh 0
ext2spice
```

Then, adding the design to a testbench as shown in this netlist: [ring_osc_sim_align.spice](./netlists/ngspice/ring_osc_sim_align.spice), we get the following output waveform.

:underconstruction: [Issue#: Wrong output generation]

<img src="./images/ring_osc_wave_align.jpg">

<br><br>

**3. Creating a manual layout for the ring oscillator using Magic**

[Note: I did this step just to just for fun, so not important to follow along.]

We can then go ahead and create a layout manually using Magic. To do that, we first import the netlist generated by Xschem and then arrange and route the cells as shown below.

<img src="./images/ring_osc_gds_magic.jpg">

We then extract the netlist and get this netlist [ring_osc.spice](./netlists/magic/ring_osc.spice) as a result.

Then, repeating the same steps that we followed in simulating ALIGN generated netlist, we create this testbench: [ring_osc_sim_magic.spice](./netlists/ngspice/ring_osc_sim_magic.spice).

We get the following waveform as the result of the simulation.

<img src="./images/ring_osc_wave_magic.jpg">

And, this output validates the working of out layout created in Magic.