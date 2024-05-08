# SOURCE: zsh config directory
zsh_config_dir="$HOME/.config/zsh"

if [[ -d "$zsh_config_dir" ]]; then
    for file in "$zsh_config_dir"/*.zsh; do
        if [[ -r "$file" ]]; then
            source "$file"
            ((amount_of_sourced_files++))
            echo -e "${C_CYAN}${C_RESET}(${C_PURPLE}$amount_of_sourced_files${C_RESET}) ${C_CYAN}$(basename $file) ${C_RESET}"
        fi
    done
fi

# pnpm
export PNPM_HOME="/Users/fschlegelone/.config/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
