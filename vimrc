" options
set belloff=all

set number
set relativenumber
set signcolumn=number

filetype plugin indent on
syntax on

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set smartindent
set breakindent

set hidden
set termguicolors

set splitright
set splitbelow

noswapfile
set nobackup
set undofile

set confirm
set spelllang= "en_us"
set spell

nohlsearch
set incsearch
set ignorecase
set smartcase

set mouse = "a"
set cursorline

" unnamedplus does not work here, only in neovim
set clipboard=unnamed
   
set updatetime =250
set timeoutlen =300

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set scrolloff=4

" key bindings
let mapleader = " "
let maplocalleader= " "

" sensible defaults
nnoremap <Space> <Nop>
xnoremap <Space> <Nop>

nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'   

" personal choice and plugins
nnoremap <leader>\ :Ex<CR>
xmap <leader>p "_dP

" appearance
set background=dark
colorscheme catppuccin
