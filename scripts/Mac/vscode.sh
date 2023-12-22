#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0) && pwd)
VSCODE_SETTING_DIR=${HOME}/Library/Application\ Support/Code/User

for dotfile in "$SCRIPT_DIR"/../../.vscode/* ; do
    echo $dotfile
    # ln -fnsv "$dotfile" "$VSCODE_SETTING_DIR"
done
