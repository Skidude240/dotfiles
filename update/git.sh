#!/bin/bash

# Init
source "$(dirname $(readlink -f $0))/lib_update.bash"
clone "git" --targz "https://github.com/git/git/archive/v2.25.0.tar.gz"  $@
make configure
./configure --prefix=$LOCAL_PREFIX\
	--exec-prefix=$LOCAL_PREFIX\

make all
make install
