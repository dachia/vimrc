set nocompatible              " required
filetype off                  " required

set rtp+=$localappdata/nvim/bundle/Vundle.vim
call vundle#begin('$localappdata/nvim/bundle/')

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'iCyMind/NeoSolarized'

Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-jdaddy'

Plugin 'plytophogy/vim-virtualenv'
Plugin 'pangloss/vim-javascript'
Plugin 'tomlion/vim-solidity'
Plugin 'leafgarland/typescript-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

set termguicolors
colorscheme NeoSolarized
set background=light

set clipboard+=unnamedplus
set ff=unix
set autowrite
set nu
set splitright
set encoding=utf-8
set ts=2 sw=2 et
set showmatch
set cursorline
set wildignore=**/venv/**,**/externals/**,**/node_modules/**
set backspace=2
set nolz

let g:loaded_python_provider=0
let g:python3_host_prog='C:/Python37/python.exe'
let g:vim_markdown_folding_disabled = 1

let g:airline_theme='solarized'
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#ale#enabled=1

let g:ctrlp_custom_ignore='node_modules\|venv\|.git\|.pyc'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2

let g:ycm_autoclose_preview_window_after_completion=1

let g:ale_python_pylint_options='--load-plugins pylint_django'
let g:ale_python_auto_pipenv=1
let g:ale_lint_delay=1000

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
map <C-n> :NERDTreeToggle<CR>
