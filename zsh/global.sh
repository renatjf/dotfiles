source $HOME/.dotfiles/common/functions.sh

# -- ZSH
if which zsh &> /dev/null; then
    msg_checking "zsh"
else
    msg_install "zsh" "brew install zsh"
    brew install zsh
    msg_ok "OK"
fi

# Setting ZSH as your default shell
chsh -s /bin/zsh

# -- ZSH Config
if [[ -d "$HOME/.zshrc" || -L "$HOME/.zshrc" ]]; then
    msg_checking "zshrc"
else
    msg_install "zshrc" "ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc"
    ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
    msg_ok "OK"
fi

# -- Oh my ZSH
if [[ -d "$HOME/.oh-my-zsh" ]]; then
    msg_checking "oh-my-zsh"
else
    msg_install "oh-my-zsh" "git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh"
    git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
    msg_ok "OK"
fi
