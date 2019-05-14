#!/bin/bash

# Init
source "$(dirname $(readlink -f $0))/lib_update.bash"
clone "ctags" --github "universal-ctags/ctags" $@


# Build
./autogen.sh
./configure --prefix=${LOCAL_PREFIX}
make
make install



