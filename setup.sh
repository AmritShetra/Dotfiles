#!/bin/bash

echo "Press "y" to continue..."
read -n1 -rs key

if [ $key != "y" ]
then
	exit 0
fi


# Vim plugins
mkdir -p ~/.vim/pack/plugins/start
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline


# https://stackoverflow.com/a/30187926
# Set up symbolic link so this .vimrc is identified by Vim, in the home directory
ln -sf $(pwd)/.vimrc ~/.vimrc

