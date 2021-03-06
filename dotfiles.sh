# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "enter the email you would like to use for your ssh keys"
read keyaddr
ssh-keygen -t rsa -b 4096 -C "$keyaddr"
sudo sh -c "curl https://raw.githubusercontent.com/b4b4r07/ssh-keyreg/master/bin/ssh-keyreg -o /usr/local/bin/ssh-keyreg && chmod +x /usr/local/bin/ssh-keyreg"
ssh-keyreg -p ~/.ssh/id_rsa.pub -u ZzCalvinzZ github

mkdir ~/dev; cd ~/dev
git clone https://github.com/ZzCalvinzZ/dotfiles.git
cd ~
ln -sfFnv ~/dev/dotfiles/{.,}* ~/

zsh
