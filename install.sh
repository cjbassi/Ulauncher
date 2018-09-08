#!/bin/bash

echo "Installing media files to ~/.local to be able to load icons by name."
./setup.py install_data --install-dir="$HOME/.local" || exit 1

echo "Adding .desktop file."
mkdir -p ~/.local/share/applications/
desktop=~/.local/share/applications/ulauncher.desktop
cp ulauncher.desktop.dev $desktop
sed -i "s,__ulauncher_bin__,`pwd`/bin,g" $desktop
sed -i "s,__ulauncher_exec__,`pwd`/bin/ulauncher,g" $desktop
