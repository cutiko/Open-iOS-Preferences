# Open iOS Preferences Script

This script allows you to automatically open the preferences `.plist` file of an iOS app running in a simulator. It dynamically retrieves the simulator's device ID and the app's bundle identifier (`CFBundleIdentifier`) without requiring manual input.

## Requirements

- macOS
- Xcode Command Line Tools
- A booted iOS simulator

## How It Works

The script:
1. Retrieves the `DEVICE_ID` of the currently booted iOS simulator.
2. Automatically identifies the `.plist` file associated with the app’s `CFBundleIdentifier` inside the simulator’s directory.
3. Opens the `.plist` file for viewing or editing.

## Usage

### Running the Script

1. Clone this repository or copy the script to your local machine.
2. Make sure the script is executable. You can use the following command:

    ```bash
    chmod +x open_preferences.sh
    ```

3. Run the script while your iOS app is running in the simulator:

    ```bash
    ./open_preferences.sh
    ```

The script will automatically find and open the `.plist` file for the running app in the simulator.

### Customizing the App Bundle Identifier

By default, the script attempts to read the app's `CFBundleIdentifier` fr
