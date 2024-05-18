# -- VARIABLES -- #
# colors
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
# status messages
I_OK="${C_BLACK}[${C_GREEN} 󱁖 ${C_BLACK}] ${C_RESET}" # completed successfully
I_ERR="${C_BLACK}[${C_RED}  ${C_BLACK}] ${C_RESET}" # error
I_SKIP="${C_BLACK}[${C_CYAN}  ${C_BLACK}] ${C_RESET}" # skipped
I_RUNNING="${C_BLACK}[${C_CYAN} 󰅒 ${C_BLACK}] ${C_RESET}" # running
I_DO="${C_BLACK}[${C_YELLOW}  ${C_BLACK}] ${C_RESET}" # user action required
I_ASK="${C_BLACK}[${C_BLUE} 󰭙 ${C_BLACK}] ${C_RESET}" # user prompt (ask)
I_INFO="${C_BLACK}[${C_PURPLE}  ${C_BLACK}] ${C_RESET}" # information
G_BORDER="${C_BLACK}󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜${C_RESET} " # border
# -- ZPROFILE -- # 
# print status of current file
echo -e "${I_OK}zprofile"
