#!/bin/bash
set -euxo pipefail

dnf upgrade
dnf install base-devel clang lld
