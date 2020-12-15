syntax on
filetype plugin indent on

set number
set ruler
set wrap
set visualbell

set hlsearch

set cursorline

set tabstop=4

set autoindent

inoremap <C-j><C-j> <ESC>

nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>

