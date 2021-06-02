#!/bin/bash -x
set -e


sudo apt install gcc g++ make build-essentials zsh ncdu mc htop python3-dev python3-setuptools python3-sh gdb valgrind rsync borgbackup rclone vim net-tools


#### PATHOGEN ####
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#### VIM-GO ###
#git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

### NERD TREE ###
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

### GNUPG ########
mkdir -vp $HOME/.vim/plugin/
curl https://raw.githubusercontent.com/jamessan/vim-gnupg/master/plugin/gnupg.vim > $HOME/.vim/plugin/gnupg.vim

cp -v .vimrc ~/
cp -v .tmux.conf ~/
cp -v .zshrc ~/

sudo cp -R ./bin/* /usr/local/bin/

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
