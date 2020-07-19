POWERLINE_REPO_LOCATION=$(pip show powerline-status | sed -n 's/^Location:[[:space:]]//p')
if (( ${+POWERLINE_REPO_LOCATION} )); then
  export POWERLINE_REPO_LOCATION=$POWERLINE_REPO_LOCATION
  powerline-daemon -q
fi
