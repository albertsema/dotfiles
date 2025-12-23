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

ensure_legacy_tree_sitter_cli() {
  # nvim-treesitter shells out to the legacy tree-sitter CLI, which was removed
  # from the latest Homebrew formula. Keep a known-good copy in ~/.local/bin.
  local version="0.20.8"
  local prefix="$HOME/.local"
  local bin="$prefix/bin/tree-sitter"

  if [[ -x "$bin" ]]; then
    if "$bin" --version 2>/dev/null | grep -Fq "$version"; then
      echo "tree-sitter CLI $version already present at $bin."
      return
    fi
    echo "Found tree-sitter CLI at $bin, but version mismatch. Reinstalling..."
  fi

  echo "Installing tree-sitter CLI $version into $prefix (required for nvim-treesitter)..."
  mkdir -p "$prefix"
  npm install --silent --no-package-lock --no-save --prefix "$prefix" "tree-sitter-cli@$version"
}

stow_dotfiles() {
  echo "Stowing dotfiles into target defined in .stowrc..."
  cd "$SCRIPT_DIR"

  local packages=()
  local dir

  for dir in */ ; do
    dir="${dir%/}"
    [[ "$dir" == ".git" || "$dir" == "nvim" ]] && continue
    packages+=("$dir")
  done

  if ((${#packages[@]})); then
    echo "Linking ${packages[*]} into ~/.config..."
    stow "${packages[@]}"
  fi

  echo "Ensuring LazyVim config is linked into ~/.config/nvim..."
  mkdir -p "$HOME/.config/nvim"

  local lazyvim_example="$HOME/.config/nvim/lua/plugins/example.lua"
  if [[ -f "$lazyvim_example" && ! -L "$lazyvim_example" ]]; then
    echo "Removing default LazyVim example file at $lazyvim_example to avoid stow conflicts..."
    rm -f "$lazyvim_example"
  fi

  stow --target="$HOME/.config/nvim" nvim
}

install_lazyvim() {
  if ! command -v nvim >/dev/null 2>&1; then
    echo "Neovim is not installed, skipping LazyVim installation."
    return
  fi

  local lazyvim_dir="$HOME/.local/share/nvim/lazy/LazyVim"
  if [[ -d "$lazyvim_dir" ]]; then
    echo "LazyVim already installed at $lazyvim_dir."
    return
  fi

  echo "LazyVim not detected. Installing plugins via headless Neovim..."
  if ! nvim --headless "+Lazy! sync" +qa; then
    echo "Failed to install LazyVim. Please refer to https://www.lazyvim.org/installation for manual steps."
    exit 1
  fi
}

main() {
  ensure_homebrew
  install_brew_dependencies
  ensure_legacy_tree_sitter_cli
  stow_dotfiles
  install_lazyvim
  echo "Setup complete."
}

main "$@"
