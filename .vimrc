set nocompatible

set noshowmode

syntax enable,on
filetype plugin indent on

"Easier mapleader than the default "\"
"let mapleader = ","
let mapleader = "\<Space>"

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set backspace=indent,eol,start
set autoindent
set copyindent
set showmatch

" highlight search terms
set hlsearch
" show search matches as you type
set incsearch
nmap <silent> <leader>/ :nohlsearch<CR>

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
" change terminal title
set title

"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"autocmd filetype html,xml set listchars-=tab:>.

" PASTE MODE
set pastetoggle=<F2>


"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

execute pathogen#infect()

"NerdTree
noremap <C-n> :NERDTreeToggle<CR>

" powerline color fix
"autocmd SessionLoadPost * hi User1 guifg=#112005 guibg=#009099
set laststatus=2

set relativenumber
set showcmd

"colorscheme darkblue
colorscheme obsidian
