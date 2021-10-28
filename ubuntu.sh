#!/bin/bash

# a simple bash script for a fresh ubuntu install

sudo apt update -y
sudo apt upgrade -y


sudo apt-get install curl -y


# get bash profile commands
curl https://raw.githubusercontent.com/misrab/scripts/master/misrabrc > ~/.misrabrc
source ~/.misrabrc
# load command in ~/.misrabrc and tell ~/.bashrc to read them
echo "source ~/.misrabrc" >> ~/.bashrc && source ~/.bashrc

# install vim
sudo apt-get install vim -y
# install janus vim essentials
curl -L https://bit.ly/janus-bootstrap | bash

# install git
sudo apt-get install git -y

# install ruby and jekyll
# sudo apt-get install ruby ruby-dev make gcc
# sudo gem install jekyll bundler


# install node.js and npm
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
# review above for right version
sudo apt-get install nodejs -y
sudo apt-get install npm -y


# install docker
sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get update -y
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get install -y docker-ce docker-ce-cli containerd.io


# install golang and create code repo
# NOTE GOPATH and GOROOT in misrabrc
mkdir ~/code && mkdir~/code/src && mkdir ~/code/src/github.com && mkdir ~/code/src/github.com/misrab


# UPDATE - install manually (acutally)
# install golang manually
# curl -OL https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
# sudo tar -xzf go*gz -C /usr/local
# rm go*gz


# add golang protobuf support
# usage: protoc --go_out=. *.proto
# partly taken from https://gist.github.com/sofyanhadia/37787e5ed098c97919b8c593f0ec44d8
# Make sure you grab the latest version
# curl -OL https://github.com/google/protobuf/archive/v3.3.1.zip
# # Unzip
# unzip v3.3.1.zip -d protoc3
# # Move only protoc* to /usr/bin/
# sudo mv protoc3/bin/protoc /usr/bin/protoc
# # get golang command line tool
# go get -u github.com/golang/protobuf/protoc-gen-g



# install conda with jupyter notebook
# TODO

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# UPDATE - just use screen
# mosh for remote access
# sudo apt-get install mosh


# install fluxgui, run fluxgui thereafter to set up
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui -y


# install python virtualenv
sudo apt-get install python3-pip python-dev python3-virtualenv -y



#
# Manual
#

# install neovim
# install neovim 0.3.8
# this curl url: not sure how to get the right one
# curl https://github.com/neovim/neovim/releases/download/v0.3.8/nvim.appimage > /tmp/nvim
# sudo mv /tmp/nvim /usr/bin/
# chmod u+x ~/usr/bin/nvim
mkdir ~/.config/nvim/
curl https://raw.githubusercontent.com/misrab/scripts/master/init.vim > ~/.config/nvim/init.vim



# install mysql
# https://computingforgeeks.com/how-to-install-mysql-on-ubuntu-focal/
