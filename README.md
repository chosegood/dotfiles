# My Dotfiles

## Required Packages
```bash
pacman -S base-devel git cargo
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

```bash
paru -S \
  alacritty \
  awesome-terminal-fonts \
  bat \
  chezmoi \
  colordiff \
  fzf \
  neovim \
  nodejs \
  npm \
  otf-droid-nerd \
  pacman-contrib \
  python-dbus \
  starship \
  tmux \
  ttf-dejavu-nerd \
  ttf-firacode-nerd \
  ttf-font-awesome \
  ttf-hack-nerd \
  ttf-jetbrains-mono-nerd \
  ttf-sourcecodepro-nerd \
  unzip \
  xsel \
  zsh \
  zsh-syntax-highlighting
```
## Install
chezmoi init https://github.com/chosegood/dotfiles.git

## Spotify
store --label=spotifyd application rust-keyring service spotifyd username myuser password mypassword
systemctl --user enable spotifyd.service --now
