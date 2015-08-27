#!/bin/bash


echo "Installing apps with brew and cask "
echo "version 2.0 by javapapo@mac.com date: 25.08.2015"


echo "Installing brew "
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Cask "
brew install caskroom/cask/brew-cask

echo "Updating app lists"
brew update
brew cask update


echo "Cask apps"

brew cask install the-unarchiver #uzip and stuff
brew cask install keka #zip/unzip and much more

#dev stuff
brew cask install java
brew install go
brew install maven
brew install ant
brew install gradle
brew cask install intellij-idea
brew cask install eclipse-java
brew cask install sourcetree # git client
brew cask install github-desktop #github desktop client
brew cask install slack #collaboration tool
brew cask install sublime-text #text editor
brew cask install mongodb #mongo db
brew cask install robomongo #client for mongodb
brew cask install jd-gui #java decompiler
brew cask install fish #shell very nice!
brew cask install iterm2

#Containers and stuff
brew cask install dockertoolbox #all the required docker stuff
brew cask install vagrant #vagrant vm provisioning
brew cask install vagrant-manager #excellent GUI app for vagrant
brew cask install packer #tool to create vms 


#Browsers
brew cask install firefox
brew cask install google-chrome

# Cloud drives
brew cask install dropbox
brew cask install google-drive

#Office stuff
brew cask install libreoffice

#Email clients
brew cask install thunderbird

#Instant Messengers
brew cask install skype
brew cask install adium

#torrent client
brew cask install utorrent #mtorrent
brew cask install spotify

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

#media players
brew cask install vlc
brew cask install mplayerx

#book readers
brew cask install kindle

#remote control
brew cask install teamviewer
