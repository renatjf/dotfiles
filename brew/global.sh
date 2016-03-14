source common/functions.sh

# homebrew
if which brew &> /dev/null; then
    msg_checking "homebrew"
else
    msg_install "Homebrew" "ruby -e $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ok "OK"
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