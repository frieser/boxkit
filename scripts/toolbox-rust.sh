#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
dnf update -y
grep -v '^#' ./toolbox-rust.packages | xargs dnf install -y --skip-unavailable
