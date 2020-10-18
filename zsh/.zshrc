# load configs
for config (~/.zsh/*.zsh) source $config

# start sway if I'm on the console
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec sway
fi
