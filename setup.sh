#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

configure_brew_env() {
  if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [[ -x /usr/local/bin/brew ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
  fi
}

ensure_homebrew() {
  if command -v brew >/dev/null 2>&1; then
    configure_brew_env
    return
  fi

  echo "Homebrew not found. Installing..."
  NONINTERACTIVE=1 /bin/bash -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  configure_brew_env
}

install_brew_dependencies() {
  local brewfile="$SCRIPT_DIR/Brewfile"
  if [[ ! -f "$brewfile" ]]; then
    echo "No Brewfile found at $brewfile. Skipping brew bundle."
    return
  fi

  echo "Installing Homebrew dependencies from Brewfile..."
  brew bundle install --file="$brewfile"
}

stow_dotfiles() {
  echo "Stowing dotfiles into target defined in .stowrc..."
  cd "$SCRIPT_DIR"
  stow .
}

main() {
  ensure_homebrew
  install_brew_dependencies
  stow_dotfiles
  echo "Setup complete."
}

main "$@"
