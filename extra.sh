export PATH=/usr/local/opt/ruby/bin:$PATH
gem install tmuxinator

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
chsh -s /bin/zsh
