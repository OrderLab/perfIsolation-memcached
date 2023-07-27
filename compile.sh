#!/bin/bash

mkdir -p dist
cd 1.4.29
mkdir -p build
./autogen.sh
cd build

CFLAGS="-Wno-error" ../configure  --prefix=$(pwd)/../../dist

make -j4
if [ $? -ne 0 ]; then
  echo "Failed to build memcached"
  exit 1
fi
make install
cd ..
echo "export PATH=`pwd`/dist/bin:`pwd`/mutilate/:$PATH" >> $HOME/.bashrc
./init_benchmark.sh
