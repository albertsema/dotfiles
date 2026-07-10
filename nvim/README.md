# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Troubleshooting

### Go: `golangci-lint` fails with exit status 3

This is not an nvim config problem.
It happens when the Go project's `.golangci.yml` is still in the v1 format while the installed `golangci-lint` is v2, which refuses to load it (`can't load config: unsupported version of the configuration`).

Fix it in the affected project by migrating the config to the v2 schema:

```bash
cd /path/to/your/go/project
golangci-lint migrate
```

This rewrites `.golangci.yml` and backs up the old one as `.golangci.bck.yml`.
Restart nvim afterwards.
If no config exists in the repo, check for a stray `.golangci.yml` in a parent directory or `$HOME`.
