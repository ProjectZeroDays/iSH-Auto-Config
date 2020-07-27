# Troubleshooting potential errors
Stuff happens, and things do go wrong. Here are some common troubleshooting tips for building and while running the app. If this page couldn't resolve any issues you were facing, you're very welcome to ask for help in our [Discord server](https://discord.gg/SndDh5y), in a [GitHub issue](https://github.com/tbodt/ish/issues), or by other contact methods found on [the website](https://ish.app).

## Building
You can build iSH by making sure to have installed the [dependencies](https://github.com/tbodt/ish#hacking) and following further setup instructions in the Readme.

Building iSH for iOS requires macOS, as is to be expected.
When building iSH, make sure to follow the [instructions](https://github.com/tbodt/ish#build-for-ios) in the Readme, and that you have installed the extra [dependencies](https://github.com/tbodt/ish#hacking) for iOS building.


## Running
### Issues with networking/apk
If you've received an error when installing a program or running `apk update`, e.g.
```
fetch http://dl-cdn.alpinelinux.org/alpine/v3.8/main/x86/APKINDEX.tar.gz
ERROR: http://dl-cdn.alpinelinux.org/alpine/v3.8/main: temporary error (try again later)
```
Check the output of `cat /etc/resolv.conf`.

If that returns nothing, you might be connected to a cellular network.
Solutions to this:

1. Connect to a WiFi network so iSH can get the nameservers automatically, or
2. Set your own nameservers:
```
$ echo "nameserver 8.8.8.8" > /etc/resolv.conf
```
Now try it again!