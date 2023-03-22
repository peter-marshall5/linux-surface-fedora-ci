#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install git xz make kernel-devel clang lld
