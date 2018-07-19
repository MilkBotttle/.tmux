#!/bin/bash

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create plugin folder
mkdir ~/.vim/plugged

# copy config
cp .vimrc .tmux.conf .tmux.conf.local ~/.

