" wdberkeley's .vimrc

set nocompatible " Don't be vi-compatible.

set encoding=utf-8 " Default to UTF-8.

colorscheme goodwolf " See the colors directory for schemes.
                     " Switch with :colo <scheme>.

syntax on " Turn on syntax highlighting.

" The setting below stores all swapfiles in a single place so they don't
" pollute the directory of the file being edited.
" - The ^= causes vim to prepend the value to the existing list of values for
"   'directory'.
" - The terminal // causes vim to use the full path of the file to name its
"   swapfile.
set directory^=$HOME/.vim/swp//

" Tabs, spaces, etc.
set tabstop=2     " Number of spaces shown per tab character.
set softtabstop=2 " Number of spaces added per tab entered.
set expandtab     " Expand tabs as spaces.
set cindent       " Use C indenting rules as a reasonable default.
set shiftwidth=0  " Use tabstop's value for how much to indent by, per indent.

set list                    " Show certain 'invisible' characters (\t, \n).
set listchars=tab:▸\ ,eol:¬ " Set symbols for invisible characters.

filetype indent plugin on  " Load language indent files (from .vim/indent/).

" Location and command information.
set title          " Show file info in the title bar.
set number         " Show line numbers.
                   " Remember :set rnu for relative numbers.
set ruler          " Show cursor position.
set showcmd        " Show command as it is being typed.
set laststatus=2   " Always show the status line at the bottom.
set cursorline     " Highlight current line.
set colorcolumn=80 " Highlight the 100th column.
set visualbell     " On error, blink cursor instead of beeping.
set showmatch      " Show matching delimiter briefly.
set scrolloff=3    " Show at least three lines above and below the cursor.

" Buffers, tabs, windows.
set hidden " Permits hiding buffers with unsaved changes.

" Formattting.
set formatoptions+=j " Delete comment prefix when joining comment lines. 

" Searching.
set ignorecase  " Case-insensitive search...
set smartcase   " ...except if the search text contains capital letters.

" Keymappings and controls.
let mapleader=","
" No <shift> needed for commands.
nnoremap ; :
set backspace=indent,eol,start  " Backspace behaves 'normally'.
set mouse=a                   " Mouse works in all modes.

" Notes for the future.
" - I may want an autogroup to group filetype-specific settings.
" - fzf for fuzzy-finding files.
" - ack and ag for searching within files.
" - ALE for linting.
" - vim-gitgutter for showing modifications to a file.
" - 
