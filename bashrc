#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -f ~/.dottedFiles/bash_aliases ]]; then
	. ~/.dottedFiles/bash_aliases
fi

if [[ -f /usr/share/bash-completion/bash_completion ]]; then
	. /usr/share/bash-completion/bash_completion
fi

if [[ -f /usr/share/fzf/completion.bash ]]; then
	. /usr/share/fzf/completion.bash
fi

if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases;
fi

if [[ -f ~/.dottedFiles/prompt ]]; then
	. ~/.dottedFiles/prompt;
fi

if [[ -f ~/.dottedFiles/bash_gradle_functions ]]; then
	. ~/.dottedFiles/bash_gradle_functions;
fi

if [[ -f ~/.dottedFiles/bash_mvn_functions ]]; then
	. ~/.dottedFiles/bash_mvn_functions;
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


complete -cf sudo
complete -cf man
complete -cf sh

export EDITOR="vim"

# Use vim to read man pages.
#
# export MANPAGER="/bin/sh -c \"unset PAGER;col -b -x | \
#     vim -R -c 'set ft=man nomod nolist' -c 'set foldcolumn=2' -c 'set nonu' \
#     -c 'highlight FoldColumn ctermfg=241 ctermbg=234' -\""
export MANPAGER='nvim +Man!'

# History settings.

# append to the history file, don't overwrite it.
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

export HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:ll:[bf]g:exit:,q:cd"


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

export EXA_COLORS='da=32:uu=0:gu=0:ur=0:uw=0:ux=0:gr=0:gw=0:tr=0:tw=0'
