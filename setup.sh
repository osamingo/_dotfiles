#!/bin/bash

DOT_FILES=( .zshrc .vimrc .gitconfig .gitignore .tmux.conf  )
CUSTOM_ZSH=( custom_airmingo.zsh  )

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# HOME
for file in ${DOT_FILES[@]}
do
	if [ -a $HOME/$file ]; then
		echo "既にファイルが存在します: $file"
	else
		ln -s $HOME/dotfiles/$file $HOME/$file
		echo "シンボリックリンクを貼りました: $file"
	fi
done

# oh-my-zsh custom
for file in ${CUSTOM_ZSH[@]}
do
	if [ -a $ZSH_CUSTOM/$file ]; then
		echo "既にファイルが存在します: $file"
	else
		ln -s $HOME/dotfiles/$file $ZSH_CUSTOM/$file
		echo "シンボリックリンクを貼りました: $file"
	fi
done

