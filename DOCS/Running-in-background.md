# How to run iSH in the background

Location tracking is enabled through /dev/location. Reading from this device will start tracking your location and output a line each time your location updates. It also supports background tracking, so you can get the app to run in the background with the following incantation:

```bash
$ cat /dev/location > /dev/null &
```