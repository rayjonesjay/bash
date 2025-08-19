#!/usr/bin/env bash
## before running this script let me tell you what it does
## It installs the jetbrains mono font to your system

URL="https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip"
ZIP_FILE=x1x2x3.zip
if [ -f $ZIP_FILE ]
then
	rm -i $ZIP_FILE
fi
echo "downloading zip file from https://download.jetbrains.com/fonts"

# download the zip file
command wget --output-document=${ZIP_FILE} ${URL}

# check if previous command was successfull
if [ $? -eq 0 ]
then
	echo "download done"
else
	echo "download failed exiting script" && exit 69
fi

# unzip the file to either /usr/local/share/fonts or ~/.local/share/fonts
# the former installs system wide
CHOICE="n"
read -p "Do you want to install font system wide (requires sudo)? (y/n)" CHOICE
if [ $CHOICE == "y" ]
then
	echo "unpacking to /usr/local/share/fonts..."
	sudo unzip -d /usr/local/share/fonts $ZIP_FILE
else
	echo "unpacking to ~/.local/share/fonts"
	unzip -d ~/.local/share/fonts $ZIP_FILE
fi

if [ $? -eq 0 ]
then
	echo "successful installation"
else
	echo "error downloading" && exit 70
fi
