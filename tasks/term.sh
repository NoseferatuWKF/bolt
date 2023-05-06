#!/bin/bash

# TODO: neovim
arch -arm64 brew reinstall tmux stow derailed/k9s/k9s &&
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

