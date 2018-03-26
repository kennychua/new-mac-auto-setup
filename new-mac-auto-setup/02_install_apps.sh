# BASED ON http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

brew install mas
mas install 585829637 // install todoist
 
# Start installing list of utilities
binaries=(
  git
  #node
  cask
  #brew-cask
  python
  #ant
  #maven
  wget
  python
  fish
  nvm
)
 
echo "installing binaries..."
brew install ${binaries[@]}
 
# Start installing list of apps
apps=(
  alfred
  appcleaner
  1password
  google-chrome
  #slack
  #transmit
  appcleaner
  #spotify
  sublime-text
  virtualbox
  vlc
  #skype
  #transmission
  #remote-desktop-connection
  bettertouchtool
  betterzip
  #webstorm
  #intellij-idea
  #the-unarchiver
  skitch
  evernote
  #menumeters
  iterm2
  #menucalendarclock-ical
  #chrome-remote-desktop-host
  #todoist
  java
  visual-studio-code
  #logitech-control-center
  #scroll-reverser
  #gimp
  #mactex
)
 
# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
 
#brew cask cleanup tasks
#brew cask alfred link
brew cleanup
 
 
brew install fish

# Run these commands in shell manually
fish
echo (which fish) | sudo tee -a /etc/shells
chsh -s (which fish)
curl -L http://get.oh-my.fish | fish
omf install bobthefish
brew tap caskroom/fonts
brew cask install font-firacode-nerd-font
set -U theme_nerd_fonts yes

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# Setup iterm to use /usr/local/bin/fish as shell and firacode font as default profile
