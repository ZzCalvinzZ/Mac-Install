#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
#install useful utilities
brew install fd
brew install bat
brew install jq
brew install tldr
brew install taskwarrior-tui
brew install ncdu
brew install tree
brew install percol
brew install lf
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
brew install bash

# Install `wget` with IRI support.
brew install wget

# Install Programming Languages
brew install go
brew install pyenv
brew install pyenv-virtualenv
brew install rbenv
brew install nodenv

# Install more recent versions of some OS X tools.
brew install neovim --HEAD
brew install grep
brew install openssh
brew install tmux
brew install tmuxinator

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ripgrep
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install hub
brew install imagemagick
brew install lua
brew install luarocks
brew install lynx
brew install p7zip
brew install unrar
brew install pigz
brew install pv
brew install rename
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install zopfli
brew install pandoc

# Core casks
brew cask install alfred
brew cask install alacritty
brew cask install xquartz

# Misc casks
brew cask install slack
brew cask install spotify


# Remove outdated versions from the cellar.
brew cleanup
