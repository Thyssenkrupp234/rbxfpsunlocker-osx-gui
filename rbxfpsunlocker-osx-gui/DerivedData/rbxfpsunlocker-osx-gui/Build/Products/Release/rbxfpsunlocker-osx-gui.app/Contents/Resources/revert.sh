#!/bin/sh

#  Script.sh
#  rbxfpsunlocker-osx-gui
#
#  Created by Lincoln Muller on 2024-01-22.
#  based off lanylow's install script


# Set the path to the Roblox application
robloxPath="/Applications/Roblox.app"

# Check if the Roblox application folder exists
if [ ! -d $robloxPath ]; then
  # If the folder doesn't exist, prepend "~" (home directory) and check again
  $robloxPath="~$robloxPath"
e
  # If the folder still doesn't xist, display an error and exit
  if [ ! -d $robloxPath ]; then
    echo "Roblox installation folder couldn't be found."
    exit
  fi
fi

# Set the path to the client settings folder within the Roblox application
clientSettingsPath="$robloxPath/Contents/MacOS/ClientSettings"

# If the client settings folder doesn't exist, create it
if [ ! -d "$clientSettingsPath" ]; then
  echo "Uninstallation failed: unlocker not installed"
else
  # Remove the folder and its contents
  rm -rf "$clientSettingsPath"

  # Check if the removal was successful
  if [ $? -eq 0 ]; then
    echo "Uninstallation successful: unlocker removed"
  else
    echo "Uninstallation failed: unable to remove unlocker"
  fi
fi
