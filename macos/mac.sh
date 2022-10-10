# macos scripts


USER=misrab
PROFILE=~/.bash_profile

# set up misrabrc
# get bash profile commands
curl https://raw.githubusercontent.com/misrab/scripts/master/misrabrc > ~/.misrabrc
source ~/.misrabrc
# load command in ~/.misrabrc and tell ~/.bashrc to read them
echo "source ~/.misrabrc" >> $PROFILE && source $PROFILE

# github
# should be set up already
# add computer's ssh key to github
# when pushing ensure .git/config in repo uses ssh to avoid login prompt

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/misrab/.bash_profile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/misrab/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"


# upgrade to latest bash
brew upgrade
brew install bash
exec bash

# set bash to default
# https://www.shell-tips.com/mac/upgrade-bash/#gsc.tab=0
echo $(brew --prefix)/bin/bash | sudo tee -a /private/etc/shells
/usr/local/bin/bash
BASH_LOCATION=$(echo $(brew --prefix)/bin/bash)
sudo chpass -s $BASH_LOCATION $USER

# terminal
# I like the "Novel" built-in theme
# in Terminal preferences can make it default startup

# neovim 0.6.1
# install release from here
# https://github.com/neovim/neovim/releases/tag/stable
# mkdir ~/.config/nvim/
# curl https://raw.githubusercontent.com/misrab/scripts/master/init.vim > ~/.config/nvim/init.vim



# install golang and create code repo
# NOTE GOPATH and GOROOT in misrabrc
mkdir ~/code && mkdir~/code/src && mkdir ~/code/src/github.com && mkdir ~/code/src/github.com/misrab


# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
