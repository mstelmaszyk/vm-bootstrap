#!/usr/bin/env bash
# Usage: bash cheatsheet.sh

BOLD='\033[1m'
DIM='\033[2m'
CYAN='\033[36m'
YELLOW='\033[38;2;215;186;125m'
GREEN='\033[32m'
RESET='\033[0m'

h1() { printf "${BOLD}${CYAN}%s${RESET}\n" "$1"; }
h2() { printf "\n${BOLD}${YELLOW}%s${RESET}\n" "$1"; }
cmd() { printf "  ${GREEN}%-34s${RESET} %s\n" "$1" "$2"; }
txt() { printf "${DIM}%s${RESET}\n" "$1"; }

h1 "TMUX CHEATSHEET"

h2 "Keys"
cmd "P" "Prefix key (Ctrl+a)"
cmd "C-space" "Second prefix key"
cmd "M" "Meta key (Left Alt)"
cmd "P-?" "Show all available commands"
cmd "P-z" "Toggle pane fullscreen"

h2 "Session handling"
cmd "tmux new -s <SESSION_NAME>" "Create a new session"
cmd "tmux ls" "List running sessions"
cmd "P-d" "Detach current session (keeps running in background)"
cmd "tmux attach -t <SESSION_NAME>" "Attach to a named session"

h2 "Config reload (Prefix)"
cmd "r" "Hot-reload configuration"

h2 "Splitting panes (Prefix)"
cmd "|" "Split horizontally"
cmd "-" "Split vertically"

h2 "Fast pane switching (Meta)"
txt "Navigate panes with Meta + vim-movement keys"
cmd "H" "Go to left pane"
cmd "L" "Go to right pane"
cmd "J" "Go to upper pane"
cmd "K" "Go to lower pane"

h2 "Pane resizing (Meta)"
cmd "Left" "Resize pane left"
cmd "Down" "Resize pane down"
cmd "Up" "Resize pane up"
cmd "Right" "Resize pane right"

h2 "Copy mode (Meta)"
cmd "[" "Enter copy mode"
txt "  Inside copy mode:"
cmd "v" "Start selection"
cmd "y" "Copy selection to buffer and exit"
cmd "q" "Exit copy mode"
txt "  -----------------"
cmd "p" "Paste buffer content"
