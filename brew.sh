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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
brew install percol
brew install lf
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
brew install bash

# Install `wget` with IRI support.
brew install wget

# Install Python
brew install python
brew install python3

# Install Go
brew install go
brew install go-jira

# Install ruby
brew install ruby
brew install brew-gem

# Install more recent versions of some OS X tools.
brew install neovim
brew install grep
brew install openssh
brew install tmux
brew gem install tmuxinator

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

# Development tool casks
brew cask install virtualbox
brew cask install vagrant

# Misc casks
brew cask install google-chrome
brew cask install firefox
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install dropbox

#Remove comment to install LaTeX distribution MacTeX
#brew cask install --appdir="/Applications" mactex

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install xz

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Remove outdated versions from the cellar.
brew cleanup
