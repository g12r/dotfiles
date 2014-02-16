ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc"

source $ZSH/oh-my-zsh.sh

# oh-my-zsh
plugins=(git rails ruby)
DISABLE_CORRECTION="true"
unsetopt CORRECT_ALL

source ~/.dotfiles/afn_sh
source ~/.dotfiles/afn_git
source ~/.dotfiles/afn_rails
source ~/.dotfiles/afn_misc

if uname -a | egrep -q "Ubuntu"; then
	echo Configuring for Ubuntu
	# nothing yet
elif uname -a | egrep -q "Darwin"; then
  echo Configuring for OSX
	source ~/.dotfiles/afn_osx
else
  echo Configuring for generic
  # nothing yet
fi

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin"

# add conditional path to vagrant instances
if [[ -d "/opt/vagrant_ruby/bin" && ! -L "/opt/vagrant_ruby/bin" ]]; then
	export PATH="$PATH:/opt/vagrant_ruby/bin"
fi

# chruby
source /usr/local/share/chruby/chruby.sh
# set via...
# echo "ruby-1.9" > ~/.ruby-version
source /usr/local/share/chruby/auto.sh

#clear

