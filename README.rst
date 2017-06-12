************
Installation
************

Clone the repository::

    git clone https://github.com/hackermd/vimanizer.git ~/.vim
    
Create a symlink for the `vimrc` file::

    ln -s .vim/vimrc .vimrc


Dependendies
============

Vim
---

MacOSX::

    brew install vim

Ubuntu::

    add-apt-repository ppa:jonathonf/vim
    apt update
    apt install vim

    apt-get install python3-dev python3-pip
    pip3 install greenlet

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

    apt-get install silversearcher-ag
