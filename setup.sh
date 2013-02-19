#!/bin/bash

DOT_FILES=( .zshrc .vimrc .gitconfig  )

for file in ${DOT_FILES[@]}
do
	if [ -a $HOME/$file ]; then
		echo "既にファイルが存在します: $file"
	else
		ln -s $HOME/dotfiles/$file $HOME/$file
		echo "シンボリックリンクを貼りました: $file"
	fi
done
