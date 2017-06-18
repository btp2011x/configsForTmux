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

" Goto definition with F3
map <leader>b :YcmCompleter GoTo<CR>
map <leader>r :YcmCompleter GoToReferences<CR>
map <leader>w :w!<CR>
map <leader>q :q<CR>
map <leader>z :wq<CR>
syntax on
filetype plugin indent on
colorscheme torte

set backspace=indent,eol,start
set number
set cursorline

highlight LineNr ctermfg=grey

""syntax enable
"set background=dark
"set encoding=utf-8
"set showcmd                     " display incomplete commands
"set autoindent                  " automatically indent
"set pastetoggle=<F12>           " toggle paste anbd nopaste
"nnoremap <CR> :noh<CR><CR>      " pressing enter after a search clears highlighting
"
""Tmux setting
"map <Esc>[B <Down>
"
"
""" Whitespace
"" set nowrap                      " don't wrap lines
"" set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
"" set expandtab                   " use spaces, not tabs (optional)
"" autocmd FileType make setlocal noexpandtab
"set backspace=indent,eol,start  " backspace through everything in insert mode
"" set softtabstop=4
"
""" Searching
set hlsearch                    " highlight matches
"set incsearch                   " incremental searching
"set ignorecase                  " searches are case insensitive...
"set smartcase                   " ... unless they contain at least one capital letter
"
""" C Specific
"set cindent
"
"
"filetype on                 " Syntx highlighting
""filetype plugin indent on   " try to detect filetypes
"
"set foldmethod=indent
"set foldlevel=99
"
"highlight ColorColumn ctermbg=gray
""" set colorcolumn=80
