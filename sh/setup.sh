# Debian Based Linux
# TriGay Script hhh
mkdir /pkg
ChromeInstaller() {
wget https://dl.google.com/linux/deb/pool/main/g/google-chrome-stable/google-chrome-stable_138.0.7204.168-1_amd64.deb -O "/pkg/chrome-stable.deb"
apt install /pkg/chrome-stable.deb -y }
apt update -y
apt install tigervnc-standalone-server xfce4 xfce4-terminal xfce4-goodies xvfb dbus-x11 -y
clear
[ ! -f "/usr/bin/google-chrome" ] && ChromeInstaller ; echo Chrome:OK
clear && echo "Setup success hahaha"
