PROMPT="[%{%F{9}%}%n%{%f%}@%{%F{4}%}%m%{%f%}:%{%F{8}%}%~%{%f%}]%# "

#mkdir, cd into it
mkcd () {
  mkdir -p "$*"
  cd "$*"
}

alias .="source"
alias l="ls"
alias ls='ls --color=auto'
alias lr='ls -R'
alias la='ls -al'
alias grep='grep --color=auto'
alias reloadzsh=". $HOME/.dotfiles/zsh/.zshrc && echo 'ZSH config reloaded from $HOME/.dotfiles/zsh/.zshrc'"

# swap the contents of two files
function swap()
{
  if [ $# -ne 2 ]; then
    echo "Usage: swap file1 file2"
  else
    tmpfile=$(mktemp $(dirname "$1")/XXXXXX)
    mv "$1" "$tmpfile"
    mv "$2" "$1"
    mv "$tmpfile" "$2"
    rm -f "$tmpfile"
  fi
}

# History
HISTFILE=$HOME/.zsh_history
setopt APPEND_HISTORY
HISTSIZE=1200
SAVEHIST=1000
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
