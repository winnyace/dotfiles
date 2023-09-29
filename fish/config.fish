# Winny's config.fish

starship init fish | source

# Aliases
# icat(only with kitty)
alias icat="kitty +kitten icat --align left"
alias fm="nnn -P x"
alias ls="eza"
alias sysinfo="fastfetch"

# NNN settings
export NNN_PLUG='v:imgview;b:autojump;x:preview-tui'
export NNN_FIFO='/tmp/nnn.fifo'
export SPLIT='v'
export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR="/usr/bin/nvim"
export QT_STYLE_OVERRIDE=kvantum
export QT_QPA_PLATFORMTHEME=qt5ct
export DOTNET="$HOME/.dotnet/tools"
export PATH="$HOME/.local/bin/:$PATH":$DOTNET
export BAT_THEME="Catppuccin-latte"
