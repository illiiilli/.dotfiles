" Author: Alan Chen
" Alan's vimrc.
" This is a helpful resource:
" https://gist.github.com/romainl/9ecd7b09a693816997ba

call plug#begin()
    Plug 'https://github.com/tpope/vim-sensible'
    Plug 'https://github.com/nanotech/jellybeans.vim'
    Plug 'https://github.com/tpope/vim-surround'
    Plug 'https://github.com/tpope/vim-repeat'
    Plug 'https://github.com/junegunn/goyo.vim'
    Plug 'https://github.com/tpope/vim-commentary'
    Plug 'https://github.com/itchyny/lightline.vim'
    Plug 'https://github.com/tpope/vim-characterize'
    Plug 'vim-utils/vim-troll-stopper'
    Plug 'https://github.com/sheerun/vim-polyglot'
call plug#end()

" Alan's modifications start here:

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set relativenumber
set number

if has('gui_running')
    set guioptions-=T  "remove toolbar
    " Sets font to M+ mn
    set guifont=M+_1m:h11:cSHIFTJIS:qDRAFT
endif

colorscheme jellybeans

" Remaps "jj" to <Esc> while in insert mode
inoremap jj <Esc>

" FUNCTIONS
"
function! 

" Map <F5> to compile files to .pdf
" Markdown
" LaTeX
augroup Markup_Mappings
    autocmd!
    " Exports to .pdf and .html, respectively.
    autocmd Filetype markdown,tex,latex,context,plaintex map <F5> :silent !pandoc<space>"<C-r>%"<space>-o<space>"<C-r>%.pdf"<Enter><Enter>
    autocmd Filetype markdown map <S-F5> :silent !pandoc<space>"<C-r>%"<space>-o<space>"<C-r>%.html"<Enter><Enter>
    " Replaces 0 width space (<200b>) with <space>
    autocmd Filetype markdown map <F4> :%s/\%u200b/<space>/g<Enter>
augroup END

highlight TrollStopper ctermbg = red guibg = #FF0000

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
