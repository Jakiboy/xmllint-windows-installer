#!/bin/bash
echo "Creating output folder..."
if [ -d "build" ]; then
    rm -rf "build"
fi
mkdir "build"
sleep 2
clear
echo "Compile Install..."
"$(pwd)/compile/ISCC.exe" "$(pwd)/xmllint.iss"
mv "$(pwd)/build/setup.exe" "$(pwd)/build/xmllint-installer.exe"
sleep 2
clear
echo "--------------------"
read -p "Press enter to exit"