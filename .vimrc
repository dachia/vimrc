set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'

call vundle#end()            " required
filetype plugin indent on    " required

set nu
set splitright
set encoding=utf-8
syntax on
set clipboard=unnamed
set tabstop=2
set shiftwidth=2

map <C-n> :NERDTreeToggle<CR>
