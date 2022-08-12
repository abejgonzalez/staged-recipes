#!/bin/bash

set -ex

## needed otherwise headers not found
#export LDFLAGS="-Wl,-rpath,$CONDA_PREFIX/lib -Wl,-rpath-link,$CONDA_PREFIX/lib -L$CONDA_PREFIX/lib"
#export CFLAGS="-isystem $CONDA_PREFIX/include"
#export CPPFLAGS="-isystem $CONDA_PREFIX/include"
#export CXXFLAGS="-isystem $CONDA_PREFIX/include"
#export DEBUG_CFLAGS="-isystem $CONDA_PREFIX/include"
#export DEBUG_CPPFLAGS="-isystem $CONDA_PREFIX/include"
#export DEBUG_CXXFLAGS="-isystem $CONDA_PREFIX/include"

NPROC=$CPU_COUNT ./src/build-toolchains.sh --prefix $PREFIX/riscv --ignore-qemu
