#!/bin/bash/

# Description: A script to install tools for exploit development
# on Debian-based Linux distributions. 
#
# Author: Evan Ottinger -- @OttySec

# Install VSCode
echo "[>] Installing VSCode. . ."
wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O code.deb
apt install ./code.deb
echo "[+] VSCode installed!"

# Install gdb
echo "[>] Installing gdb. . ."
apt install gdb
echo "[+] gdb installed!"

# Install PEDA
echo "[>] Installing PEDA. . ."
git clone https://github.com/longld/peda.git /opt/peda
echo "source /opt/peda/peda.py" >> ~/.gdbinit
echo "[+] PEDA installed!"
