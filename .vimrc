set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Goto definition with F3"
"
"
"   HOW TO ...
"
" %s/foo/bar/g       " find and replace
" %s/foo/bar/gc      " find and replace requiring confirmation 

map <leader>b :YcmCompleter GoTo<CR>
map <leader>r :YcmCompleter GoToReferences<CR>
map <leader>w :w!<CR>
map <leader>q :q<CR>
map <leader>z :wq<CR>
map <leader>p :bp<CR>
map <leader>o :bn<CR>
map <leader>d :bd<CR>
map <leader>l :ls<CR>

syntax on
filetype plugin indent on
colorscheme torte

set backspace=indent,eol,start
set number
set cursorline

set hlsearch
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Grey guibg=NONE
