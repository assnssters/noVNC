mkdir ~/.vnc ; sleep 1
echo -e '#!/bin/sh\nstartxfce4 &' > ~/.vnc/xstartup && chmod +x ~/.vnc/xstartup
echo "123456" | vncpasswd -f > ~/.vnc/passwd && chmod 600 ~/.vnc/passwd
for i in {0..99};do vncserver -kill :$i 2>/dev/null;done
vncserver :1
bash ../novncv 5901 80 &
sleep 5

echo "Your Link:"
PORT=80; echo "  https://server-$PORT-$_SANDBOX_ID.env.play.instruqt.com/vnc.html?host=your-ip&port=5901&password=123456&autoconnect=true&reconnect=true"
echo "VNC Password:"
echo "  123456"
