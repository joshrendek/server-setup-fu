# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/opt/ruby-enterprise-1.8.7-2010.01/bin:/usr/local/sbin/:/sbin/

export PATH
unset USERNAME

source .bash_rc

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then . /etc/bash_completion
fi

