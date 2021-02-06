# Aliases
alias ls='ls -FG'
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
    alias podman='podman --identity=/Users/bookian/.ssh/id_rsa --url=ssh://root@podhost/run/podman/podman.sock'
fi

