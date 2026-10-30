# Rex

[Rex](https://www.superlogical.com/rex/docs) is the main terminal and multiplexer here.
It replaces herdr and tmux, and replaces Ghostty everywhere except the global quick terminal (cmd+`).

## Install

Rex is a manual beta install (no Homebrew cask): https://www.superlogical.com/rex/docs/installation
Launch it once, then run `./setup`.
That links this folder to `~/.config/rex`, links the CLI to `~/.local/bin/rex`, sets the Petrol Lagoon theme, installs the `xterm-rex` terminfo and installs the Rex skill and hook for coding agents.

## Mental model

Rex is a native terminal (rendered with libghostty) with a multiplexer server built in.

| tmux / herdr | Rex |
|---|---|
| server | Rex server, bundled in the app and always running |
| session / workspace | session |
| window / tab | tab (the CLI calls it a window) |
| pane | pane (the CLI calls it a block) |
| prefix key | key sequence, `ctrl+a>c` |
| key table | mode, `resize/h` |
| `send-keys` / `capture-pane` | `rex send` / `rex capture` |

Closing the app window does not stop anything, because sessions live in the server.
Restarting the server, or rebooting, ends every session.

## Files

- `init.lua` loads the other files.
- `keys.lua` is the tmux-style key map with a `ctrl+a` prefix.
- `actions.lua` holds custom actions for worktrees, scrollback editing and jumping to agents.
- `ssh_config` and `terminfo-hosts` are written by `rex terminfo setup` and are gitignored.

Rex does not watch these files.
After editing, run `rex config check`, then `rex config reload` (or press `ctrl+a R`).
`rex keymap` shows what actually loaded.
Shortcuts changed in the app's UI override this file, so change keys here instead.

## Keys

All keys follow the `ctrl+a` prefix.
Press `ctrl+a ?` for the command palette, which lists every action and its shortcut.

| Keys | Action |
|---|---|
| `ctrl+a` | send a literal ctrl+a |
| `c` | new tab |
| `r` | rename tab |
| `n` / `p`, `L` / `H` | next / previous tab |
| `1`..`9` | go to tab |
| `&` | close tab |
| `s` / `v` | split down / right |
| `h` `j` `k` `l` | focus pane |
| `tab` | previous pane |
| `z` | zoom pane |
| `X` | close pane |
| `,` or `-` | resize mode: `hjkl` nudges, `HJKL` jumps, `=` balances, `enter` or `esc` leaves |
| `S` | switch session |
| `N` / `W` / `D` | new / rename / close session |
| `(` / `)` | previous / next session |
| `a` | toggle the Activity sidebar (agent status) |
| `o` or `A` | jump to the agent that needs attention (blocked, then error, then done) |
| `ctrl+w` or `G` | new worktree (`wt switch --create`) |
| `w` | open a worktree (`wt switch` picker) |
| `e` | open the pane's scrollback in Neovim |
| `g` | go to directory |
| `/` | find |
| `[` / `]` | previous / next prompt |
| `b` | toggle sidebar |
| `R` | reload config |
| `i` | settings |
| `d` | close the window (sessions keep running) |

Without the prefix, `cmd+1`..`cmd+9` go to session N, in the order `rex ls` lists them.

Rex has no copy mode.
Use mouse selection, find, prompt jumping, or `ctrl+a e` to search and yank the scrollback in Neovim.

## Agents

Rex does not run agents itself.
It sees them and gives them a CLI to drive the terminal.

- `rex skill setup` installs a `rex` skill for Claude Code, Codex, OpenCode and Pi, and a SessionStart hook for Claude Code and Codex.
  The hook tells the agent which session and pane it is in, and asks it to name the session after its task.
  Codex only runs the hook after it is approved with `/hooks`.
- With the skill, an agent can open splits and tabs (`rex split`, `rex run`), type into panes (`rex send`), read them (`rex capture`) and wait for commands (`rex wait`).
- Programs report status with OSC 7501 (`working`, `done`, `blocked`, `error`).
  Rex shows it on tabs, in the session picker and in the Activity sidebar, and `ctrl+a o` jumps to it.
- Actions sent to the app from the CLI, such as `rex do client.theme.change`, need Remote Control turned on in Settings.
  Key presses and the palette do not.

Try the status protocol by hand: `printf '\e]7501;state=blocked:kind=question\e\\'`.

## Shell integration

Rex does not inject shell integration.
`zsh/.zshrc` reports the working directory (OSC 7) and prompt marks (OSC 133) when `REX_BLOCK` is set.
New worktree tabs and prompt jumping depend on this.

## Settings kept in the app

Some settings are not exposed in Lua and are stored in `com.superlogical.rex` preferences.
`./setup` sets the theme.
Set these by hand in Settings (`ctrl+a i`): font Berkeley Mono 15, copy on select, Option as Alt, and program status in tabs.

## Useful commands

```sh
rex ls                         # sessions
rex session inspect            # tabs and panes in this session
rex split --split below -- htop
rex capture -b <block> --trim  # read a pane
rex events --json              # watch everything happen
rex actions                    # every bindable action
rex do <action> key=value      # run an action
rex api list                   # server API methods
```
