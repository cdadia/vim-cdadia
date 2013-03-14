#!/bin/sh

set -e

mkdir -p ~/.vim/{bundle,backup}

if [[ -n "$RW" ]]; then
  PREFIX="git@github.com:"
else
  PREFIX="https://github.com/"
fi

if ! [[ -d ~/.vim/bundle/vundle ]]; then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

if ! [[ -d ~/.vim/bundle/vim-cdadia ]]; then
  git clone ${PREFIX}cdadia/vim-cdadia.git ~/.vim/bundle/vim-cdadia
fi

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

ln -s ~/.vim/bundle/vim-cdadia/vimrc ~/.vimrc

vi +BundleInstall +qall
