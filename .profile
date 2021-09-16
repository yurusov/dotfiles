export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox
export STEAM_FRAME_FORCE_CLOSE=1 export GTK_IM_MODULE=ibus
export QT4_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export GLFW_IM_MODULE=ibus
export PATH="$HOME/.cargo/bin:$PATH"
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

