# use powerline prompt if available
if (( $+commands[powerline] )); then
  powerline-daemon -q
  . /usr/share/powerline/zsh/powerline.zsh
fi
