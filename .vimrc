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
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ntpeters/vim-better-whitespace'


call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colorscheme bclear
set nu
set splitright
set encoding=utf-8
set ts=2 sw=2 et
set clipboard=unnamed
set ttyfast
set lazyredraw
set number
set showmatch
set cursorline
set wildignore=**/venv/**,**/externals/**,**/node_modules/**
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let python_highlight_all=1
let g:ctrlp_custom_ignore='node_modules\|venv\|.git\|.pyc'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

map <C-n> :NERDTreeToggle<CR>
