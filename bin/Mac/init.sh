#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# Set zsh to default shell
if [ $SHELL != "/bin/zsh" ]; then
	echo 'zsh'
	# chsh -s /bin/zsh
fi

# Install xcode
if !(xcode-select -p > /dev/null 2>&1); then
	xcode-select --install > /dev/null
fi

# Install Homebrew
if !(type brew > /dev/null 2>&1); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null
fi
