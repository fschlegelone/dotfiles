#!/opt/homebrew/bin/zsh
# -- STATUS REPORT -- #
filename=$(basename "$0")
echo -e "${I_OK}$filename"

# -- SYSTEM VARIABLES -- #
export EDITOR="nvim"
export BROWSER="firefox"

# -- XDG VARIABLES -- #
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# -- CUSTOM DIRECTORY VARIABLES -- #
export NAS_DIR="$HOME/nas"
export DEV_DIR="/opt/dev"
export GITHUB_DIR="$HOME/github"
export NOTES_DIR="$NAS/notes"
export NOTES_ROOT="$NAS/notes" # TODO: remove, if not needed by nvim notes
export SHELL_DIR="$XDG_CONFIG_HOME/shell"
export ENCRYPTED_DIR="$XDG_CONFIG_HOME/encrypted" # can be pushed to git
export CRITICAL_DIR="$XDG_CONFIG_HOME/critical" # !NEVER! push to git TODO: function that forbids pushing CRITICAL_DIR to git

# -- COMPILER (C) -- #
export LDFLAGS="-L/opt/homebrew/opt/binutils/lib" # binutils
export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++ -L/opt/homebrew/opt/llvm/lib" # llvm / clang
export CPPFLAGS="-I/opt/homebrew/opt/binutils/include" # binutils
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include:$CPPFLAGS" # llvm / clang

# STARSHIP
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# NODE / PNPM / YARN_PNP
export PNPM_HOME="$XDG_CONFIG_HOME/pnpm"

# PYTHON / PYENV / PIP / VIRTUAL ENV / POETRY
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VERSION="3.12.2"

# GPG / GNUPG
export GNUPGHOME="$CRITICAL_DIR/gnupg" # gnupg config directory
export GPG_TTY=$(tty) # fixes inappropriate ioctl for device error
