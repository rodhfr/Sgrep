#!/bin/bash

# Final binary path
INSTALL_DIR="$HOME/.local/bin"
INSTALL_PATH="$INSTALL_DIR/flatgrep"

# Build binary path
BUILD_PATH="dist/flatgrep"

# Create ~/.local/bin if it doesn't exist
if [ ! -d "$INSTALL_DIR" ]; then
    echo "Creating directory '$INSTALL_DIR'..."
    mkdir -p "$INSTALL_DIR" || { echo "❌ failed to create directory"; exit 1; }
fi

# Check if the build binary exists
if [ ! -f "$BUILD_PATH" ]; then
    echo "❌ build file '$BUILD_PATH' not found"
    exit 1
fi

# Copy the binary
if cp "$BUILD_PATH" "$INSTALL_PATH"; then
    chmod +x "$INSTALL_PATH" || echo "⚠️ could not make executable"
    echo "✅ flatgrep installed at '$INSTALL_PATH'"
else
    echo "❌ failed to install flatgrep"
    exit 1
fi


