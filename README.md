# My Dotfiles

## Required Packages
paru -S chezmoi neovim nodejs npm alacritty colordiff xsel zsh zsh-syntax-highlighting starship awesome-terminal-fonts ttf-firacode-nerd ttf-hack-nerd ttf-jetbrains-mono-nerd ttf-sourcecodepro-nerd ttf-dejavu-nerd ttf-font-awesome otf-droid-nerd nodejs npm pacman-contrib python-dbus

## Spotify
store --label=spotifyd application rust-keyring service spotifyd username myuser password mypassword
systemctl --user enable spotifyd.service --now
