#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza'
alias lsa='eza -lasnew'
alias grep='grep --color=auto'

parse_git_branch() {
    git branch 2>/dev/null | grep '*' | sed 's/* //'
}

# Define colors
RED="\e[31m"
YELLOW="\e[33m"
BLUE="\e[34m"
PURPLE="\e[35m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"
DEFAULT="\e[39m"

PS1="${BOLD}${RED}\u ${CYAN} \W ${YELLOW} \$(parse_git_branch)\n${BOLD}${YELLOW} ${DEFAULT}${RESET}"

fastfetch

# bun
#export BUN_INSTALL="$HOME/.bun"
#export PATH=$BUN_INSTALL/bin:$PATH
