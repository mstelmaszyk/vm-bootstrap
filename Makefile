.PHONY: help stow

TOOL ?=

help:
	@echo "Usage: make [target] [TOOL=<tool>]"
	@echo ""
	@echo "Targets:"
	@echo "  help          Show this help message"
	@echo "  stow          Stow dotfiles (optionally specify TOOL=<tool>)"
	@echo "                    Available TOOL values: tmux, vim, zsh"

stow:
ifndef TOOL
	stow --dotfiles -v -d ./dotfiles -t ~ -S
else
	stow --dotfiles -v -d ./dotfiles -t ~ -S $(TOOL)
endif
