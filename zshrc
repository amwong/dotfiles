alias l="ls -G"
alias la="ls -Gal"
alias lr="ls -Gr"
alias reloadzsh="source ~/.zshrc"
alias cl=clear


git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

precmd() { 
  PROMPT="%F{221}%n%f@%F{32}%m%f %F{32}%B%~%b%f%F{2}$(git_branch)%f %# "
}
# prompt

#PROMPT='${git_branch}%# '

# Commands from https://wiki.archlinux.org/index.php/Zsh#Configure_Zsh
# cmd completion
autoload -Uz compinit
compinit
