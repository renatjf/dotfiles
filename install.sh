#!/bin/bash

source common/functions.sh

msg ' __    __    __  __        _____     ______    ______   ______   __     __         ______     ______    '
msg '/\ "-./  \  /\ \_\ \      /\  __-.  /\  __ \  /\__  _\ /\  ___\ /\ \   /\ \       /\  ___\   /\  ___\   '
msg '\ \ \-./\ \ \ \____ \     \ \ \/\ \ \ \ \/\ \ \/_/\ \/ \ \  __\ \ \ \  \ \ \____  \ \  __\   \ \___  \  '
msg ' \ \_\ \ \_\ \/\_____\     \ \____-  \ \_____\   \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\ '
msg '  \/_/  \/_/  \/_____/      \/____/   \/_____/    \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ '
msg '                                                                                                        '

OSX=$(test "`uname`" == "VValle" && echo "x")

msg_install "Cloning" "git@github.com:andrevvalle/dotfiles.git"
git clone git@github.com:andrevvalle/dotfiles.git $HOME/dotfiles
ok "OK"

sh brew/global.sh

sh node/global.sh

sh ruby/global.sh

sh sublime/global.sh

# sh vim/global.sh