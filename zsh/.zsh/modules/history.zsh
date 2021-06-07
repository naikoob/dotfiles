# history

HISTFILE="${HISTFILE:-${ZDOTDIR:-$HOME}/.zhistory}"  # The path to the history file.
HISTSIZE=10000                   # The maximum number of events to save in the internal history.
SAVEHIST=10000                   # The maximum number of events to save in the history file.
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY

bindkey -v
bindkey '^R' history-incremental-search-backward

alias history="history 1"

