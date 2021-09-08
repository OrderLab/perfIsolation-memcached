#!/bin/bash

mkdir -p benchmark
cd libmemcached
mkdir -p build
touch configure.ac aclocal.m4 configure Makefile.am Makefile.in
cd build
CXXFLAGS="-pthread" ../configure --enable-memaslap --prefix=$(pwd)/../../benchmark
make -j4
if [ $? -ne 0 ]; then
  echo "Failed to build mysql"
  exit 1
fi
make install

