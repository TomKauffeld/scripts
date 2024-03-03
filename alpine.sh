#/bin/sh
echo "Activating community repository"
BRANCH=$(cat /etc/os-release | grep PRETTY_NAME | sed -e "s/\"/ /g" | awk '{print $4}')
sed -e "s;^#http\(.*\)/$BRANCH/community;http\1/$BRANCH/community;g" -i /etc/apk/repositories
echo "Update"
apk update
echo "Upgrade"
apk upgrade
echo "Installing utils"
apk add wget sudo nano
echo "Installing Xen Guest Utilities"
apk add xe-guest-utilities-openrc xe-guest-utilities xe-guest-utilities-udev
echo "Setting up Xen Guest Utilities"
rc-update add xe-guest-utilities
rc-service xe-guest-utilities start
echo "Done"
