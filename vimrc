set nocompatible
set t_Co=256
set hidden

" Autoreload file
set autoread
au CursorHold * checktime

" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

call pathogen#infect()
call pathogen#helptags()

set autoindent
set expandtab
set tabstop=4 softtabstop=4 shiftwidth=4
syntax on
filetype plugin indent on

highlight clear SignColumn

" NerdTree autochdir
set autochdir
let NERDTreeChDirMode=2
let g:nerdtree_tabs_open_on_console_startup=1

" CtrlP
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/node_modules/*,*/bower_components/*,*/build/*,*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" vertical line indentation
let g:indentLine_color_term=159
let g:indentLine_color_gui='#09AA08'
let g:indentLine_char='│'

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"

" Remove trailing whitespace on write
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType html,jinja,c,cpp,java,php,ruby,python,javascript,coffee autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

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

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>n :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Copas
set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>
vnoremap <C-c> "+y


