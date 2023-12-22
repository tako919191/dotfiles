#!/bin/zsh

if [ "$(uname)" !- "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# ---------------------------------------- #
# Base
# ---------------------------------------- #

# Disable auto-capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# ---------------------------------------- #
# Dock
# ---------------------------------------- #

# Disable waiting time before the Dock is displayed
defaults write com.apple.dock autohide-delay -float 0

# ---------------------------------------- #
# Finder
# ---------------------------------------- #

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show files with all extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Display the status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Display the path bar
defaults write com.apple.finder ShowPathbar -bool true

# ---------------------------------------- #
# SystemUIServer
# ---------------------------------------- #

# Display date, day, and time in the menu bar
defaults write com.apple.menuextra.clock DateFormat -string 'EEE d MMM HH:mm'

# Display battery level in the menu bar
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

for app in "Dock" \
	"Finder" \
	"SystemUIServer"; do
	killall "${app}" &> /dev/null
done
