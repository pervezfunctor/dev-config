# Development Environment on Ubuntu/Fedora/Arch

## System

Install essential packages

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl git wget trash-cli build-essential rsync fish alacritty
```

```bash
sudo dnf update
sudo dnf install -y curl git wget trash-cli gcc make rsync fish alacritty
```

## Package Manager(homebrew)

Install homebrew, the most popular package manager on macos(similar to apt on ubuntu)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
brew tap ublue-os/tap
```

## Shell

Set fish as default

```fish
sudo chsh -s (command -v fish) $USER
```

Then add '/home/linuxbrew/.linuxbrew/bin' to your PATH in `~/.config/fish/config.fish`

```bash
touch ~/.config/fish/config.fish
echo 'set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH' >> ~/.config/fish/config.fish
```

Restart your terminal. Make sure you are in `fish` shell. Install few modern shell tools with

```bash
brew install trash-cli fzf eza zoxide bat gh ripgrep tealdeer direnv fd jq bottom opencode
brew install --cask font-jetbrains-mono-nerd-font
```

Add starship to `~/.config/fish/config.fish` with

```bash
echo 'starship init fish | source' >> ~/.config/fish/config.fish
```

## Editor

`zed` editor is pretty good. Install with

```bash
curl -f https://zed.dev/install.sh | sh
```

If you prefer `vscode`, install with

```bash
brew install --cask visual-studio-code-linux
```

If you prefer neovim

```bash
brew install neovim luarocks imagemagick tectonic mermaid-cli lazygit
```

Setup astronvim with the following commands

```bash
mkdir -p ~/.config/nvim
trash ~/.config/nvim/ 2>/dev/null
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

## Python

Use `uv` for all python development. Install with

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
uv tool install pipx
```

## C++

Install the following packages

```bash
sudo apt install -y clang cmake entr gcc make pkg-config clang-tools
```

```bash
sudo dnf install -y clang cmake entr gcc make pkg-config clang-tools-extra
```

## Docker

Install Docker using the official script.

```bash
curl -fsSL https://get.docker.com | sh
```

Add your user to the `docker` group to run containers without sudo.

```bash
sudo usermod -aG docker "$USER"
```

Log out and back in (or reboot) for the group change to take effect.

## dotfiles

You could also get a better configuration with dotfiles from this repository.

First clone this repository

```bash
git clone https://github.com/pervezfunctor/.dev-config.git ~/.dev-config
```

Setup dotfiles with rsync

```bash
rsync -av ~/.dev-config/ ~/
```

Remove the cloned repository

```bash
rm -rf ~/.dev-config
```
