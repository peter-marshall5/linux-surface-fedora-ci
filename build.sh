#!/bin/bash
set -euxo pipefail

wget "https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.2.7.tar.xz" | tar xJvf -

cd linux-6.2.7

cp ../.config .
cp ../.whitelist .
patch -p1 < ../patches/*

make KCFLAGS="-O3 -mtune=alderlake" LLVM=1 binrpm-pkg
