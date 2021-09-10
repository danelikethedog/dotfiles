#!/bin/bash

mv .git .gitignore .vimrc .tmux.conf README .zshrc ~/

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y build-essentials git tmux vim clang-format libcmocka-dev zsh curl

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Install syntax highlighting
pushd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
popd

source ~/.zshrc


