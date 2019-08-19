#!/bin/bash

# Init
source "$(dirname $(readlink -f $0))/lib_update.bash"
clone "cmake" --targz "https://github.com/Kitware/CMake/releases/download/v3.15.2/cmake-3.15.2.tar.gz" $@

# Build
./bootstrap	--prefix=$LOCAL_PREFIX \
		--system-curl \

make 
make install
