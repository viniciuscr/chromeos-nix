# chromeos-nix
This script install Nix Package Manager on ChromeOS (using PRoot)

# Install 1-2-3 go!
------
1. `Ctrl+Alt+T`
2. type: `shell`
3. past: `sudo wget -q -O - https://raw.githubusercontent.com/viniciuscr/chromeos-nix/master/install.sh | bash`
4. type `nix-init´ to enable nix commands (nix-*)

# Tips and Tricks
## Building native packages
Well, better than keep entering on a chroot env is to not do it :). 
So let´s install nix on chromeOS
 ~~~
 nix-init 
 mkdir $HOME/nix
 nix-channel --update
 env NIX_STORE_DIR=$HOME/nix nix-env -i nix
 ~~~
