#!/bin/bash

CURRENT_DIR="$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)";

# Packages
sudo apt install zsh curl

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# ZSH Plugins
curl -L git.io/antigen > ~/antigen.zsh

# Starship
curl -sS https://starship.rs/install.sh | sh -s -- --yes
mkdir -p ~/.config
mv $CURRENT_DIR/starship.toml ~/.config/starship.toml
mv $CURRENT_DIR/.zshrc ~/.zshrc

# Start ZSH
exec zsh

source ~/.zshrc
