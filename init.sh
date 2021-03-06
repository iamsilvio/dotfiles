#!/bin/bash

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ~/.local

# ZSH
ln -sf "$cur_dir/tux/.zshrc" ~/.zshrc
ln -sfn "$cur_dir/tux/.zsh" ~/.zsh
#chsh -s $(which zsh)
# source ~/.zshrc

# TMUX
ln -sf "$cur_dir/tux/.tmux.conf" ~/.tmux.conf

# VIM
mkdir -p ~/.vim
ln -sf "$cur_dir/tux/.vimrc" ~/.vimrc
ln -sfn "$cur_dir/tux/.vim/snippets" ~/.vim/UltiSnips

# git
ln -sf "$cur_dir/gen/_gitignore" ~/.gitignore

# gpg
mkdir -p ~/.gnupg
ln -sf "$cur_dir/tux/.gnupg/gpg.conf" ~/.gnupg/gpg.conf
ln -sf "$cur_dir/tux/.gnupg/scdaemon.conf" ~/.gnupg/scdaemon.conf
ln -sf "$cur_dir/tux/.gnupg/gpg-agent.conf" ~/.gnupg/gpg-agent.conf