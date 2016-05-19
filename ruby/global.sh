source $HOME/.dotfiles/common/functions.sh

# update gems
if which gem &> /dev/null; then
    msg_checking "gem"
    sudo gem update --system
    echo "gem"
fi

# capistrano
if which cap &> /dev/null; then
    msg_checking "capistrano"
else
    msg_install "capistrano" "gem install capistrano"
    sudo gem install capistrano
    msg_ok "capistrano"
fi

# jekyll
if which jekyll &> /dev/null; then
    msg_checking "jekyll"
else
    msg_install "jekyll" "gem install jekyll"
    sudo gem install jekyll
    msg_ok "jekyll"
fi
