source $HOME/.dotfiles/common/functions.sh
msg_install “Installing Brew Cask”

# homebrew-cask
brew tap phinze/homebrew-cask
brew install brew-cask

# development
brew cask install iterm2
brew cask install virtualbox

# other
brew cask install alfred
brew cask install spectacle
brew cask install franz
brew cask install caffeine
