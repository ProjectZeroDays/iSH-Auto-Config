![iSH](https://ish.app/assets/icon.png "iSH")

### Follow Us:
- [![Twitter](https://img.shields.io/twitter/follow/abdulr7mann?style=social)](https://twitter.com/intent/follow?screen_name=projectzerodays)

### Share on Twitter:
- [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?label=Tweet%20it&amp;style=social)](https://twitter.com/intent/tweet?text=iSH%20Auto%20Config%20is%20a%20tool%20that%20automatically%20installs%20a%20variety%20of%20packages%20and%20package%20managers%20for%20development%20and%20pentesting%20@projectzerodays%20https://github.com/projectzerodays/iSH-Auto-Config.git&hashtags=security,redteam,pentester,pentest,ish,ish-app,alpine-linux)

### Join the Discord:
- [![Discord](https://user-images.githubusercontent.com/7288322/34429152-141689f8-ecb9-11e7-8003-b5a10a5fcb29.png?label=Join&amp;style=social)](https://discord.gg/pN5dPYu)

# iSH Auto Configuration For iOS

### Working on this currently, it's not ready for deployment
### Feel free to contribute...

This is an automated configuration script that I created to (re)establish a fully updated, upgraded, and pre-configured pentesting and development environment in iSH when things go wrong and your files disappear or you happen to break something internally beyond repair. I got a little tired of continually setting everything back up again. 

### *NOTE*: You can now backup your file system using the settings menu as descibed in the wiki: 

https://github.com/ish-app/ish/wiki

### To Clone this Wiki (Note: A Copy Is Already Included):
    git clone https://github.com/ish-app/ish/wiki.git

It is important to acknowledge that we (participants of this team) nor “I”, (it’s creator) support, approve, condone, or participate in unauthorized exploitation of any property without proper authority to do so. These tools are designed for network security professionals to be used in accordance to the law and are not responsible for any  unlawful actions or unintended use that is beyond the intended use of the software or prohibited within the legal boundaries of the licensing agreement.

### iOS Shortcut Users:
##### I am still working on the X-Callback-Url and the settings, for now this will open the app and using opener and other apps you can pass cmd to the terminal.

https://www.icloud.com/shortcuts/cdde893504c1495ba9b3ebcbccc485d6

For those of you using the iOS Shortcut I built, the iSH.wiki will be cloned into your root folder. A menu will ask which settings you want and it will create a snapshot of the original config files and then again after you have finished setting up iSH and have returned to iSH-Auto-Config.sh located in your root folder. All files will have been automatically downloaded into iCloud at /iCloud/Shortcuts/ish/iSH-Auto-Config/ and would have been copied to your root folder under iSH-Auto-Config. Settings for this app include full or partial installation, snapshots of before and after, and restoration of original config files is need be.  

Now let’s get cracking...

#### Application:
    iSH.app

#### App Location:
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

#### Genre:
    Terminal Emulator 

#### Developer:
    Theodore Dubois

#### Developer Email:
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

#### App Source:
    Test Flight 

#### App Version Installed:
    iSH v1.0

#### Kernel:
    Alpine Linux 3.11

#### Virtualized CPU Architecture:
    x86 ARM (i686)

#### Actual Device Architecture:
    x64 ARM

### Installation: 
Open iSH on your iOS device and select settings. Select the option to turn on “Disable Screen Dimming”
 
#### Install the following:
     apk add git wget curl 

#### Clone this repo:
     git clone https://github.com/ProjectZeroDays/iSH-Auto-Config.git

#### Change into the "iSH-Auto-Config" Directory:
     cd iSH-Auto-Config

#### Make 'Install' Executable:
     chmod +x install.sh

#### Run install:
     sh Install

#### Enjoy! Please let me know what I may add or contribute!
