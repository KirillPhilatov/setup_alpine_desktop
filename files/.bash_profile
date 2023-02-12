#bash_profile

# if [ -f ~/.bashrc ]; then
# 	. ~/.bashrc
# fi


export PATH=$PATH:~/bin:~/bin/utils:~/go/bin
export EDITOR=emacs
export TERM=xterm
export PS1="[\u@\[\e[36m\]\h\[\e[m\] \W]$ "

export HISTSIZE=15000
export HISTTIMEFORMAT='%F %T '
export HISTIGNORE="&:[ ]*:exit"

export LANG=ru_RU.UTF8
