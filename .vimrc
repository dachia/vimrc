set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'leafgarland/typescript-vim'
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
set cursorline
set showmatch
let python_highlight_all=1
let g:ctrlp_custom_ignore='node_modules\|venv\|.git'
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

map <C-n> :NERDTreeToggle<CR>
