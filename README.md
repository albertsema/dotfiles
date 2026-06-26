# Dotfiles symlinked on my machine

### Install with setup:
```bash
./setup
```

To refresh Homebrew metadata before installing missing Brewfile entries:

```bash
./setup --update
```

To refresh Homebrew metadata and upgrade outdated Brewfile formulas/casks that
Homebrew already manages:

```bash
./setup --upgrade
```

Apps that already exist outside Homebrew are skipped rather than adopted or
overwritten.

### Local Git config:

`setup` links the tracked `.gitconfig` to `~/.gitconfig`. Private or machine-specific
settings should go in `~/.gitconfig.local`, which is included by the tracked config
but not committed.

Example:

```gitconfig
[user]
	name = Your Name
	email = you@example.com

[credential]
	helper =
	helper = /path/to/git-credential-manager

[url "git@github.com:"]
	insteadOf = https://github.com/
```

For repo-specific settings, keep the routing in `~/.gitconfig.local`:

```gitconfig
[includeIf "gitdir:~/work/"]
	path = ~/.gitconfig.work

[includeIf "gitdir:~/personal/"]
	path = ~/.gitconfig.personal
```
