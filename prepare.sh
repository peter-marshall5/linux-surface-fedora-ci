#!/bin/bash
set -euxo pipefail

dnf -q upgrade
dnf -q install base-devel clang lld
