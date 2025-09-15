#!/bin/bash
INSTALL_DIR="$HOME/.texbox"
rm -rf "$INSTALL_DIR/bin/texbox"
if [ -f ~/.bashrc ]; then
    sed -i '/export PATH="$HOME\/.texbox\/bin:\$PATH"/d' ~/.bashrc
fi
echo "TeXbox uninstalled. Restart terminal or run 'source ~/.bashrc'"
