#!/bin/bash
#Credit goes to: https://github.com/MFDGaming
#Reqrite by: https://github.com/ProjectZeroDays

UBUNTU_VERSION=19.10
DIR=ubuntu-fs
ARCHITECTURE=i386

INSTP1 () {

if [ -d "$DIR" ];then
FIRST=1
printf "Yo, you tryna reinstall this shit? [Y/n] "
read CMDR
if [ "$CMDR" = "y" ];then
INSTP2
elif [ "$CMDR" = "Y" ];then
INSTP2
else
printf "Nah nikka, yo fuckin up rite here. Ain’t no reinstallation goin on here.\n"
exit
fi
elif [ -z "$(command -v bash)" ];then
printf "Shit mayne, we can’t move forward unless a nikka get ta “bash”.\n"
exit
elif [ -z "$(command -v wget)" ];then
printf "Y’all neeta “wget” in line wit wuts happenin here.\n"
exit
fi
if [ "$FIRST" != 1 ];then
INSTP2
fi
}
INSTP2 () {
if [ -f "ubuntu.tar.gz" ];then
rm -rf ubuntu.tar.gz
fi
if [ ! -f "ubuntu.tar.gz" ];then
printf "Pickin up som werk from ma plug, giva nikka a min to werk...\n"
wget http://cdimage.ubuntu.com/ubuntu-base/releases/${UBUNTU_VERSION}/release/ubuntu-base-${UBUNTU_VERSION}-base-${ARCHITECTURE}.tar.gz -q -O ubuntu.tar.gz
printf "Yo, you on that downlo huh, yea I see you. We bout to do some mo work!\n"
fi
cur=`pwd`
mkdir -p $DIR
cd $DIR
mkdir dev
printf "we jus decompress’n ova here, y’all nikka need ta find som’n ta do fo a min while a nikka work...\n"
tar -zxf $cur/ubuntu.tar.gz --exclude='dev'||:
printf "That rootfs bulllllshit finna he spun!\n"
printf "Fixed that resolv.conf shit, so a Nikka could have some access to that sheet we call da innanet\n"
printf "nameserver 8.8.8.8\nnameserver 8.8.4.4\n" > etc/resolv.conf
cd $cur

mkdir -p ubuntu-binds
bin=startubuntu.sh
printf "bout to spin this shit up and get some shit movin...\n"
cat > $bin <<- EOM
#!/bin/bash
cd \$(dirname \$0)
rm -rf ubuntu-fs/sys
rm -rf ubuntu-fs/dev
mount -t proc none ubuntu-fs/proc
ln -s /sys ubuntu-fs/sys
ln -s /dev ubuntu-fs/dev
chroot ubuntu-fs/ /bin/bash
EOM
printf "Grab yo Cock, we finally ready to rock!\n"
printf "Making this shit executable, please don’t wait up... sike we done...\n"
chmod +x $bin
printf "We jus did some serious shit rite cheer -> startubuntu.sh executable\n"
printf "Cleaning some shit up, don’t wait up... siiiiike we done...\n"
rm ubuntu.tar.gz -rf
printf "Aight pimps and pimpets we all cleaned up!\n"
printf "This shit finally ova! You can now do’s yo thang by typin’ Ubuntu with ./startubuntu.sh\n"
printf "\e[0m"
}
if [ "$1" = "-y" ];then
INSTP1
elif [ "$1" = "-Y" ];then
INSTP1
elif [ "$1" = "" ];then
printf "You tryna install ubuntu-in-termux? [Y/n] "

read CMDI
if [ "$CMDI" = "y" ];then
INSTP1
elif [ "CMDI" = "Y" ];then 
INSTP1 
else 
printf "Whole up son, slow down you did some shit wrong.\n" 
exit 
fi 
else 
printf "Whole up son, slow down you did some shit wrong.\n" 
fi
