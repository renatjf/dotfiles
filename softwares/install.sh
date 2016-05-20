source $HOME/.dotfiles/common/functions.sh
msg_install “Installing Brew Cask”

# homebrew-cask
brew tap phinze/homebrew-cask
brew install brew-cask

# browser
brew cask install firefox-aurora
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install opera-next

# development
brew cask install sublime-text-3
brew cask install iterm2
brew cask install virtualbox

# other
brew cask install alfred
brew cask install spectacle
brew cask install dropbox
brew cask install mou
brew cask install skype
brew cask install spotify
brew cask install slack
brew cask install u-torrent
