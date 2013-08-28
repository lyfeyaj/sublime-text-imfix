#!/bin/bash
echo 'Have you already installed Sublime Text 3?[Y/N]'
read input
if [ $input == 'Y' ] || [ $input == 'y' ]
then
	echo 'Adding Sublime Text 3 PPA'
	exec sudo add-apt-repository ppa:webupd8team/sublime-text-3
	
	echo 'Updating system'
	exec sudo apt-get update
	
	echo 'Installing Sublime Text 3'
	exec sudo apt-get install sublime-text-installer
else
	echo 'Skip installing Sublime Text 3'
fi

echo 'Installing Fcitx and Pinyin methods'
exec sudo add-apt-repository ppa:fcitx-team/nightly

echo 'Updating system'
exec sudo apt-get update
	
exec sudo apt-get install fcitx fcitx-googlepinyin fcitx-sougoupinyin fcitx-cloudpinyin

echo 'Installing Fcitx related libs'
exec sudo apt-get install build-essential libgtk2.0-dev
