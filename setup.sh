#!/bin/bash

exit 0

printf "[*] Installing NERDTree plugin for Vim. \n"
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# https://stackoverflow.com/a/30187926
# Set up symbolic link so our .vimrc is identified by Vim, in the home directory.
ln -sf $(pwd)/.vimrc ~/.vimrc


# https://www.reddit.com/r/vim/comments/g68bf6/pathogen_is_dead_or_should_be_long_live_vim_8/fo99lfw/
printf "[*] Updating repositories for Vim plugins. \n"
for p in ~/.vim/pack/vendor/start/*; do git -C "$p" pull; done
