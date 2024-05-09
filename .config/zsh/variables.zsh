# TERMINAL COLOR CODES
export C_BLACK='\033[1;30m'
export C_RED='\033[1;31m'
export C_GREEN='\033[1;32m'
export C_YELLOW='\033[1;33m'
export C_BLUE='\033[1;34m'
export C_PURPLE='\033[1;35m'
export C_CYAN='\033[1;36m'
export C_WHITE='\033[1;37m'
export C_TEXT='\033[1;34m'
export C_RESET='\033[0m'
# HEX COLOR CODES
export C_PINK_HEX="#f5c2e7"
export C_MAUVE_HEX="#cba6f7"
export C_RED_HEX="#f38ba8"
export C_MAROON_HEX="#eba0ac"
export C_PEACH_HEX="#fab387"
export C_YELLOW_HEX="#f9e2af"
export C_GREEN_HEX="#a6e3a1"
export C_TEAL_HEX="#94e2d5"
export C_SKY_HEX="#89dceb"
export C_SAPPHIRE_HEX="#74c7ec"
export C_BLUE_HEX="#89b4fa"
export C_LAVENDER_HEX="#b4befe"
export C_TEXT_HEX="#cdd6f4"
export C_SUBTEXT1_HEX="#bac2de"
export C_SUBTEXT0_HEX="#a6adc8"
export C_OVERLAY2_HEX="#9399b2"
export C_OVERLAY1_HEX="#7f849c"
export C_OVERLAY0_HEX="#6c7086"
export C_SURFACE2_HEX="#585b70"
export C_SURFACE1_HEX="#45475a"
export C_SURFACE0_HEX="#313244"
export C_BASE_HEX="#1e1e2e"
export C_MANTLE_HEX="#181825"
export C_BASE_HEX="#11111b"
# GLYPHS
export G_BORDER="\n${C_BLACK}󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜${C_RESET} \n"
export G_WHITESPACE=" " # empty character (not equal to space_key)
export G_STAR="󱝂"
export G_SHELL=""
export G_BASH=""
export G_LINUX=""

# STATUS PROMPTS
I_SUCCESS="${RESET}[ ${C_GREEN}SUCCESS${C_RESET} ]" 
I_ERROR="${RESET}[ ${C_RED}ERROR${C_RESET} ]"
I_SKIP="${RESET}[ ${C_CYAN}SKIPPED${C_RESET} ]"
I_PROCESSING="${RESET}[ ${C_CYAN}PROCESSING ..${C_RESET} ]"
I_MANUALLY="${C_RESET}[ ${C_YELLOW}MANUALLY${C_RESET} ]"
I_ASK="${C_RESET}[ ${C_BLUE}???${C_RESET} ]"
I_ASK_YN="${C_RESET}[ ${C_BLUE}y/n${C_RESET} ]"
I_INFO="${C_RESET}[ ${C_PURPLE}INFO${C_RESET} ]"
