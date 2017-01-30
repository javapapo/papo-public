#!/bin/bash
echo "******************************************************"

echo "Enable show hidden files"
defaults write com.apple.finder AppleShowAllFiles YES

echo "Enable Cut in Finder"
defaults write com.apple.finder AllowCutForItems YES

echo "******************************************************"

echo "Installing apps with brew and cask "

if [ ! -x /usr/local/bin/brew ]; then
    echo "installing homebrew"
    /usr/bin/env ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "homebrew is installed"
fi

echo "Installing Cask "
brew install caskroom/cask/brew-cask

echo "Updating app lists"
brew update
brew upgrade

brew install bash #v4
brew install duti #changes default file permissions

brew cask install the-unarchiver #uzip and stuff
brew cask install keka #zip/unzip and much more

#dev stuff
brew cask install java
brew install tree
brew install coreutils
brew install wget
brew install go
brew install maven
brew install ant
brew install gradle
brew install jq #json command line
brew install asciinema #record terminal sessions
brew install httpie
brew install wrk # HTTP benchmarking tool

brew cask install intellij-idea
brew cask install sourcetree # git client
brew cask install diffmerge #use along with sourcetree
brew cask install github-desktop #github desktop client
brew cask install slack #collaboration tool
brew cask install sublime-text #text editor
brew cask install macdown #markdown
brew cask install mongodb #mongo db
brew cask install robomongo #client for mongodb
brew cask install jd-gui #java decompiler
brew cask install fish #shell very nice!
brew cask install flux #control the screen contrast/brightness over the day
brew cask install iterm2
brew cask install postman # rest client
brew cask install docker

#Containers and stuff
brew cask install vagrant #vagrant vm provisioning
brew cask install vagrant-manager #excellent GUI app for vagrant
brew cask install packer #tool to create vms 
brew cask install virtualbox #tool to create vms 

#kodi-raspberry
brew cask install applepi-baker

#Browsers
brew cask install firefox
brew cask install google-chrome
brew cask install google-photos-backup
brew cask install torbrowser

# Cloud drives
brew cask install dropbox
brew cask install google-drive

#Office stuff
brew cask install libreoffice

#Instant Messengers
brew cask install skype
brew cask install adium
brew cask install whatsapp
brew cask install goofy #facebook
 
#torrent client
brew cask install utorrent
brew cask install spotify

#anti malware
brew cask install malwarebytes-anti-malware 
brew cask install onyx
brew cask install 1password

#subtitles
brew cask install subtitles

#game Section
brew cask install battle-net #I need to play wow
brew cask install wowmatrix #to install addons to wow!
brew cask install steam #steam client

#macosx specific
brew cask install alfred #of course alfred!
brew cask install menumeters #menu meters for mac
brew cask install appcleaner #install/ uninstall for mac
brew cask install karabiner #keyboard -shortcut manager for mac
brew cask install captur

#media players
brew cask install vlc
brew cask install mplayerx

#book readers
brew cask install kindle

#remote control
brew cask install teamviewer
brew cask install screenhero
brew cask install whatsapp

brew cleanup;
brew cask cleanup;

chsh -s /usr/local/bin/bash;  #change to bash4, remember to add it to iTerm `/usr/local/bin/bash --login`

