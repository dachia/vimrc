set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'Valloric/YouCompleteMe'
Plugin 'tomlion/vim-solidity'
Plugin 'leafgarland/typescript-vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
colorscheme solarized
set background=light

let g:airline_theme='sol'

let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#enabled=1

set nu
set autowrite
set splitright
set encoding=utf-8
set ts=2 sw=2 et
set clipboard=unnamed
set number
set showmatch
set cursorline
set wildignore=**/venv/**,**/externals/**,**/node_modules/**

let python_highlight_all=1
let g:ycm_python_binary_path = '/usr/bin/python3'

let g:ctrlp_custom_ignore='node_modules\|venv\|.git\|.pyc'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

map <C-n> :NERDTreeToggle<CR>

if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif
