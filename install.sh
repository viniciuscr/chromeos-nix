#!/bin/sh
cd ~/Downloads/
wget -P ~/Downloads/ https://raw.githubusercontent.com/viniciuscr/chromeos-nix/master/nix-init
chmod +x nix-init
sudo mkdir /usr/local/bin
sudo chown chronos:chronos /usr/local/bin
mv nix-init /usr/local/bin/
nix-init
