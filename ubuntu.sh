#!/bin/bash

# a simple bash script for a fresh ubuntu install

sudo apt update -y
sudo apt upgrade -y


sudo apt-get install curl -y


# get bash profile commands
curl https://raw.githubusercontent.com/misrab/scripts/master/misrabrc > ~/.misrabrc
source ~/.misrabrc

# load command in ~/.misrabrc and tell ~/.bashrc to read them
echo "source ~/.misrabrc" >> ~/.bashrc

# install vim
sudo apt-get install vim -y
# install janus vim essentials
curl -L https://bit.ly/janus-bootstrap | bash


# install neovim
# see init.vim file for instructions


# install git
sudo apt-get install git -y

# install ruby and jekyll
# sudo apt-get install ruby ruby-dev make gcc
# sudo gem install jekyll bundler


# install node.js and npm
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
# review above for right version
sudo apt-get install nodejs -y
sudo apt-get install npm -y


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
sudo apt-get install python-pip python-dev python-virtualenv -y

