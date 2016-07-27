#!/bin/sh

sudo mount -i -o "remount,exec" /mnt/stateful_partition

sudo mkdir /mnt/stateful_partition/nix-native
sudo  mkdir /mnt/stateful_partition/nix-temp

sudo chown chronos:chronos /mnt/stateful_partition/nix-native
sudo chown chronos:chronos /mnt/stateful_partition/nix-temp

//enter nix or call it from proot
nix-channel --update
env NIX_STORE_DIR=/mnt/stateful_partition/nix-native TMPDIR=/mnt/stateful_partition/nix-temp nix-env -i nix
//put binaries link on /usr/local/bin
sudo ln -s /home/chronos/user/.nix-profile/bin /usr/local/bin
//export variables on profile
echo export "NIX_STORE_DIR='/mnt/stateful_partition/nix-native'" >> /home/chronos/user/.bash_profile
echo export "TMPDIR='/mnt/stateful_partition/nix-temp'" >> /home/chronos/user/.bash_profile
