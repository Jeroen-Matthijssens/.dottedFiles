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
complete -cf sh

export EDITOR="vim"

# Use vim to read man pages.
export MANPAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

# History settings.
export HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:ll:[bf]g:exit:,q:cd"

PS1='[\u@\h \W]\$ '
