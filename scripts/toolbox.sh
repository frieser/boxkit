#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

distrobox enter toolbox-testing -- bash -c "git clone https://aur.archlinux.org/yay.git ~/.local/share/yay && cd ~/.local/share/yay && makepkg --noconfirm -si"
grep -v '^#' ./toolbox.packages | xargs yay -S --noconfirm --needed
