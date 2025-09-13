#!/bin/bash

# Paths
BUILD_PATH="dist/flatgrep"
INSTALL_DIR="$HOME/.local/bin"
INSTALL_PATH="$INSTALL_DIR/flatgrep"

# Step 1: Build
echo "🔨 Building..."
if ! make build; then
    echo "❌ build failed"
    exit 1
fi

# Step 2: Ensure install directory exists
if [ ! -d "$INSTALL_DIR" ]; then
    echo "📁 Creating directory '$INSTALL_DIR'..."
    mkdir -p "$INSTALL_DIR" || { echo "❌ failed to create directory"; exit 1; }
fi

# Step 3: Check if build binary exists
if [ ! -f "$BUILD_PATH" ]; then
    echo "❌ build file '$BUILD_PATH' not found"
    exit 1
fi

# Step 4: Copy binary to install path
if cp "$BUILD_PATH" "$INSTALL_PATH"; then
    chmod +x "$INSTALL_PATH" || echo "⚠️ could not make executable"
    echo "✅ flatgrep installed at '$INSTALL_PATH'"
else
    echo "❌ failed to install flatgrep"
    exit 1
fi

