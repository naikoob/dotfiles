# initialize pyenv if available
if (( $+commands[pyenv] )); then
  eval "$(pyenv init - zsh --no-rehash)" &&
  (command pyenv rehash 2>/dev/null &)
fi
