"show line numbers
set number

"colors on
syntax enable
colorscheme desert

set encoding=utf8
"keypad on
set term=ansi

"set tabs = 4 spaces
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
"highlight text past 80 chars 
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
"auto line break at 80 characters"
"set lbr
"set tw=80
"toggle vertical line at 80 chars
"set cc=80
