#!/bin/bash

# Init
source "$(dirname $(readlink -f $0))/lib_update.bash"
clone "libxsel" --github "kfish/xsel" --ver "master" $@

# Build
./autogen.sh
./configure --prefix=${LOCAL_PREFIX}
exit 0
make
make install
