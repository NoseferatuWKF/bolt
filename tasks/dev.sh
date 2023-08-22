#!/bin/bash

arch -arm64 brew reinstall tmux lf neovim \
fzf ripgrep jq entr magic-wormhole btop neofetch \
stow ansible derailed/k9s/k9s &&
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

