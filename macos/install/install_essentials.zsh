#!/usr/bin/env zsh

set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is required but not installed. See https://brew.sh/" >&2
  exit 1
fi

formulae=(
  starship
  go
  python
  git
  pre-commit
  bat
  fzf
  ripgrep
  tmux
  wget
  awscli
  azure-cli
  docker
  ffmpeg
)

casks=(
  temurin
  cursor
  visual-studio-code
  jetbrains-toolbox
  chatgpt
  diffusionbee
  ollama
  1password
  alfred
  notion
  slack
  zoom
  figma
  blender
  vlc
)

echo "Updating Homebrew..."
brew update

echo "Installing essential formulae..."
for formula in "${formulae[@]}"; do
  brew install --formula "${formula}" || brew upgrade --formula "${formula}"
done

echo "Installing essential casks..."
for cask in "${casks[@]}"; do
  brew install --cask "${cask}" || brew upgrade --cask "${cask}"
done

echo "Essential tool installation complete."
