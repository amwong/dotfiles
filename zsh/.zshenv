#!/bin/zsh

export STOW_DIR=$HOME/.dotfiles

# retrieve vim path
VIMRUNTIME=`vim -e -T dumb --cmd 'exe "set t_cm=\<C-M>"|echo $VIMRUNTIME|quit' | tr -d '\015' `
