#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install git wget xz make kernel-devel clang lld
