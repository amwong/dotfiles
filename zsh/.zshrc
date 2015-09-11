export PIP_REQUIRE_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias .="source"

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

