set -x MANROFFOPT "-c"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

if test -f ~/.fish_profile
  source ~/.fish_profile
end

fish_add_path --global --move \
    $HOME/bin \
    $HOME/.local/bin

function has_cmd
    type -q $argv[1]
end

if ! status is-interactive
  return
end

function fish_greeting
end

alias gs 'git stash'
alias gp 'git push'
alias gb 'git branch'
alias gbc 'git checkout -b'
alias gsl 'git stash list'
alias gst 'git status'
alias gsu 'git status -u'
alias gcan 'git commit --amend --no-edit'
alias gsa 'git stash apply'
alias gfm 'git pull'
alias gcm 'git commit -m'
alias gia 'git add'
alias gco 'git checkout'
alias gh-refresh 'gh auth refresh -h github.com'
function git-tree
    git status --short | awk '{print $2}' | tree --fromfile
end

alias f 'fd'
alias g 'git'
alias h 'btm'
alias p 'pixi global install'
alias t 'tmux'
alias v 'nvim'

alias fpi 'flatpak install --user flathub'
alias fpr 'flatpak remove --user'
alias fps 'flatpak search'
alias fpu 'flatpak update --user'

if has_cmd /home/linuxbrew/.linuxbrew/bin/brew
  alias b 'brew'
  alias bi 'brew install'
  alias br 'brew uninstall'
  alias bs 'brew search'
  alias bu 'brew update && brew upgrade'
end

if has_cmd dnf
    alias i 'sudo dnf install'
    alias r 'sudo dnf remove'
    alias s 'dnf search'
    alias u 'sudo dnf update'
else if has_cmd apt
    alias i 'sudo apt install'
    alias r 'sudo apt remove'
    alias s 'apt search'
    alias u 'sudo apt update; and sudo apt upgrade'
  else if has_cmd pacman
    alias i 'sudo pacman -S'
    alias r 'sudo pacman -R'
    alias s 'pacman -Ss'
    alias u 'sudo pacman -Syu'
end

if has_cmd zoxide
    zoxide init fish | source
end

if has_cmd fzf
    fzf --fish | source
end

if has_cmd starship
    starship init fish | source
end

if has_cmd carapace
    set -gx CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense' # optional
    carapace _carapace | source
end

if has_cmd eza
    alias l   'eza --icons --group-directories-first'
    alias ls  'eza --icons --group-directories-first'
    alias ll  'eza -l --icons --group-directories-first'
    alias la  'eza -a --icons --group-directories-first'
    alias lla 'eza -la --icons --group-directories-first'
    alias lt  'eza --tree --icons --group-directories-first'
end

function update-all
  u
  if has_cmd brew
    brew update && brew upgrade
  end
  if has_cmd uv
    uv self update
  end
end
