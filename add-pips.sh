!#bin/ash
# Installs additional tools using Pip
pip install brew && \
pipx install eggshell && \
pipx install scikit-fuzzy && \
pipx install dnspython3 && \
pipx install commix && \
pipx install ethtools && \
sh other-tools.sh
