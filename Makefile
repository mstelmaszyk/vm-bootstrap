.PHONY: help stow
.DEFAULT_GOAL := ansible

TOOL ?=

help:
	@echo "Usage: make [target] [TOOL=<tool>]"
	@echo ""
	@echo "Targets:"
	@echo "  help          Show this help message"
	@echo "  stow          Stow dotfiles (optionally specify TOOL=<tool>)"
	@echo "                    Available TOOL values: tmux, vim, zsh"

ansible:
ifndef TOOL
	ansible-playbook -K -i inventory.ini vm-setup.yml
else
	ansible-playbook -K -i inventory.ini vm-setup.yml --tags ${TOOL}
endif

stow:
ifndef TOOL
	stow --dotfiles -v -d ./dotfiles -t ~ -R
else
	stow --dotfiles -v -d ./dotfiles -t ~ -R $(TOOL)
endif
