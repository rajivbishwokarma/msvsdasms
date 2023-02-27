## Table of Contents 
| #  |         Topic          |   Description        | Status
|:--:|:-------------------------:|:--------------------:|:-----:|
| 1  | [3-stage ring oscillator design in Xschem]()      | Creating schematic circuit and simulatin it |:white_check_mark:|
| 2  | [Generating layout for ring oscillator using ALIGN]()      | Passing the xschem generated spice into ALIGN |:large_orange_diamond:|
| 3  | [Creating a manual layout for the ring oscillator using Magic]()      | Importing the xschem generated spice into Magic and routing the cells |:white_check_mark:|
| 4  | [Analaysis of the ring oscillator pre-layout and post-layout results]()      | Comparing pre-layout (Xschem) and post-layout (ALIGN, Magic) outputs |:large_orange_diamond:|

<br><br>

## **1. 3-stage ring oscillator design in Xschem**

A ring oscillator is a self-toggling circuit that generates clock-like pulses without any external input, other than the power that it needs. This is created by cascading inverters back to back in odd numbers (so that the next output is different than the previous). Following figure shows the design of a 3-stage ring oscillator created in **Xschem**. 

<img src="./images/ring_osc.jpg">

This circuit generates the netlist provided here:[ring_osc.spice](./netlists/ring_osc.spice).

Then, the above circuit can be simulated using Xschem by creating the following testbench.

<img src="./images/ring_osc_tb.jpg">

The netlist for the complete testbench with the ring oscillator is here: [ring_osc_sym.spice](./netlists/ring_osc.spice)
