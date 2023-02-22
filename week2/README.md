## Table of Contents 
| #  |         Topic          |   Description        | Status
|:--:|:-------------------------:|:--------------------:|:-----:|
| 1  | [Setting up OpenFASoC]()      | Installing OpenFASoC and all its dependencies |:white_check_mark:|



## 1. Setting up OpenFASoC

The dependendencies that are required to install OpenFASoC are always changing, so it is best to follow the related sources. Use the corresponding source that the following table provides. 

|  Dependencies | Version (21 Feb 2023) |             Note                    |
|:-------------:|:----------------------:|:-----------------------------------:|
| [Magic](https://github.com/RTimothyEdwards/magic)  |8.3.356| [opencircuitdesign.com](http://opencircuitdesign.com/magic/index.html)|
| [Netgen](https://github.com/RTimothyEdwards/netgen)|1.5.244|[opencircuitdesign.com](http://opencircuitdesign.com/netgen/index.html)|
| [Klayout](https://github.com/KLayout/klayout)|0.28.2-1|If error, install the **.deb** from [klayout.de](https://www.klayout.de/build.html)|
| [Yosys](https://github.com/The-OpenROAD-Project/yosys)|0.23+3|After install, **cd** into **/usr/bin** and do: **sudo ln -s /home/user/yosys-dir/yosys yosys**|
| [OpenROAD](https://github.com/The-OpenROAD-Project/OpenROAD)|2.0_6760|After install, **cd** into **/usr/bin** and do: **sudo ln -s /home/user/OpenROAD-dir/build/src/openroad**|
| [Open_pdks](https://github.com/RTimothyEdwards/open_pdks)|1.0.378|[opencircuitdesign.com](http://opencircuitdesign.com/open_pdks/)|

I found it easier to install [Anaconda](https://www.anaconda.com/products/distribution) and then install all the dependencies that OpenFASoC requires. After installing [Anaconda](https://www.anaconda.com/products/distribution), create an environment for OpenFASoC using the following command. 
```
# Create the environment with Python 3.7
conda create -n openfasoc python=3.7
# Activate the environment
conda activate openfasoc
```
