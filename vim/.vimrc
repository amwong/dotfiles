"show line numbers
set number

"keypad on - must go before syntax enable 
set term=ansi 

"colors on
syntax enable
set t_Co=256
colorscheme desert

set encoding=utf8

"setting tabs = 4 spaces
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

"search options
set hlsearch
"set ignorecase

"handle 80 character limit
"highlights text past 80 chars 
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/
"auto line break at 80 characters"
"set lbr
"set tw=80
"toggle vertical line at 80 chars
"set cc=80

"cursor column color set
highlight CursorLine ctermbg=darkred cterm=none
set cursorline
