alias ls="ls -G"
alias ,q="exit"
alias grep="grep --color"

if command -v xclip > /dev/null 2>&1; then
	alias pbcopy='xclip -in -selection clip'
fi

if command -v bat > /dev/null 2>&1; then
	alias cat='bat'
fi

if command -v youtube-dl > /dev/null 2>&1; then
	alias youtube-dl="youtube-dl -t -c"
fi

if command -v exa > /dev/null 2>&1; then
	alias ll="exa --long -g --git --group-directories-first --sort=newest -F"
	alias tree="ll --tree"
	alias dir="ll -D"
else
	alias ll="ls -lhtF"
	alias tree="tree -CF"
	alias dir="ls -lhtd */"
fi
