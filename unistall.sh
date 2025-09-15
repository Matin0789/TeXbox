#!/bin/bash

INSTALL_DIR="$HOME/.texbox"

rm -rf "$INSTALL_DIR/bin/texbox"

if [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
    SHELL_RC="$HOME/.bashrc"
else
    echo "Unsupported shell. Remove $INSTALL_DIR/bin from PATH manually."
    exit 1
fi

sed -i "/export PATH=\"$INSTALL_DIR\/bin:\$PATH\"/d" "$SHELL_RC"

echo "TeXbox uninstalled. Restart terminal or run 'source $SHELL_RC'"

