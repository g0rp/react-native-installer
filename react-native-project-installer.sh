#!/bin/sh

version="v1.0"
libraries="firebase lodash react-native-router-flux redux redux-thunk"

echo 'React-Native project installer'
echo $version
echo '\n'

read -p 'Project name: ' projectName

#create-react-native-app $projectName
touch $projectName
cd $projectName

read -p "Do you want to install the default libraries [$libraries] ? (Y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo npm install --save $libraries
fi


read -p "Do you want to install other libraries ? (Y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	read -p 'Witch one ? ' otherLibraries
	sudo npm install --save $otherLibraries
fi

read -p "Do you want to install ESLint Rally Coding ? (Y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo npm install --save-dev eslint-config-rallycoding
fi

echo '$projectName successfully created'