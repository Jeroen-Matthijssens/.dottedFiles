alias ls="ls -G"
# alias ll="ls -lhtF"
alias ll="exa --long --git --group-directories-first --sort=size -F"
alias youtube-dl="youtube-dl -t -c"
alias ,q="exit"
alias tree="tree -CF"
alias dir="ls -lhtd */"
alias grep="grep --color"

if command -v xclip > /dev/null 2>&1; then
	alias pbcopy='xclip -in -selection clip'
fi
