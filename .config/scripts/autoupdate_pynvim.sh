#!/bin/bash

# Path to your Neovim binary
NEOVIM_BINARY="/opt/homebrew/bin/nvim"

# Get the current Neovim version
CURRENT_VERSION=$(nvim --version | grep -oP 'NVIM \K\d+\.\d+\.\d+')

# Path to a file to store the last updated Neovim version
LAST_UPDATED_VERSION_FILE="/opt/dev/autogen/pynvim_autoupdate/last_updated_nvim_version.txt"

# Read the last updated Neovim version from the file
LAST_UPDATED_VERSION=$(cat $LAST_UPDATED_VERSION_FILE)

# Compare the current version with the last updated version
if [ "$CURRENT_VERSION" != "$LAST_UPDATED_VERSION" ]; then
    # Neovim has been updated, run pip install --upgrade pynvim
    pip install --upgrade pynvim

    # Update the last updated Neovim version in the file
    echo "$CURRENT_VERSION" > $LAST_UPDATED_VERSION_FILE

    echo "pynvim updated to the latest version."
else
    echo "Neovim is already up to date."
fi
