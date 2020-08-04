# path
export PATH=$HOME/.local/bin:$PATH

# browser
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
else
  export BROWSER='xdg-open'
fi

# editors
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

# languages
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

