set nocompatible

call pathogen#infect()
call pathogen#helptags()

set autoindent
set expandtab
set tabstop=4
filetype plugin indent on

syntax on

set number
set numberwidth=5
set cursorline
set ruler

set backspace=indent,eol,start

set cul

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

"" Mappings
let mapleader=','

