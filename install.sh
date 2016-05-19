#!/bin/bash

source $HOME/.dotfiles/common/functions.sh

msg ' __    __    __  __        _____     ______    ______   ______   __     __         ______     ______    '
msg '/\ "-./  \  /\ \_\ \      /\  __-.  /\  __ \  /\__  _\ /\  ___\ /\ \   /\ \       /\  ___\   /\  ___\   '
msg '\ \ \-./\ \ \ \____ \     \ \ \/\ \ \ \ \/\ \ \/_/\ \/ \ \  __\ \ \ \  \ \ \____  \ \  __\   \ \___  \  '
msg ' \ \_\ \ \_\ \/\_____\     \ \____-  \ \_____\   \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\ '
msg '  \/_/  \/_/  \/_____/      \/____/   \/_____/    \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ '
msg '                                                                                                        '

# homebrew
if which brew &> /dev/null; then
    msg_checking "homebrew"
else
    msg_install "Homebrew" "ruby -e $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    msg_ok "OK"
fi

# git
if which git &> /dev/null; then
    msg_checking "git"
else
    msg_install "git" "brew install git"
    brew install git
    msg_ok "OK"
fi

# -- Dotfiles
if [[ -d "$HOME/.dotfiles" ]]; then
    msg_checking "dotfiles"
else
    msg_install "dotfiles" "git clone https://github.com/andrevvalle/dotfiles.git $HOME/.dotfiles"
    git clone https://github.com/andrevvalle/dotfiles.git $HOME/.dotfiles
fi

# -- Installers ----------------------------------------------------------------
sh brew/global.sh

sh node/global.sh

sh git/global.sh

sh ruby/global.sh

sh sublime/global.sh

sh zsh/global.sh
