************
Installation
************

Clone repository::

    git clone https://github.com/HackerMD/vimanizer.git ~/.vim


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
    sudo pip install --upgrade neovim
    sudo ln -s /usr/bin/python /usr/local/bin/python
    
    sudo apt-get install python3-dev python3-pip
    sudo pip3 install greenlet

Vim plug
--------

MacOSX and Ubuntu::

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
Silversearcher
--------------

MacOSX::

    brew install the_silver_searcher

Ubuntu::

    sudo apt-get install silversearcher-ag


*************
Configuration
*************

Create softlinks for neovim::

    ln -s ~/.vim ~/.config/nvim
    ln -s ~/.vim/vimrc ~/.vimrc


Create alias for ``vim`` (in ``.bashrc`` or ``.bash_profile`` file):

MacOSX::

    alias vim=/usr/local/bin/nvim

Ubuntu::

    alias vim=/usr/bin/nvim
