#!/bin/bash

cp .vimrc .tmux.conf .zshrc ~/

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y build-essential git tmux vim clang-format libcmocka-dev zsh curl software-properties-common cmake

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Install FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Control P install
mkdir -p ~/.vim/pack/plugins/start
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp

# Install syntax highlighting
pushd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
popd

pushd ~/.ssh
ssh-keygen -t ed25519 -C "dawalton@microsoft.com"
popd

source ~/.zshrc
