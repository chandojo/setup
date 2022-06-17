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

set viminfo='100,<1000,s100,h
" Leader key
let mapleader=","
let maplocalleader=","

call plug#begin('~/.local/share/nvim/plugged')
" clystyle
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git/Github
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Formatting
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'

" Vim-iced and dependencies
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
call plug#end()

" Rainbow Parens
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

augroup rainbow_lisp
 autocmd!
 autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

" vim-iced settings
let g:iced_enable_default_key_mappings = v:true
let g:iced_formatter = "cljstyle"


" FZF-VIM settings
nmap <leader>F :FZF<CR>
nmap <leader>A :Ag<CR>
nmap <leader>G :GFiles<CR>

"vim-rhubarb settings
nmap <leader>gb :GBrowse<CR>

" clystyle
augroup autoformat_settings
  autocmd FileType clojure AutoFormatBuffer cljstyle
augroup END
