ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc"

plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

alias cls="clear"
alias cd..="cd .."
alias edit="subl"
alias g="git"
alias v="vagrant"
alias up="vagrant up --no-provision"

alias push="git push origin master"
alias pull="git pull origin master"
alias add="git add ."
alias c="git commit -m "

#alias vs="vagrant ssh"
#alias vrecycle="vd && vu"

#export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export RBENV_VERSION=1.9.3-p327
unsetopt CORRECT_ALL
