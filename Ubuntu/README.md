#Installation Instructions

###Downgrade iSH to (70)

###Update iSH: 
    apk update

###Install wget: 
    apk add wget

###Install bash: 
    apk add bash

###Navigate to the Home Dir: 
    cd ~

###Create Folder: 
    mkdir ubuntu-in-ish

###Navigate to Folder: 
    cd ubuntu-in-ish

###Download required files
    wget https://github.com/ProjectZeroDays/iSH-Auto-Config/blob/master/Ubuntu/Ubuntu-Rootfs_19.1_i386

###Make Files Executable
    chmod +x *

###Start installation 
    ./ubuntu.sh -y

###Start ubuntu
    ./startubuntu.sh
