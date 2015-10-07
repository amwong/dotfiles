PROMPT="%{%F{255}%}[%{%f%}%{%F{61}%}%n%{%f%}%{%F{245}%}@%{%f%}%{%F{72}%}%m%{%f%}%{%F{245}%}:%{%f%}%{%F{18}%}%~%{%f%}%{%F{255}%}]%{%f%}%# "
#RPROMPT=$'$(vcs_info_wrapper)'



export PIP_REQUIRE_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh
#alias updatedb="sudo /usr/libexec/locate.updatedb"
alias .="source"
alias ls='ls --color=auto'
alias reloadzsh=". $STOW_DIR/zsh/.zshrc && echo 'ZSH config reloaded from $STOW_DIR/zsh/.zshrc'"

# VCS Info
zstyle ':vcs_info:*' actionformats \
       '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
       '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git cvs svn


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

vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
