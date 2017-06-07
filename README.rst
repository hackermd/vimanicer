************
Installation
************

    git clone https://github.com/HackerMD/vimanizer.git ~/.vim

Dependendies
============

Neovim
------

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

