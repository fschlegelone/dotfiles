# NOTE: environment variables defined in ~/.zshenv
# -- VARIABLES -- #
C_BLACK='\033[1;30m'
C_RED='\033[1;31m'
C_GREEN='\033[1;32m'
C_YELLOW='\033[1;33m'
C_BLUE='\033[1;34m'
C_PURPLE='\033[1;35m'
C_CYAN='\033[1;36m'
C_WHITE='\033[1;37m'
C_GRAY='\033[1;34m'
C_RESET='\033[0m'
I_OK="${C_BLACK}[${C_GREEN} 󱁖 ${C_BLACK}] ${C_RESET}" # completed successfully
I_ERR="${C_BLACK}[${C_RED}  ${C_BLACK}] ${C_RESET}" # error
I_SKIP="${C_BLACK}[${C_CYAN}  ${C_BLACK}] ${C_RESET}" # skipped
I_RUNNING="${C_BLACK}[${C_CYAN} 󰅒 ${C_BLACK}] ${C_RESET}" # running
I_DO="${C_BLACK}[${C_YELLOW}  ${C_BLACK}] ${C_RESET}" # user action required
I_ASK="${C_BLACK}[${C_BLUE} 󰭙 ${C_BLACK}] ${C_RESET}" # user prompt (ask)
I_INFO="${C_BLACK}[${C_PURPLE}  ${C_BLACK}] ${C_RESET}" # information
G_BORDER="${C_BLACK}󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜${C_RESET} " # border

# PRINT STATUS OF CURRENT FILE (.zshrc)
echo -e "${I_OK}zshrc"

# shell config directory
INIT_SHELL_DIR="$HOME/.config/shell" # MUST BE SET HERE, AS THIS FILE IS SOURCED FIRST

# SOURCED BEFORE (0)
print "$G_BORDER"
source "$INIT_SHELL_DIR/0_variables.sh"

# SOURCED NORMAL (1)
print "$G_BORDER"
if [[ -d "$INIT_SHELL_DIR" ]]; then
  # source all .zsh files in shell config directory
    for file in "$INIT_SHELL_DIR"/*.zsh; do
        if [[ -r "$file" && "$file" == *.zsh ]]; then
            source "$file" 
            ((amount_of_sourced_files++))
        fi
    done
fi

print "$G_BORDER"

# SOURCED AFTER (2)
source "$INIT_SHELL_DIR/2_path.sh"
source "$INIT_SHELL_DIR/2_status.sh"
