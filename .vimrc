set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'tomlion/vim-solidity'
Plugin 'leafgarland/typescript-vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colorscheme bclear
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

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_solidity_checkers = ['solc']
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_python_checkers = ['pylint', 'python']

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
