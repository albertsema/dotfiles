# Dotfiles

My personal dotfiles managed with GNU Stow.

## Setup

1. Clone this repository to your home directory
2. Run the setup script:

   ```bash
   ./setup.sh
   ```

3. Restart your shell or run `source ~/.zshrc`

## XDG Base Directory Support

This setup uses the XDG Base Directory Specification:

- `XDG_CONFIG_HOME`: `~/.config` (configuration files)
- `XDG_CACHE_HOME`: `~/.cache` (cache files)
- `XDG_DATA_HOME`: `~/.local/share` (data files)
- `XDG_STATE_HOME`: `~/.local/state` (state files)

## Applications

- **Aerospace**: Window manager (config at `~/.aerospace.toml`)
- **Sketchybar**: Status bar (config at `~/.config/sketchybar/`)
- **Borders**: Window borders (config at `~/.config/borders/`)
- **Ghostty**: Terminal emulator (config at `~/.config/ghostty/`)
- **Neovim**: Text editor (config at `~/.config/nvim/`)
- **Zsh**: Shell (config at `~/.zshrc`)
- **Starship**: Prompt (config at `~/.config/starship/`)
