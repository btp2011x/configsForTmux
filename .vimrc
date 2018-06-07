set nocompatible              " be iMproved, required
filetype off                  " required

"   HOW TO ...
"
" %s/foo/bar/g       " find and replace foo with bar
" %s/foo/bar/gc      " find and replace requiring confirmation 

map <leader>b :YcmCompleter GoTo<CR>
map <leader>r :YcmCompleter GoToReferences<CR>
map <leader>w :w!<CR>
map <leader>q :q<CR>
map <leader>z :wq<CR>
map <leader>p :bp<CR>
map <leader>o :bn<CR>
map <leader>d :bd<CR>
"map <leader>l :ls<CR>
map <leader>l :norm i#<CR>
map <leader>s :set paste<CR>
map <leader>n :set nopaste<CR>

syntax on
filetype plugin indent on
colorscheme torte

set backspace=indent,eol,start
set number
set cursorline

set hlsearch
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Grey guibg=NONE

" set tabs to 4 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" set scrolling
set mouse=a
