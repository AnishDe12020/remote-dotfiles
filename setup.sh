# Packages
udo apt install zsh curl

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# ZSH Plugins
curl -L git.io/antigen > ~/antigen.zsh

# Starship
curl -sS https://starship.rs/install.sh | sh -s -- --yes
mkdir -p ~/.config
mv starship.toml ~/.config/starship.toml

# Start ZSH
exec zsh

source ~/.zshrc
