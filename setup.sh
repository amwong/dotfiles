#!/bin/bash

mv ../dotfiles $HOME/.dotfiles

sudo apt-get install zsh
ln -s  ~/.dotfiles/zsh/zshenv $HOME/.zshenv 
ln -s ~/.dotfiles/zsh/zshrc $HOME/.zshrc

sudo apt-get install vim
ln -s ~/.dotfiles/vim/vimrc $HOME/.vimrc

zsh
