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
echo "Installing Zabbix Repository"
wget https://repo.zabbix.com/zabbix/6.4/debian/pool/main/z/zabbix-release/zabbix-release_6.4-1+debian12_all.deb
apt install ./zabbix-release_6.4-1+debian12_all.deb
rm zabbix-release_6.4-1+debian12_all.deb
echo "Installing Zabbix agent"
apt install zabbix-agent
echo "Done"
