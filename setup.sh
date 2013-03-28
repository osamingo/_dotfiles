#!/bin/bash

DOT_FILES=( .zshrc .vimrc .gitconfig .gitignore .tmux.conf .tmux-powerlinerc  )
CUSTOM_ZSH_FILES=( custom_airmingo.zsh )
TMUX_CMDS=( tmuxx tmux-pbcopy )

ZSH_CUSTOM_DIR=$HOME/.oh-my-zsh/custom
CMD_DIR=/usr/local/bin

FORCE_OPTION="-f"

# HOME
for file in ${DOT_FILES[@]}
do
	if [ $FORCE_OPTION != "$1" ]; then
		if [ -a $HOME/$file ]; then
			echo "既にファイルが存在します: $file"
		else
			ln -s $HOME/dotfiles/$file $HOME/$file
			echo "シンボリックリンクを貼りました: $file"
		fi
	else
		ln -fs $HOME/dotfiles/$file $HOME/$file
		echo "シンボリックリンクを貼りました: $file"
	fi
done

# oh-my-zsh custom
for file in ${CUSTOM_ZSH_FILES[@]}
do
	if [ $FORCE_OPTION != "$1" ]; then
		if [ -a $ZSH_CUSTOM_DIR/$file ]; then
			echo "既にファイルが存在します: $file"
		else
			ln -s $HOME/dotfiles/$file $ZSH_CUSTOM_DIR/$file
			echo "シンボリックリンクを貼りました: $file"
		fi
	else
		ln -fs $HOME/dotfiles/$file $ZSH_CUSTOM_DIR/$file
		echo "シンボリックリンクを貼りました: $file"
	fi
done

# tmux
for file in ${TMUX_CMDS[@]}
do
	if [ $FORCE_OPTION != "$1" ]; then
		if [ -a $CMD_DIR/$file ]; then
			echo "既にファイルが存在します: $file"
		else
			ln -s $HOME/dotfiles/$file $CMD_DIR/$file
			echo "シンボリックリンクを貼りました: $file"
		fi
	else
		ln -fs $HOME/dotfiles/$file $CMD_DIR/$file
		echo "シンボリックリンクを貼りました: $file"
	fi
done

