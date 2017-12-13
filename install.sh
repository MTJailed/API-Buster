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
cp APIBuster/apibuster /usr/local/bin/apibuster
chmod +x /usr/local/bin/apibuster
