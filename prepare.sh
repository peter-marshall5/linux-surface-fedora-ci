#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install git patch wget xz make clang llvm lld rpmdevtools
