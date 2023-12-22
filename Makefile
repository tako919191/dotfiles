
## ---------------------------------------------------------------------- ##
# Common
## ---------------------------------------------------------------------- ##
# Link dotfiles
.PHONY: link
link:
	./bin/Common/link.sh

## ---------------------------------------------------------------------- ##
# MacOS
## ---------------------------------------------------------------------- ##
# MacOS: Do everything.
.PHONY: mac-all
mac-all: mac-init link defaults brew code

# Set initial preference.
.PHONY: mac-init
mac-init:
	./bin/Mac/init.sh

# Set macOS system preferences.
.PHONY: defaults
defaults:
	./bin/Mac/defaults.sh

# Install macOS applications.
.PHONY: brew
brew:
	./bin/Mac/brew.sh

# WIP: Install VS Code Settings to User Setting Directory
.PHONY: code
code:
	./bin/Mac/vscode.sh

## ---------------------------------------------------------------------- ##
# ArchLinux
## ---------------------------------------------------------------------- ##
# Install ArchLinux packages.
.PHONY: pacman
pacman:
	./bin/ArchLinux/pacman.sh
