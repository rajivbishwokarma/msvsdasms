# cd into temp
cd tmp

# get the latest stable version
wget https://github.com/Kitware/CMake/releases/download/v3.25.2/cmake-3.25.2.tar.gz

# uncompress
tar xvzf cmake-3.25.2.tar.gz
 
# cd into cmake
cd cmake-3.25.2

# bootstrap cmake
./bootstrap

# make
make

# install
sudo make install