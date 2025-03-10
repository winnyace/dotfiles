# winny's config.fish
#
# Starship startup
starship init fish | source


# Removing the greeting message from fish
function fish_greeting
    clear
end

# Adding !! to fish
function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item 


# Aliases
alias imgcat="kitty +kitten icat --align left" # only with kitty
alias fm="nnn -P x"
alias ls="eza"
alias sysinfo="fastfetch --config neofetch.jsonc"


# Environment variables
# Theme related
export BAT_THEME="Catppuccin Latte"

# PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Defaults
export EDITOR="/usr/bin/nvim"
