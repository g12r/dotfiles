export TERM=rxvt

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc"

#plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

alias cls="clear"
alias cd..="cd .."
alias edit="subl"
alias hfshow="defaults write com.apple.Finder AppleShowAllFiles TRUE && killall Finder"
alias hfhide="defaults write com.apple.Finder AppleShowAllFiles FALSE && killall Finder"

alias push="git push origin master"
alias pull="git pull origin master"
alias add="git add ."
alias c="git commit -m "

alias be="bundle exec"
alias bi="bundle install"

alias vd="vd.sh"
alias vu="vu.sh"
alias vs="vagrant ssh"
alias vrecycle="vd && vu"

#export RBENV_VERSION=1.9.3-p327
unsetopt CORRECT_ALL
