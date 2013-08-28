#!/bin/bash
echo 'Have you already installed Sublime Text 3? [Y/N]'

read sublime_input

if [ $sublime_input == 'Y' ] || [ $sublime_input == 'y' ]
then
  echo 'Adding Sublime Text 3 PPA'
  exec sudo add-apt-repository ppa:webupd8team/sublime-text-3
  
  echo 'Updating system'
  exec sudo apt-get update
  
  echo 'Installing Sublime Text 3'
  exec sudo apt-get install sublime-text-installer
  
  echo 'Sublime Text 3 installed successfully'
else
  echo 'Skip installing Sublime Text 3'
fi

echo 'Have you already installed Fcitx? [Y/N]'

read fcitx_input

if [ $fcitx_input == 'Y' ] || [ $fcitx_input == 'y' ]
then

  echo 'Adding Fcitx PPA'
  echo 'sudo add-apt-repository ppa:fcitx-team/nightly'
  exec sudo add-apt-repository ppa:fcitx-team/nightly

  echo 'Updating system'
  echo 'sudo apt-get update'
  exec sudo apt-get update

  echo 'Installing Fcitx and Pinyin methods'
  echo 'sudo apt-get install fcitx fcitx-config-gtk fcitx-sunpinyin fcitx-googlepinyin fcitx-module-cloudpinyin fcitx-sogoupinyin'
  exec sudo apt-get install fcitx fcitx-config-gtk fcitx-sunpinyin fcitx-googlepinyin fcitx-module-cloudpinyin fcitx-sogoupinyin

  echo 'Installing Fcitx related libs'
  echo 'sudo apt-get install build-essential libgtk2.0-dev'
  exec sudo apt-get install build-essential libgtk2.0-dev
  echo 'sudo apt-get install fcitx-table-all'
  exec sudo apt-get install fcitx-table-all
  
  echo 'Fcitx installed successfully!'
  echo 'Setting Fcitx as the default input method'
  exec im-switch -s fcitx -z default
else
  echo 'Skip installing Fcitx'
fi

echo 'Adding shared lib to sublime directory'
echo 'sudo cp ./lib/libsublime-imfix.so /opt/sublime-text/'
exec sudo cp ./lib/libsublime-imfix.so /opt/sublime-text/

echo 'Replacing subl with new one'
echo 'sudo rm /usr/bin/subl && sudo cp ./src/subl /usr/bin/'
exec sudo rm /usr/bin/subl && sudo cp ./src/subl /usr/bin/

echo 'Done!'