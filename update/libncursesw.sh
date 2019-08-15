#!/bin/bash

# Init
source "$(dirname $(readlink -f $0))/lib_update.bash"
clone "libncursesw" --targz "https://ftp.gnu.org/pub/gnu/ncurses/ncurses-6.1.tar.gz" $@

# Build
./configure --prefix=$LOCAL_PREFIX \
            --enable-ext-colors \
            --enable-widec \
            --with-cxx-shared \
            --with-shared \
            --enable-termcap \
            --enable-sp-funcs \
            --enable-ext-mouse \
            --enable-ext-putwin

make
make install
