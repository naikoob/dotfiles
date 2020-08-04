# Aliases
alias ls='ls -F --color=auto'
alias ll='ls -lh'
alias la='ls -a'
alias df='df -H'

# use nvim as vim if available
if type nvim >& /dev/null; then
    alias vi='nvim'
    alias vim='nvim'
    alias oldvim='\vim'
fi

# to have similar behavior
if type vscode >& /dev/null; then
    alias code='vscode'
fi

if [[ "$OSTYPE" == darwin* ]]; then
    alias podman='podman --url tcp://podhost:31887'
fi

