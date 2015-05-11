#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "+ Installing bash configuration"
rm -rf ~/.bashrc && ln -s $DIR/.bashrc ~/.bashrc

echo "+ Installing tmux configuration"
rm -rf ~/.tmux.conf && ln -s $DIR/.tmux.conf ~/.tmux.conf

echo "+ Installing vim configuration"
rm -rf ~/.vimrc && ln -s $DIR/.vimrc ~/.vimrc
rm -rf ~/.vim && ln -s $DIR/.vim ~/.vim

echo "+ Installing tmux Xresources"
rm -rf ~/.Xresources && ln -s $DIR/.Xresources ~/.Xresources
