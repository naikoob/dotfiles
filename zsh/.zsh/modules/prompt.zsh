# use powerline prompt if available
if (( $+commands[powerline] )); then
  powerline-daemon -q
  . /usr/share/powerline/bindings/zsh/powerline.zsh
fi
