# use powerline prompt if available
if (( $+commands[powerline] )); then
  powerline-daemon -q
  . /usr/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
fi
