# macos scripts


USER=misrab

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
# set default to bash instead of zsh
chsh -s /bin/bash

# neovim 0.6.1
# install release from here
# https://github.com/neovim/neovim/releases/tag/stable
# mkdir ~/.config/nvim/
# curl https://raw.githubusercontent.com/misrab/scripts/master/init.vim > ~/.config/nvim/init.vim
