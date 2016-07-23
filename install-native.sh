#!/bin/sh

sudo mount -i -o "remount,exec" /mnt/stateful_partition

sudo mkdir /mnt/stateful_partition/nix-native
sudo  mkdir /mnt/stateful_partition/nix-temp

sudo chown chronos:chronos /mnt/stateful_partition/nix-native
sudo chown chronos:chronos /mnt/stateful_partition/nix-temp

//enter nix or call it from proot
nix-channel --update
env NIX_STORE_DIR=/mnt/stateful_partition/nix-native TMPDIR=/mnt/stateful_partition/nix-temp nix-env -i nix
