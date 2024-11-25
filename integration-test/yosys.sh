#!/bin/bash
# Downloads, compiles, and installs Yosys

YOSYS_VER=0.47

mkdir -p /tmp/yosys
cd /tmp/yosys
wget https://github.com/YosysHQ/yosys/releases/download/$YOSYS_VER/yosys.tar.gz
tar -zxf yosys.tar.gz
export PREFIX=/usr
make config-clang
make -j$(nproc)
make install
cd /tmp
rm -r /tmp/yosys
