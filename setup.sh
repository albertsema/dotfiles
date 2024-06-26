#!/usr/bin/env bash

################################################################################
# setup.sh
#
# This script uses GNU Stow to symlink files and directories into place.
# It can be run safely multiple times on the same machine. (idempotency)
################################################################################

dotfiles_echo() {
  local fmt="$1"
  shift

  # shellcheck disable=SC2059
  printf "\\n[DOTFILES] ${fmt}\\n" "$@"
}

backup_stow_conflict() {
  dotfiles_echo "Conflict detected: ${1} Backing up.."
  local BACKUP_SUFFIX
  BACKUP_SUFFIX="$(date +%Y-%m-%d)_$(date +%s)"
  mv -v "$1" "${1}_${BACKUP_SUFFIX}"
}

osname=$(uname)

if [ "$osname" != "Darwin" ]; then
  dotfiles_echo "Oops, it looks like you're using a non-Apple system. Sorry, this script only supports macOS. Exiting..."
  exit 1
fi

if ! command -v stow >/dev/null; then
  dotfiles_echo "GNU Stow is required but was not found. Try: brew install stow"
  dotfiles_echo "Exiting..."
  exit 1
fi

dotfiles_echo "Initializing dotfiles setup..."

sudo -v

set -e # Terminate script if anything exits with a non-zero value

if [ -z "$DOTFILES" ]; then
  export DOTFILES="${HOME}/dotfiles"
fi

dotfiles_echo "Setting HostName..."

COMPUTER_NAME=$(scutil --get ComputerName)
LOCAL_HOST_NAME=$(scutil --get LocalHostName)

sudo scutil --set HostName "$LOCAL_HOST_NAME"
HOST_NAME=$(scutil --get HostName)

sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server.plist NetBIOSName -string "$HOST_NAME"

printf "ComputerName:  ==> [%s]\\n" "$COMPUTER_NAME"
printf "LocalHostName: ==> [%s]\\n" "$LOCAL_HOST_NAME"
printf "HostName:      ==> [%s]\\n" "$HOST_NAME"

if [ -z "$XDG_CONFIG_HOME" ]; then
  dotfiles_echo "Setting up ~/.config directory..."
  if [ ! -d "${HOME}/.config" ]; then
    mkdir "${HOME}/.config"
  fi
  export XDG_CONFIG_HOME="${HOME}/.config"
fi

dotfiles_echo "Checking your system architecture..."

arch="$(uname -m)"

if [ "$arch" == "arm64" ]; then
  dotfiles_echo "You're on Apple Silicon! Setting HOMEBREW_PREFIX to /opt/homebrew..."
  HOMEBREW_PREFIX="/opt/homebrew"
else
  dotfiles_echo "You're on an Intel Mac! Setting HOMEBREW_PREFIX to /usr/local..."
  HOMEBREW_PREFIX="/usr/local"
fi

dotfiles_echo "Setting up symlinks with GNU Stow..."

for item in *; do
  if [ -d "$item" ]; then
    stow --adopt "$item"/
  fi
done

dotfiles_echo "Dotfiles setup complete!"

echo
