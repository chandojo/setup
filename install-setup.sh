# !/bin/bash

echo "Setting up your local workspace"

# install packages with brew
packagefile='./packages.txt'
echo "Installing packages with brew..."
brew install $(cat $packagefile)
wait $!

# install tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# copy tmux config 
cp ./.tmux.conf ~/.tmux.conf && cp ./.vimrc ~/.vimrc

# direct nvim to use .vimrc settings
echo -e "set runtimepath^=~/.vim runtimepath+=~/.vim/after \nlet &packpath=&runtimepath \nsource ~/.vimrc \n" > ~/.config/nvim/init.vim

# setting up python package manager
echo "Setting up pyenv"
pyenv install 3.8.0
wait $!
pyenv global 3.8.0
echo -e "if command -v pyenv 1>/dev/null 2>&1; then \n    eval "$(pyenv init -)" \nfi" >> ~/.bash_profile