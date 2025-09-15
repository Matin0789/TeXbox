#!/bin/bash
INSTALL_DIR="$HOME/.texbox"
mkdir -p "$INSTALL_DIR/bin"
cp bin/texbox "$INSTALL_DIR/bin/"
echo "export PATH=\"$INSTALL_DIR/bin:\$PATH\"" >> ~/.bashrc
echo "TeXbox installed. Restart terminal or run 'source ~/.bashrc'"