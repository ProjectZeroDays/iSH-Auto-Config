#!bin/ash
#
# Download the Repo:
apk add git curl wget python python3 gcc cmake && \
git clone 
# Makes .sh scripts executable
chmod +x add-apk-sources.sh && \
    add-apks.sh \
    add-apks2.sh \
    add-apks3.sh \
    add-apks4.sh \
    add-apks5.sh \
    add-apks6.sh \
    pip-pipx-pipenv-config.sh \
    add-pips.sh \
    pentesting-tools.sh \
    other-tools.sh \
    setup-ssh.sh \
    add-py3-apks.sh \
    setup-x11vnc-server.sh \
    add-apks.sh && \
sh add-apks.sh
