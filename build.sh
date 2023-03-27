#!/bin/bash
set -euxo pipefail

VERSION="6.2.7"
PATCHES="../linux-surface/patches/6.2/* ../linux-tkg/linux-tkg-patches/6.2/0002-clear-patches.patch"

git clone https://github.com/linux-surface/linux-surface --depth 1
git clone https://github.com/Frogging-Family/linux-tkg --depth 1

wget "https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$VERSION.tar.xz" -qO - | tar xJf -

cd linux-$VERSION

cp ../.config .
cp ../.whitelist .

for p in $PATCHES
do
patch -p1 < $p
done

make KCFLAGS="-mtune=alderlake" LLVM=1 -j$(nproc) binrpm-pkg
