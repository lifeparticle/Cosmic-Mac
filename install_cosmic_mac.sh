#!/bin/sh

brew cask install google-chrome

brew cask install java

# not working ?
# brew cask android-studio

brew cask install sublime-text

brew cask install dash

brew cask install dropbox

brew cask install docker

brew cask install mamp

# For Dashboard

# dashboard-enabled-state = 1 [off]
# dashboard-enabled-state = 2 [As space]
# dashboard-enabled-state = 3 [As Overlay]
defaults write com.apple.dashboard dashboard-enabled-state -int 3

# killall Dock

# For Dock
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Hot corner > Bottom right screen corner > Dashboard
defaults write com.apple.dock wvous-br-corner -int 7
defaults write com.apple.dock wvous-br-modifier -int 0

# killall Dock

# For Finder

# show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Finder > View > As Columns
# As Icons = icnv
# As List = Nlsv
# As Cover Flow = Flwv
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# ShowExternalHardDrivesOnDesktop
# ShowHardDrivesOnDesktop
# ShowPathbar
# ShowPreviewPane
# ShowRemovableMediaOnDesktop
# ShowSidebar
# ShowStatusBar
# ShowTabView

# Finder > View > Show Status Bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder > View > Show Tab Bar
defaults write com.apple.finder ShowTabView -bool true

# killall Finder

# For menue bar

defaults write com.apple.systemuiserver menuExtras -array \
  "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
  "/System/Library/CoreServices/Menu Extras/Battery.menu" \
  "/System/Library/CoreServices/Menu Extras/Volume.menu"
  
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.battery" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" -bool true

# killall SystemUIServer
        
# Kill affected apps
for app in "Dock" "Finder" "SystemUIServer"; do
  killall "${app}" > /dev/null 2>&1
done

echo "You may need to restart your machine."
