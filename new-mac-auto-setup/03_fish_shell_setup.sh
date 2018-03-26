# Run these commands in shell manually
fish
echo (which fish) | sudo tee -a /etc/shells
chsh -s (which fish)
curl -L http://get.oh-my.fish | fish
omf install bobthefish
brew tap caskroom/fonts
brew cask install font-firacode-nerd-font
set -U theme_nerd_fonts yes

# Install fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# Install fish nvm
fisher nvm
