#!/bin/sh
wget https://raw.githubusercontent.com/viniciuscr/chromeos-nix/master/nix-init
chmod +x nix-init
sudo mkdir /usr/local/bin
sudo mv nix-init /usr/local/bin/
nix-init