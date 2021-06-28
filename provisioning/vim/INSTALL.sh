#!/bin/bash -x
set -e

# OSX: sudo cp /opt/homebrew/bin/vim /usr/local/bin/

#

# git clone https://github.com/vim/vim && cd vim
# ./configure --with-features=huge --enable-multibyte --enable-python3interp=yes --with-python3-config-dir=`python3-config --configdir` --enable-cscope --prefix /usr/local
#                                                                                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^
# make -j6 && sudo make install

apt install build-essential cmake vim-nox python3-dev

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp dot_vimrc ~/.vimrc
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer --go-completer
cd -

# python3 install.py --clangd-completer


# cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1
# compile_commands.json will be written to your build directory. You should symlink it (or simply copy it) to the root of your source tree, if they are different.
# ln -s ~/myproject/compile_commands.json ~/myproject-build/

