#!/bin/sh

tmux source ~/.tmux.conf

[ ! -d ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && bash ~/.tmux/plugins/tpm/scripts/install_plugins.sh

# Install starship
[ ! $(which starship) ] && curl -sS https://starship.rs/install.sh | sh

# Install zsh autosuggestion
[ ! -d ~/.zsh/zsh-autosuggestions ] && git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
