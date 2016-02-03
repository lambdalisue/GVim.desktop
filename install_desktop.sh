#!/bin/bash
#==============================================================================
# Install GVim.desktop file
#
# NOTE:
# Usually you don't need to execute this script while default GVim.desktop
# file exists in /usr/local/share/applications if you already have GVim
# installed.
# This script stands for user who compile GVim by themself.
#
#==============================================================================
root="$(cd "$(dirname $0)"; pwd)"
target="${HOME}/.local/share/desktop"

if [[ ! -d "$target" ]]; then
    mkdir -p "$target"
fi
cp -r $root/share/applications/* "$target"

