![iSH](https://ish.app/assets/icon.png "iSH")

# iSH Auto Configuration For iOS

### Follow Us:
- [![Twitter](https://img.shields.io/twitter/follow/ProjectZeroDays?style=social)](https://twitter.com/intent/follow?screen_name=projectzerodays)

### Share on Twitter:
- [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?label=Tweet%20it&amp;style=social)](https://twitter.com/intent/tweet?text=iSH%20Auto%20Config%20is%20a%20tool%20that%20automatically%20installs%20a%20variety%20of%20packages%20and%20package%20managers%20for%20development%20and%20pentesting%20@projectzerodays%20https://github.com/projectzerodays/iSH-Auto-Config.git&hashtags=security,redteam,pentester,pentest,ish,ish-app,alpine-linux)

### Join the Discord:
- [![Discord](https://user-images.githubusercontent.com/7288322/34429152-141689f8-ecb9-11e7-8003-b5a10a5fcb29.png?label=Join&amp;style=social)](https://discord.com/invite/HFAXj44)

### Working on this currently, it's not ready for deployment. However, Feel free to contribute...

This is an automated configuration script that I created to (re)establish a fully updated, upgraded, and pre-configured development environment within iSH when things go wrong and your files disappear or you happen to break something internally beyond repair. I got a little tired of continually setting everything back up again. 

Some of the tools that will be added later are both native to alpine and Python and used for Pentesting. This toolset will be limited in function due to the nature of iSH and would not be well suited for pentesters in any work enviornment. They will be to explore iSH further and fully test and its functionality so we may offer more feedback the development team. This is not a hacking tool of any kind and does not offer any serious functionality or compatibility to these types of tools in areas many netsec professionals would need in their daily arsenal. However, few tools do work such as brute force programs etc. and even still due to the QEMU Arch and limitations of the hardware and software they are very limited and not practical. These tools are merely to explore the full reach and capability for the iSH Develpment Team.

### NOTE: 
You can now backup your file system using the settings menu as descibed in the wiki: 
https://github.com/ish-app/ish/wiki

### iOS Shortcut Users: 
I am still working on the X-Callback-Url and the settings, for now this will open the app and using opener and other apps you can pass cmd to the terminal.

### Shortcut to Install TestFlight, Accept Beta Access, and Install iSH:
https://www.icloud.com/shortcuts/cdde893504c1495ba9b3ebcbccc485d6

### Shortcut to Open iSH using shortcuts:

https://www.icloud.com/shortcuts/b0818b5bf34448f48ef8b1aa995f6217

For those of you using the iOS Shortcut I built, the plan is to eventually finish the shortcut so the repo will be cloned into iSH using working copy and X-Callback-Url with a menu to ask which settings you want and which apps to install etc. I'm just really lazy lol.

Now let’s get cracking...

#### Testflight
    https://itunes.apple.com/us/app/testflight/id899247664

#### iSH Website:
    https://ish.app

#### iSH Github:
    https://github.com/ish-app/ish

#### iSH Wiki:
    https://github.com/ish-app/ish/wiki

#### iSH Twitter:
    https://twitter.com/iSH_app

#### iSH Reddit:
    https://www.reddit.com/r/ish

#### iSH Discord:
    https://discord.gg/SndDh5y

#### iSH Patreon:
    https://patreon.com/tbodt

#### iSH Bug Reports & Feedback:
    https://github.com/ish-app/ish/issues 

#### Developer:
    Theodore Dubois
    tdlodt@icloud.com

#### Requires:
    iOS 11 or later
    Apple TestFlight App
    https://apps.apple.com/us/app/testflight/id899247664

#### Compatibility:
    iPhone 5 or later
    iPad Air or later
    iPod Touch

### This script was designed on the following device, architecture, software and kernel versions. Use at your own discretion.
    iPad Pro 12.9 Pro (iOS 12.1.1 Jailbroken With Root)
    iPhone XS (iOS 13.2.1 Non-Jail Broken With Root)
    iPhone 7 Plus (iOS 13.3 Non-Jail Broken With Root)

#### App Version Installed:
    iSH v1.0 (73) - Alpine Linux 3.11
    
#### Virtualized CPU Architecture:
    i386

### Installation: 
Open iSH on your iOS device and select settings. Select the option to turn on “Disable Screen Dimming”
 
#### Install Dependencies:
     apk add curl 

#### Installation:
     /bin/ash -c "$(curl -fsSL https://raw.githubusercontent.com/ProjectZeroDays/iSH-Auto-Config/master/Install)"

#### Enjoy! Please let me know what I may add or contribute!
