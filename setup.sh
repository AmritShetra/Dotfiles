#!/bin/bash

echo "Press "y" to continue..."
read -n1 -rs key

if [ $key != "y" ]
then
	exit 0
fi

printf "[*] Installing NERDTree plugin for Vim. \n"
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# https://stackoverflow.com/a/30187926
# Set up symbolic link so our .vimrc is identified by Vim, in the home directory.
ln -sf $(pwd)/.vimrc ~/.vimrc

