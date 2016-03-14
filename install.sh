#!/bin/bash

function msg_checking { echo  "\033[1;32m=> $1 ✔\033[0m"; }
function msg_installing { echo  "\033[1;33m==> $1 [updating] ✔\033[0m"; }
function msg_ok { echo  "\033[1;32m==> $1 installed ✔\033[0m"; }

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

# softwares
sh softwares/install.sh

# -- Dotfiles
if [[ -d "$HOME/.dotfiles" ]]; then
    msg_checking "dotfiles"
else
    msg_install "dotfiles" "git clone https://github.com/andrevvalle/dotfiles.git $HOME/.dotfiles"
    git clone https://github.com/andrevvalle/dotfiles.git $HOME/.dotfiles
fi

# -- Installers ----------------------------------------------------------------
# Find the installers and run them iteratively
cd "$HOME/.dotfiles/$(dirname $)"/..
find . -name global.sh | while read installer ; do sh -c "${installer}" ; done
