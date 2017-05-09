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

# install ruby and jekyll
sudo apt-get install ruby ruby-dev make gcc
sudo gem install jekyll bundler


# install node.js and npm
sudo apt-get install nodejs
sudo apt-get install npm



# install golang and create code repo
# NOTE GOPATH and GOROOT in misrabrc
mkdir ~/code && mkdir ~/code/github.com && mkdir ~/code/github.com/misrab
sudo apt install golang-go


# install conda with jupyter notebook
# TODO

# install rust
curl https://sh.rustup.rs -sSf | sh

# mosh for remote access
sudo apt-get install mosh


