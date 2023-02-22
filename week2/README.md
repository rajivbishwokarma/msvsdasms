## Table of Contents 
| #  |         Topic          |   Description        | Status
|:--:|:-------------------------:|:--------------------:|:-----:|
| 1  | [Setting up OpenFASoC]()      | Installing OpenFASoC and all its dependencies |:white_check_mark:|



## 1. Setting up OpenFASoC

The dependendencies that are required to install OpenFASoC are always changing, so it is best to follow the related sources. Use the corresponding source that the following table provides. 

|  Dependencies | Version (Feb 21m 2023) |             Note                    |
|:-------------:|:----------------------:|:-----------------------------------:|
| [Magic](https://github.com/RTimothyEdwards/magic)  |8.3.356| [opencircuitdesign.com](http://opencircuitdesign.com/magic/index.html)|
| [Netgen](https://github.com/RTimothyEdwards/netgen)|1.5.244|[opencircuitdesign.com](http://opencircuitdesign.com/netgen/index.html)|
| [Klayout](https://github.com/KLayout/klayout)|0.28.2-1|If error, install the **.deb** from [klayout.de](https://www.klayout.de/build.html)|
| [Yosys](https://github.com/The-OpenROAD-Project/yosys)|0.23+3|After install, **cd** into **/usr/bin** and run: **sudo ln -s /home/user/<yosys-dir>/yosys yosys**|
| [OpenROAD](https://github.com/The-OpenROAD-Project/OpenROAD)|2.0_6760|After install, **cd** into **/usr/bin** and run: **sudo ln -s /home/user/<OpenROAD-dir>/build/src/openroad**|
| [Open_pdks](https://github.com/RTimothyEdwards/open_pdks)|1.0.378|http://opencircuitdesign.com/open_pdks/|