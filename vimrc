" wdberkeley's .vimrc

set nocompatible  " What's vi?

colorscheme badwolf

syntax on

set encoding=utf-8

set backspace=indent,eol,start  " backspace behaves 'normally'.

set nobackup    " Don't save backups or swapfiles. Git.
set noswapfile

" Tabs and spaces
set tabstop=2       " Number of spaces shown per tab character.
set softtabstop=2   " Number of spaces added per tab entered.
set expandtab       " Tabs are spaces.
filetype indent plugin on  " Load language-specific indent files (from .vim/indent/).

set number      " Show line numbers.
set ruler       " Show cursor position.
set showcmd     " Show last run command.
set cursorline  " Highlight current line.

set visualbell  " On error, blink cursor instead of beeping.

set path+=**    " :find, etc search and autocomplete recursively.
set wildmenu    " Display autocomplete match picker.

set lazyredraw  " Redraw only when needed.

set showmatch  " Show matching delimiter.

set ignorecase  " Case-insensitive search.
set hlsearch    " Highlight matches.

let mapleader=","

set mouse=a  " The mouse is good for scrolling.

" No <shift> needed for commands.
nnoremap ; :

set colorcolumn=100  " Highlight the 100th column.

" Quick exit from insert mode.
inoremap jj <ESC>

