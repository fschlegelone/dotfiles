# -- PATH -- #
# gnu coreutils
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
# gnu grep
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
# gnu sed
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
# gnu awk
export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"
# gnu tar
export PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"


# SYSTEM VARIABLES
export EDITOR="nvim"
export BROWSER="firefox"

# XDG VARIABLES
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# STARSHIP
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"


# NODE
export PNPM_HOME="$XDG_CONFIG_HOME/pnpm"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VERSION="3.12.2"
