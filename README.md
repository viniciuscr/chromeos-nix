# chromeos-nix
This script install Nix Package Manager on ChromeOS
Install 1-2-3 go!
------
1. `Ctrl+Alt+T`
2. type: `shell`
3. past: `sudo wget -q -O - https://raw.githubusercontent.com/viniciuscr/chromeos-nix/master/install.sh | bash`

------
##Tips and Tricks
installing global packages (-g) with npm
for non heavy users:
`npm config set prefix '/usr/local/'`
`sudo npm install -g whaterer`
for heavy users (not tested yet)
`npm config set prefix '/home/chronos/user/npm'`
`ln -s /home/chronos/user/.nix-profile/bin/ /home/chronos/user/npm/bin`
