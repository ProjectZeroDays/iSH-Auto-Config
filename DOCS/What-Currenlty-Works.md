As said [here](https://github.com/tbodt/ish/wiki/FAQ#q-x-does-not-work) many programs do fail, so here is a list of programs known to be working (or not).

If you add a new test for a package, please add a line (same if package was already tested). Feel free to update the device tested if the build is newer.

| Package name | Is working? | Notes | iSH version number |
|:-|:-|:-|:-|
| `grep`, `head`, `cut`, `wc` |Yes||33|
| `tput` |Yes||33|
| `irssi` |Yes|| 38 |
| `ifconfig` |No| `ioctl 0x8912 failed: Invalid argument` | 33 |
| `ip` | No | `ip: socket(AF_NETLINK,3,0): Invalid argument` | 33 |
| `weechat` | Yes ||53|
| `bash` | Yes || 33 |
| `zsh` | Yes | | 48 |
| `nano` | Yes ||33|
| `nvim` | Yes | |41|
| `vim` | Yes ||33|
| `vi` | Yes ||33|
| `fish` | Yes ||45|
| `neofetch` | Yes ||52|
| `screenfetch` | No | _/proc/cpuinfo: No such file or directory_ |33|
| `node` | Yes || 73 |
| `curl` | Yes | HTTPS too |33|
| `wget` | Yes | HTTPS too |33|
| `python3` | Yes ||33|
| `youtube-dl` | Yes | Very slow to start |35|
| `cmus` | No | Bad system call |52|
| `ffmpeg` | Yes | |35|
| `emacs` | Yes |works recursively in `M-x term` !|36|
| `openssh` (client)| Yes | |31|
| `openssh` (server)| Yes | Follow the [instructions on the wiki](Running-an-SSH-server) |45|
| `ps` | Yes ||34|
| `ruby` | Yes ||34|
| `irb` | Yes ||35|
| `gem` | Yes ||38|
| `go` | Yes | |67|
| `mate-session`| No | Bad system call |37|
| `tmux` | Yes ||53|
| `screen` | Yes |Detaches and reattaches!|53|
| `figlet` | Yes | |40|
| `uptime` | Yes | |40|
| `links` | Yes |  |40|
| `lynx` | Yes ||40|
| `gdb` | No | Segfault, socketcall 16 |40|
| `w3m` | Yes| Quits with `GC Warning: Couldn't read /proc/stat` |40|
|`nmap`| No | Assertion failed | 40|
|`&`, `bg`, `fg`, `jobs`|Yes||44|
|`mc`| Yes | F-keys don't work |48|
|`ed`| Yes | |52|
|`git`| Yes | |53|
|`mosh`| Yes | |54|
|`gcc `| Yes | |55|
|`gawk`| Yes | |55|
|`clang`| Yes | |55|
|`arp`| No | can't open '/proc/net/arp': No such file or directory | 73 |
|`php`| Yes | |65|
|`php (extensions)`| Yes | |65|
|`stunnel3`| Yes | perl needs to be installed |65|
|`perl`| Yes | |65|
|`openssl`| Yes | Even signing certificates work perfectly fine |65|
|`dillo`| Partially working | Follow the [instructions ](https://github.com/ish-app/ish/wiki/Running-a-VNC-Server) to install VNC server. Requires fonts-noto to be installed. Some websites don’t work |67|
|`dpkg`| No | Bad System Call |67|
|`wine`| No | Illegal Instruction when trying to run any program | 73 |

Testers:
jusdepatate, Mnpn, elchris414, JaquesBoum, wjid, DiscordDigital, Linux, assfugil


## Test Requests

If you want a specific package to be tested, please add it here including special use cases you are interested in. This makes it easier to test meaningful things.

| Package name  | What to test / Note        | 
| :-------------|:---------------------------|
| `example`     | ...   |                   