# My Dotfiles

## Required Packages
```bash
pacman -S base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

```bash
paru -S chezmoi neovim nodejs npm alacritty colordiff xsel zsh zsh-syntax-highlighting starship awesome-terminal-fonts ttf-firacode-nerd ttf-hack-nerd ttf-jetbrains-mono-nerd ttf-sourcecodepro-nerd ttf-dejavu-nerd ttf-font-awesome otf-droid-nerd nodejs npm pacman-contrib python-dbus base-devel git
```

## Spotify
store --label=spotifyd application rust-keyring service spotifyd username myuser password mypassword
systemctl --user enable spotifyd.service --now
