source $HOME/.dotfiles/common/functions.sh
msg_install “Installing Brew Cask”

# homebrew-cask
brew tap phinze/homebrew-cask
brew install brew-cask

# browser
brew cask install google-chrome

# development
brew cask install sublime-text
brew cask install iterm2
brew cask install virtualbox

# other
brew cask install alfred
brew cask install spectacle
brew cask install dropbox
brew cask install mou
brew cask install skyp
brew cask install spotify
brew cask install slack
