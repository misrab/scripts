#!/bin/bash

# a simple bash script for a fresh ubuntu install

sudo apt update
sudo apt upgrade 

# get bash profile commands
curl https://raw.githubusercontent.com/misrab/scripts/master/misrabrc > ~/.misrabrc
source ~/.misrabrc

# load command in ~/.misrabrc and tell ~/.bashrc to read them
echo "source ~/.misrabrc" >> ~/.bashrc

# install and configure emacs
sudo apt-get install emacs

# install git
sudo apt-get install git

# install golang and create code repo
# TODO
mkdir ~/code && mkdir ~/code/github.com && mkdir ~/code/github.com/misrab

# install conda with jupyter notebook
# TODO

# install rust
curl https://sh.rustup.rs -sSf | sh

# mosh for remote access
sudo apt-get install mosh


