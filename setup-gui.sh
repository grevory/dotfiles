#!/bin/bash

# Processor architecture
processorArchitecture="64" # 32/64

# Create a directory for projects
cd $HOME
mkdir Projects

# Gnome Do
sudo apt-get install gnome-do
# Sublime
#wget http://c758482.r82.cf2.rackcdn.com/sublime_text_3_build_3047_x$processorArchitecture.tar.bz2
#tar vxjf "sublime_text_3_build_3047_x$processorArchitecture.tar.bz2"
#sudo mv Sublime_text_3 /opt/
#cd /opt/sublime_text_3
#exec /opt/sublime_text/sublime_text "$@" 
sudo add-apt-repository ppa:webupd8team/sublime-text-3 
sudo apt-get update
sudo apt-get install sublime-text-installer
# Filezilla
sudo aptitude install filezilla
