# use powerline prompt

#repository_root=$(pip show powerline-status | sed -n 's/^Location:[[:space:]]//p')
repository_root=$POWERLINE_REPO_LOCATION

if (( $+commands[powerline] )); then
  . ${repository_root}/powerline/bindings/zsh/powerline.zsh
fi
