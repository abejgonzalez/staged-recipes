#!/bin/bash

set -ex

NPROC=$CPU_COUNT ./src/build-toolchains.sh --prefix $PREFIX/riscv
