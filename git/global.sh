source $HOME/.dotfiles/common/functions.sh

# -- Config
if [[ -L "$HOME/.gitconfig" ]]; then
    msg_checking "gitconfig"
else
    msg_install "gitconfig" "ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig"
    ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
fi
