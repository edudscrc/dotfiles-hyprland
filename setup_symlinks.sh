#!/bin/bash

# Define the source directory (where the dotfiles repository is located)
DOTFILES_DIR="$HOME/dotfiles"

# Define the target directory for the symlinks
CONFIG_DIR="$HOME/.config"

# List of directories to symlink
DOTFILES=(
  "waybar"
  "rofi"
  "dunst"
  "alacritty"
  "fastfetch"
  "wlogout"
  "hypr"
)

# Create symbolic links
for file in "${DOTFILES[@]}"; do
  SOURCE="$DOTFILES_DIR/$file"
  TARGET="$CONFIG_DIR/$file"

  if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
    echo "[INFO] Skipping $file: Target already exists."
  else
    ln -s "$SOURCE" "$TARGET"
    echo "[SUCCESS] Linked $SOURCE -> $TARGET"
  fi

done

echo "All done!"
