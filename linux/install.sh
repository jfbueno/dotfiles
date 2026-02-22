#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

ln -sf "$DOTFILES_DIR/rcs/zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/rcs/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/configs/gitconfig" "$HOME/.gitconfig"

./instal-bat.sh
./instal-delta.sh