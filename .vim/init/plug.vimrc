" plug.vimrc
" Plugin loader

" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    " Aesthetic
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'nanotech/jellybeans.vim'
    " Functional
    Plug 'airblade/vim-gitgutter'
    Plug 'dense-analysis/ale'
    Plug 'ferrine/md-img-paste.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/vim-peekaboo'
    Plug 'mantiz/vim-plugin-dirsettings'
    Plug 'mattn/calendar-vim'
    Plug 'preservim/vim-textobj-sentence'
    Plug 'sheerun/vim-polyglot'
    " if has('nvim')
    "     Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " else
    "     Plug 'Shougo/deoplete.nvim'
    "     Plug 'roxma/nvim-yarp'
    "     Plug 'roxma/vim-hug-neovim-rpc'
    " endif
    Plug 'takac/vim-hardtime'
    Plug 'tpope/vim-rsi'
    Plug 'tpope/vim-characterize'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-scriptease'
    Plug 'tpope/vim-unimpaired'
    Plug 'wellle/targets.vim'
    Plug 'vim-utils/vim-troll-stopper'
    Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
    " Snips
    " Plug 'honza/vim-snippets'
    " Plug 'SirVer/ultisnips'
call plug#end()
