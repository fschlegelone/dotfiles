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
# llvm / clang
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #

# -- SYSTEM VARIABLES -- #
export EDITOR="nvim"
export BROWSER="firefox"


# -- XDG VARIABLES -- #
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# -- Compiler (C) -- #
# LDFLAGS
export LDFLAGS="-L/opt/homebrew/opt/binutils/lib" # binutils
export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++ -L/opt/homebrew/opt/llvm/lib" # llvm / clang

# CPPFLAGS 
export CPPFLAGS="-I/opt/homebrew/opt/binutils/include" # binutils
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include:$CPPFLAGS" # llvm / clang

# starship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
# node 
export PNPM_HOME="$XDG_CONFIG_HOME/pnpm"
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VERSION="3.12.2"


# -- CUSTOM VARIABLES -- #
export NAS="$HOME/nas"
export NOTES_ROOT="$NAS/notes"
