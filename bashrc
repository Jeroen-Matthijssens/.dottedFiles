#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases;
fi

complete -cf sudo
complete -cf man

export EDITOR="vim"

PS1='[\u@\h \W]\$ '
