#!/usr/bin/env bash

set -u

if ! command -v brew >/dev/null 2>&1; then
  echo "Error: Homebrew (brew) is not on PATH." >&2
  exit 127
fi

casks=(
  1password-cli
  alacritty
  arc
  aws-vpn-client
  brave-browser
  carbon-copy-cloner
  cleanmymac
  daisydisk
  datagrip
  discord
  dockdoor
  firefox
  flux-app
  gitify
  go-task
  hazel
  hyperkey
  iina
  istat-menus
  karabiner-elements
  kindavim
  kitty
  legcord
  linearmouse
  ngrok
  obsidian
  postico
  redis-insight
  screenflick
  spaceman
  spotify
  stats
  tableplus
  ticktick
  tomatobar
  viber
  wezterm
  zoom
)

failed=()

for cask in "${casks[@]}"; do
  if brew list --cask --versions "$cask" >/dev/null 2>&1; then
    echo "Uninstalling cask: $cask"
    if ! brew uninstall --cask "$cask"; then
      echo "Failed to uninstall cask: $cask" >&2
      failed+=("cask:$cask")
    fi
  else
    echo "Already absent: cask $cask"
  fi
done

if brew list --formula --versions go-task >/dev/null 2>&1; then
  echo "Uninstalling formula: go-task"
  if ! brew uninstall --formula go-task; then
    echo "Failed to uninstall formula: go-task" >&2
    failed+=("formula:go-task")
  fi
else
  echo "Already absent: formula go-task"
fi

if ((${#failed[@]})); then
  echo >&2
  echo "Some packages could not be removed:" >&2
  printf '  %s\n' "${failed[@]}" >&2
  echo "Resolve any Homebrew permission prompts or errors, then run this script again." >&2
  exit 1
fi

echo "Cleanup complete. Homebrew reports all selected packages removed."
