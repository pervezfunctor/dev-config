# dev-config

## Bootstrap

Clone this repository

```bash
git clone https://github.com/pervezfunctor/dev-config.git ~/.dev-config
```

Run the bootstrap script:

```bash
~/.dev-config/.local/bin/bootstrap
```

This will install and configure everything: fish shell, homebrew, neovim, zed, docker, and sync dotfiles. Restart your pc when done.

You can remove the repository after bootstrapping:

```bash
rm -rf ~/.dev-config
```
