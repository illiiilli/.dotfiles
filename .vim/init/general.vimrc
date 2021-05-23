"general.vimrc
" Stuff that usually goes within a vimrc

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Numbers on the side
set relativenumber
set number
set hidden
set hlsearch
" cursorline
set cursorline
set scrolloff=8
set noerrorbells
set colorcolumn=80
set signcolumn=yes

" UI Stuff
if has('gui_running')
    set guioptions-=T  "remove toolbar
    " Sets font to M+ mn
    if has('nvim')
        set Guifont=M+_1m:h11:cSHIFTJIS:qDRAFT
    else
        set guifont=M+_1m:h11:cSHIFTJIS:qDRAFT
    endif
endif

colorscheme jellybeans

" Persistent Undo
set undofile
set undodir=$HOME/.vim/undodir

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

" https://thoughtbot.com/blog/vim-spell-checking
autocmd BufRead,BufNewFile *.md setlocal spell

" gotta go fast
set lazyredraw
