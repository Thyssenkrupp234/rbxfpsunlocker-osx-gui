#!/bin/sh

# Set the target frames per second (FPS) for Roblox
useVulkan=$1
targetFps=10000
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
  mkdir $clientSettingsPath
fi

# Based on the user's choice, set the client settings accordingly
case $useVulkan in
  yes)
    # If yes, configure client settings for Vulkan renderer
    clientSettings=" \
    { \
      \"DFIntTaskSchedulerTargetFps\": $targetFps, \
      \"FFlagDebugGraphicsDisableMetal\": \"true\", \
      \"FFlagDebugGraphicsPreferVulkan\": \"true\" \
    } \
    "
    ;;

  no)
    # If no, configure client settings without Vulkan renderer
    clientSettings=" \
    { \
      \"DFIntTaskSchedulerTargetFps\": $targetFps \
    } \
    "
    ;;

  *)
    # If an unknown option is selected, display an error and exit
    echo "Unknown option."
    exit 1
    ;;
esac

# Write the generated client settings to the ClientAppSettings.json file
echo $clientSettings > "$clientSettingsPath/ClientAppSettings.json"
echo "The FPS unlocker has been installed in $robloxPath."
