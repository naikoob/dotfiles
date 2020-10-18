# path
export PATH=$HOME/.local/bin:$PATH

# browser
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

# editors
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

# languages
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# qt5
export QT_SCALE_FACTOR=1.6
export QT_STYLE_OVERRIDE=adwaita

