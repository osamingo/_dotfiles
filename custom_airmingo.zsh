# alias
# http://mba-hack.blogspot.jp/2012/07/tmuxvi.html
alias tm='/usr/local/bin/tmuxx'

# zsh-completions 
# brew install zsh-completions
autoload -U compinit
compinit -u
fpath=(/usr/local/share/zsh-completions $fpath)

# rubyenv
# http://pplog.org/?p=1845
eval "$(rbenv init - zsh)"

# mosh
# brew install mobile-shell
# moshコマンドでも、sshコマンドのcompletions有効化
compdef mosh=ssh

# z
# brew install z
. `brew --prefix`/etc/profile.d/z.sh
function precmd () {
	z --add "$(pwd -P)"
}

# tmuxx start
# http://qiita.com/items/1e1d3053c33f528363d9
if [ -z $TMUX ]; then
	if $(tmuxx has-session); then
  		tmuxx attach
	else
		tmuxx
	fi
fi

