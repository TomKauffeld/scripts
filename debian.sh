#/bin/bash
echo "Update"
apt update
echo "Upgrade"
apt upgrade
echo "Installing Xen Guest Utilities"
cd /tmp
wget https://github.com/xenserver/xe-guest-utilities/releases/download/v8.4.0/xe-guest-utilities_8.4.0-1_amd64.deb
apt install ./xe-guest-utilities_8.4.0-1_amd64.deb
rm xe-guest-utilities_8.4.0-1_amd64.deb
echo "Done"
