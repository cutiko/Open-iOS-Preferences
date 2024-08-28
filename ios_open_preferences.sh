#!/bin/bash

# Get the identifier of the active simulator using simctl
# Adjusted to capture the fourth column which is the actual device ID (UUID)
DEVICE_ID=$(xcrun simctl list devices | grep -m1 "(Booted)" | awk '{print $4}' | tr -d '()')

# Check if the device ID was found correctly
if [ -z "$DEVICE_ID" ]; then
    echo "No active simulator found."
    exit 1
fi

# Change to the directory of the active simulator
cd ~/Library/Developer/CoreSimulator/Devices/$DEVICE_ID || {
    echo "Could not access simulator directory: $DEVICE_ID"
    exit 1
}

# Retrieve the name of the plist file from a project file (e.g., Info.plist from your project)
PLIST_NAME=$(defaults read "$(pwd)/data/Containers/Data/Application" CFBundleIdentifier 2>/dev/null || echo "DefaultPlistName")

# Check if the plist file name was found
if [ -z "$PLIST_NAME" ]; then
    echo "No plist file name found."
    exit 1
fi

# Find and open the plist file on the simulator device
find . -name "$PLIST_NAME.plist" | while read -r preferencesFile; do
    if [ -f "$preferencesFile" ]; then
        open "$preferencesFile"
    else
        echo "Plist file not found."
        exit 1
    fi
done
