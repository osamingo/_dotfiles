# alias
alias tm='/usr/local/bin/tmuxx'

# zsh-completions 
autoload -U compinit; compinit
fpath=(/usr/local/share/zsh-completions $fpath)

# rubyenv
eval "$(rbenv init - zsh)"

# mosh
compdef mosh=ssh

# z
. `brew --prefix`/etc/profile.d/z.sh
function precmd () {
	z --add "$(pwd -P)"
}
