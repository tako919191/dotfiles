.PHONY: init link defaults brew code

# Do everything.
all: init link defaults brew code

# Set initial preference.
init:
	./bin/Mac/init.sh

# Link dotfiles.
link:
	./bin/Common/link.sh

# Set macOS system preferences.
defaults:
	./bin/Mac/defaults.sh

# Install macOS applications.
brew: link
	./bin/Mac/brew.sh

# WIP: Install VS Code Settings to User Setting Directory
code:
	./bin/Mac/vscode.sh
