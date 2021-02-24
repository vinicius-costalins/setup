#!/bin/bash

echo "--> Installing and configuring zsh"

ZSH_CUSTOM="$HOME/.oh-my-zsh"

# Install zsh
sudo apt install -y zsh
chsh -s $(which zsh)

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install zinit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# Copy .zshrc from github
curl https://raw.githubusercontent.com/danielorkae/setup/main/.zshrc > $HOME/.zshrc

# Initialize zsh
zsh
