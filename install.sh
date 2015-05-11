#!/bin/bash

DOTFILES_ROOT="${HOME}/workspace"
DOTFILES_NAME="dotfiles-ubuntu-14.04"
DOTFILES_PATH="${DOTFILES_ROOT}/${DOTFILES_NAME}"

echo "+ Installing base packages"
sudo apt-get -y install aptitude
sudo apt-get -y install vim
sudo apt-get -y install git
sudo apt-get -y install gcc g++
sudo apt-get -y install cmake

echo "+ Configuring packages"
git config user.name "Aurelien Vallee"
git config user.email "vallee.aurelien@gmail.com"

echo "+ Creating standard file layout"
mkdir -p "${DOTFILES_ROOT}"
cd "${DOTFILES_ROOT}"
git clone http://github.com/NewbiZ/${DOTFILES_NAME}

echo "+ Installing bash configuration"
rm -rf "${HOME}/.bashrc" && ln -s "${DOTFILES_PATH}/.bashrc" "${HOME}/.bashrc"

echo "+ Installing tmux configuration"
rm -rf "${HOME}/.tmux.conf" && ln -s "${DOTFILES_PATH}/.tmux.conf" "$HOME/.tmux.conf"

echo "+ Installing vim configuration"
rm -rf "${HOME}/.vimrc" && ln -s ${DOTFILES_PATH}/.vimrc "${HOME}/.vimrc"
rm -rf "${HOME}/.vim" && ln -s "${DOTFILES_PATH}/.vim" "${HOME}/.vim"

echo "+ Installing tmux Xresources"
rm -rf "${HOME}/.Xresources" && ln -s "${DOTFILES_PATH}/.Xresources" "${DOTFILES_PATH}/.Xresources"

