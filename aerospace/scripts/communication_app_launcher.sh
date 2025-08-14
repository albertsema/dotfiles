#!/bin/bash

# Communication app launcher with fallback
# Save this as ~/.config/aerospace/scripts/communication_app_launcher.sh
# Make it executable: chmod +x ~/.config/aerospace/scripts/communication_app_launcher.sh

# List of apps to try in order of preference
apps=(
  "/Applications/Slack.app"
  "/Applications/Webex.app"
  "/Applications/Cisco Webex Meetings.app"
  "/Applications/Microsoft Teams.app"
  "/Applications/Microsoft Teams (work or school).app"
)

# Try each app in order
for app in "${apps[@]}"; do
  if [ -d "$app" ]; then
    open -a "$app"
    exit 0
  fi
done

# If no apps found, show notification
osascript -e 'display notification "No communication apps found" with title "App Launcher"'
