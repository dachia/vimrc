set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'leafgarland/typescript-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'


call vundle#end()            " required
filetype plugin indent on    " required

set nu
set splitright
set encoding=utf-8
syntax on
set clipboard=unnamed
set tabstop=2
set shiftwidth=2
set ttyfast
set lazyredraw
set number
set expandtab
set showmatch
set wildignore=**/venv/**,**/externals/**,**/node_modules/**
let python_highlight_all=1
let g:ctrlp_custom_ignore='node_modules\|venv\|.git\|.pyc'
let g:syntatastic_check_on_open=1
let g:indent_guides_enable_on_vim_startup=1
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

map <C-n> :NERDTreeToggle<CR>
