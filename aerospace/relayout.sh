#!/usr/bin/env bash
# Re-arrange running apps into the right Aerospace workspaces for the
# currently connected displays.
#
# Layouts:
#
#   Docked (any external monitor connected)
#     1 Google Chrome
#     2 Ghostty
#     3 Claude + Obsidian
#     4 Outlook + Spark
#     5 Webex / Slack / Teams / Zoom
#     6 1Password / Cisco Secure Client
#     7 YouTube (Chrome PWA)
#     8 Codex + Zed
#
#   MacBook Pro only
#     1 Google Chrome
#     2 Ghostty
#     3 Obsidian
#     4 Outlook + Zed
#     5 Webex / Slack / Teams / Zoom
#     6 1Password / Cisco Secure Client
#     7 YouTube (Chrome PWA)
#     8 Claude
#     9 Codex
#
# Bound to alt-shift-r in aerospace.toml.

set -euo pipefail

PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

if ! command -v aerospace >/dev/null 2>&1; then
    echo "aerospace CLI not found in PATH" >&2
    exit 1
fi

# Move every window owned by $app_pattern (substring, regex) to $ws.
move_app() {
    local app_pattern="$1"
    local ws="$2"
    # shellcheck disable=SC2155
    local window_ids
    window_ids=$(aerospace list-windows --all --format '%{window-id} %{app-name}' \
                 | awk -v pat="$app_pattern" 'tolower($0) ~ tolower(pat) { print $1 }')
    for id in $window_ids; do
        aerospace move-node-to-workspace --window-id "$id" "$ws" || true
    done
}

# A display is "external" if anything other than Built-in Retina is attached.
external_attached() {
    aerospace list-monitors --format '%{monitor-name}' \
        | grep -viq 'Built-in'
}

if external_attached; then
    mode="docked"
else
    mode="mbp"
fi

echo "Relayout: detected ${mode} mode"

# Shared assignments
move_app 'Google Chrome' 1
move_app 'Ghostty' 2
move_app 'Microsoft Outlook' 4
move_app 'Spark' 4
move_app 'Webex' 5
move_app 'Microsoft Teams' 5
move_app 'Slack' 5
move_app 'zoom.us' 5
move_app '1Password' 6
move_app 'Cisco Secure Client' 6
move_app '^YouTube$' 7

# Mode-specific
if [ "$mode" = "docked" ]; then
    move_app 'Obsidian' 3
    move_app 'Claude' 3
    move_app 'Zed' 8
    move_app 'Codex' 8
else
    move_app 'Obsidian' 3
    move_app 'Zed' 4
    move_app 'Claude' 8
    move_app 'Codex' 9
fi

# Refresh sketchybar (workspace indicators)
if command -v sketchybar >/dev/null 2>&1; then
    sketchybar --trigger aerospace_workspace_change \
        FOCUSED_WORKSPACE="$(aerospace list-workspaces --focused)" >/dev/null 2>&1 || true
fi

echo "Relayout: done"
