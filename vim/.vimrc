"show line numbers
set number

"keypad on
set term=ansi

"colors on
syntax enable
colorscheme desert

set encoding=utf8

"setting tabs = 4 spaces
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

"highlight search items and ignore case
set hlsearch
set ignorecase

"handle 80 character limit
"highlights text past 80 chars 
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/
"auto line break at 80 characters"
"set lbr
"set tw=80
"toggle vertical line at 80 chars
"set cc=80
