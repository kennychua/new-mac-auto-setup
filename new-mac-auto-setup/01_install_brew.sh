# BASED ON http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac
 
# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
 
# Update homebrew recipes
brew update
 
# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
 
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
 
# Install Bash 4
brew install bash
 
# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
 
# Install brew-cask for next step of installing apps
brew tap caskroom/cask
brew install caskroom/cask/brew-cask
