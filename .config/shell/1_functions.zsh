# -- STATUS REPORT -- #
filename=$(basename "$0")
echo -e "${I_OK}$filename"

# ------------- #
# -- ALIASES -- #
# ------------- #

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


# -- DROP IN REPLACEMENTS -- #
alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions"
alias cd="z"
alias python3="python"
alias pip3="pip"

# --------------- #
# -- FUNCTIONS -- #
# --------------- #
# get file permission info
chinfo() {
  echo -e "${C_GREEN}$1${C_RESET}"
  echo -e "permissions: $(stat -c '%a' "$1")\nownership: $(stat -c '%U:%G' "$1")"
}

ppath() {
  printf "${G_BORDER}${C_CYAN}            INCLUDED IN PATH${G_BORDER}"
  IFS=':' read -r -d '' path_array <<< "$PATH:"
  printf "${I_INFO} %s \n" "${(ps/:/)path_array}"
}

# update homebrew
brewup(){
  # Update homebrew
  printf "${C_TEXT}Updating Homebrew...\n"
  brew update
  # Update formulaes and casks
  printf "${C_TEXT}Upgrading homebrew formulaes and casks...\n"
  # Cleanup cache of unfinished downloads
  printf "${C_TEXT}Cleaning up homebrew cache...\n"
  brew cleanup
  # Show problems if any
  printf "${C_TEXT}Checking for homebrew issues...\n"
  brew doctor
}

# update python, pip, poetry
pyup(){
  # update global pip packages
  pip install --upgrade $(pip list --user | awk '{print $1}')
}

# run all update functions
fullupdate(){
  brewup
  pyup
}
