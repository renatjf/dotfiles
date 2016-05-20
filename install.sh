#!/bin/bash

source common/functions.sh

msg ' __    __    __  __        _____     ______    ______   ______   __     __         ______     ______    '
msg '/\ "-./  \  /\ \_\ \      /\  __-.  /\  __ \  /\__  _\ /\  ___\ /\ \   /\ \       /\  ___\   /\  ___\   '
msg '\ \ \-./\ \ \ \____ \     \ \ \/\ \ \ \ \/\ \ \/_/\ \/ \ \  __\ \ \ \  \ \ \____  \ \  __\   \ \___  \  '
msg ' \ \_\ \ \_\ \/\_____\     \ \____-  \ \_____\   \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\ '
msg '  \/_/  \/_/  \/_____/      \/____/   \/_____/    \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ '
msg '                                                                                                        '

# -- Dotfiles
if [[ -d "$HOME/.dotfiles" ]]; then
    msg_checking "dotfiles"
else
    msg_install "dotfiles" "git clone https://github.com/andrevvalle/dotfiles.git $HOME/.dotfiles"
    git clone https://github.com/andrevvalle/dotfiles.git $HOME/.dotfiles
fi

# -- Installers ----------------------------------------------------------------
sh $HOME/.dotfiles/brew/global.sh
sh $HOME/.dotfiles/node/global.sh
sh $HOME/.dotfiles/git/global.sh
sh $HOME/.dotfiles/ruby/global.sh
sh $HOME/.dotfiles/sublime/global.sh
sh $HOME/.dotfiles/zsh/global.sh
sh $HOME/.dotfiles/softwares/install.sh

