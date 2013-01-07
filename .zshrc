export TERM=rxvt

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc"

plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

alias cls="clear"
alias cd..="cd .."
alias edit="subl"

alias editrc="subl ~/.dotfiles/.zshrc"
alias reloadrc="~/.dotfiles/relink.sh && source ~/.zshrc"

alias hfshow="defaults write com.apple.Finder AppleShowAllFiles TRUE && killall Finder"
alias hfhide="defaults write com.apple.Finder AppleShowAllFiles FALSE && killall Finder"

alias push="git push origin master"
alias pull="git pull origin master"
alias add="git add ."
alias c="git commit -m "

alias be="bundle exec"
alias bi="bundle install"

alias vssh="vagrant ssh"

alias func='v cycle'
func() {
	vagrant destroy && vagrant up
}

alias func='v d'
func() {
	vagrant destroy
}

alias func='v reup'
func() {
	vagrant up
}

alias func='v up'
func() {
	vagrant up --no-provision
}

export RBENV_VERSION=1.9.3-p327
unsetopt CORRECT_ALL

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

export NODE_PATH="/usr/local/lib/node"
export PATH="$PATH:/usr/local/share/npm/bin"