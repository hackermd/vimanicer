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

    apt install vim

    apt-get install python3-dev python3-pip
    pip3 install greenlet
    
CentOS::

    yum install vim

Vim plug
--------

MacOS and Linux (already provided with the repository)::

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Silversearcher
--------------

MacOSX::

    brew install the_silver_searcher

Ubuntu::

    apt-get install silversearcher-ag
    
CentOS::

    yum install the_silver_searcher
