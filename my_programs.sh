#!/bin/bash

cd ~/Downloads

# Setup
sudo apt install git docker docker-compose emacs

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Install SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install Java, Maven and Gradle
sdk install java
sdk install maven
sdk install gradle

# Install VSCode
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 --output-document=code.deb
sudo dpkg -i code.deb 

# Install IDEA


# Install Android Studio

# Install 



