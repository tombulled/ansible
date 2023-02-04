#!/bin/bash -e

# Constants
BANNER_PRIMARY="ANSIBLE"
BANNER_SECONDARY="BOOSTRAP SCRIPT"

# Colours
COLOUR_RESET="\033[0m"
COLOUR_RED="\033[0;31m"
COLOUR_GREEN="\033[0;32m"
COLOUR_YELLOW="\033[0;33m"
COLOUR_BLUE="\033[0;34m"
COLOUR_PURPLE="\033[0;35m"
COLOUR_CYAN="\033[0;36m"

# Log Levels
LOG_LEVEL_INFO="INFO"
LOG_LEVEL_WARN="WARN"
LOG_LEVEL_ERROR="ERROR"

# Colour Functions
colour () { printf "${1}${2}${COLOUR_RESET}" ; }
red    () { colour "$COLOUR_RED"    "$1" ; }
green  () { colour "$COLOUR_GREEN"  "$1" ; }
yellow () { colour "$COLOUR_YELLOW" "$1" ; }
blue   () { colour "$COLOUR_BLUE"   "$1" ; }
purple () { colour "$COLOUR_PURPLE" "$1" ; }
cyan   () { colour "$COLOUR_CYAN"   "$1" ; }

# Log Functions
log   () { echo "[$1] $2" ; }
info  () { log "$(blue   "$LOG_LEVEL_INFO")" "$1" ; }
warn  () { log "$(yellow "$LOG_LEVEL_INFO")" "$1" ; }
error () { log "$(red    "$LOG_LEVEL_INFO")" "$1" ; }

# 1. Update Package Cache
info "Updating Package Cache"
sudo apt update

# 2. Install figlet
info "Installing Figlet"
sudo apt install -y figlet

3. Display the Banner
clear
echo "$(green "$(figlet -ct -f big   "$BANNER_PRIMARY")")"
echo "$(cyan  "$(figlet -ct -f small "$BANNER_SECONDARY")")"

# 4. Install Git
info "Installing Git"
sudo apt install -y git

# 5. Install Python
info "Installing Python"
sudo apt install -y python3

# 6. Install Ansible
info "Installing Ansible"
sudo apt install -y ansible

# 7. Finish
info "Done!"