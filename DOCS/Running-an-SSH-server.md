Here's a quick step by step guide for running an ssh server.

1. `$ apk add openssh`
2. `$ ssh-keygen -A`
3. `$ passwd`
4. type a password
5. edit `/etc/ssh/sshd_config` and set `PermitRootLogin` to `yes`
6. `$ /usr/sbin/sshd`

You should now be able to ssh to your device with username root and the password you typed.

### SSH from the same device

If you are trying to connect via ssh from the same device, make sure you set the port configuration of sshd to use a non standard one (greater than 1024, eg: 22000).

You can do this by editing `/etc/ssh/sshd_config` and set `Port 22000` (Replace _22000_ with any non-standard port).

After this, you can ssh (from iSH itself) using `ssh root@localhost -p 22000`