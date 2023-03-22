#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install make kernel-devel clang lld
