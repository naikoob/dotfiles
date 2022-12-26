# load configs
for config (~/.zsh/*.zsh) source $config

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
