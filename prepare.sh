#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install rsync git patch wget xz bc flex bison openssl openssl-devel elfutils-devel elfutils-libelf-devel make clang llvm lld rpmdevtools
