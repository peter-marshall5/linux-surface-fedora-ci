#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install git patch wget xz automake make clang llvm lld rpmdevtools
