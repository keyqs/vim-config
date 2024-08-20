rall plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'neovim/nvim-lspconfig'
call plug#end()

syntax on                   " syntax highlighting
set ignorecase              " case insensitive 
set mouse=                  " middle-click paste with 
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           
set shiftwidth=2            " width for autoindents
set expandtab               " converts tabs to white space
set number                  " add line numbers
set noswapfile              " disable creating swap file
set linebreak
set list
set wrap
set ai

if !has('nvim') | set viminfo+=n~/.config/vim/viminfo | endif

set cursorline
highlight Cursorline cterm=bold

map <C-n> :NERDTreeToggle<CR>

"colorscheme catppuccin

