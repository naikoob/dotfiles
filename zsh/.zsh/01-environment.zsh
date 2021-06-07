# path
export PATH=$HOME/.local/bin:$PATH

# browser
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

# editors
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# languages
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# gtk and qt5 scaling
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR=0.8
export QT_STYLE_OVERRIDE=qt5ct-style

# so rofi can find flatpak apps
export XDG_RUNTIME_DIRS=$XDG_RUNTIME_DIRS:/var/lib/flatpak/exports/share:~/.local/share/flatpak/exports/share
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:~/.local/share/flatpak/exports/share

