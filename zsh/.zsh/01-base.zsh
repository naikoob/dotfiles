# ~/.zsh/01-base.zsh
#
# add ~/.local/bin to path
typeset -U path
[ -x ~/.local/bin ] && path=(~/.local/bin $path)

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -F'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
fi

# prefer vi
export EDITOR=vi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# other aliases
alias df='df -h'
alias free='free -h'

# use htop instead of top
[ -x /usr/bin/htop ] && alias top='htop'

