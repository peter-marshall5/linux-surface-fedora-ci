#!/bin/bash
set -euxo pipefail

dnf -y upgrade
dnf -y install base-devel clang lld
