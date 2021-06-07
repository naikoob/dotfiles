# autocompletion systems
fpath=($HOME/.zsh/completion $fpath)

autoload -Uz compinit
compinit -u

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# openshift
if type "oc" > /dev/null; then
    source <(oc completion zsh)
fi

# terraform
if type "terraform" > /dev/null; then
    autoload -U +X bashcompinit && bashcompinit
    complete -o nospace -C terraform terraform
fi

