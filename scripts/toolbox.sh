#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

grep -v '^\s*#' ./toolbox.packages | grep -v '^\s*$' | while read -r pkg; do
  if pacman -Si "$pkg" &>/dev/null; then
    echo "$pkg"
  fi
done | xargs sudo pacman -S --noconfirm --needed
