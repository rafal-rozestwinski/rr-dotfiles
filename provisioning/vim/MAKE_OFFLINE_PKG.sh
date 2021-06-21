#!/bin/bash -x


# git clone https://github.com/vim/vim && cd vim
# ./configure --with-features=huge --enable-multibyte --enable-python3interp=yes --with-python3-config-dir=`python3-config --configdir` --enable-cscope --prefix /usr/local
#                                                                                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^
# make -j6 && sudo make install

mkdir vim_pkg && cd vim_pkg
git clone https://github.com/vim/vim
git clone https://github.com/VundleVim/Vundle.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/jamessan/vim-gnupg.git
git clone https://github.com/ycm-core/YouCompleteMe.git
wget https://github.com/clangd/clangd/releases/download/12.0.0/clangd-linux-12.0.0.zip
cp -v ../dot_vimrc .
cp -v ../*.sh .
cd ..
tar czf vim_pkg_$(date -u +"%Y-%m-%dT%H-%M-%SZ").tar.gz vim_pkg
rm -rf vim_pkg/
