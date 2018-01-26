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
set number
set showmatch
set cursorline
set wildignore=**/venv/**,**/externals/**,**/node_modules/**

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_is_showing = 0

let python_highlight_all=1
let g:ctrlp_custom_ignore='node_modules\|venv\|.git\|.pyc'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-a> :call SyntasticToggle()<CR>

" Syntastic toggle function
function! SyntasticToggle()
  if g:syntastic_is_showing
    SyntasticReset
    let g:syntastic_is_showing = 0
  else
    SyntasticCheck
    let g:syntastic_is_showing = 1
  endif
endfunction

" Syntastic redraw issue
set ttyfast
au FileWritePost * :redraw!
au TermResponse * :redraw!
au TextChanged * :redraw!
au QuickFixCmdPre * :redraw!
au QuickFixCmdPost * :redraw!

" Tmux fix for ctrl+arrows
if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif
