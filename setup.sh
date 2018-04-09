# Setup DNS
networksetup -setdnsservers Wi-Fi 8.8.8.8 168.95.1.1 \
208.67.222.222 208.67.220.220 8.8.4.4


sh setup-system.sh


sh xcode-clt-install.sh
sudo xcodebuild -license accept


# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.profile
rvm install 2.4.0


# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Homebrew
brew install python python3
brew install tree
brew install awscli aws-elasticbeanstalk
brew install azure-cli
brew install git git-flow git-lfs
brew install gnupg pinentry-mac
brew install swiftlint
brew install sl
brew install mas

# NVM
brew install nvm
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
echo '. "/usr/local/opt/nvm/nvm.sh"' >> ~/.bash_profile
echo '' >> ~/.bash_profile


# Xcode
mas install 497799835
open -a Xcode

# Keynote
mas install 409183694

# Pages
mas install 409201541

# Numbers
mas install 409203825

# 1Password
mas install 443987910
open -a 1Password

# The Unarchiver
mas install 425424353

# iHex
mas install 909566003

# Do Http
mas install 887133786

# Trello
mas install 1278508951

# Slack
mas install 803453959

# Homebrew Cask
brew tap caskroom/cask
brew tap caskroom/versions

echo '' >> ~/.bash_profile
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
echo 'alias cask="brew cask"' >> ~/.bash_profile
source ~/.bash_profile

cask install java8

cask install android-sdk
echo 'export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"' >> ~/.bash_profile
echo '' >> ~/.bash_profile
source ~/.bash_profile

cask install appcleaner

cask install atom
apm install linter-flake8
apm install language-swift

cask install rescuetime
open -a RescueTime

cask install charles

cask install docker

cask install android-studio

cask install microsoft-office

cask install flash-npapi

cask install google-chrome

cask install google-cloud-sdk

cask install macdown

cask install visual-studio

cask install sketch

cask install sourcetree

cask install kdiff3


# Quick Look plugins
cask install qlcolorcode

cask install qlstephen

cask install qlmarkdown

cask install quicklook-json

cask install betterzip

cask install qlimagesize

cask install webpquicklook

cask install provisionql

cask install quicklookapk

# Gem
gem install bundler

gem install cocoapods

gem install fastlane

echo "Done. Note that some of these changes require a logout/restart to take effect."
