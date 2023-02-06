# Setup and Preparation

As a preparation for the work, we are going to install the following software in **Ubuntu 20.04**. I created the scripts in the following numbered order, it is best if they are run in the same order.



| Software #  |         Software          |   Description        |
|:-----------:|:-------------------------:|:--------------------:|
| 1           | [magic](https://github.com/rajivbishwokarma/msvsdasms/tree/master/week0#1-magic)                 |    Layout Editor    |
| 2           | [ngspice](https://github.com/rajivbishwokarma/msvsdasms/tree/master/week0#2-ngspice)               |    SPICE Simulation  |
| 4           | [xschem](https://github.com/rajivbishwokarma/msvsdasms/tree/master/week0#3-xschem)                |    Schematic Editor  |
| 3           | [netgen](https://github.com/rajivbishwokarma/msvsdasms/tree/master/week0#4-netgen)                |    Netlist Generator |
| 5           | [Open PDK (Sky130)](https://github.com/rajivbishwokarma/msvsdasms/tree/master/week0#open-pdk-sky130)     |    Sky130 library    |


## 1. Magic

Install Magic and all its dependencies using the [1_setup_magic.sh](./1_setup_magic.sh) script. Just do:

```
chmod +x 1_setup_magic.sh

sudo ./1_setup_magic.sh
```

## 2. ngspice

Install **ngspice** and all its dependencies using the [2_setup_ngspice.sh](./2_setup_ngspice.sh) script. Just do:

```
chmod +x 2_setup_ngspice.sh

sudo ./2_setup_ngspice.sh
```

## 4. netgen

Install **netgen** and all its dependencies using the [3_setup_netgen.shv](./3_setup_netgen.sh) script. Just do:

```
chmod +x 3_setup_netgen.sh

sudo ./3_setup_netgen.sh
```


## 4. xschem

Install **xschem** and all its dependencies using the [4_setup_xschem.sh](./4_setup_xschem.sh) script. Just do:

```
chmod +x 4_setup_xschem.sh

sudo ./4_setup_xschem.sh
```

## 5. Open PDK with Sky130

Install **Open PDK with Sky130 library** and all its dependencies using the [5_setup_openpdk.sh](./5_setup_openpdk.sh) script. Just do:

```
chmod +x 5_setup_openpdk.sh

sudo ./5_setup_openpdk.sh
```
