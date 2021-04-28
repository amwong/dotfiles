#!/bin/bash

mv ../dotfiles $HOME/.dotfiles

ln -s  ~/.dotfiles/zsh/zshenv $HOME/.zshenv 
ln -s ~/.dotfiles/zsh/zshrc $HOME/.zshrc

ln -s ~/.dotfiles/vim/vimrc $HOME/.vimrc

zsh
