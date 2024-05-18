#!/opt/homebrew/bin/zsh
# -- STATUS REPORT -- #
filename=$(basename "$0")
echo -e "${I_OK}$filename"
# -- BUILTIN -- #
alias cl="clear"
alias mf="touch"
alias md="mkdir"
alias gr="grep"
alias sr="source"
# -- MODULES -- #
alias nv="nvim"
alias br="brew"
alias py="python"
alias po="poetry"
alias lg="lazygit"
alias pn="pnpm"
alias td='nvim +"Telekasten goto_today"'
alias nt='nvim +"Telekasten panel"'
alias ff="fastfetch"
alias fz="fzf"
alias ct="bat"
# -- DROP IN REPLACEMENTS -- #
alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions"
alias cd="z"
alias python3="python"
alias pip3="pip"
alias ssh="ssh -A"
