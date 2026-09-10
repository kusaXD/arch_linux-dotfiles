#!/usr/bin/env bash

set -e

DOTFILES="$HOME/dotfiles"
CONFIG="$HOME/.config"

echo "Installing dotfiles..."

mkdir -p "$CONFIG"

for dir in "$DOTFILES"/.config/*; do
    name="$(basename "$dir")"
    target="$CONFIG/$name"

    if [ -L "$target" ]; then
        rm "$target"
    elif [ -e "$target" ]; then
        echo "Skipping $target (already exists)"
        continue
    fi

    ln -s "$dir" "$target"
    echo "Linked $name"
done

echo "Done!"
