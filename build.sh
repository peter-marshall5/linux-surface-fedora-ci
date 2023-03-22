#!/bin/bash
set -euxo pipefail

PATCHES="../linux-surface/patches/6.2/*"

git clone https://github.com/linux-surface/linux-surface --depth 1

wget "https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.2.7.tar.xz" -qO - | tar xJf -

cd linux-6.2.7

cp ../.config .
cp ../.whitelist .

for p in $PATCHES
do
patch -p1 < $p
done

make KCFLAGS="-O3 -mtune=alderlake" LLVM=1 binrpm-pkg
