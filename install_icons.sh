#!/bin/bash
#==============================================================================
# Install GVim icon file
#==============================================================================
root="$(cd "$(dirname $0)"; pwd)"
target="${HOME}/.local/share/icons"

if [[ ! -d "$target" ]]; then
    mkdir -p "$target"
fi
cp -r $root/share/icons/* "$target"
