## Dotfiles

This is a repository containing files used to help me configure tools that I commonly use, useful for when I get started on a new Linux machine.

### Setup

* Clone the repository to the home directory.
* Set up a symbolic link so that the `vimrc` config file will be identified:
```
ln -sf ~/Dotfiles/.vimrc ~/.vimrc
```
* Install NERDTree plugin for Vim:
```
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
```

