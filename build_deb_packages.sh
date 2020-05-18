cd /sdl_core
mkdir -p build && cd build
cmake ..
make 
make package

cd /sdl_hmi
./create_deb.sh
