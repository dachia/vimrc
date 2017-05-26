#!/bin/sh
sudo apt-get update
sudo apt-get install -y build-essential git cmake python-dev
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/vimrc/.vimrc ~/.vimrc
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.py
