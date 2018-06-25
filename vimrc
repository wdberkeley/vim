" wdberkeley's .vimrc

set nocompatible " Don't be vi-compatible.

set encoding=utf-8 " Default to UTF-8.

" Plugins.
" I'd like to use vim's native plugin management, but it doesn't seem very
" popular on the internet, so I'll use vim-plug for now since it is minimal.
"
" Important commands:
"   PlugInstall = install plugins
"   PlugUpgrade = upgrade vim-plug
"   PlugStatus = show status of plugins
" See https://github.com/junegunn/vim-plug for more.
call plug#begin('~/.vim/vimplug_plugins') " Can't use ~/.vim/plugins.

" fzf, a fuzzy file finder.
Plug '/usr/local/opt/fzf' " This is the Homebrew-installed location of fzf.
Plug 'junegunn/fzf.vim'

" ack, a vim frontend for text search tools.
Plug 'mileszs/ack.vim'

" ale, the aysynchronous lint engine.
Plug 'w0rp/ale'

" Official Rust support for vim.
Plug 'rust-lang/rust.vim'

" YouCompleteMe, a semantic completion engine.
Plug 'Valloric/YouCompleteMe'

call plug#end()

colorscheme badwolf " See the colors directory for schemes.
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

" fzf
" Repo at https://github.com/junegunn/fzf.vim.
" Remember the following shortcuts for opening buffers from fzf:
"   ctrl + t = tab split
"   ctrl + x = split
"   ctrl + v = vertical split
nnoremap <leader>fzf :FZF

" ack
" Repo at https://github.com/mileszs/ack.vim.
" ripgrep repo at https://github.com/BurntSushi/ripgrep.
nnoremap <leader>rg :Ack!
let g:ackprg = 'rg --vimgrep'

" ale
" Repo at https://github.com/w0rp/ale.
let g:ale_fixers = { 'rust' : ['rustfmt'], }
let g:ale_fix_on_save = 1

" These C++ options are Kudu-specific.
" Maybe one day I'll need to handle multiple C++ projects.
let g:ale_c_build_dir_names = 'build/latest'
let g:ale_cpp_clangtidy_executable = '~/src/kudu/thirdparty/installed/uninstrumented/bin/clang-tidy'

" YouCompleteMe
" Repo at https://github.com/Valloric/YouCompleteMe.
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>ji :YcmCompleter GoToImprecise<CR>
" Whitelist Kudu directories so the config is read automatically.
let g:ycm_extra_conf_globlist = ['~/src/kudu/*']

" Make YCM not slow by delaying autocomplete until there's some input.
let g:ycm_min_num_of_chars_for_completion = 1

