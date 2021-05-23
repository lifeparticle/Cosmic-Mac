# Unmaintained

This script will install java, sublime text, Dash, MAMP, Dropbox, Docker and apply configurations on your Mac.

## Prerequisite
[Cosmic-Terminal](https://github.com/lifeparticle/Cosmic-Terminal)
```
curl -s https://raw.githubusercontent.com/lifeparticle/Cosmic-Terminal/master/install_cosmic_terminal.sh | sh
```
or install [brew](https://brew.sh)
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
````

## Install

Make install_cosmic_mac.sh executable
```
chmod +x install_cosmic_mac.sh
```

Run
```
./install_cosmic_mac.sh
```

or

```
curl -s https://raw.githubusercontent.com/lifeparticle/Cosmic-Mac/master/install_cosmic_mac.sh | sh
```
## Mac Configurations
```
defaults help

defaults domains
defaults domains | tr ',' '\n'
defaults read com.apple.finder

defaults read > before
defaults read > after

diff before after
```

## Tested OS
1. macOS Big Sur (Version 11.3)

## Bug Reports and Feature Requests
Please create an issue with as much information you can. Thank you.

## Author
Mahbub Zaman (https://mahbub.ninja)

## License
MIT License
