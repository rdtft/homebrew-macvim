#!/bin/sh

if [ $(brew list | grep macvim) ]; then
  echo "macvim already installed"
  echo "first you need to remove the current version macvim"
  echo "    brew uninstall macvim"
  exit 1
else
  brew install https://raw.github.com/ryuk/homebrew-macvim/master/macvim.rb --override-system-vim
  brew linkapps
fi
