source $HOME/.dotfiles/common/functions.sh

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "git clone git://github.com/ry/node.git"
    brew install node
    echo "OK"
fi

# n
if which n &> /dev/null; then
    msg_checking "n"
else
    msg_install "n" "sudo npm install -g n"
    sudo npm install -g n
    echo "OK"
fi

# grunt-cli
if which grunt &> /dev/null; then
    msg_checking "grunt"
else
    msg_install "grunt" "npm install -g grunt-cli"
    npm install -g grunt-cli
    echo "OK"
fi

# gulp-cli
if which gulp &> /dev/null; then
    msg_checking "gulp"
else
    msg_install "gulp" "npm install -g gulp-cli"
    npm install -g gulp-cli
    echo "OK"
fi

# stylus
if which stylus &> /dev/null; then
    msg_checking "stylus"
else
    msg_install "stylus" "npm install -g stylus"
    npm install -g stylus
    echo "OK"
fi

# jshint
if which jshint &> /dev/null; then
    msg_checking "jshint"
else
    msg_install "jshint" "npm install jshint -g"
    npm install jshint -g
    echo "OK"
fi

# csslint
if which csslint &> /dev/null; then
    msg_checking "csslint"
else
    msg_install "csslint" "npm install -g csslint"
    npm install -g csslint
    msg_ok "OK"
fi

# bower
if which bower &> /dev/null; then
    msg_checking "bower"
else
    msg_install "bower" "npm install -g bower"
    npm install -g bower
    msg_ok "OK"
fi

# harp
if which harp &> /dev/null; then
    msg_checking "harp"
else
    msg_install "harp" "npm install -g harp"
    npm install -g harp
    msg_ok "OK"
fi

# browserify
if which browserify &> /dev/null; then
    msg_checking "browserify"
else
    msg_install "browserify" "npm install -g browserify"
    npm install -g browserify
    msg_ok "OK"
fi

# nodemon
if which nodemon &> /dev/null; then
    msg_checking "nodemon"
else
    msg_install "nodemon" "npm install -g nodemon"
    npm install -g nodemon
    msg_ok "OK"
fi

# react-native-cli
if which react-native &> /dev/null; then
    msg_checking "react-native-cli"
else
    msg_install "react-native-cli" "npm install -g react-native-cli"
    npm install -g react-native-cli
    msg_ok "OK"
fi

# webpack
if which webpack &> /dev/null; then
    msg_checking "webpack"
else
    msg_install "webpack" "npm install -g webpack"
    npm install -g webpack
    msg_ok "OK"
fi
