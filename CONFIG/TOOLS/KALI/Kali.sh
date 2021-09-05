#!/data/data/com.termux/files/usr/bin/bash
clear
echo
DIRECTORY="/data/data/com.termux/files/usr/share/figlet"
if [ ! -d "$DIRECTORY" ]; then
apk update && apk add figlet
fi
figlet -f mini    .......  Kali Linux - iSH  .......
figlet -f mini    .........  Project Zero  .........
echo
echo " ----  ProjectZeroDays on Github ----"
echo " ===  ProjectZeroDays on Twitter === "
echo
echo
echo "Kali Linux for iSH"
echo "i386 (musl-linux-i386)
echo "----------------------------------------------------"
echo "Download and Run? Yes/No"
read aarch
case $aarch in
Yes)
echo
echo "Adding dependencies needed to run Kali in iSH"
echo
apk add wget bash tar chroot wget curl git python3
echo
echo "Finished."
echo
echo "Downloading Kali RootFS for your arch..."
echo
echo $aarch
echo
wget https://build.nethunter.com/kalifs/kalifs-20170201/kalifs-i386-full.tar.xz
echo
proot --link2symlink tar -xf kalifs-i386-full.tar.xz
cd kali-i386
echo "nameserver 8.8.8.8" > etc/resolv.conf
cd ../ 
echo "proot --link2symlink -0 -r kali-i386 -b /dev/ -b /sys/ -b /proc/ -b /home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/  TERM=$TERM /bin/bash --login" > startkali.sh
chmod 777 startkali.sh
chmod +x startkali.sh
echo
cd $HOME/Kali-In-iSH
chmod -R 777 kali-i386
echo "bash ~/.startkali.sh && alias Kali='~/.startkali.sh" > /etc/profile
echo "Now You Can Start Kali Linux by typing 'Kali'"
echo
;;
no)
aarch=`dpkg --print-architecture`
Kali=`bash ~/startkali.sh`
exit && reset
fi
;;
esac
