Run `apk add x11vnc xvfb xterm` to add all the required packages to run the VNC Server. 


Start backgrounding so we can connect with app not open`cat /dev/location > /dev/null &`
**Make sure to accept always**

Start the VNC Server `x11vnc -create -noshm`

**Tip: add `-forever` to be able to quickly reconnect to a session if VNC disconnects**

Open VNC viewer and connect to **127.0.0.1:5900**

You should get greeted with a weird and definetely not good looking terminal.
Let's make that a little more useful.

First, set up a headless xorg-server. For that, install the following packages: `apk add xorg-server xf86-video-dummy`.
Now you have to configure the xserver to run headless, so without a display. Create a new file at `/etc/X11/xorg.conf.d` called `10-headless.conf` and add the following content:

```
Section "Monitor"
        Identifier "dummy_monitor"
        HorizSync 28.0-80.0
        VertRefresh 48.0-75.0
        Modeline "1920x1080" 172.80 1920 2040 2248 2576 1080 1081 1084 1118
EndSection

Section "Device"
        Identifier "dummy_card"
        VideoRam 256000
        Driver "dummy"
EndSection

Section "Screen"
        Identifier "dummy_screen"
        Device "dummy_card"
        Monitor "dummy_monitor"
        SubSection "Display"
        EndSubSection
EndSection
```

Now you can install your window manager. For this tutorial, we're going to use i3wm. It's a tiling window manager with good configuration options. Run `apk add i3wm i3status i3lock` to install the required packages. The last step before starting our GUI is to specify the window manager that we want to use. Create a `.xinitrc` file in your home directory and add the following line:

```
exec i3
```

You need to run two commands side by side. The first one to start the headless GUI and the second one to start the vnc server.
To accomplish this, you can use a multiplexer like tmux or add the commands to the background with `&`.

To start the xserver, run `startx`. Then start the vnc server with `x11vnc -display :0 -noshm`.
Log in with your vnc client and you're ready to go. But don't expect a very good performance.