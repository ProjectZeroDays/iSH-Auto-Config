# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/>
export PAGER=less
export PS1='root@kali:# '
umask 022

for script in /etc/profile.d/*.sh ; do
        if [ -r $script ] ; then
                . $script
        fi
done
