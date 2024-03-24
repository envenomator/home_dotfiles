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
if [ -f ~/".tmux.conf" ]; then
    echo Removing old .tmux.conf
    rm ~/.tmux.conf
fi
# link rc files
ln -s ~/home_dotfiles/.vimrc ~/.vimrc
ln -s ~/home_dotfiles/.bashrc ~/.bashrc
ln -s ~/home_dotfiles/.tmux.conf ~/.tmux.conf

# install plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo Setup complete
echo Run :PlugInstall in vim now
