
# git clone https://github.com/eranif/wxWidgets.git
cd ../wxWidgets
git submodule init
git submodule update
mkdir build-release
cd build-release
../configure --disable-debug_flag
make -j8
sudo make install

# codelite
cd codelite
mkdir build-release
cd build-release
cmake -DCMAKE_BUILD_TYPE=Release .. -DCOPY_WX_LIBS=1
make -j8
sudo make install
