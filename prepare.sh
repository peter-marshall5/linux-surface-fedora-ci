#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install git patch wget xz make kernel-devel clang lld
