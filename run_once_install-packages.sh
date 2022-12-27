#!/bin/sh

[ ! -d ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source ~/.tmux.conf

sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh

# Install starship
curl -sS https://starship.rs/install.sh | sh

# Install zsh autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
