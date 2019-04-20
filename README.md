# Mac-Install

## Install

````
```
echo "enter the email you would like to use for your ssh keys"
read keyaddr
ssh-keygen -t rsa -b 4096 -C "\$keyaddr"

mkdir dev; cd dev
git clone https://github.com/ZzCalvinzZ/dotfiles.git
cd ~
ln -sfFnv ~/dev/dotfiles/{.,}\* ~/

zsh
```

- Install Xcode
- Download zip

  `sudo ./.dots all`
````
