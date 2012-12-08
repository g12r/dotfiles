ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc"

plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

alias cls="clear"
alias cd..="cd .."

alias push="git push origin master"
alias pull="git pull origin master"
alias add="git add ."
alias c="git commit -m "

alias vd="vd.sh"
alias vu="vu.sh"
alias vs="vagrant ssh"
alias vrecycle="vd && vu"

unsetopt correct_all