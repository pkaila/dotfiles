#!/bin/sh

rm ~/.vimrc
ln -s $(pwd)/vimrc ~/.vimrc
rm -rf ~/.vim
ln -s $(pwd)/vimfiles ~/.vim

