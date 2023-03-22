#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install git make kernel-devel clang lld
