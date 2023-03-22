#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install git patch wget xz flex bison openssl-devel elfutils-devel elfutils-libelf-devel make clang llvm lld rpmdevtools
