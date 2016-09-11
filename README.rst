************
Installation
************

Dependendies
============

Neovim
------

MacOSX::

    brew install neovim/neovim/neovim

Ubuntu::

    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim

Vim plug
--------

MacOSX and Ubuntu::

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


This will also create the ``.config/nvim/autoload`` directory.


*************
Configuration
*************

Create softlinks for neovim::

    ln -s ~/.vim ~/.config/nvim
    ln -s ~/.vim/init.vim ~/.vim/vimrc
    ln -s ~/.vim/vimrc ~/.vimrc

