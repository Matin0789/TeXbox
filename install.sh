#!/bin/bash

INSTALL_DIR="$HOME/.texbox"
mkdir -p "$INSTALL_DIR/bin"
cp bin/texbox "$INSTALL_DIR/bin/"

if [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
    SHELL_RC="$HOME/.bashrc"
else
    echo "Unsupported shell. Add $INSTALL_DIR/bin to PATH manually."
    exit 1
fi

grep -qxF "export PATH=\"$INSTALL_DIR/bin:\$PATH\"" "$SHELL_RC" || \
    echo "export PATH=\"$INSTALL_DIR/bin:\$PATH\"" >> "$SHELL_RC"

echo "TeXbox installed. Restart terminal or run 'source $SHELL_RC'"
