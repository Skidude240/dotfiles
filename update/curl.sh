#!/bin/bash

# Init
source "$(dirname $(readlink -f $0))/lib_update.bash"
clone "curl" --github "curl/curl" --ver "curl-7_65_3.tar.gz" $@

# Build
./buildconf
./configure --prefix=$LOCAL_PREFIX --with-ssl
make
make install
