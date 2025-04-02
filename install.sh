#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

ln -sf "$DOTFILES_DIR/rcs/zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/rcs/bashrc" "$HOME/.bashrc"

./instal-bat.sh
./instal-delta.sh