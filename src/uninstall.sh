#!/bin/bash

INSTALL_PATH="$HOME/.local/bin/flatgrep"
if rm ~/.local/bin/flatgrep; then
    if [ -f "$INSTALL_PATH" ]; then
        echo "Could not uninstall check permissions"
    else
        echo "flatgrep uninstalled sucessfully ✅"
    fi
else 
    echo "flatgrep is not installed in $INSTALL_PATH"
    exit 0
fi
