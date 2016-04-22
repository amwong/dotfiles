#!/bin/bash

sudo apt-get install zsh
ln zsh/.zshenv $HOME/.zshenv 
ln zsh/.zshrc $HOME/.zshrc

sudo apt-get install vim
ln vim/.vimrc $HOME/.vimrc

mv ../dotfiles $HOME/.dotfiles

zsh
