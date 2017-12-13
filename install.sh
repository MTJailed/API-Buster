#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
echo "[ API BUSTER INSTALLER ]"
echo "Created by Sem Voigtlander"
echo "LICENSED under the MIT License"
echo " "

echo "Installing..."
echo "Installing dependencies..."
if [[ $(which python) -ne 0 ]]; then
   echo "This script depends on python"
   exit 1
fi
if [[ $(which pip) -ne 0 ]]; then
   echo "Installing dependency pip..."
   sudo python -m easy_install pip
fi
echo "(re)installing dependency pymodule lief..."
pip install lief
echo "Setting up apibuster..."
echo "Moving api buster into place..."
cp APIBuster/apibuster /usr/local/bin/apibuster
echo "Moving machoparse into place..."
cp APIBuster/machoparse /usr/local/bin/machoparse
echo "Setting permissions..."
chmod +x /usr/local/bin/apibuster
chmod +x /usr/local/bin/machoparse
echo "Setting up data..."
mkdir -p /usr/local/share/apibuster
cp -r APIBuster/src /usr/local/share/apibuster/
