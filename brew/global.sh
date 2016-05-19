source $HOME/.dotfiles/common/functions.sh

# watchman
if which watchman &> /dev/null; then
    msg_checking "watchman"
else
    msg_install "watchman" "brew install watchman"
    brew install watchman
    msg_ok "OK"
fi

# flow
if which flow &> /dev/null; then
    msg_checking "flow"
else
    msg_install "flow" "brew install flow"
    brew install flow
    msg_ok "OK"
fi

# mongo
if which mongod &> /dev/null; then
    msg_checking "mongodb"
else
    msg_install "mongodb" "brew install mongodb"
    brew install mongodb --with-openssl
    msg_ok "OK"
fi

ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
sudo mkdir -p /data/db
ls -ld /data/db/
sudo chmod 0755 /data/db
sudo chown mongod:mongod /data/db

# mysql
if which mysql &> /dev/null; then
    msg_checking "mysql"
else
    msg_install "mysql" "brew install mysql"
    brew install mysql
    msg_ok "OK"
fi

# softwares
msg_install "softwares" "install softwares"
sh $HOME/.dotfiles/softwares/install.sh
msg_ok "OK"
