
## ---------------------------------------------------------------------- ##
# Common
## ---------------------------------------------------------------------- ##
# Link dotfiles
.PHONY: link
link:
	./scripts/Common/link.sh

## ---------------------------------------------------------------------- ##
# MacOS
## ---------------------------------------------------------------------- ##
# MacOS: Do everything.
.PHONY: mac-all
mac-all: mac-init link defaults brew code

# Set initial preference.
.PHONY: mac-init
mac-init:
	./scripts/Mac/init.sh

# Set macOS system preferences.
.PHONY: defaults
defaults:
	./scripts/Mac/defaults.sh

# Install macOS applications.
.PHONY: brew
brew:
	./scripts/Mac/brew.sh

# WIP: Install VS Code Settings to User Setting Directory
.PHONY: code
code:
	./scripts/Mac/vscode.sh

## ---------------------------------------------------------------------- ##
# ArchLinux
## ---------------------------------------------------------------------- ##
# Install ArchLinux packages.
.PHONY: pacman
pacman:
	./scripts/ArchLinux/pacman.sh
	./scripts/ArchLinux/yay.sh
