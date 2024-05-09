# -- HOMEBREW -- #
# initialize brew environment 
eval "$(/opt/homebrew/bin/brew shellenv)"
# brew completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
# brew options
export CFG_BREW="$XDG_CONFIG_HOME/homebrew"
export HOMEBREW_ENV="$XDG_CONFIG_HOME/homebrew/brew.env"
export HOMEBREW_API_AUTO_UPDATE_SECS=86400
export HOMEBREW_AUTOREMOVE=1
export HOMEBREW_CLEANUP_MAX_AGE_DAYS=30
export HOMEBREW_BAT="$SHELLY/bat"  # Example path, change as needed
export HOMEBREW_CASK_OPTS="--fontdir"
export HOMEBREW_DISPLAY=1
export HOMEBREW_NO_ENV_HINTS=1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - #

# -- SKHD -- #
if pgrep -f skhd >/dev/null; then
    echo "skhd service is running"
else
    skhd --start-service
    echo "started skhd service"
fi

# -- YABAI -- #
if pgrep -f yabai >/dev/null; then
    echo "yabai service is running"
else
    yabai --start-service
    echo "started yabai service"
fi

# -- AZURE-CLI -- #
autoload bashcompinit && bashcompinit
source "$(brew --prefix)/etc/bash_completion.d/az"

# -- NODE -- #
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;; # set pnpm home
esac

# -- FZF -- # 
eval "$(fzf --zsh)"

# -- ZOXIDE -- #
eval "$(zoxide init zsh)"

# -- ZSH-AUTOSUGGESTIONS -- #
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# -- ZSH-SYNTAX-HIGHLIGHTING -- #
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# -- ZSH-COMPLETIONS -- #
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
  fi

# -- STARSHIP -- #
eval "$(starship init zsh)"

# -- PYENV -- #
if command -v pyenv 1>/dev/null 2>&1; then # (important!): source last
  eval "$(pyenv init -)"
fi
