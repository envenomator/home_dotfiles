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

# install plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo Setup complete
echo Run :PlugInstall in vim now
