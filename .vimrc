set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'

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
colorscheme solarized

set background=light
set autowrite
set nu
set splitright
set encoding=utf-8
set ts=2 sw=2 et
set clipboard=unnamed
set number
set showmatch
set cursorline
set wildignore=**/venv/**,**/externals/**,**/node_modules/**
set backspace=2
set timeoutlen=1000 ttimeoutlen=0
set nofoldenable

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
