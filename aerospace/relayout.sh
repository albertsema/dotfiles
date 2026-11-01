#!/usr/bin/env bash
# Re-apply the Aerospace app -> workspace mapping to already-open windows.
#
# `on-window-detected` rules in aerospace.toml only fire for new windows.
# Keep the table below in sync with those rules.
#
#   1 Google Chrome            D Docker
#   2 Rex                      M Mimestream
#   3 Zed                      C Slack / Teams / Discord
#   4 Claude                   T Linear
#   5 Codex                    N Inkdrop
#   Y YouTube (Chrome PWA)     U 1Password / Zoom / Webex
#
# Monitor placement is handled by workspace-to-monitor-force-assignment.
#
# Bound to alt-shift-r in aerospace.toml.

set -euo pipefail

PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

if ! command -v aerospace >/dev/null 2>&1; then
    echo "aerospace CLI not found in PATH" >&2
    exit 1
fi

# Matched case-insensitively against "<bundle-id> <app-name>" (regex).
# Format: workspace|pattern
MAPPING=(
    '1|com\.google\.Chrome '
    '2|com\.superlogical\.rex'
    '3|dev\.zed\.Zed'
    '4|com\.anthropic\.claudefordesktop'
    '5|com\.openai\.codex'
    'D|com\.docker\.docker|com\.electron\.dockerdesktop'
    'M|com\.mimestream\.Mimestream'
    'C|com\.tinyspeck\.slackmacgap|com\.microsoft\.teams2|com\.hnc\.Discord'
    'T|com\.linear '
    'N|info\.pkpk\.inkdrop'
    'Y|^[^ ]+ YouTube$'
    'U|com\.1password\.1password|us\.zoom\.xos|webex'
)

windows=$(aerospace list-windows --all --format '%{window-id} %{app-bundle-id} %{app-name}')

for entry in "${MAPPING[@]}"; do
    ws="${entry%%|*}"
    pattern="${entry#*|}"
    # Drop the window id column before matching, then re-attach it for the move.
    ids=$(printf '%s\n' "$windows" \
          | awk -v pat="$pattern" '{ id=$1; $1=""; sub(/^ /, ""); if (tolower($0) ~ tolower(pat)) print id }')
    for id in $ids; do
        aerospace move-node-to-workspace --window-id "$id" "$ws" >/dev/null 2>&1 || true
    done
done

# Refresh sketchybar (workspace indicators)
if command -v sketchybar >/dev/null 2>&1; then
    sketchybar --trigger aerospace_workspace_change \
        FOCUSED_WORKSPACE="$(aerospace list-workspaces --focused)" >/dev/null 2>&1 || true
fi

echo "Relayout: done"
