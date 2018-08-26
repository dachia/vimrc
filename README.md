# Introduction

I have this repository to hold all my command line productivity tool configurations and bootstrapping guides.

Pool:

- tmux
- vim

## Installation

### Vim

```bash

sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
python3-dev ruby-dev lua5.1 liblua5.1-dev libperl-dev git \
checkinstall build-essential cmake

git clone git@github.com:vim/vim.git

cd vim
make clean dist
./configure --with-features=huge --enable-multibyte --enable-rubyinterp=yes --enable-python3interp=yes --enable-perlinterp=yes --enable-luainterp=yes --enable-gui=gtk2 --enable-cscope --prefix=/usr/local --enable-fail-if-missing --enable-terminal --enable-gui --with-x
sudo checkinstall
```

#### Copy config

```bash
cp .vimrc ~/
```

#### Install Vundle

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Vim plugin install
```bash
:PluginInstall
```

#### Build youCompleteMe

```bash
cd ~/vim/bundle/YouCompleteMe
./install.py --js-completer
cp .tern-config ~/
```

### Tmux plugins

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
