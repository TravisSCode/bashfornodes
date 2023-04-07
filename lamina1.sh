sudo apt update && sudo apt upgrade --yes
sleep 5
sudo apt install ufw
sudo ufw disable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow in 9650
sudo ufw allow in 9671

sudo apt-get install tmux
sleep 5

wget https://lamina1.github.io/lamina1/lamina1.latest.ubuntu-latest.tar.gz
sleep 5

tar -xvzf lamina1.latest.ubuntu-latest.tar.gz
sleep 10

cd lamina1/
sleep 5

rm -rf $HOME/root/lamina1.latest.ubuntu-latest.tar.gz
sudo ufw enable
