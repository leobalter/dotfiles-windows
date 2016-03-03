set nocompatible

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set incsearch "find the next match as we type the search
set hlsearch "hilight searches by default

syntax on
set number
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
colorscheme desert
set backspace=indent,eol,start

"default indent settings
set shiftwidth=4
set softtabstop=4
"set expandtab "use spaces instead of tabs
set autoindent

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden

set wrap "dont wrap lines
set linebreak "wrap lines at convenient points

"undo settings
set undodir=~/.vim/undofiles
set undofile
set colorcolumn=+1 "mark the ideal max text width
