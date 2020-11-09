#!/bin/bash

echo "Press "y" to continue..."
read -n1 -rs key

if [ $key != "y" ]
then
	exit 0
fi

# https://www.reddit.com/r/vim/comments/g68bf6/pathogen_is_dead_or_should_be_long_live_vim_8/fo99lfw/
printf "[*] Updating repositories for Vim plugins. \n"
for p in ~/.vim/pack/vendor/start/*; do git -C "$p" pull; done

