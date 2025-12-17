#!/bin/bash
# -----------------------------------------------------------------------------
# Script Name:    msfonts-download.sh
# Description:    Downloads all Windows 10 fonts in Linux local user directory
# Author:         @tazihad
# Website:        https://zihad.com.bd
# License:        MIT License
# -----------------------------------------------------------------------------

# MIT License
#
# Copyright (c) 2024 @tazihad
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Define variables
REPO_URL="https://github.com/tazihad/ttf-ms-fonts/releases/download/1.0.1/ttf-ms-win10.tar.xz"
DEST_DIR="$HOME/.local/share/fonts"
ARCHIVE_FILE="$HOME/ttf-ms-win10.tar.xz"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Download the repository
echo "Downloading fonts from $REPO_URL..."
curl -L "$REPO_URL" -o "$ARCHIVE_FILE"

# Extract the tar.xz file
# Note: We extract directly to the destination.
# If the tarball contains a subfolder, fonts will be inside that subfolder within msfonts.
echo "Extracting fonts to $DEST_DIR..."
tar -xf "$ARCHIVE_FILE" -C "$DEST_DIR"

# Cleanup
echo "Cleaning up..."
rm "$ARCHIVE_FILE"

# Refresh font cache (output hidden)
echo "Refreshing font cache..."
fc-cache -fv > /dev/null 2>&1

echo "Fonts installed successfully in $DEST_DIR for $USER."
