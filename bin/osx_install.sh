#!/bin/sh
echo Install all AppStore Apps at first!
echo xCode update, QQ, 微信, Dash, The Unarchiver, evernote, 射手播放器...
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

# base
echo Install Homebrew zsh and useful tools
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/science
brew install wget ffmpeg
brew install p7zip
brew install zsh
brew install oh-my-zsh
brew intall zsh-syntax-highlighting
brew install tree
brew install autojump


# Development
echo Install Dev Apps
brew install node
brew cask install atom  # editor
brew cask install java
brew cask install github
brew cask install dockertoolbox
docker-machine create --driver virtualbox docker
docker-machine env docker
eval “$(docker-machine env docker)”
npm install -g cnpm
cnpm install -g gitjk
cnpm install -g gulp
cnpm install -g bower
cnpm install -g mocha
cnpm install -g react-native-cli
cnpm install -g yo


# Apps and Games
echo Install apps
brew cask install transmit
brew cask install battle-net
brew cask install google-chrome
brew cask install google-drive
brew cask install goagentx
brew cask install shadowsocksx
brew cask install spectacle
brew cask install neteasemusic
brew cask install baiducloud


# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
