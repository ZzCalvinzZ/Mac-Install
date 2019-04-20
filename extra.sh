rbenv init
zsh
rbenv install $(rbenv install -l | grep -v - | tail -1)
gem install tmuxinator

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
chsh -s /bin/zsh
