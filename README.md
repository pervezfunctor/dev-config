# dev-config

Clone this repository

```bash
git clone https://github.com/pervezfunctor/dev-config.git ~/.dev-config
```

Run the bootstrap script:

```bash
~/.dev-config/.local/bin/bootstrap
```

This will install and configure the following: fish shell, homebrew, neovim, zed, docker, and sync dotfiles. Restart your pc when done.

You can remove the repository after bootstrapping:

```bash
rm -rf ~/.dev-config
```

If you prefer vscode, install with brew:

```bash
brew install --cask visual-studio-code-linux
```

If you are on gnome, you could set it up to work like niri with the following:

```bash
gnome-setup
```
