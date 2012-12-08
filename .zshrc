
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

unsetopt correct_all

ZSH_THEME="gc"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

alias cls="clear"
alias "cd..=cd ..".

alias push="git push origin master"
alias pull="git pull origin master"
alias add="git add ."
alias c="git commit -m "

alias vd="vd.sh"
alias vu="vu.sh"
alias vs="vagrant ssh"
alias vrecycle="vd && vu"

