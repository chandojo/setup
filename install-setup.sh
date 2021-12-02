# !/bin/bash

echo "Setting up your local workspace"

# install packages with brew
packagefile='./packages.txt'
echo "Installing packages with brew..."
brew install $(cat $packagefile)
wait $!

# install tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# on mac, change shell to bash
chsh -s /bin/bash

# copy tmux config 
cp ./.tmux.conf ~/.tmux.conf && cp ./.vimrc ~/.vimrc

# direct nvim to use .vimrc settings
echo "directing nvim to use vimrc settings"
echo -e "set runtimepath^=~/.vim runtimepath+=~/.vim/after \nlet &packpath=&runtimepath \nsource ~/.vimrc \n" > ~/.config/nvim/init.vim
echo -e "export NVM_DIR="$HOME/.nvm" \n[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm \n[-s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion" >> ~/.bash_profile

# setting up python package manager
echo "Setting up pyenv"
pyenv install 3.8.0
wait $!
pyenv global 3.8.0
echo -e "if command -v pyenv 1>/dev/null 2>&1; then \n    eval "$(pyenv init -)" \nfi" >> ~/.bash_profile

# setting up rbenv version manager
echo "adding rbenv init to bash_profile"
echo -e "eval "$(rbenv init -)"" >> ~/.bash_profile
