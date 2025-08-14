#!/usr/bin/env bash

# Create XDG directories
mkdir -p ~/.config ~/.cache ~/.local/share ~/.local/state

# Stow all configurations
stow .

# Create symlink for aerospace config (aerospace expects ~/.aerospace.toml)
if [ ! -f ~/.aerospace.toml ]; then
    ln -sf ~/.config/aerospace/aerospace.toml ~/.aerospace.toml
    echo "Created symlink for aerospace config"
fi

echo "Setup complete! Please restart your shell or run 'source ~/.zshrc'"
