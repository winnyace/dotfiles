# winny's config.fish

# Starship startup
starship init fish | source

# Removing the greeting message from fish
function fish_greeting
    clear
end

# Aliases
alias imgcat="kitty +kitten icat --align left" # only with kitty
alias fm="nnn -P x"
alias ls="eza"
alias sysinfo="fastfetch"

# Environment variables
# nnn
export NNN_PLUG='v:imgview;b:autojump;x:preview-tui'
export NNN_FIFO='/tmp/nnn.fifo'
export SPLIT='v'

# Theme related
export BAT_THEME="Catppuccin Latte"

# Back when I used XFCE4 as my DE:
#export QT_STYLE_OVERRIDE=kvantum
#export QT_QPA_PLATFORMTHEME=qt5ct

# PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Defaults
export EDITOR="/usr/bin/nvim"
