#!/bin/sh
# u.sh


rm -f /usr/local/bin/ngrok

wget -O ngrok-stable-linux-amd64.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip & wait

unzip ngrok-stable-linux-amd64.zip ngrok & wait
rm -f ngrok-stable-linux-amd64.zip & wait
sudo chmod +x ngrok & wait
sudo mv ngrok /usr/local/bin/ & wait

sudo /usr/local/bin/ngrok authtoken 1qC4wDG4OxkTkDZPgmNAJAkmH7N_61a9nCVvokqwgTgv5eBZi


rm -f /tmp/test0 & wait
echo "$(whoami)" > /tmp/test0 & wait

