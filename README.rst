************
Installation
************

Dependendies
============

Neovim
------

Mac OSX:

    brew install neovim/neovim/neovim

Ubuntu:

    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim

Create softlinks for neovim:

    ln -s ~/.config/nvim ~/.vim
    ln -s ~/.vim/init.vim ~/.vim/vimrc
    ln -s ~/.vim/vimrc ~/.vimrc

Vim plug
--------

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


This will also create the ``.vim`` directory.
