#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Create Symbolic Links
for dotfile in "${SCRIPT_DIR}"/../../dotfiles/Common/.??* ; do
    ln -fnsv "$dotfile" "$HOME"
done

# Create Symbolic Links for MacOS (arm64)
if [ "$(uname)" = "Darwin" ] ; then
    for dotfile in "${SCRIPT_DIR}"/../../dotfiles/Mac/.??* ; do
        ln -fnsv "$dotfile" "$HOME"
    done
fi