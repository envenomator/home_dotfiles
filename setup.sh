#!/bin/bash

# remove old dotfiles
if [ -f ~/".vimrc" ]; then
    echo Removing old .vimrc
    rm ~/.vimrc
fi
if [ -f ~/".bashrc" ]; then
    echo Removing old .bashrc
    rm ~/.bashrc
fi

# link rc files
ln -s ~/home_dotfiles/.vimrc ~/.vimrc
ln -s ~/home_dotfiles/.bashrc ~/.bashrc

# install VIM plugins
echo Installing VIM plugins..
cd 
if [ -d ".vim/pack/vendor/start" ]; then
    echo Removing old plugins..
    rm -rf .vim/pack/vendor/start
fi
mkdir -p ~/.vim/pack/vendor/start 
echo Installing new plugins from github..
git clone --quiet --depth 1 https://github.com/spf13/vim-autoclose.git ~/.vim/pack/vendor/start/autoclose 
git clone --quiet --depth 1 https://github.com/itchyny/lightline.vim.git ~/.vim/pack/vendor/start/lightline 
git clone --quiet --depth 1 https://github.com/tpope/vim-surround.git ~/.vim/pack/vendor/start/vim-surround 

echo Setup complete
