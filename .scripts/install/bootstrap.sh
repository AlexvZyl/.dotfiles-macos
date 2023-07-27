#!/bin/bash

# Clone.
brew install git gh neovim
mkdir ~/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME clone --bare https://github.com/AlexvZyl/.dotfiles-macos ~/.dotfiles/
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout -f

# Setup git.
gh auth login
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no

# Get modules.
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME submodule update --recursive --remote

# Run main install script.
~/.scripts/install/install.sh
