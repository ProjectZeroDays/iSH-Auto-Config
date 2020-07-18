#!bin/bash 

# Installs necessary files when installed by itself
apk add wget curl git bash && \

# Installs x11VNC, xTerm, and Xvfb
apk add x11vnc && \
apk add xvfb xvfb-run && \
apk add xterm && \

# Starts Background Daemon
# Allows Persistent Connections, 
# Even When iSH.app is Not Open  
ln -s /dev $(dirname $0)/dev
printf "Select 'Always allow'."
cat $(dirname $0)/dev/location > $(dirname $0)/dev/null & #!

# Select "While Using App"
# Select "Always"  

# Starts x11 VNC Server 
x11vnc -create -noshm -forever && \

# Set A Password to Connect
# x11vnc -rfbauth ~/.vnc/passwd
# Use Your Own VNC Passwd File 
# x11vnc -rfbauth /PATH/file
# Disable Password Usage -nopw 
# For More Info on Passwd
# http://www.karlrunge.com/x11vnc/faq.html#faq-passwd

# To Use x11VNC SSL Tunneling 
# -ssl -stunnel
# For More Info on SSH Tunneling 
# http://www.karlrunge.com/x11vnc/#tunnelling   
x11vnc -rfbauth -usepw -ssl -stunnel "~/.vnc/passwd" &

# Open VNC Viewer
# Connect to 127.0.0.1:5900 or localhost:0 

