# -- STATUS REPORT -- #
filename=$(basename "$0")
echo -e "${I_OK}$filename"

# print border
print "${G_BORDER}"
# SKHD service
if pgrep -f skhd >/dev/null; then
    print "${I_OK}skhd service"
else
    print "${I_ERR}skhd service"
fi
# YABAI service
if pgrep -f yabai >/dev/null; then
    print "${I_OK}yabai service"
else
    print "${I_ERR}yabai service"
fi


# print border
print "$G_BORDER"

# -- CHECK ENVIRONMENT VARIABLES -- #
if [[ -z "${HOME}" ]]; then # HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: HOME"
fi
# xdg variables
if [[ -z "${XDG_CONFIG_HOME}" ]]; then # XDG_CONFIG_HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: XDG_CONFIG_HOME"
fi
if [[ -z "${XDG_DATA_HOME}" ]]; then # XDG_DATA_HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: XDG_DATA_HOME"
fi
if [[ -z "${XDG_STATE_HOME}" ]]; then
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: XDG_STATE_HOME"
fi
if [[ -z "${XDG_CACHE_HOME}" ]]; then # XDG_CACHE_HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: XDG_CACHE_HOME"
fi
# custom directory variables
if [[ -z "${NAS_DIR}" ]]; then # NAS_DIR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: NAS_DIR"
fi
if [[ -z "${ONEDEV_DIR}" ]]; then # ONEDEV_DIR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: ONEDEV_DIR"
fi
if [[ -z "${GITHUB_DIR}" ]]; then # GITHUB_DIR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: GITHUB_DIR"
fi
if [[ -z "${NOTES_DIR}" ]]; then # NOTES_DIR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: NOTES_DIR"
fi
if [[ -z "${NOTES_ROOT}" ]]; then # NOTES_ROOT
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: NOTES_ROOT"
fi
if [[ -z "${SHELL_DIR}" ]]; then # SHELL_DIR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: SHELL_DIR"
fi
if [[ -z "${ENCRYPTED_DIR}" ]]; then # ENCRYPTED_DIR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: ENCRYPTED_DIR"
fi
if [[ -z "${CRITICAL_DIR}" ]]; then # CRITICAL_DIR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: CRITICAL_DIR"
fi
# setting environment variables
if [[ -z "${GPG_TTY}" ]]; then # GPG_TTY
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: GPG_TTY"
fi
if [[ -z "${GNUPGHOME}" ]]; then # GNUPGHOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: GNUPGHOME"
fi
if [[ -z "${PNPM_HOME}" ]]; then # PNPM_HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: PNPM_HOME"
fi
if [[ -z "${STARSHIP_CONFIG}" ]]; then # STARSHIP_CONFIG
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: STARSHIP_CONFIG"
fi
if [[ -z "${EDITOR}" ]]; then # EDITOR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: EDITOR"
fi
if [[ -z "${BROWSER}" ]]; then # BROWSER
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: BROWSER"
fi
# check shell config dir
if [[ ! -d "$SHELL_DIR" ]]; then
  echo -e "${I_ERR}shell config directory not found: $SHELL_DIR"
fi

if [[ "$SHELL" =~ "zsh" ]]; then
  echo -e "${I_INFO}SHELL  ZSH"
elif [[ "$SHELL" =~ "bash" ]]; then
  echo -e "${I_INFO}SHELL : BASH"
else
  echo -e "${I_ERR}UNKNOWN SHELL TYPE : $SHELL"
  echo -e "${I_INFO}only bash & zsh supported : $SHELL"
fi
