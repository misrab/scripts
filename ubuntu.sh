#!/bin/bash

# a simple bash script for a fresh ubuntu install

sudo apt update
sudo apt upgrade 

# install and configure emacs
sudo apt install emacs

# disable x11 on emacs
echo -e "alias emacs=\"emacs -nw\"\nalias sudo=\"sudo \"" >> ~/.bashrc

# install git
sudo apt-get install git

# install golang
# TODO

# install rust
curl https://sh.rustup.rs -sSf | sh


# useful commands for bash
# bash profile
echo -e "function bp { \n\temacs ~/.bashrc \n} \nfunction bpp { \n\tsource ~/.bashrc \n} " >> ~/.bashrc

