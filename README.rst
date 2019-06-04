************
Installation
************

Clone the repository::

    git clone https://github.com/hackermd/vimanicer.git ~/.vim
    

Dependendies
============

Vim
---

MacOSX::

    brew install vim

Ubuntu::

    apt install vim

    # Depending on your distribution you may need to install Python3
    apt-get install python3-dev python3-pip
    pip3 install greenlet
    
CentOS::

    yum install vim
    
Silversearcher
--------------

MacOSX::

    brew install the_silver_searcher

Ubuntu::

    apt-get install silversearcher-ag
    
CentOS::

    yum install the_silver_searcher


Vim plug
--------

MacOSX and Linux (already provided with the repository)::

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
    
Plugins
=======

Start vim and install plugins::

    vim -c PlugInstall
