#!/bin/bash

# Find out the CWD of the currently focused X window
# xcwd: https://github.com/schischi/xcwd
export CWD=$(xcwd)

# Open urxvt and cd to $CWD
urxvt -cd "$CWD"
