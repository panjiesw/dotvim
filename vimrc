set nocompatible
set t_Co=256

call pathogen#infect()
call pathogen#helptags()

set autoindent
set expandtab
set tabstop=4 softtabstop=4 shiftwidth=4
filetype plugin indent on

syntax on

" NerdTree autochdir
set autochdir
let NERDTreeChDirMode=2

" vertical line indentation
let g:indentLine_color_term=159
let g:indentLine_color_gui='#09AA08'
let g:indentLine_char='│'

set number
set numberwidth=5
set cursorline
set ruler

set backspace=indent,eol,start

set cul

let delimitMate_expand_cr=1

" move tabs to the end for new, single buffers (exclude splits)
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif

"" Mappings
let mapleader=','

nmap <leader>d :NERDTreeTabsToggle<CR>

