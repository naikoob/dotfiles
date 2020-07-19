export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# initialize rbenv if available
if (( $+commands[rbenv] )); then
  eval "$(rbenv init - zsh --no-rehash)" &&
  (command rbenv rehash 2>/dev/null &)
fi

export PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
